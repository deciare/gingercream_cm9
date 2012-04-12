.class public Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "BluetoothButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/powerwidget/BluetoothButton$1;,
        Lcom/android/systemui/statusbar/powerwidget/BluetoothButton$BluetoothStateTracker;
    }
.end annotation


# static fields
.field private static final sBluetoothState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton$BluetoothStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton$BluetoothStateTracker;-><init>(Lcom/android/systemui/statusbar/powerwidget/BluetoothButton$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->sBluetoothState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleBluetooth"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    return-object v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 123
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->sBluetoothState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method protected toggleState()V
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->sBluetoothState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->toggleState(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method protected updateState()V
    .locals 4

    .prologue
    const v3, 0x7f020065

    const v2, 0x7f020064

    .line 84
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->sBluetoothState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->mState:I

    .line 85
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    :pswitch_0
    return-void

    .line 87
    :pswitch_1
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->mIcon:I

    goto :goto_0

    .line 90
    :pswitch_2
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->mIcon:I

    goto :goto_0

    .line 98
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->sBluetoothState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->mIcon:I

    goto :goto_0

    .line 101
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->mIcon:I

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
