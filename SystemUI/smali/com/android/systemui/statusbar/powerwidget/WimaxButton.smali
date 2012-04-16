.class public Lcom/android/systemui/statusbar/powerwidget/WimaxButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "WimaxButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/powerwidget/WimaxButton$1;,
        Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker;
    }
.end annotation


# static fields
.field private static final sWimaxState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker;-><init>(Lcom/android/systemui/statusbar/powerwidget/WimaxButton$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->sWimaxState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleWimax"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    return-object v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIMAX_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 143
    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 148
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->sWimaxState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 149
    return-void
.end method

.method protected toggleState()V
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->sWimaxState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->toggleState(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method protected updateState()V
    .locals 4

    .prologue
    const v3, 0x7f020109

    const v2, 0x7f020108

    .line 109
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->sWimaxState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->mState:I

    .line 110
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    :pswitch_0
    return-void

    .line 112
    :pswitch_1
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->mIcon:I

    goto :goto_0

    .line 115
    :pswitch_2
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->mIcon:I

    goto :goto_0

    .line 123
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->sWimaxState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->mIcon:I

    goto :goto_0

    .line 126
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->mIcon:I

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
