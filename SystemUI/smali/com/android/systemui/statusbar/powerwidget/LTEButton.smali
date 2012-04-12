.class public Lcom/android/systemui/statusbar/powerwidget/LTEButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "LTEButton.java"


# static fields
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
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->OBSERVED_URIS:Ljava/util/List;

    .line 21
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "lte_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleLte"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getCurrentPreferredNetworkMode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 76
    const/4 v1, -0x1

    .line 78
    .local v1, network:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 83
    :goto_0
    return v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
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
    .line 72
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick()Z
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 46
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 48
    .local v2, tm:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->getCurrentPreferredNetworkMode(Landroid/content/Context;)I

    move-result v0

    .line 49
    .local v0, network:I
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 50
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v3, 0x7

    if-ne v3, v0, :cond_1

    .line 51
    invoke-virtual {v2, v6}, Landroid/telephony/TelephonyManager;->toggleLTE(Z)V

    .line 52
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mState:I

    .line 53
    const-string v3, "lte_mode"

    invoke-static {v1, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const/4 v3, 0x4

    if-ne v3, v0, :cond_0

    .line 55
    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->toggleLTE(Z)V

    .line 56
    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mState:I

    .line 57
    const-string v3, "lte_mode"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected updateState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 28
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 29
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->getCurrentPreferredNetworkMode(Landroid/content/Context;)I

    move-result v0

    .line 30
    .local v0, network:I
    packed-switch v0, :pswitch_data_0

    .line 42
    :goto_0
    :pswitch_0
    return-void

    .line 32
    :pswitch_1
    const v2, 0x7f020075

    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mIcon:I

    .line 33
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mState:I

    .line 34
    const-string v2, "lte_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 37
    :pswitch_2
    const v2, 0x7f020074

    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mIcon:I

    .line 38
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mState:I

    .line 39
    const-string v2, "lte_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
