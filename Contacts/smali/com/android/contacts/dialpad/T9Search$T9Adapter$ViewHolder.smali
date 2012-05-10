.class Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;
.super Ljava/lang/Object;
.source "T9Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/T9Search$T9Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/QuickContactBadge;

.field name:Landroid/widget/TextView;

.field number:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/contacts/dialpad/T9Search$T9Adapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/dialpad/T9Search$T9Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->this$1:Lcom/android/contacts/dialpad/T9Search$T9Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
