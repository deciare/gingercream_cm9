.class public abstract Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "MediaKeyEventButton.java"


# static fields
.field private static AUDIO_MANAGER:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    return-void
.end method

.method protected static getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 36
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    .line 39
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method protected sendMediaKeyEvent(I)V
    .locals 14
    .parameter "code"

    .prologue
    .line 20
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 21
    .local v11, context:Landroid/content/Context;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 23
    .local v1, eventtime:J
    new-instance v12, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    const/4 v5, 0x0

    invoke-direct {v12, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 24
    .local v12, downIntent:Landroid/content/Intent;
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 25
    .local v0, downEvent:Landroid/view/KeyEvent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 26
    const/4 v4, 0x0

    invoke-virtual {v11, v12, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 28
    new-instance v13, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    const/4 v5, 0x0

    invoke-direct {v13, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 29
    .local v13, upIntent:Landroid/content/Intent;
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-wide v4, v1

    move-wide v6, v1

    move v9, p1

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 30
    .local v3, upEvent:Landroid/view/KeyEvent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v13, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    const/4 v4, 0x0

    invoke-virtual {v11, v13, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 32
    return-void
.end method
