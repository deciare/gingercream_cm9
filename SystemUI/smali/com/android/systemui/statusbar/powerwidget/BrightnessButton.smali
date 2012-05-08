.class public Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "BrightnessButton.java"


# static fields
.field private static final BACKLIGHTS:[I

.field private static final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_URI:Landroid/net/Uri;

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
.field private mAutoBrightness:Z

.field private mAutoBrightnessSupported:Z

.field private mBacklightValues:[I

.field private mCurrentBacklightIndex:I

.field private mCurrentBrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    .line 46
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 48
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    .line 52
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "light_sensor_custom"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "light_screen_dim"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "expanded_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void

    .line 41
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1et 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightnessSupported:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    .line 65
    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    .line 72
    const-string v0, "toggleBrightness"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mType:Ljava/lang/String;

    .line 73
    return-void

    .line 67
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private updateSettings()V
    .locals 10

    .prologue
    const/16 v9, 0x1e

    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 163
    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 165
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v6, "light_sensor_custom"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v1, v4

    .line 167
    .local v1, lightSensorCustom:Z
    :goto_0
    if-eqz v1, :cond_4

    .line 168
    sget-object v6, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    const-string v7, "light_screen_dim"

    invoke-static {v3, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v4

    .line 174
    :goto_1
    const-string v6, "expanded_brightness_mode"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/ListPreferenceMultiSelect;->parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, modes:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-nez v6, :cond_5

    .line 177
    :cond_0
    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    .line 187
    :cond_1
    const-string v6, "screen_brightness_mode"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_6

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    .line 189
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    if-eqz v4, :cond_7

    .line 190
    iput v8, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    .line 201
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->updateState()V

    .line 202
    return-void

    .end local v1           #lightSensorCustom:Z
    .end local v2           #modes:[Ljava/lang/String;
    :cond_3
    move v1, v5

    .line 165
    goto :goto_0

    .line 171
    .restart local v1       #lightSensorCustom:Z
    :cond_4
    sget-object v6, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    aput v9, v6, v4

    goto :goto_1

    .line 181
    .restart local v2       #modes:[Ljava/lang/String;
    :cond_5
    array-length v6, v2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v6, v2

    if-ge v0, v6, :cond_1

    .line 183
    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    aget-object v7, v2, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v0

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0           #i:I
    :cond_6
    move v4, v5

    .line 187
    goto :goto_2

    .line 192
    :cond_7
    const-string v4, "screen_brightness"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    .line 194
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    sget-object v4, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 195
    iget v4, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    sget-object v5, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    aget v5, v5, v0

    if-ne v4, v5, :cond_8

    .line 196
    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    goto :goto_3

    .line 194
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 177
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
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
    .line 145
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 140
    const/4 v1, 0x1

    return v1
.end method

.method protected onChangeUri(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 151
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    const-string v1, "screen_brightness"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    .line 160
    :goto_0
    return-void

    .line 154
    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    const-string v3, "screen_brightness_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 158
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->updateSettings()V

    goto :goto_0
.end method

.method protected setupButton(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setupButton(Landroid/view/View;)V

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightnessSupported:Z

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->updateSettings()V

    .line 84
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    return-void
.end method

.method protected toggleState()V
    .locals 7

    .prologue
    .line 106
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 108
    .local v3, power:Landroid/os/IPowerManager;
    if-eqz v3, :cond_1

    .line 109
    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 110
    .local v4, resolver:Landroid/content/ContentResolver;
    iget v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    .line 111
    iget v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-le v5, v6, :cond_0

    .line 112
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    .line 114
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    iget v6, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    aget v0, v5, v6

    .line 115
    .local v0, backlightIndex:I
    sget-object v5, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    aget v1, v5, v0

    .line 116
    .local v1, brightness:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    .line 117
    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    .end local v0           #backlightIndex:I
    .end local v1           #brightness:I
    .end local v3           #power:Landroid/os/IPowerManager;
    .end local v4           #resolver:Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-void

    .line 120
    .restart local v0       #backlightIndex:I
    .restart local v1       #brightness:I
    .restart local v3       #power:Landroid/os/IPowerManager;
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightnessSupported:Z

    if-eqz v5, :cond_3

    .line 121
    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    :cond_3
    invoke-interface {v3, v1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 125
    const-string v5, "screen_brightness"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v0           #backlightIndex:I
    .end local v1           #brightness:I
    .end local v3           #power:Landroid/os/IPowerManager;
    .end local v4           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v2

    .line 129
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "BrightnessButton"

    const-string v6, "toggleState()"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected updateState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    if-eqz v0, :cond_0

    .line 89
    const v0, 0x7f020066

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mIcon:I

    .line 90
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mState:I

    .line 101
    :goto_0
    return-void

    .line 91
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    .line 92
    const v0, 0x7f020068

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mIcon:I

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mState:I

    goto :goto_0

    .line 94
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_2

    .line 95
    const v0, 0x7f020067

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mIcon:I

    .line 96
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mState:I

    goto :goto_0

    .line 98
    :cond_2
    const v0, 0x7f020069

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mIcon:I

    .line 99
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mState:I

    goto :goto_0
.end method
