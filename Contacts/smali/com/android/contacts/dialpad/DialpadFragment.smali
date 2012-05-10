.class public Lcom/android/contacts/dialpad/DialpadFragment;
.super Landroid/app/Fragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;,
        Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;,
        Lcom/android/contacts/dialpad/DialpadFragment$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sT9Search:Lcom/android/contacts/dialpad/T9Search;


# instance fields
.field mCallLog:Lcom/android/phone/CallLogAsync;

.field private mContactObserver:Landroid/database/ContentObserver;

.field private mContactsUpdated:Z

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/view/View;

.field private mDialButtonContainer:Landroid/view/View;

.field private mDialpad:Landroid/view/View;

.field private mDialpadChooser:Landroid/widget/ListView;

.field private mDialpadChooserAdapter:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

.field private mDigits:Landroid/widget/EditText;

.field private mDigitsContainer:Landroid/view/View;

.field private mHaptic:Lcom/android/phone/HapticFeedback;

.field private mLastNumberDialed:Ljava/lang/String;

.field private mListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

.field private mMenuButton:Landroid/view/View;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

.field private mProhibitedPhoneNumberRegexp:Ljava/lang/String;

.field private mSearchButton:Landroid/view/View;

.field private mShowOptionsMenu:Z

.field private mT9Adapter:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

.field private mT9AdapterTop:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

.field private mT9Flipper:Landroid/widget/ViewSwitcher;

.field private mT9List:Landroid/widget/ListView;

.field private mT9ListTop:Landroid/widget/ListView;

.field private mT9Toggle:Landroid/widget/ToggleButton;

