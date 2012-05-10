.class public Lcom/android/contacts/dialpad/T9Search$ContactItem;
.super Ljava/lang/Object;
.source "T9Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/T9Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactItem"
.end annotation


# instance fields
.field groupType:Ljava/lang/CharSequence;

.field id:J

.field isSuperPrimary:Z

.field name:Ljava/lang/String;

.field nameMatchId:I

.field normalName:Ljava/lang/String;

.field normalNumber:Ljava/lang/String;

.field number:Ljava/lang/String;

.field numberMatchId:I

.field photo:Landroid/net/Uri;

.field timesContacted:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
