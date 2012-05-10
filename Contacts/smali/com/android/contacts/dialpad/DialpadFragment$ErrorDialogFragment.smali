.class public Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialogFragment"
.end annotation


# instance fields
.field private mMessageResId:Ljava/lang/Integer;

.field private mTitleResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1074
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;
    .locals 1
    .parameter "titleResId"

    .prologue
    .line 1082
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->newInstanceInter(ILjava/lang/Integer;)Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(II)Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;
    .locals 1
    .parameter "titleResId"
    .parameter "messageResId"

    .prologue
    .line 1086
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->newInstanceInter(ILjava/lang/Integer;)Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method private static newInstanceInter(ILjava/lang/Integer;)Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;
    .locals 4
    .parameter "titleResId"
    .parameter "messageResId"

    .prologue
    .line 1091
    new-instance v1, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;-><init>()V

    .line 1092
    .local v1, fragment:Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1093
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "argTitleResId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1094
    if-eqz p1, :cond_0

    .line 1095
    const-string v2, "argMessageResId"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1097
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1098
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 1103
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1104
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argTitleResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->mTitleResId:I

    .line 1105
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argMessageResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argMessageResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:Ljava/lang/Integer;

    .line 1108
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 1112
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1113
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->mTitleResId:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment$1;-><init>(Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1121
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1124
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