.field private mT9Top:Landroid/widget/LinearLayout;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mWasEmptyBeforeTextChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const-class v0, Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    .line 167
    new-instance v0, Lcom/android/phone/CallLogAsync;

    invoke-direct {v0}, Lcom/android/phone/CallLogAsync;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 174
    new-instance v0, Lcom/android/phone/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    .line 194
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/dialpad/DialpadFragment$1;-><init>(Lcom/android/contacts/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 268
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment$2;-><init>(Lcom/android/contacts/dialpad/DialpadFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mContactObserver:Landroid/database/ContentObserver;

    .line 1323
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/dialpad/DialpadFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialpadChooserVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/dialpad/DialpadFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/contacts/dialpad/DialpadFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mContactsUpdated:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/contacts/dialpad/T9Search;)Lcom/android/contacts/dialpad/T9Search;
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput-object p0, Lcom/android/contacts/dialpad/DialpadFragment;->sT9Search:Lcom/android/contacts/dialpad/T9Search;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/contacts/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/dialpad/DialpadFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    return-void
.end method

.method private animateT9()V
    .locals 12

    .prologue
    .line 858
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 861
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/high16 v7, -0x4080

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 864
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/high16 v10, -0x4080

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 867
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v9, 0x3f80

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 870
    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 871
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 872
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 873
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 874
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 875
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 876
    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 877
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 878
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Toggle:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 879
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Flipper:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 880
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Flipper:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 885
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Flipper:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 886
    return-void

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Flipper:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 883
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Flipper:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 4
    .parameter "anchorView"

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1015
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1016
    const/4 v2, 0x0

    .line 1023
    :goto_0
    return-object v2

    .line 1018
    :cond_0
    new-instance v2, Landroid/widget/PopupMenu;

    invoke-direct {v2, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1019
    .local v2, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1020
    .local v1, menu:Landroid/view/Menu;
    const v3, 0x7f100004

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1021
    invoke-virtual {v2, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1022
    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method private dialOnTap()Z
    .locals 3

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "t9_dial_onclick"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private dialpadChooserVisible()Z
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillDigitsIfNecessary(Landroid/content/Intent;)Z
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 383
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 385
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 386
    .local v10, uri:Landroid/net/Uri;
    if-eqz v10, :cond_4

    .line 387
    const-string v0, "tel"

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 390
    .local v8, data:Ljava/lang/String;
    invoke-direct {p0, v8, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v11

    .line 416
    .end local v8           #data:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :goto_0
    return v0

    .line 393
    .restart local v10       #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 394
    .local v9, type:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 397
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v12

    const-string v4, "number_key"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 400
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 402
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 404
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v11

    goto :goto_0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7           #c:Landroid/database/Cursor;
    .end local v9           #type:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_4
    move v0, v12

    .line 416
    goto :goto_0

    .line 408
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v9       #type:Ljava/lang/String;
    .restart local v10       #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getAddToContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .parameter "digits"

    .prologue
    .line 741
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 742
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 743
    const-string v1, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    return-object v0
.end method

.method private hideT9()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 752
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-nez v1, :cond_1

    .line 753
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isT9On()Z

    move-result v1

    if-nez v1, :cond_0

    .line 754
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->toggleT9()V

    .line 755
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Top:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 771
    :goto_0
    return-void

    .line 757
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Top:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 760
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 761
    .local v0, digitsLayout:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isT9On()Z

    move-result v1

    if-nez v1, :cond_2

    .line 762
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->toggleT9()V

    .line 763
    const v1, 0x3e4ccccd

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 764
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Top:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 769
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 766
    :cond_2
    const v1, 0x3dcccccd

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 767
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Top:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private static isAddCallMode(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 460
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    :cond_0
    const-string v2, "add_call_mode"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 465
    :cond_1
    return v1
.end method

.method private isDigitsEmpty()Z
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLayoutReady()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isT9On()Z
    .locals 3

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "t9_state"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isVoicemailAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1622
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1627
    :cond_0
    :goto_0
    return v0

    .line 1623
    :catch_0
    move-exception v1

    .line 1625
    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "SecurityException is thrown. Maybe privilege isn\'t sufficient."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x0

    .line 889
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v2}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 890
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v3, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 891
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 894
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 895
    .local v1, length:I
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->searchContacts()V

    .line 896
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 897
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 899
    :cond_0
    return-void
.end method

.method private static needToShowDialpadChooser(Landroid/content/Intent;Z)Z
    .locals 4
    .parameter "intent"
    .parameter "isAddCallMode"

    .prologue
    .line 423
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x0

    .line 427
    .local v1, needToShowDialpadChooser:Z
    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 428
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 429
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 436
    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    const/4 v1, 0x1

    .line 456
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return v1

    .line 440
    :cond_2
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 450
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 452
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter

    .prologue
    .line 1701
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1703
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1704
    return-object v0
.end method

.method private newFlashIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1695
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1696
    const-string v1, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1697
    return-object v0
.end method

.method private newVoicemailIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 1688
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1690
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1691
    return-object v0
.end method

.method private phoneIsCdma()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1508
    .line 1510
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1511
    if-eqz v1, :cond_0

    .line 1512
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1517
    :cond_0
    :goto_0
    return v0

    .line 1514
    :catch_0
    move-exception v1

    .line 1515
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.getActivePhoneType() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static phoneIsInUse()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1496
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1497
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1501
    :cond_0
    :goto_0
    return v0

    .line 1498
    :catch_0
    move-exception v1

    .line 1499
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.isIdle() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneIsOffhook()Z
    .locals 4

    .prologue
    .line 1524
    const/4 v0, 0x0

    .line 1526
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1527
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1531
    :cond_0
    :goto_0
    return v0

    .line 1528
    :catch_0
    move-exception v1

    .line 1529
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.isOffhook() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private queryLastOutgoingCall()V
    .locals 3

    .prologue
    .line 1670
    const-string v1, ""

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 1671
    new-instance v0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/dialpad/DialpadFragment$4;

    invoke-direct {v2, p0}, Lcom/android/contacts/dialpad/DialpadFragment$4;-><init>(Lcom/android/contacts/dialpad/DialpadFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;-><init>(Landroid/content/Context;Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;)V

    .line 1683
    .local v0, lastCallArgs:Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallLogAsync;->getLastOutgoingCall(Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;

    .line 1684
    return-void
.end method

.method private returnToInCallScreen(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1472
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1473
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1486
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1487
    return-void

    .line 1474
    :catch_0
    move-exception v0

    .line 1475
    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "phone.showCallScreenWithDialpad() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private searchContacts()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v1, 0x4

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 789
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isT9On()Z

    move-result v0

    if-nez v0, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v7

    .line 792
    .local v7, length:I
    if-lez v7, :cond_7

    .line 793
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->sT9Search:Lcom/android/contacts/dialpad/T9Search;

    if-eqz v0, :cond_0

    .line 794
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->sT9Search:Lcom/android/contacts/dialpad/T9Search;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/dialpad/T9Search;->search(Ljava/lang/String;)Lcom/android/contacts/dialpad/T9Search$T9SearchResult;

    move-result-object v8

    .line 795
    .local v8, result:Lcom/android/contacts/dialpad/T9Search$T9SearchResult;
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9AdapterTop:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    if-nez v0, :cond_3

    .line 796
    new-instance v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment;->sT9Search:Lcom/android/contacts/dialpad/T9Search;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/dialpad/T9Search$T9Adapter;-><init>(Lcom/android/contacts/dialpad/T9Search;Landroid/content/Context;ILjava/util/ArrayList;Landroid/view/LayoutInflater;Lcom/android/contacts/ContactPhotoManager;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9AdapterTop:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    .line 797
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9AdapterTop:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    invoke-virtual {v0, v9}, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->setNotifyOnChange(Z)V

    .line 801
    :goto_1
    if-eqz v8, :cond_6

    .line 802
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Adapter:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    if-nez v0, :cond_4

    .line 803
    new-instance v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment;->sT9Search:Lcom/android/contacts/dialpad/T9Search;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/contacts/dialpad/T9Search$T9SearchResult;->getResults()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/dialpad/T9Search$T9Adapter;-><init>(Lcom/android/contacts/dialpad/T9Search;Landroid/content/Context;ILjava/util/ArrayList;Landroid/view/LayoutInflater;Lcom/android/contacts/ContactPhotoManager;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Adapter:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    .line 804
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Adapter:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    invoke-virtual {v0, v9}, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->setNotifyOnChange(Z)V

    .line 809
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9List:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 810
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9List:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Adapter:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9AdapterTop:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    invoke-virtual {v8}, Lcom/android/contacts/dialpad/T9Search$T9SearchResult;->getTopContact()Lcom/android/contacts/dialpad/T9Search$ContactItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->add(Ljava/lang/Object;)V

    .line 813
    invoke-virtual {v8}, Lcom/android/contacts/dialpad/T9Search$T9SearchResult;->getNumResults()I

    move-result v0

    if-le v0, v9, :cond_5

    .line 814
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Toggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 819
    :goto_3
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Toggle:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTag(Ljava/lang/Object;)V

    .line 827
    :goto_4
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9ListTop:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 828
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9ListTop:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9ListTop:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9AdapterTop:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 799
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9AdapterTop:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    invoke-virtual {v0}, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->clear()V

    goto :goto_1

    .line 806
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Adapter:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    invoke-virtual {v0}, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->clear()V

    .line 807
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Adapter:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    invoke-virtual {v8}, Lcom/android/contacts/dialpad/T9Search$T9SearchResult;->getResults()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->addAll(Ljava/util/Collection;)V

    goto :goto_2

    .line 816
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Toggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v10}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 817
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->toggleT9()V

    goto :goto_3

    .line 821
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9ListTop:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/dialpad/T9Search$ContactItem;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/dialpad/T9Search$ContactItem;->number:Ljava/lang/String;

    .line 822
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9AdapterTop:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9ListTop:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/dialpad/T9Search$ContactItem;

    invoke-virtual {v1, v0}, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->add(Ljava/lang/Object;)V

    .line 823
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Toggle:Landroid/widget/ToggleButton;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v9}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTag(Ljava/lang/Object;)V

    .line 824
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Toggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v10}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 825
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->toggleT9()V

    goto :goto_4

    .line 833
    .end local v8           #result:Lcom/android/contacts/dialpad/T9Search$T9SearchResult;
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9ListTop:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Toggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 835
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->toggleT9()V

    goto/16 :goto_0
.end method

.method private setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "data"
    .parameter "normalizedNumber"

    .prologue
    .line 498
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, dialString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v0, p2, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 503
    .local v1, digits:Landroid/text/Editable;
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 506
    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 508
    .end local v1           #digits:Landroid/text/Editable;
    :cond_0
    return-void
.end method

.method private setupKeypad(Landroid/view/View;)V
    .locals 2
    .parameter "fragmentView"

    .prologue
    .line 512
    const v1, 0x7f0700a6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 513
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 516
    const v1, 0x7f0700a7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    const v1, 0x7f0700a8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    const v1, 0x7f0700a9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    const v1, 0x7f0700aa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    const v1, 0x7f0700ab

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    const v1, 0x7f0700ac

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    const v1, 0x7f0700ad

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    const v1, 0x7f0700ae

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    const v1, 0x7f0700af

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    const v1, 0x7f0700b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 527
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 530
    const v1, 0x7f0700b1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    return-void
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 14
    .parameter "menu"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 669
    const v11, 0x7f070149

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 670
    .local v2, callSettingsMenuItem:Landroid/view/MenuItem;
    const v11, 0x7f070146

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 671
    .local v1, addToContactMenuItem:Landroid/view/MenuItem;
    const v11, 0x7f070147

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 672
    .local v9, twoSecPauseMenuItem:Landroid/view/MenuItem;
    const v11, 0x7f070148

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 676
    .local v10, waitMenuItem:Landroid/view/MenuItem;
    if-nez v2, :cond_0

    .line 738
    :goto_0
    return-void

    .line 680
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 681
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 683
    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 692
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialpadChooserVisible()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 693
    :cond_1
    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 694
    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 695
    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 685
    :cond_2
    invoke-interface {v2, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 686
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    .line 697
    :cond_3
    iget-object v11, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 700
    .local v3, digits:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/contacts/dialpad/DialpadFragment;->getAddToContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v11

    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 701
    invoke-interface {v1, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 706
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 708
    .local v6, strDigits:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    .line 709
    .local v5, selectionStart:I
    iget-object v11, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    .line 711
    .local v4, selectionEnd:I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_6

    .line 712
    if-le v5, v4, :cond_4

    .line 714
    move v8, v5

    .line 715
    .local v8, tmp:I
    move v5, v4

    .line 716
    move v4, v8

    .line 719
    .end local v8           #tmp:I
    :cond_4
    if-eqz v5, :cond_5

    .line 721
    invoke-interface {v9, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 724
    invoke-static {v5, v4, v6}, Lcom/android/contacts/dialpad/DialpadFragment;->showWait(IILjava/lang/String;)Z

    move-result v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 727
    :cond_5
    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 728
    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 731
    :cond_6
    invoke-interface {v9, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 734
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 735
    .local v7, strLength:I
    invoke-static {v7, v7, v6}, Lcom/android/contacts/dialpad/DialpadFragment;->showWait(IILjava/lang/String;)Z

    move-result v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private showDialpadChooser(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1268
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    if-eqz p1, :cond_6

    .line 1274
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1275
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1280
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1281
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1283
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1287
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

    if-nez v0, :cond_4

    .line 1288
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

    .line 1290
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1278
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    .line 1292
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isT9On()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1293
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Flipper:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9List:Landroid/widget/ListView;

    if-eq v0, v1, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Toggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1295
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->searchContacts()V

    .line 1301
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1302
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1306
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1307
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1308
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 1304
    :cond_a
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2
.end method

.method private static showWait(IILjava/lang/String;)Z
    .locals 3
    .parameter "start"
    .parameter "end"
    .parameter "digits"

    .prologue
    const/16 v2, 0x3b

    const/4 v0, 0x0

    .line 1636
    if-ne p0, p1, :cond_3

    .line 1638
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le p0, v1, :cond_1

    .line 1653
    :cond_0
    :goto_0
    return v0

    .line 1641
    :cond_1
    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1644
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p0, :cond_2

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1653
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1647
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 1651
    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0
.end method

.method private toggleT9()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Flipper:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9List:Landroid/widget/ListView;

    if-ne v0, v1, :cond_0

    .line 779
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Toggle:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 780
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->animateT9()V

    .line 782
    :cond_0
    return-void
.end method

.method private updateDialAndDeleteButtonEnabledState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1593
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 1595
    .local v0, digitsNotEmpty:Z
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1599
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1600
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1610
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1611
    return-void

    .end local v0           #digitsNotEmpty:Z
    :cond_1
    move v0, v2

    .line 1593
    goto :goto_0

    .line 1606
    .restart local v0       #digitsNotEmpty:Z
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateDialString(Ljava/lang/String;)V
    .locals 8
    .parameter "newDigits"

    .prologue
    .line 1566
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1567
    .local v0, anchor:I
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    .line 1569
    .local v3, point:I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1570
    .local v5, selectionStart:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1572
    .local v4, selectionEnd:I
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1573
    .local v1, digits:Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1574
    if-ne v5, v4, :cond_0

    .line 1577
    invoke-interface {v1, v5, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1587
    :goto_0
    return-void

    .line 1579
    :cond_0
    invoke-interface {v1, v5, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1581
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1584
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 1585
    .local v2, len:I
    invoke-interface {v1, v2, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "input"

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 245
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    .line 246
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    .line 221
    return-void
.end method

.method public callVoicemail()V
    .locals 1

    .prologue
    .line 1069
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->newVoicemailIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 1070
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 1071
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1072
    return-void
.end method

.method public configureScreenFromIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 479
    sget-object v3, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "Screen configuration is requested before onCreateView() is called. Ignored"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_0
    return-void

    .line 484
    :cond_0
    const/4 v2, 0x0

    .line 486
    .local v2, needToShowDialpadChooser:Z
    invoke-static {p1}, Lcom/android/contacts/dialpad/DialpadFragment;->isAddCallMode(Landroid/content/Intent;)Z

    move-result v1

    .line 487
    .local v1, isAddCallMode:Z
    if-nez v1, :cond_1

    .line 488
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    move-result v0

    .line 489
    .local v0, digitsFilled:Z
    if-nez v0, :cond_1

    .line 490
    invoke-static {p1, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->needToShowDialpadChooser(Landroid/content/Intent;Z)Z

    move-result v2

    .line 493
    .end local v0           #digitsFilled:Z
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_0
.end method

.method public dialButtonPressed()V
    .locals 3

    .prologue
    .line 1148
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1149
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->newFlashIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 1209
    :goto_0
    return-void

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1157
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1168
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->searchContacts()V

    goto :goto_0

    .line 1176
    :cond_1
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    goto :goto_0

    .line 1180
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1185
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "persist.radio.otaspdial"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 1189
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "The phone number is prohibited explicitly by a rule."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1191
    const v0, 0x7f0c0207

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 1193
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "phone_prohibited_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1197
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 1199
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1200
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v1, :cond_5

    .line 1201
    const-string v1, "com.android.phone.CALL_ORIGIN"

    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 1205
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 1206
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v3, 0x7

    const/4 v2, 0x1

    .line 916
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1011
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 918
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 919
    invoke-direct {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 923
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 924
    invoke-direct {p0, v5}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 928
    :pswitch_3
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 929
    invoke-direct {p0, v6}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 933
    :pswitch_4
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 934
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 938
    :pswitch_5
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 939
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 943
    :pswitch_6
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 944
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 948
    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 949
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 953
    :pswitch_8
    invoke-virtual {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 954
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 958
    :pswitch_9
    invoke-virtual {p0, v5}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 959
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 963
    :pswitch_a
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 964
    invoke-direct {p0, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 968
    :pswitch_b
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 969
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 973
    :pswitch_c
    invoke-virtual {p0, v6}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 974
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 978
    :pswitch_d
    const/16 v1, 0x43

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 982
    :pswitch_e
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 983
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressed()V

    goto :goto_0

    .line 987
    :pswitch_f
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 988
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

    if-eqz v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

    invoke-interface {v1}, Lcom/android/contacts/dialpad/DialpadFragment$Listener;->onSearchButtonPressed()V

    goto/16 :goto_0

    .line 994
    :pswitch_10
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 995
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 1000
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    .line 1001
    .local v0, popup:Landroid/widget/PopupMenu;
    if-eqz v0, :cond_0

    .line 1002
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 1007
    .end local v0           #popup:Landroid/widget/PopupMenu;
    :pswitch_12
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->animateT9()V

    goto/16 :goto_0

    .line 916
    :pswitch_data_0
    .packed-switch 0x7f0700a6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    .line 252
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManager;->preloadPhotosInBackground()V

    .line 253
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->setHasOptionsMenu(Z)V

    .line 264
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    .line 266
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, nfe:Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "Vibrate control bool missing."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 650
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 651
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 652
    .local v0, isLandscape:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mShowOptionsMenu:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 654
    const v1, 0x7f100004

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 656
    :cond_1
    return-void

    .line 651
    .end local v0           #isLandscape:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v9, 0x0

    .line 277
    const v7, 0x7f04003d

    invoke-virtual {p1, v7, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 280
    .local v3, fragmentView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 282
    .local v6, r:Landroid/content/res/Resources;
    const v7, 0x7f0700b3

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    .line 283
    const v7, 0x7f0700b4

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    .line 284
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 285
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v7, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v7, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 287
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v7, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 288
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v7, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 289
    const v7, 0x7f0700bb

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9List:Landroid/widget/ListView;

    .line 290
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9List:Landroid/widget/ListView;

    if-eqz v7, :cond_0

    .line 291
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9List:Landroid/widget/ListView;

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 293
    :cond_0
    const v7, 0x7f0700b8

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9ListTop:Landroid/widget/ListView;

    .line 294
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9ListTop:Landroid/widget/ListView;

    if-eqz v7, :cond_1

    .line 295
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9ListTop:Landroid/widget/ListView;

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 296
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9ListTop:Landroid/widget/ListView;

    new-instance v8, Lcom/android/contacts/dialpad/T9Search$ContactItem;

    invoke-direct {v8}, Lcom/android/contacts/dialpad/T9Search$ContactItem;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 298
    :cond_1
    const v7, 0x7f0700b9

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    iput-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Toggle:Landroid/widget/ToggleButton;

    .line 299
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Toggle:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_2

    .line 300
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Toggle:Landroid/widget/ToggleButton;

    invoke-virtual {v7, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    :cond_2
    const v7, 0x7f0700ba

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ViewSwitcher;

    iput-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Flipper:Landroid/widget/ViewSwitcher;

    .line 303
    const v7, 0x7f0700b7

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Top:Landroid/widget/LinearLayout;

    .line 305
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {v7, v8}, Lcom/android/contacts/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 308
    .local v1, dm:Landroid/util/DisplayMetrics;
    const/high16 v7, 0x4260

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 309
    .local v4, minCellSize:I
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v0, v7, v4

    .line 310
    .local v0, cellCount:I
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v2, v7, v0

    .line 314
    .local v2, fakeMenuItemWidth:I
    const v7, 0x7f0700b5

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMenuButton:Landroid/view/View;

    .line 315
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMenuButton:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 316
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMenuButton:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 317
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 319
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMenuButton:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :cond_3
    :goto_0
    const v7, 0x7f0700bd

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSearchButton:Landroid/view/View;

    .line 325
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSearchButton:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 326
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSearchButton:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 327
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSearchButton:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    :cond_4
    const v7, 0x7f0700a6

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 332
    .local v5, oneButton:Landroid/view/View;
    if-eqz v5, :cond_5

    .line 333
    invoke-direct {p0, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->setupKeypad(Landroid/view/View;)V

    .line 336
    :cond_5
    const v7, 0x7f0700bc

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    .line 337
    const v7, 0x7f0700be

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    .line 338
    const v7, 0x7f0b0006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 339
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    :goto_1
    const v7, 0x7f0700b6

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    .line 346
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v7, :cond_6

    .line 347
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 351
    :cond_6
    const v7, 0x7f0700a5

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    .line 354
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-nez v7, :cond_9

    .line 355
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 361
    :goto_2
    const v7, 0x7f0700bf

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    .line 362
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/contacts/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    .line 366
    iget-boolean v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mShowOptionsMenu:Z

    invoke-virtual {p0, v7}, Lcom/android/contacts/dialpad/DialpadFragment;->updateFakeMenuButtonsVisibility(Z)V

    .line 368
    return-object v3

    .line 321
    .end local v5           #oneButton:Landroid/view/View;
    :cond_7
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMenuButton:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 341
    .restart local v5       #oneButton:Landroid/view/View;
    :cond_8
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 342
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    goto :goto_1

    .line 357
    :cond_9
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1418
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9List:Landroid/widget/ListView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9ListTop:Landroid/widget/ListView;

    if-ne p1, v0, :cond_4

    .line 1419
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9List:Landroid/widget/ListView;

    if-ne p1, v0, :cond_2

    .line 1420
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Adapter:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    invoke-virtual {v0, p3}, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/dialpad/T9Search$ContactItem;

    iget-object v0, v0, Lcom/android/contacts/dialpad/T9Search$ContactItem;->number:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialOnTap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1430
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressed()V

    .line 1463
    :cond_1
    :goto_1
    return-void

    .line 1422
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Toggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1423
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9AdapterTop:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    invoke-virtual {v0, p3}, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/dialpad/T9Search$ContactItem;

    iget-object v0, v0, Lcom/android/contacts/dialpad/T9Search$ContactItem;->number:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1425
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->getAddToContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1434
    :cond_4
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    .line 1436
    iget v0, v0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->id:I

    .line 1437
    packed-switch v0, :pswitch_data_0

    .line 1460
    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick: unexpected itemId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1442
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_1

    .line 1449
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_1

    .line 1456
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_1

    .line 1437
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 902
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 911
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 904
    :pswitch_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 905
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressed()V

    .line 906
    const/4 v0, 0x1

    goto :goto_1

    .line 908
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->searchContacts()V

    goto :goto_0

    .line 902
    :pswitch_data_0
    .packed-switch 0x7f0700b4
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1027
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1028
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 1029
    sparse-switch v3, :sswitch_data_0

    move v0, v1

    .line 1065
    :cond_0
    :goto_0
    return v0

    .line 1031
    :sswitch_0
    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 1032
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->searchContacts()V

    .line 1036
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1040
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1041
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isVoicemailAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1042
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->callVoicemail()V

    goto :goto_0

    .line 1043
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1044
    const v1, 0x7f0c0208

    const v2, 0x7f0c0209

    invoke-static {v1, v2}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(II)Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v1

    .line 1047
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "voicemail_not_ready"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1051
    goto :goto_0

    .line 1054
    :sswitch_2
    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1061
    :sswitch_3
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    move v0, v1

    .line 1062
    goto :goto_0

    .line 1029
    :sswitch_data_0
    .sparse-switch
        0x7f0700a6 -> :sswitch_1
        0x7f0700b0 -> :sswitch_2
        0x7f0700b4 -> :sswitch_3
        0x7f0700b6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1554
    invoke-virtual {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1540
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1548
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1542
    :pswitch_0
    const-string v1, ","

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialString(Ljava/lang/String;)V

    goto :goto_0

    .line 1545
    :pswitch_1
    const-string v1, ";"

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialString(Ljava/lang/String;)V

    goto :goto_0

    .line 1540
    :pswitch_data_0
    .packed-switch 0x7f070147
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 626
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 629
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 631
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 633
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 636
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 638
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    const-string v1, ""

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 642
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isT9On()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 646
    :cond_1
    return-void

    .line 638
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 662
    .local v0, isLandscape:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mShowOptionsMenu:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 664
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 666
    :cond_1
    return-void

    .line 660
    .end local v0           #isLandscape:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 535
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 537
    sget-object v6, Lcom/android/contacts/dialpad/DialpadFragment;->sT9Search:Lcom/android/contacts/dialpad/T9Search;

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isT9On()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    iget-boolean v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mContactsUpdated:Z

    if-eqz v6, :cond_2

    .line 538
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v6, Lcom/android/contacts/dialpad/DialpadFragment$3;

    invoke-direct {v6, p0}, Lcom/android/contacts/dialpad/DialpadFragment$3;-><init>(Lcom/android/contacts/dialpad/DialpadFragment;)V

    invoke-direct {v1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 543
    .local v1, loadContacts:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 544
    iget-boolean v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mContactsUpdated:Z

    if-eqz v6, :cond_2

    .line 545
    iput-boolean v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mContactsUpdated:Z

    .line 546
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/contacts/dialpad/DialpadFragment;->onLongClick(Landroid/view/View;)Z

    .line 547
    iput-object v9, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Adapter:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    .line 548
    iput-object v9, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9AdapterTop:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    .line 549
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9ListTop:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9AdapterTop:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 550
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9List:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mT9Adapter:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 554
    .end local v1           #loadContacts:Ljava/lang/Thread;
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isT9On()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 555
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 558
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->hideT9()V

    .line 561
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->queryLastOutgoingCall()V

    .line 564
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dtmf_tone"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_6

    :goto_0
    iput-boolean v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    .line 568
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v4}, Lcom/android/phone/HapticFeedback;->checkSystemSetting()V

    .line 572
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v6

    .line 573
    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_4

    .line 578
    :try_start_1
    new-instance v4, Landroid/media/ToneGenerator;

    const/4 v7, 0x3

    const/16 v8, 0x50

    invoke-direct {v4, v7, v8}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 579
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Landroid/app/Activity;->setVolumeControlStream(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 585
    :cond_4
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 587
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 588
    .local v2, parent:Landroid/app/Activity;
    instance-of v4, v2, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v4, :cond_5

    .line 591
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    .line 597
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v6, "phone"

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 599
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v3, v4, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 610
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 611
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const v5, 0x7f0c0094

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 621
    :goto_2
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    .line 622
    return-void

    .end local v2           #parent:Landroid/app/Activity;
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_6
    move v4, v5

    .line 564
    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v4, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception caught while creating local tone generator: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_1

    .line 585
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 614
    .restart local v2       #parent:Landroid/app/Activity;
    .restart local v3       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_7
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 618
    invoke-direct {p0, v5}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 224
    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 226
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 233
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .parameter "fragmentVisible"

    .prologue
    .line 1713
    iput-boolean p1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mShowOptionsMenu:Z

    .line 1714
    invoke-virtual {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->updateFakeMenuButtonsVisibility(Z)V

    .line 1715
    return-void
.end method

.method playTone(I)V
    .locals 4
    .parameter

    .prologue
    .line 1222
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1233
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1234
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1239
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1240
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_2

    .line 1241
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    monitor-exit v1

    goto :goto_0

    .line 1247
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1246
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x96

    invoke-virtual {v0, p1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1247
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/dialpad/DialpadFragment$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1708
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

    .line 1709
    return-void
.end method

.method public updateFakeMenuButtonsVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1727
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSearchButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1728
    if-eqz p1, :cond_2

    .line 1729
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSearchButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1734
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMenuButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1735
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1736
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1741
    :cond_1
    :goto_1
    return-void

    .line 1731
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSearchButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1738
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
