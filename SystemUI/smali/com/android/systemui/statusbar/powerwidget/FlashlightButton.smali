.class public Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "FlashlightButton.java"


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
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->OBSERVED_URIS:Ljava/util/List;

    .line 17
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "torch_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleFlashlight"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mType:Ljava/lang/String;

    return-void
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
    .line 57
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick()Z
    .locals 3

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "net.cactii.flash2"

    const-string v2, "net.cactii.flash2.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 36
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 37
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "expanded_flash_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 39
    .local v0, bright:Z
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, i:Landroid/content/Intent;
    const-string v3, "bright"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    return-void

    .end local v0           #bright:Z
    .end local v2           #i:Landroid/content/Intent;
    :cond_0
    move v0, v3

    .line 37
    goto :goto_0
.end method

.method protected updateState()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 24
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_state"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 25
    .local v0, enabled:Z
    :cond_0
    if-eqz v0, :cond_1

    .line 26
    const v2, 0x7f02006d

    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mIcon:I

    .line 27
    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mState:I

    .line 32
    :goto_0
    return-void

    .line 29
    :cond_1
    const v1, 0x7f02006c

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mIcon:I

    .line 30
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mState:I

    goto :goto_0
.end method
