.class Lcom/android/contacts/dialpad/DialpadFragment$2;
.super Landroid/database/ContentObserver;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/dialpad/DialpadFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    const/4 v1, 0x1

    #setter for: Lcom/android/contacts/dialpad/DialpadFragment;->mContactsUpdated:Z
    invoke-static {v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->access$202(Lcom/android/contacts/dialpad/DialpadFragment;Z)Z

    .line 272
    return-void
.end method
