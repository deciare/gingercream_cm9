.class public Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;
.super Ljava/lang/Object;
.source "TextHighlightingAnimation.java"

# interfaces
.implements Lcom/android/contacts/widget/TextWithHighlighting;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/widget/TextHighlightingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextWithHighlightingImpl"
.end annotation


# instance fields
.field private mDimmingEnabled:Z

.field private mDimmingSpanEnd:I

.field private mDimmingSpanStart:I

.field private final mSpans:[Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;

.field private mString:Ljava/lang/String;

.field private mText:Landroid/database/CharArrayBuffer;


# virtual methods
.method public charAt(I)C
    .locals 1
    .parameter "index"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mText:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mDimmingSpanEnd:I

    return v0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mDimmingSpanStart:I

    return v0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 89
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mDimmingEnabled:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mSpans:[Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;

    check-cast v0, [Ljava/lang/Object;

    .line 92
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/contacts/widget/TextHighlightingAnimation;->access$100()[Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mText:Landroid/database/CharArrayBuffer;

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1
    .parameter "start"
    .parameter "limit"
    .parameter "type"

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 126
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mText:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mString:Ljava/lang/String;

    return-object v0
.end method
