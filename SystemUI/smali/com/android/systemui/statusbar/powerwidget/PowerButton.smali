.class public abstract Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.super Ljava/lang/Object;
.source "PowerButton.java"


# static fields
.field private static final BUTTONS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/systemui/statusbar/powerwidget/PowerButton;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final BUTTONS_LOADED:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/powerwidget/PowerButton;",
            ">;"
        }
    .end annotation
.end field

.field private static GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

.field private static GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

.field private static final MASK_MODE:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field protected mIcon:I

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mState:I

.field protected mType:Ljava/lang/String;

.field protected mView:Landroid/view/View;

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->MASK_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    .line 62
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleWifi"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/WifiButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleGPS"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/GPSButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleBluetooth"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleBrightness"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleSound"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleSync"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/SyncButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleWifiAp"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/WifiApButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleScreenTimeout"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleMobileData"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleLockScreen"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleNetworkMode"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleAutoRotate"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleAirplane"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/AirplaneButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleFlashlight"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleSleepMode"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/SleepButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleMediaPlayPause"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleMediaPrevious"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/MediaPreviousButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleMediaNext"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/MediaNextButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleLte"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/LTEButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleWimax"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    .line 92
    sput-object v3, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    .line 95
    sput-object v3, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mType:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mViewUpdateHandler:Landroid/os/Handler;

    .line 190
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mClickListener:Landroid/view/View$OnClickListener;

    .line 208
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/powerwidget/PowerButton;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->updateImageView(II)V

    return-void
.end method

.method static synthetic access$100()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->MASK_MODE:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/powerwidget/PowerButton;ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->updateImageView(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$500()Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public static getAllBroadcastIntentFilters()Landroid/content/IntentFilter;
    .locals 9

    .prologue
    .line 287
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    .local v2, filter:Landroid/content/IntentFilter;
    sget-object v8, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v8

    .line 290
    :try_start_0
    sget-object v7, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 291
    .local v1, button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->getBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    .line 294
    .local v6, tmp:Landroid/content/IntentFilter;
    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    .line 295
    .local v5, num:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 296
    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 298
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    .end local v3           #i:I
    .end local v5           #num:I
    .end local v6           #tmp:Landroid/content/IntentFilter;
    :cond_2
    monitor-exit v8

    .line 305
    return-object v2

    .line 302
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public static getAllObservedUris()Ljava/util/List;
    .locals 8
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
    .line 310
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v5, uris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    sget-object v7, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v7

    .line 313
    :try_start_0
    sget-object v6, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 314
    .local v0, button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->getObservedUris()Ljava/util/List;

    move-result-object v3

    .line 316
    .local v3, tmp:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 317
    .local v4, uri:Landroid/net/Uri;
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 318
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    .end local v0           #button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #tmp:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    .end local v4           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    return-object v5
.end method

.method protected static getLoadedButton(Ljava/lang/String;)Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    .locals 2
    .parameter "key"

    .prologue
    .line 360
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v1

    .line 361
    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    monitor-exit v1

    .line 364
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static handleOnChangeUri(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 342
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    .line 343
    :try_start_0
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 344
    .local v0, button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->getObservedUris()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->onChangeUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 348
    .end local v0           #button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    return-void
.end method

.method public static handleOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 328
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, action:Ljava/lang/String;
    sget-object v4, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v4

    .line 332
    :try_start_0
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 334
    .local v1, button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->getBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 338
    .end local v1           #button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    return-void
.end method

.method public static loadButton(Ljava/lang/String;Landroid/view/View;)Z
    .locals 6
    .parameter "key"
    .parameter "view"

    .prologue
    .line 228
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 229
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    .line 230
    :try_start_0
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setupButton(Landroid/view/View;)V

    .line 245
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    const/4 v2, 0x1

    .line 248
    :goto_1
    return v2

    .line 236
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 238
    .local v1, pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setupButton(Landroid/view/View;)V

    .line 240
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 241
    .end local v1           #pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "PowerButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading button: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 245
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 248
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static setGlobalOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 352
    sput-object p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    .line 353
    return-void
.end method

.method public static setGlobalOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 356
    sput-object p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

    .line 357
    return-void
.end method

.method public static unloadAllButtons()V
    .locals 4

    .prologue
    .line 265
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    .line 267
    :try_start_0
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 268
    .local v1, pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setupButton(Landroid/view/View;)V

    goto :goto_0

    .line 273
    .end local v1           #pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 272
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 273
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    return-void
.end method

.method public static updateAllButtons()V
    .locals 4

    .prologue
    .line 277
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    .line 279
    :try_start_0
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 280
    .local v1, pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->update()V

    goto :goto_0

    .line 282
    .end local v1           #pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    return-void
.end method

.method private updateImageView(II)V
    .locals 2
    .parameter "id"
    .parameter "resId"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 181
    .local v0, imageIcon:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    return-void
.end method

.method private updateImageView(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "id"
    .parameter "resDraw"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 186
    .local v0, imageIcon:Landroid/widget/ImageView;
    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected abstract handleLongClick()Z
.end method

.method protected onChangeUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 156
    return-void
.end method

.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 151
    return-void
.end method

.method protected setupButton(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 173
    :cond_0
    return-void
.end method

.method protected abstract toggleState()V
.end method

.method protected update()V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->updateState()V

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->updateView()V

    .line 146
    return-void
.end method

.method protected abstract updateState()V
.end method

.method protected updateView()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    return-void
.end method
