.class public Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "NetworkModeButton.java"


# static fields
.field private static CURRENT_INTERNAL_STATE:I

.field private static INTENDED_NETWORK_MODE:I

.field private static NETWORK_MODE:I

.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, -0x63

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->OBSERVED_URIS:Ljava/util/List;

    .line 23
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "preferred_network_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sput v2, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->NETWORK_MODE:I

    .line 40
    sput v2, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->INTENDED_NETWORK_MODE:I

    .line 41
    const/4 v0, 0x5

    sput v0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->CURRENT_INTERNAL_STATE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleNetworkMode"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static get2G3G(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 167
    const/16 v0, 0x63

    .line 169
    .local v0, state:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 173
    :goto_0
    return v0

    .line 171
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getCurrentCMMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_network_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static networkModeToState(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x2

    .line 177
    sget v2, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->CURRENT_INTERNAL_STATE:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    sget v2, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->CURRENT_INTERNAL_STATE:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 196
    :goto_0
    :pswitch_0
    return v0

    .line 181
    :cond_1
    sget v2, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->NETWORK_MODE:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 196
    goto :goto_0

    .line 185
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    :pswitch_2
    const-string v1, "NetworkModeButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected network mode ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->NETWORK_MODE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.telephony.NETWORK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    return-object v0
.end method

.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick()Z
    .locals 3

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "networkMode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->NETWORK_MODE:I

    .line 138
    sget v2, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->NETWORK_MODE:I

    sput v2, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->INTENDED_NETWORK_MODE:I

    .line 142
    :cond_0
    sput v4, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->CURRENT_INTERNAL_STATE:I

    .line 144
    invoke-static {p1}, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->networkModeToState(Landroid/content/Context;)I

    move-result v1

    .line 145
    .local v1, widgetState:I
    sput v1, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->CURRENT_INTERNAL_STATE:I

    .line 146
    if-ne v1, v4, :cond_1

    .line 147
    const-string v2, "toggleMobileData"

    invoke-static {v2}, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->getLoadedButton(Ljava/lang/String;)Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;

    .line 148
    .local v0, mdb:Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;
    if-eqz v0, :cond_1

    .line 149
    sget v2, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->NETWORK_MODE:I

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->networkModeChanged(Landroid/content/Context;I)V

    .line 152
    .end local v0           #mdb:Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;
    :cond_1
    return-void
.end method

.method protected toggleState()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 83
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->getCurrentCMMode(Landroid/content/Context;)I

    move-result v1

    .line 86
    .local v1, currentMode:I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v2, intent:Landroid/content/Intent;
    sget v3, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->NETWORK_MODE:I

    packed-switch v3, :pswitch_data_0

    .line 118
    :goto_0
    const/16 v3, -0x64

    sput v3, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->NETWORK_MODE:I

    .line 119
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    return-void

    .line 90
    :pswitch_0
    const-string v3, "networkMode"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    sput v8, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->CURRENT_INTERNAL_STATE:I

    .line 92
    sput v4, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->INTENDED_NETWORK_MODE:I

    goto :goto_0

    .line 95
    :pswitch_1
    if-ne v1, v4, :cond_0

    .line 96
    const-string v3, "networkMode"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    sput v8, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->CURRENT_INTERNAL_STATE:I

    .line 98
    sput v4, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->INTENDED_NETWORK_MODE:I

    goto :goto_0

    .line 100
    :cond_0
    const-string v3, "networkMode"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    sput v7, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->CURRENT_INTERNAL_STATE:I

    .line 102
    sput v5, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->INTENDED_NETWORK_MODE:I

    goto :goto_0

    .line 106
    :pswitch_2
    if-eq v1, v4, :cond_1

    if-ne v1, v6, :cond_2

    .line 107
    :cond_1
    const-string v3, "networkMode"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    sput v7, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->CURRENT_INTERNAL_STATE:I

    .line 109
    sput v6, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->INTENDED_NETWORK_MODE:I

    goto :goto_0

    .line 111
    :cond_2
    const-string v3, "networkMode"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    sput v7, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->CURRENT_INTERNAL_STATE:I

    .line 113
    sput v5, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->INTENDED_NETWORK_MODE:I

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateState()V
    .locals 7

    .prologue
    const v6, 0x7f02005e

    const v5, 0x7f02005d

    const v4, 0x7f02005c

    const/4 v3, 0x2

    .line 47
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->get2G3G(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->NETWORK_MODE:I

    .line 49
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->networkModeToState(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mState:I

    .line 51
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 79
    :goto_0
    :pswitch_0
    return-void

    .line 53
    :pswitch_1
    iput v4, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIcon:I

    goto :goto_0

    .line 56
    :pswitch_2
    sget v1, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->NETWORK_MODE:I

    if-ne v1, v3, :cond_0

    .line 57
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIcon:I

    goto :goto_0

    .line 59
    :cond_0
    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIcon:I

    goto :goto_0

    .line 68
    :pswitch_3
    sget v1, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->CURRENT_INTERNAL_STATE:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 69
    sget v1, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->INTENDED_NETWORK_MODE:I

    if-ne v1, v3, :cond_1

    .line 70
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIcon:I

    goto :goto_0

    .line 72
    :cond_1
    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIcon:I

    goto :goto_0

    .line 75
    :cond_2
    iput v4, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIcon:I

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
