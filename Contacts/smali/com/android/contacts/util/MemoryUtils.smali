.class public final Lcom/android/contacts/util/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# static fields
.field private static sTotalMemorySize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/contacts/util/MemoryUtils;->sTotalMemorySize:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getTotalMemorySize()J
    .locals 5

    .prologue
    .line 28
    sget-wide v1, Lcom/android/contacts/util/MemoryUtils;->sTotalMemorySize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 29
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 30
    .local v0, reader:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 35
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    sput-wide v1, Lcom/android/contacts/util/MemoryUtils;->sTotalMemorySize:J

    .line 37
    :cond_0
    sget-wide v1, Lcom/android/contacts/util/MemoryUtils;->sTotalMemorySize:J

    return-wide v1
.end method
