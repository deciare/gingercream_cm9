.class public Lcom/android/systemui/statusbar/powerwidget/AirplaneButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "AirplaneButton.java"


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
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/AirplaneButton;->OBSERVED_URIS:Ljava/util/List;

    .line 18
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/AirplaneButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleAirplane"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/AirplaneButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getState(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

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
    .line 58
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/AirplaneButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/AirplaneButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/AirplaneButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/AirplaneButton;->getState(Landroid/content/Context;)Z

    move-result v2

    .line 38
    .local v2, state:Z
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    if-eqz v2, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "state"

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 45
    return-void

    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    move v3, v5

    .line 38
    goto :goto_0

    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    move v5, v4

    .line 43
    goto :goto_1
.end method

.method protected updateState()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/AirplaneButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/AirplaneButton;->getState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const v0, 0x7f020060

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/AirplaneButton;->mIcon:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/AirplaneButton;->mState:I

    .line 32
    :goto_0
    return-void

    .line 29
    :cond_0
    const v0, 0x7f02005f

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/AirplaneButton;->mIcon:I

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/AirplaneButton;->mState:I

    goto :goto_0
.end method
