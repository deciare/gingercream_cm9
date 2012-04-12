.class Lcom/android/systemui/statusbar/powerwidget/SyncButton$1;
.super Ljava/lang/Object;
.source "SyncButton.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/SyncButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/SyncButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/SyncButton;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/SyncButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1
    .parameter "which"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/SyncButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->update()V

    .line 22
    return-void
.end method
