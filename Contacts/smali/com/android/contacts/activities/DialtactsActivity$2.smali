.class Lcom/android/contacts/activities/DialtactsActivity$2;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 321
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    const/4 v2, 0x1

    .line 297
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-boolean v0, v0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-nez v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->updateFakeMenuButtonsVisibility(Z)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v2, v0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$600(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 306
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$600(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 310
    :cond_2
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    #setter for: Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I
    invoke-static {v0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$702(Lcom/android/contacts/activities/DialtactsActivity;I)I

    .line 316
    :cond_3
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 286
    return-void
.end method
