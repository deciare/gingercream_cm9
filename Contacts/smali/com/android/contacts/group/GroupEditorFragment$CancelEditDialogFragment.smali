.class public Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;
.super Landroid/app/DialogFragment;
.source "GroupEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelEditDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    .line 544
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;-><init>()V

    .line 545
    .local v0, dialog:Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 546
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "cancelEditor"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 547
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 551
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c01cb

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c01cc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment$1;-><init>(Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 565
    .local v0, dialog:Landroid/app/AlertDialog;
    return-object v0
.end method
