.class public Lcom/android/contacts/activities/DialtactsActivity;
.super Lcom/android/contacts/activities/TransactionSafeActivity;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;,
        Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;,
        Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;
    }
.end annotation


# instance fields
.field private mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private final mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

.field private mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

.field private mDialpadListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

.field mDuringSwipe:Z

.field private final mFilterOptionClickListener:Landroid/view/View$OnClickListener;

.field private mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFilterText:Ljava/lang/String;

.field private final mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private mInSearchUi:Z

.field private mLastManuallySelectedFragment:I

.field private final mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

.field private mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

.field private mPhoneFavoriteListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

.field private final mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

.field private final mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

.field private mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mSearchView:Landroid/widget/SearchView;

.field private final mTabListener:Landroid/app/ActionBar$TabListener;

.field mUserTabClick:Z

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;-><init>()V

    .line 157
    iput-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 165
    iput-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 253
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    .line 258
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$1;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .line 282
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$2;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 336
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$3;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionClickListener:Landroid/view/View$OnClickListener;

    .line 358
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$4;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 368
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$5;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 381
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$6;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    .line 406
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$7;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 435
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$8;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$8;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    .line 446
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$9;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$9;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 837
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$11;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$11;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

    .line 844
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$12;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$12;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/dialpad/DialpadFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/DialtactsActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->addSearchFragment()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->showInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneFavoriteFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneNumberPickerFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/contacts/activities/DialtactsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->enterSearchUi()V

    return-void
.end method

.method private addSearchFragment()V
    .locals 3

    .prologue
    .line 534
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v2, :cond_0

    .line 543
    :goto_0
    return-void

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 537
    .local v0, ft:Landroid/app/FragmentTransaction;
    new-instance v1, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 539
    .local v1, searchFragment:Landroid/app/Fragment;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 540
    const v2, 0x7f0700c0

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 541
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 542
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private enterSearchUi()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 963
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-nez v3, :cond_0

    .line 1005
    :goto_0
    return-void

    .line 972
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v3, :cond_1

    .line 973
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->prepareSearchView()V

    .line 976
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 978
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 981
    .local v1, tab:Landroid/app/ActionBar$Tab;
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v3

    if-nez v3, :cond_2

    .line 982
    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    iput v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 985
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 987
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 988
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 989
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 990
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 992
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-direct {p0, v3, v6}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 995
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v3, v5}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 996
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 997
    .local v2, transaction:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 998
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 999
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1003
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 1004
    iput-boolean v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    goto :goto_0
.end method

.method private exitSearchUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1028
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1031
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v2, :cond_0

    .line 1032
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 1034
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1035
    .local v1, transaction:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1036
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1040
    .end local v1           #transaction:Landroid/app/FragmentTransaction;
    :cond_0
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1041
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1042
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1044
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 1047
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 1048
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 1050
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1052
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/contacts/activities/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V

    .line 1055
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    .line 1058
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 1059
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    .line 1060
    return-void
.end method

.method private fixIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 655
    const-string v0, "android.intent.action.CALL_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    const-string v0, "call_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 658
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 660
    :cond_0
    return-void
.end method

.method public static getCallSettingsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1084
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1085
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1087
    return-object v0
.end method

