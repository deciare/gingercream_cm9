.class public Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "ScreenTimeoutButton.java"


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

.field private static TOAST:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    .line 33
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleScreenTimeout"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getCurrentCMMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_screentimeout_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getScreenTtimeout(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static timeoutToString(I)Ljava/lang/String;
    .locals 7
    .parameter "timeout"

    .prologue
    const/4 v6, 0x0

    .line 131
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "second(s)"

    aput-object v4, v2, v6

    const/4 v4, 0x1

    const-string v5, "minute(s)"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "hour(s)"

    aput-object v5, v2, v4

    .line 138
    .local v2, tags:[Ljava/lang/String;
    div-int/lit16 v3, p0, 0x3e8

    .line 139
    .local v3, tmp:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, sTimeout:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    const/16 v4, 0x3c

    if-lt v3, v4, :cond_0

    .line 142
    mul-int/lit8 v4, v0, 0x3c

    div-int/2addr v3, v4

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return-object v1
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
    .line 112
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 56
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->getScreenTtimeout(Landroid/content/Context;)I

    move-result v2

    .line 58
    .local v2, screentimeout:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->getCurrentCMMode(Landroid/content/Context;)I

    move-result v1

    .line 60
    .local v1, currentMode:I
    const/16 v3, 0x3a98

    if-ge v2, v3, :cond_2

    .line 61
    if-nez v1, :cond_1

    .line 62
    const/16 v2, 0x3a98

    .line 92
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    if-nez v3, :cond_0

    .line 98
    const-string v3, ""

    invoke-static {v0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    .line 102
    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 105
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen timeout set to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->timeoutToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 106
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    const/16 v4, 0x11

    sget-object v5, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getXOffset()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sget-object v6, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->getYOffset()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 107
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 108
    return-void

    .line 64
    :cond_1
    const/16 v2, 0x7530

    goto :goto_0

    .line 66
    :cond_2
    const/16 v3, 0x7530

    if-ge v2, v3, :cond_4

    .line 67
    if-nez v1, :cond_3

    .line 68
    const v2, 0xea60

    goto :goto_0

    .line 70
    :cond_3
    const/16 v2, 0x7530

    goto :goto_0

    .line 72
    :cond_4
    const v3, 0xea60

    if-ge v2, v3, :cond_6

    .line 73
    if-nez v1, :cond_5

    .line 74
    const v2, 0xea60

    goto :goto_0

    .line 76
    :cond_5
    const v2, 0x1d4c0

    goto :goto_0

    .line 78
    :cond_6
    const v3, 0x1d4c0

    if-ge v2, v3, :cond_8

    .line 79
    if-nez v1, :cond_7

    .line 80
    const v2, 0x493e0

    goto :goto_0

    .line 82
    :cond_7
    const v2, 0x1d4c0

    goto :goto_0

    .line 84
    :cond_8
    const v3, 0x493e0

    if-ge v2, v3, :cond_9

    .line 85
    const v2, 0x493e0

    goto/16 :goto_0

    .line 86
    :cond_9
    if-ne v1, v5, :cond_a

    .line 87
    const/16 v2, 0x7530

    goto/16 :goto_0

    .line 89
    :cond_a
    const/16 v2, 0x3a98

    goto/16 :goto_0
.end method

.method protected updateState()V
    .locals 3

    .prologue
    const v2, 0x7f020083

    .line 40
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->getScreenTtimeout(Landroid/content/Context;)I

    move-result v0

    .line 42
    .local v0, timeout:I
    const/16 v1, 0x7530

    if-gt v0, v1, :cond_0

    .line 43
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mIcon:I

    .line 44
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mState:I

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_0
    const v1, 0x1d4c0

    if-gt v0, v1, :cond_1

    .line 46
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mIcon:I

    .line 47
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mState:I

    goto :goto_0

    .line 49
    :cond_1
    const v1, 0x7f020084

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mIcon:I

    .line 50
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mState:I

    goto :goto_0
.end method
