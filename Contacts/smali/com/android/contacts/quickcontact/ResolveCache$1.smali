.class Lcom/android/contacts/quickcontact/ResolveCache$1;
.super Landroid/content/BroadcastReceiver;
.source "ResolveCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/ResolveCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/ResolveCache;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/ResolveCache;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ResolveCache$1;->this$0:Lcom/android/contacts/quickcontact/ResolveCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    #calls: Lcom/android/contacts/quickcontact/ResolveCache;->flush()V
    invoke-static {}, Lcom/android/contacts/quickcontact/ResolveCache;->access$000()V

    .line 94
    return-void
.end method
