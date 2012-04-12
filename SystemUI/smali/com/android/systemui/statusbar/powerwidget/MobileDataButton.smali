.class public Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "MobileDataButton.java"


# static fields
.field public static STATE_CHANGE_REQUEST:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->STATE_CHANGE_REQUEST:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleMobileData"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getDataState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 76
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    return-object v0
.end method

.method protected handleLongClick()Z
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    const/4 v1, 0x1

    return v1
.end method

.method public networkModeChanged(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "networkMode"

    .prologue
    .line 80
    sget-boolean v1, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->STATE_CHANGE_REQUEST:Z

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 83
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 84
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->STATE_CHANGE_REQUEST:Z

    .line 86
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_0
    return-void
.end method

.method protected toggleState()V
    .locals 4

    .prologue
    .line 38
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 39
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->getDataState(Landroid/content/Context;)Z

    move-result v2

    .line 41
    .local v2, enabled:Z
    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 43
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_0

    .line 44
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method protected updateState()V
    .locals 2

    .prologue
    const v1, 0x7f02006b

    .line 24
    sget-boolean v0, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->STATE_CHANGE_REQUEST:Z

    if-eqz v0, :cond_0

    .line 25
    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->mIcon:I

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->mState:I

    .line 34
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->getDataState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->mIcon:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->mState:I

    goto :goto_0

    .line 31
    :cond_1
    const v0, 0x7f02006a

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->mIcon:I

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->mState:I

    goto :goto_0
.end method
