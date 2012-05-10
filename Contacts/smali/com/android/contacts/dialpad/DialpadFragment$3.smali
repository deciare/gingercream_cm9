.class Lcom/android/contacts/dialpad/DialpadFragment$3;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/dialpad/DialpadFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/dialpad/DialpadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment$3;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 540
    new-instance v0, Lcom/android/contacts/dialpad/T9Search;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$3;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/dialpad/T9Search;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->access$302(Lcom/android/contacts/dialpad/T9Search;)Lcom/android/contacts/dialpad/T9Search;

    .line 541
    return-void
.end method
