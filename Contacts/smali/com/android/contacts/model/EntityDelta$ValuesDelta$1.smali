.class final Lcom/android/contacts/model/EntityDelta$ValuesDelta$1;
.super Ljava/lang/Object;
.source "EntityDelta.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/EntityDelta$ValuesDelta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1
    .parameter "in"

    .prologue
    .line 926
    new-instance v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 927
    .local v0, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->readFromParcel(Landroid/os/Parcel;)V

    .line 928
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 924
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1
    .parameter "size"

    .prologue
    .line 932
    new-array v0, p1, [Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 924
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta$1;->newArray(I)[Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    return-object v0
.end method
