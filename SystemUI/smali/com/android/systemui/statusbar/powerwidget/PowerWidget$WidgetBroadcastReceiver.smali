.class Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;Lcom/android/systemui/statusbar/powerwidget/PowerWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    #calls: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateButtonLayoutWidth()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$100(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setupWidget()V

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateWidget()V

    .line 234
    return-void

    .line 229
    :cond_0
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->handleOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