.method private getFragmentAt(I)Landroid/app/Fragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 1063
    packed-switch p1, :pswitch_data_0

    .line 1071
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown fragment index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1065
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    .line 1069
    :goto_0
    return-object v0

    .line 1067
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    goto :goto_0

    .line 1069
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    goto :goto_0

    .line 1063
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hideInputMethod(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1017
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1018
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1019
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1021
    :cond_0
    return-void
.end method

.method private isDialIntent(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 777
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.phone.action.TOUCH_DIALER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 787
    :cond_0
    :goto_0
    return v2

    .line 781
    :cond_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 782
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 783
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_2

    const-string v3, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 787
    .end local v1           #data:Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSendKeyWhileInCall(Landroid/content/Intent;Z)Z
    .locals 6
    .parameter "intent"
    .parameter "recentCallsRequest"

    .prologue
    const/4 v3, 0x0

    .line 696
    if-eqz p2, :cond_0

    .line 697
    const-string v4, "call_key"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 700
    .local v0, callKey:Z
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 701
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 702
    const/4 v3, 0x1

    .line 709
    .end local v0           #callKey:Z
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v3

    .line 704
    .restart local v0       #callKey:Z
    :catch_0
    move-exception v1

    .line 705
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "DialtactsActivity"

    const-string v5, "Failed to handle send while in call"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private prepareSearchView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 546
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04003f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 548
    .local v1, searchViewLayout:Landroid/view/View;
    const v2, 0x7f070083

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 549
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 550
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 557
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 558
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0c01b6

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v5}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 560
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/contacts/activities/DialtactsActivity$10;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/DialtactsActivity$10;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 569
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-nez v2, :cond_0

    .line 571
    const v2, 0x7f0700c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 572
    .local v0, filterOptionView:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 573
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    .end local v0           #filterOptionView:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 578
    return-void
.end method

.method private sendFragmentVisibilityChange(IZ)V
    .locals 2
    .parameter "position"
    .parameter "visibility"

    .prologue
    .line 1076
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    .line 1077
    .local v0, fragment:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;

    if-eqz v1, :cond_0

    .line 1078
    check-cast v0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;

    .end local v0           #fragment:Landroid/app/Fragment;
    invoke-interface {v0, p2}, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;->onVisibilityChanged(Z)V

    .line 1080
    :cond_0
    return-void
.end method

.method private setCurrentTab(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 719
    const-string v4, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 720
    .local v1, recentCallsRequest:Z
    invoke-direct {p0, p1, v1}, Lcom/android/contacts/activities/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->finish()V

    .line 750
    :goto_0
    return-void

    .line 727
    :cond_0
    iget v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 730
    .local v2, savedTabIndex:I
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 731
    :cond_1
    const/4 v3, 0x0

    .line 738
    .local v3, tabIndex:I
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 739
    .local v0, previousItemIndex:I
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v3, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 740
    if-eq v0, v3, :cond_2

    .line 741
    invoke-direct {p0, v0, v6}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 743
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v4, v3}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->setCurrentPosition(I)V

    .line 744
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 747
    iput v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 748
    iput-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 749
    iput-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    goto :goto_0

    .line 732
    .end local v0           #previousItemIndex:I
    .end local v3           #tabIndex:I
    :cond_3
    if-eqz v1, :cond_4

    .line 733
    const/4 v3, 0x1

    .restart local v3       #tabIndex:I
    goto :goto_1

    .line 735
    .end local v3           #tabIndex:I
    :cond_4
    iget v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .restart local v3       #tabIndex:I
    goto :goto_1
.end method

.method private setupCallLog()V
    .locals 2

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 672
    .local v0, tab:Landroid/app/ActionBar$Tab;
    const v1, 0x7f0c0080

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 673
    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 674
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 675
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 676
    return-void
.end method

.method private setupDialer()V
    .locals 2

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 664
    .local v0, tab:Landroid/app/ActionBar$Tab;
    const v1, 0x7f0c007c

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 665
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 666
    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 667
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 668
    return-void
.end method

.method private setupFavorites()V
    .locals 2

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 680
    .local v0, tab:Landroid/app/ActionBar$Tab;
    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 681
    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 682
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 683
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 684
    return-void
.end method

.method private setupFilterText(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 812
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    const-string v1, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, filter:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 817
    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterText:Ljava/lang/String;

    goto :goto_0
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1008
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1009
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1010
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1011
    const-string v1, "DialtactsActivity"

    const-string v2, "Failed to show soft input method."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1092
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1102
    :goto_0
    return-void

    .line 1095
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1097
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-static {v0, p2, p3}, Lcom/android/contacts/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V

    goto :goto_0

    .line 1095
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 5
    .parameter "fragment"

    .prologue
    const/4 v4, 0x1

    .line 584
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 586
    .local v0, currentPosition:I
    :goto_0
    instance-of v2, p1, Lcom/android/contacts/dialpad/DialpadFragment;

    if-eqz v2, :cond_2

    .line 587
    check-cast p1, Lcom/android/contacts/dialpad/DialpadFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    .line 588
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

    invoke-virtual {v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->setListener(Lcom/android/contacts/dialpad/DialpadFragment$Listener;)V

    .line 589
    if-nez v0, :cond_0

    .line 590
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->onVisibilityChanged(Z)V

    .line 630
    :cond_0
    :goto_1
    return-void

    .line 584
    .end local v0           #currentPosition:I
    .restart local p1
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 592
    .restart local v0       #currentPosition:I
    :cond_2
    instance-of v2, p1, Lcom/android/contacts/calllog/CallLogFragment;

    if-eqz v2, :cond_3

    .line 593
    check-cast p1, Lcom/android/contacts/calllog/CallLogFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    .line 594
    if-ne v0, v4, :cond_0

    .line 595
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/calllog/CallLogFragment;->onVisibilityChanged(Z)V

    goto :goto_1

    .line 597
    .restart local p1
    :cond_3
    instance-of v2, p1, Lcom/android/contacts/list/PhoneFavoriteFragment;

    if-eqz v2, :cond_4

    .line 598
    check-cast p1, Lcom/android/contacts/list/PhoneFavoriteFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    .line 599
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneFavoriteFragment;->setListener(Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;)V

    .line 600
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 602
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneFavoriteFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_1

    .line 604
    .restart local p1
    :cond_4
    instance-of v2, p1, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v2, :cond_0

    .line 605
    check-cast p1, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .line 606
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V

    .line 607
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setQuickContactEnabled(Z)V

    .line 608
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setDarkTheme(Z)V

    .line 609
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    sget-object v3, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    .line 610
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 612
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 621
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 624
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 626
    .local v1, transaction:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 627
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v0, :cond_0

    .line 825
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    .line 835
    :goto_0
    return-void

    .line 826
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 833
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 458
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 460
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 461
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 463
    const v1, 0x7f04003e

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->setContentView(I)V

    .line 465
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 466
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 468
    const v1, 0x7f0700c0

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 470
    const v1, 0x7f070060

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 471
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 472
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 475
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupDialer()V

    .line 476
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupCallLog()V

    .line 477
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupFavorites()V

    .line 478
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 479
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 480
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 483
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 484
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "DialtactsActivity_last_manually_selected_tab"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 486
    iget v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 488
    iput v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 491
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 493
    const-string v1, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 495
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 497
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 857
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 858
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 518
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onDestroy()V

    .line 519
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->removeListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 520
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "newIntent"

    .prologue
    .line 754
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 755
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 756
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 757
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 761
    :cond_0
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 762
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    .line 765
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_3

    .line 766
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    if-eqz v1, :cond_4

    .line 767
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v1, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    .line 772
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    .line 773
    return-void

    .line 769
    :cond_4
    const-string v1, "DialtactsActivity"

    const-string v2, "DialpadFragment isn\'t ready yet when the tab is already selected."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 645
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onPause()V

    .line 647
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DialtactsActivity_last_manually_selected_tab"

    iget v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 649
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .parameter "menu"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 863
    const v7, 0x7f07014a

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 864
    .local v4, searchMenuItem:Landroid/view/MenuItem;
    const v7, 0x7f07014c

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 865
    .local v3, filterOptionMenuItem:Landroid/view/MenuItem;
    const v7, 0x7f07014d

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 866
    .local v0, addContactOptionMenuItem:Landroid/view/MenuItem;
    const v7, 0x7f07014b

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 867
    .local v1, callSettingsMenuItem:Landroid/view/MenuItem;
    const v7, 0x7f07014e

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 868
    .local v2, fakeMenuItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v6

    .line 869
    .local v6, tab:Landroid/app/ActionBar$Tab;
    iget-boolean v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v7, :cond_1

    .line 870
    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 871
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 872
    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 873
    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 875
    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 876
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.INSERT"

    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 883
    :goto_0
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 884
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 938
    :goto_1
    return v11

    .line 880
    :cond_0
    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 881
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 887
    :cond_1
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    if-nez v7, :cond_5

    .line 892
    iget-boolean v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    if-eqz v7, :cond_3

    .line 894
    :cond_2
    invoke-interface {v4, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 895
    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 896
    const/4 v5, 0x1

    .line 898
    .local v5, showCallSettingsMenu:Z
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v7

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 918
    :goto_2
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 919
    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 920
    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 922
    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 923
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.INSERT"

    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 930
    :goto_3
    if-eqz v5, :cond_7

    .line 931
    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 932
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    .line 900
    .end local v5           #showCallSettingsMenu:Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v11, :cond_4

    .line 901
    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 902
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 910
    :goto_4
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    .restart local v5       #showCallSettingsMenu:Z
    goto :goto_2

    .line 904
    .end local v5           #showCallSettingsMenu:Z
    :cond_4
    invoke-interface {v4, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 905
    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 906
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v7

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 913
    :cond_5
    invoke-interface {v4, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 914
    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 915
    const/4 v5, 0x1

    .line 916
    .restart local v5       #showCallSettingsMenu:Z
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v7

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 926
    :cond_6
    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 927
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 934
    :cond_7
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 634
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onResume()V

    .line 635
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "misc_sensor_rotation"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->setRequestedOrientation(I)V

    .line 641
    :goto_0
    return-void

    .line 639
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 501
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onStart()V

    .line 502
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 509
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    if-eqz v0, :cond_3

    .line 511
    :cond_2
    iput-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 512
    iput-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 514
    :cond_3
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    .line 945
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->showInputMethod(Landroid/view/View;)V

    .line 957
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    goto :goto_0

    .line 952
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->enterSearchUi()V

    goto :goto_0

    .line 955
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/activities/TransactionSafeActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0
.end method
