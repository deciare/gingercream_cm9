.class public Lcom/android/contacts/dialpad/T9Search$T9SearchResult;
.super Ljava/lang/Object;
.source "T9Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/T9Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T9SearchResult"
.end annotation


# instance fields
.field private final mResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/dialpad/T9Search$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTopContact:Lcom/android/contacts/dialpad/T9Search$ContactItem;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/dialpad/T9Search$ContactItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/dialpad/T9Search$ContactItem;>;"
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/android/contacts/dialpad/T9Search$ContactItem;

    invoke-direct {v0}, Lcom/android/contacts/dialpad/T9Search$ContactItem;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/T9Search$T9SearchResult;->mTopContact:Lcom/android/contacts/dialpad/T9Search$ContactItem;

    .line 120
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/dialpad/T9Search$ContactItem;

    iput-object v0, p0, Lcom/android/contacts/dialpad/T9Search$T9SearchResult;->mTopContact:Lcom/android/contacts/dialpad/T9Search$ContactItem;

    .line 121
    iput-object p1, p0, Lcom/android/contacts/dialpad/T9Search$T9SearchResult;->mResults:Ljava/util/ArrayList;

    .line 122
    iget-object v0, p0, Lcom/android/contacts/dialpad/T9Search$T9SearchResult;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 123
    return-void
.end method


# virtual methods
.method public getNumResults()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/contacts/dialpad/T9Search$T9SearchResult;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/dialpad/T9Search$ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/dialpad/T9Search$T9SearchResult;->mResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTopContact()Lcom/android/contacts/dialpad/T9Search$ContactItem;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/contacts/dialpad/T9Search$T9SearchResult;->mTopContact:Lcom/android/contacts/dialpad/T9Search$ContactItem;

    return-object v0
.end method
