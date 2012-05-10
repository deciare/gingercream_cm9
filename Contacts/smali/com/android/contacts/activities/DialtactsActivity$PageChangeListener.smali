.class Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeListener"
.end annotation


# instance fields
.field private mCurrentPosition:I

.field private mNextPosition:I

.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 167
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    .line 173
    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 207
    packed-switch p1, :pswitch_data_0

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v2, v0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 212
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v2, v0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 214
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    if-ltz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    #calls: Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$100(Lcom/android/contacts/activities/DialtactsActivity;IZ)V

    .line 217
    :cond_1
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    if-ltz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    #calls: Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V
    invoke-static {v0, v1, v3}, Lcom/android/contacts/activities/DialtactsActivity;->access$100(Lcom/android/contacts/activities/DialtactsActivity;IZ)V

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    .line 222
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    goto :goto_0

    .line 227
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 228
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v2, v0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 230
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #calls: Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V
    invoke-static {v0, v2, v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$100(Lcom/android/contacts/activities/DialtactsActivity;IZ)V

    .line 232
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #calls: Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V
    invoke-static {v0, v3, v3}, Lcom/android/contacts/activities/DialtactsActivity;->access$100(Lcom/android/contacts/activities/DialtactsActivity;IZ)V

    .line 233
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 239
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 240
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v2, v0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 178
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 184
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-boolean v1, v1, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-nez v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v2

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-boolean v1, v1, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->updateFakeMenuButtonsVisibility(Z)V

    .line 193
    :cond_0
    iget v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    if-ne v1, p1, :cond_1

    .line 194
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previous position and next position became same ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 198
    iput p1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    .line 199
    return-void

    .line 189
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCurrentPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 202
    iput p1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    .line 203
    return-void
.end method
