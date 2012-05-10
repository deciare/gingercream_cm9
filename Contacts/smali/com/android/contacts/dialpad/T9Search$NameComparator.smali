.class public Lcom/android/contacts/dialpad/T9Search$NameComparator;
.super Ljava/lang/Object;
.source "T9Search.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/T9Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/dialpad/T9Search$ContactItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/dialpad/T9Search$ContactItem;Lcom/android/contacts/dialpad/T9Search$ContactItem;)I
    .locals 3
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 200
    iget v1, p1, Lcom/android/contacts/dialpad/T9Search$ContactItem;->nameMatchId:I

    iget v2, p2, Lcom/android/contacts/dialpad/T9Search$ContactItem;->nameMatchId:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 201
    .local v0, ret:I
    if-nez v0, :cond_0

    iget v1, p2, Lcom/android/contacts/dialpad/T9Search$ContactItem;->timesContacted:I

    iget v2, p1, Lcom/android/contacts/dialpad/T9Search$ContactItem;->timesContacted:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 202
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p2, Lcom/android/contacts/dialpad/T9Search$ContactItem;->isSuperPrimary:Z

    iget-boolean v2, p1, Lcom/android/contacts/dialpad/T9Search$ContactItem;->isSuperPrimary:Z

    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    .line 203
    :cond_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    check-cast p1, Lcom/android/contacts/dialpad/T9Search$ContactItem;

    .end local p1
    check-cast p2, Lcom/android/contacts/dialpad/T9Search$ContactItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/dialpad/T9Search$NameComparator;->compare(Lcom/android/contacts/dialpad/T9Search$ContactItem;Lcom/android/contacts/dialpad/T9Search$ContactItem;)I

    move-result v0

    return v0
.end method
