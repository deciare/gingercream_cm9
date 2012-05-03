The __master__ branch of this repository tracks unmodified CyanogenMod 9 nightly builds for Nexus S (crespo).

The __gingercream__ branch contains theme changes made to __master__.

The examples below presume some familiarity with git's design. If you are new at this, consider reading about...
* Everything: http://book.git-scm.com/ (the Basic Usage section in particular)
* Rebasing: http://book.git-scm.com/4_rebasing.html
* Conflict resolution: http://blog.wuwon.id.au/2010/09/painless-merge-conflict-resolution-in.html
* Conflict resolution with binary files: http://www.kevinold.com/2009/02/24/better-git-conflict-resolution-between-binaries-with-theirs.html


Cloning
-------
To clone this into a local git repository on your computer, run the following command:

    git clone git://github.com/deciare/gingercream_cm9.git cm9


Forward-porting
---------------
Forward-porting to newer builds of CyanogenMod 9 involves updating the __master__ branch, then rebasing __gingercream__ on master. Specifically:

    git checkout master
    ./extracttheme.sh /path/to/update-cm-9-<date>-NIGHTLY-crespo-signed.zip
    git commit -m 'CyanogenMod 9 nightly <date>'
    git checkout gingercream
    git rebase master

If there are no merge conflicts, then new packages can be built with buildtheme.sh and buildflashable.sh. Refer to the __theme_tools__ repository for these scripts.


Porting to another ROM
----------------------
Porting this theme to another ROM requires the creation of a separate git repository for the other ROM, then cherry-picking relevant changes from a supported ROM's __gingercream__ branch onto the target ROM.

The following example summarises the process of porting this theme from CM9 to AOKP. It presumes the following directory structure:

    + theme	<- common parent
    |
    |---- aokp	<- theme for AOKP, the ROM we're porting to
    |
    |---- cm9	<- theme for CM9, the ROM we're porting from

So starting from the theme directory...

    mkdir aokp
    cd aokp
    git init
    ./extracttheme.sh /path/to/aokp_crespo_milestone-5.zip

We now have framework-res and SystemUI extracted from the AOKP ROM. Next, we have to add these files to git's index (so git keeps track of them) and make an initial commit, which will record the state of the files as they exist now.

    git add framework-res SystemUI
    git commit -m 'Initial commit'

Next, let's create a branch that will contain our theme changes.

    git checkout -b gingercream

Now we need to cherry-pick theme-related commits from CM9. To do this, we first need to add the CM9 version of the theme as a remote repository, then fetch available changes from it.

    git remote add cm9 ../cm9
    git fetch --all

Now we can inspect the __gingercream__ branch in the CM9 directory to see what theme-related commits are available. Since the __gingercream__ branch contains only theme changes, this should be straightforward.

    git log cm9/gingercream

Find the ID of a theme-related commit you want to port over to the target ROM, then cherry-pick it. In this example, "edc9bcc6255eddb13f17f1e34f2bce674dfa1a6c" is the ID of the earliest commit that diverges from unmodified CM9. (Rebasing changes this ID, so it will be different from what you have. Check git log for yours!)

    git cherry-pick edc9bcc6255eddb13f17f1e34f2bce674dfa1a6c

If git doesn't complain about a merge conflict, then you now have every change from commit edc9bcc6255eddb13f17f1e34f2bce674dfa1a6c in AOKP. Congratulations! Let's try another few.

    git cherry-pick c618fa69920233d8d45fc1abac243ccc949e23c7
    git cherry-pick 46e5a54d930a055205559d28cceb3f6bb234ca49

Oops, merge conflict. Now what?

    git status

That will show you the current state of the repository, including a list of any files that were conflicting and why. For each conflicting file, decide what to do about it.

One of the conflicting files in this case is __SystemUI/res/values/styles.xml__. If you open the file in a text editor and search for "&lt;&lt;&lt;", you'll see a bunch of lines that were changed in the CM9 version, but aren't present at all in the AOKP version. That's the conflict. CM9 allows signal text colour to be set by the theme, but AOKP does not. The correct solution to this particular conflict is to delete the offending lines (along with the &lt;&lt;&lt;, ===, and &gt;&gt;&gt; conflict markers).

Once you've made appropriate changes to the file, add it to the list of files to be committed.

    git add SystemUI/res/values/styles.xml

Resolve conflicts for _each_ conflicting file listed by git status, and once you have resolved _all_ conflicts, finish the cherry-picking operation.

    git cherry-pick --continue

And then cherry-pick more commits until you have everything you want.

That's the basic process. There are ways to modify a cherry-picked commit, to commit only part of a changed file, and other fun stuff, but that's more detail than is really appropriate for a README file.
