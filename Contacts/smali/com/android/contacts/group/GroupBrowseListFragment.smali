.class public Lcom/android/contacts/group/GroupBrowseListFragment;
.super Landroid/app/Fragment;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/group/GroupBrowseListAdapter;

.field private mAddAccountButton:Landroid/view/View;

.field private mAddAccountsView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/widget/TextView;

.field private mGroupListCursor:Landroid/database/Cursor;

.field private final mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lcom/android/contacts/widget/AutoScrollListView;

.field private mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

.field private mRootView:Landroid/view/View;

.field private mSelectedGroupUri:Landroid/net/Uri;

.field private mSelectionToScreenRequested:Z

.field private mSelectionVisible:Z

.field private mVerticalScrollbarPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 94
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mVerticalScrollbarPosition:I

    .line 196
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$3;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->viewGroup(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mGroupListCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/group/GroupBrowseListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->bindGroupList()V

    return-void
.end method

.method private bindGroupList()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x7f0c0063

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->areGroupWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mGroupListCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 232
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 217
    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListAdapter;

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mGroupListCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v2}, Lcom/android/contacts/group/GroupBrowseListAdapter;->setCursor(Landroid/database/Cursor;)V

    .line 223
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z

    if-eqz v0, :cond_3

    .line 224
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 225
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->requestSelectionToScreen()V

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getSelectedGroup()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    .line 229
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->viewGroup(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method private configureVerticalScrollbar()V
    .locals 5

    .prologue
    const v4, 0x7f09001f

    .line 160
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListView:Lcom/android/contacts/widget/AutoScrollListView;

    iget v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {v2, v3}, Lcom/android/contacts/widget/AutoScrollListView;->setVerticalScrollbarPosition(I)V

    .line 161
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListView:Lcom/android/contacts/widget/AutoScrollListView;

    const/high16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/contacts/widget/AutoScrollListView;->setScrollBarStyle(I)V

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, leftPadding:I
    const/4 v1, 0x0

    .line 164
    .local v1, rightPadding:I
    iget v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mVerticalScrollbarPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 171
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListView:Lcom/android/contacts/widget/AutoScrollListView;

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListView:Lcom/android/contacts/widget/AutoScrollListView;

    invoke-virtual {v3}, Lcom/android/contacts/widget/AutoScrollListView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListView:Lcom/android/contacts/widget/AutoScrollListView;

    invoke-virtual {v4}, Lcom/android/contacts/widget/AutoScrollListView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/android/contacts/widget/AutoScrollListView;->setPadding(IIII)V

    .line 173
    return-void

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 279
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListView:Lcom/android/contacts/widget/AutoScrollListView;

    invoke-virtual {v1}, Lcom/android/contacts/widget/AutoScrollListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setSelectedGroup(Landroid/net/Uri;)V
    .locals 1
    .parameter "groupUri"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    .line 247
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->setSelectedGroup(Landroid/net/Uri;)V

    .line 248
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListView:Lcom/android/contacts/widget/AutoScrollListView;

    invoke-virtual {v0}, Lcom/android/contacts/widget/AutoScrollListView;->invalidateViews()V

    .line 249
    return-void
.end method

.method private viewGroup(Landroid/net/Uri;)V
    .locals 1
    .parameter "groupUri"

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setSelectedGroup(Landroid/net/Uri;)V

    .line 253
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;->onViewGroupAction(Landroid/net/Uri;)V

    .line 254
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 178
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    .line 179
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 104
    if-eqz p3, :cond_0

    .line 105
    const-string v0, "groups.groupUri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    .line 106
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 109
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 113
    :cond_0
    const v0, 0x7f040055

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0700da

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mEmptyView:Landroid/widget/TextView;

    .line 116
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListAdapter;

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/contacts/group/GroupBrowseListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListAdapter;

    .line 117
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListAdapter;

    iget-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v2}, Lcom/android/contacts/group/GroupBrowseListAdapter;->setSelectionVisible(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListAdapter;

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/android/contacts/group/GroupBrowseListAdapter;->setSelectedGroup(Landroid/net/Uri;)V

    .line 120
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0700d9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/widget/AutoScrollListView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListView:Lcom/android/contacts/widget/AutoScrollListView;

    .line 121
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListView:Lcom/android/contacts/widget/AutoScrollListView;

    invoke-virtual {v0, p0}, Lcom/android/contacts/widget/AutoScrollListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 122
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListView:Lcom/android/contacts/widget/AutoScrollListView;

    invoke-virtual {v0, p0}, Lcom/android/contacts/widget/AutoScrollListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListView:Lcom/android/contacts/widget/AutoScrollListView;

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/widget/AutoScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListView:Lcom/android/contacts/widget/AutoScrollListView;

    new-instance v2, Lcom/android/contacts/group/GroupBrowseListFragment$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$1;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/widget/AutoScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListView:Lcom/android/contacts/widget/AutoScrollListView;

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/widget/AutoScrollListView;->setEmptyView(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0700db

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAddAccountsView:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f07007a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAddAccountButton:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAddAccountButton:Landroid/view/View;

    new-instance v2, Lcom/android/contacts/group/GroupBrowseListFragment$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$2;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->areGroupWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    return-object v0

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    .line 185
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListView:Lcom/android/contacts/widget/AutoScrollListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->hideSoftKeyboard()V

    .line 290
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 306
    const-string v0, "groups.groupUri"

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 307
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 190
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 191
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListView:Lcom/android/contacts/widget/AutoScrollListView;

    if-ne p1, v0, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->hideSoftKeyboard()V

    .line 300
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected requestSelectionToScreen()V
    .locals 3

    .prologue
    .line 262
    iget-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionVisible:Z

    if-nez v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getSelectedGroupPosition()I

    move-result v0

    .line 266
    .local v0, selectedPosition:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListView:Lcom/android/contacts/widget/AutoScrollListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/widget/AutoScrollListView;->requestPositionToScreen(IZ)V

    goto :goto_0
.end method

.method public setAddAccountsVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAddAccountsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAddAccountsView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_0
    return-void

    .line 311
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    .line 236
    return-void
.end method

.method public setSelectedUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "groupUri"

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->viewGroup(Landroid/net/Uri;)V

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 259
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionVisible:Z

    .line 240
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListAdapter;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->setSelectionVisible(Z)V

    .line 243
    :cond_0
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 153
    iget v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    .line 154
    iput p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mVerticalScrollbarPosition:I

    .line 155
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->configureVerticalScrollbar()V

    .line 157
    :cond_0
    return-void
.end method
