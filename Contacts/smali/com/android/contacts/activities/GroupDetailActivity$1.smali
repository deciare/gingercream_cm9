.class Lcom/android/contacts/activities/GroupDetailActivity$1;
.super Ljava/lang/Object;
.source "GroupDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/group/GroupDetailFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/GroupDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/GroupDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/GroupDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountTypeUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "accountTypeString"
    .parameter "dataSet"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    #setter for: Lcom/android/contacts/activities/GroupDetailActivity;->mAccountTypeString:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/contacts/activities/GroupDetailActivity;->access$002(Lcom/android/contacts/activities/GroupDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    #setter for: Lcom/android/contacts/activities/GroupDetailActivity;->mDataSet:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/contacts/activities/GroupDetailActivity;->access$102(Lcom/android/contacts/activities/GroupDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/GroupDetailActivity;->invalidateOptionsMenu()V

    .line 96
    return-void
.end method

.method public onContactSelected(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactUri"

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "finishActivityOnUpSelected"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public onEditRequested(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    const-class v2, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 102
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public onGroupSizeUpdated(Ljava/lang/String;)V
    .locals 1
    .parameter "size"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/GroupDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method public onGroupTitleUpdated(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/GroupDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method
