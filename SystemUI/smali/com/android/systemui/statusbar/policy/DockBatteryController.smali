.class public Lcom/android/systemui/statusbar/policy/DockBatteryController;
.super Landroid/content/BroadcastReceiver;
.source "DockBatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DockBatteryController$SettingsObserver;
    }
.end annotation


# instance fields
.field private mBatteryIcon:I

.field private mBatteryStyle:I

.field private mContext:Landroid/content/Context;

.field private mDockCharging:Z

.field private mDockStatus:Z

.field mHandler:Landroid/os/Handler;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mIconViews:Ljava/util/ArrayList;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mLabelViews:Ljava/util/ArrayList;

    .line 50
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mDockStatus:Z

    .line 51
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mDockCharging:Z

    .line 53
    const v2, 0x7f0200c9

    iput v2, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryIcon:I

    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mContext:Landroid/content/Context;

    .line 75
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v1, Lcom/android/systemui/statusbar/policy/DockBatteryController$SettingsObserver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/DockBatteryController$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/DockBatteryController;Landroid/os/Handler;)V

    .line 78
    .local v1, settingsObserver:Lcom/android/systemui/statusbar/policy/DockBatteryController$SettingsObserver;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DockBatteryController$SettingsObserver;->observe()V

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DockBatteryController;->updateSettings()V

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/DockBatteryController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/DockBatteryController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DockBatteryController;->updateSettings()V

    return-void
.end method

.method private updateBattery()V
    .locals 8

    .prologue
    .line 109
    const/16 v2, 0x8

    .line 110
    .local v2, mIcon:I
    const/16 v4, 0x8

    .line 111
    .local v4, mText:I
    const v3, 0x7f0200c9

    .line 113
    .local v3, mIconStyle:I
    iget v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryStyle:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryStyle:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 114
    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mDockStatus:Z

    if-eqz v6, :cond_2

    const/4 v2, 0x0

    .line 115
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mDockCharging:Z

    if-eqz v6, :cond_3

    const v3, 0x7f0200d2

    .line 119
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 120
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_4

    .line 121
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 122
    .local v5, v:Landroid/widget/ImageView;
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 114
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v5           #v:Landroid/widget/ImageView;
    :cond_2
    const/16 v2, 0x8

    goto :goto_0

    .line 115
    :cond_3
    const v3, 0x7f0200c9

    goto :goto_1

    .line 125
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_4
    return-void
.end method

.method private updateSettings()V
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 130
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "status_bar_battery"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryStyle:I

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DockBatteryController;->updateBattery()V

    .line 133
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, action:Ljava/lang/String;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 93
    const-string v5, "dock_level"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 94
    .local v3, level:I
    const-string v5, "dock_status"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mDockCharging:Z

    .line 95
    const-string v5, "dock_status"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v6, :cond_1

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mDockStatus:Z

    .line 97
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 98
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 99
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 100
    .local v4, v:Landroid/widget/ImageView;
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 101
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mContext:Landroid/content/Context;

    const v8, 0x7f080067

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #v:Landroid/widget/ImageView;
    :cond_0
    move v5, v7

    .line 94
    goto :goto_0

    :cond_1
    move v5, v7

    .line 95
    goto :goto_1

    .line 104
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DockBatteryController;->updateBattery()V

    .line 106
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #level:I
    :cond_3
    return-void
.end method
