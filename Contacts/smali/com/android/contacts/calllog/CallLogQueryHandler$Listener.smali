.class public interface abstract Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;
.super Ljava/lang/Object;
.source "CallLogQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCallsFetched(Landroid/database/Cursor;)V
.end method

.method public abstract onVoicemailStatusFetched(Landroid/database/Cursor;)V
.end method
