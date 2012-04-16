.class public Lcom/android/systemui/statusbar/powerwidget/SoundButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "SoundButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    }
.end annotation


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter;

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


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mHapticFeedbackEnabled:Z

.field private mRingerValues:[I

.field private mRingerValuesIndex:I

.field private final mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

.field private mRingersIndex:I

.field private final mSilentRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

.field private final mSoundRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

.field private final mSoundVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

.field private final mVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    .line 28
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->OBSERVED_URIS:Ljava/util/List;

    .line 34
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "expanded_ring_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "expanded_haptic_feedback"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSilentRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    .line 41
    new-instance v3, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v4, p0

    move v5, v9

    move v7, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    .line 43
    new-instance v3, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v4, p0

    move v5, v9

    move v7, v6

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSoundRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    .line 45
    new-instance v7, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v8, p0

    move v10, v9

    move v11, v6

    move v12, v9

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSoundVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    .line 47
    new-array v0, v13, [Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSilentRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aput-object v1, v0, v9

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSoundRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSoundVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    .line 50
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    .line 52
    new-array v0, v13, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    .line 55
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    .line 57
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mHapticFeedbackEnabled:Z

    .line 63
    const-string v0, "toggleSound"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mType:Ljava/lang/String;

    .line 64
    return-void

    .line 52
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/powerwidget/SoundButton;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/powerwidget/SoundButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mHapticFeedbackEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/powerwidget/SoundButton;)Landroid/os/Vibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method private findCurrentState()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 173
    iget-object v8, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 174
    .local v7, resolver:Landroid/content/ContentResolver;
    const-string v8, "vibrate_in_silent"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v1, :cond_2

    move v2, v1

    .line 176
    .local v2, vibrateInSilent:Z
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v5}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v3

    .line 177
    .local v3, vibrateSetting:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 181
    .local v4, ringerMode:I
    if-nez v2, :cond_3

    if-nez v4, :cond_3

    .line 182
    const/4 v3, 0x0

    .line 192
    :cond_0
    :goto_1
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    .line 193
    .local v0, ringer:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    array-length v1, v1

    if-ge v6, v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aget-object v1, v1, v6

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 195
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    .line 199
    :cond_1
    return-void

    .end local v0           #ringer:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    .end local v2           #vibrateInSilent:Z
    .end local v3           #vibrateSetting:I
    .end local v4           #ringerMode:I
    .end local v6           #i:I
    :cond_2
    move v2, v5

    .line 174
    goto :goto_0

    .line 183
    .restart local v2       #vibrateInSilent:Z
    .restart local v3       #vibrateSetting:I
    .restart local v4       #ringerMode:I
    :cond_3
    if-nez v2, :cond_4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_4

    .line 184
    const/4 v2, 0x1

    .line 185
    if-nez v3, :cond_0

    .line 186
    const/4 v3, 0x2

    goto :goto_1

    .line 188
    :cond_4
    if-eqz v2, :cond_0

    if-ne v4, v1, :cond_0

    .line 189
    const/4 v3, 0x2

    goto :goto_1

    .line 193
    .restart local v0       #ringer:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    .restart local v6       #i:I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private updateSettings()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 145
    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 147
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v6, "expanded_haptic_feedback"

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 149
    .local v0, expandedHapticFeedback:I
    if-ne v0, v7, :cond_3

    .line 150
    const-string v6, "haptic_feedback_enabled"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mHapticFeedbackEnabled:Z

    .line 156
    :goto_1
    const-string v4, "expanded_ring_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/ListPreferenceMultiSelect;->parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, modes:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_5

    .line 159
    :cond_0
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->updateState()V

    .line 170
    return-void

    .end local v2           #modes:[Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 150
    goto :goto_0

    .line 153
    :cond_3
    if-ne v0, v4, :cond_4

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mHapticFeedbackEnabled:Z

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2

    .line 163
    .restart local v2       #modes:[Ljava/lang/String;
    :cond_5
    array-length v4, v2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    .line 164
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 165
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 159
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->INTENT_FILTER:Landroid/content/IntentFilter;

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
    .line 136
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 126
    const/4 v1, 0x1

    return v1
.end method

.method protected onChangeUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->updateSettings()V

    .line 132
    return-void
.end method

.method protected setupButton(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setupButton(Landroid/view/View;)V

    .line 69
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    .local v0, context:Landroid/content/Context;
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    .line 72
    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mVibrator:Landroid/os/Vibrator;

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->updateSettings()V

    .line 75
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    return-void
.end method

.method protected toggleState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    .line 109
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    .line 110
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    .line 113
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    .line 114
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    aget-object v0, v1, v2

    .line 117
    .local v0, ringer:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->execute()V

    .line 118
    return-void
.end method

.method protected updateState()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->findCurrentState()V

    .line 80
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    packed-switch v1, :pswitch_data_0

    .line 98
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 99
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    .line 100
    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    .line 104
    :cond_0
    return-void

    .line 82
    .end local v0           #i:I
    :pswitch_0
    const v1, 0x7f020085

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mIcon:I

    .line 83
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mState:I

    goto :goto_0

    .line 86
    :pswitch_1
    const v1, 0x7f020102

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mIcon:I

    .line 87
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mState:I

    goto :goto_0

    .line 90
    :pswitch_2
    const v1, 0x7f020081

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mIcon:I

    .line 91
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mState:I

    goto :goto_0

    .line 94
    :pswitch_3
    const v1, 0x7f020082

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mIcon:I

    .line 95
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mState:I

    goto :goto_0

    .line 98
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
