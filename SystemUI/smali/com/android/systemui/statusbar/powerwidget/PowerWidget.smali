.class public Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
.super Landroid/widget/FrameLayout;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/powerwidget/PowerWidget$1;,
        Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;,
        Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

.field private mScrollView:Landroid/widget/HorizontalScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 55
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    .line 71
    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    .line 79
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateButtonLayoutWidth()V

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setupWidget()V

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateVisibility()V

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateButtonLayoutWidth()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateVisibility()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateScrollbar()V

    return-void
.end method

.method private setupBroadcastReceiver()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;Lcom/android/systemui/statusbar/powerwidget/PowerWidget$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    .line 192
    :cond_0
    return-void
.end method

.method private updateButtonLayoutWidth()V
    .locals 2

    .prologue
    .line 196
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x6

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 197
    return-void
.end method

.method private updateScrollbar()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v3, :cond_0

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "expanded_hide_scrollbar"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 214
    .local v0, hideScrollBar:Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_0

    .end local v0           #hideScrollBar:Z
    :cond_1
    move v0, v2

    .line 212
    goto :goto_1

    .restart local v0       #hideScrollBar:Z
    :cond_2
    move v1, v2

    .line 214
    goto :goto_2
.end method

.method private updateVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 201
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "expanded_view_widget"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 203
    .local v0, displayPowerWidget:Z
    :goto_0
    if-nez v0, :cond_1

    .line 204
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setVisibility(I)V

    .line 208
    :goto_1
    return-void

    .end local v0           #displayPowerWidget:Z
    :cond_0
    move v0, v1

    .line 201
    goto :goto_0

    .line 206
    .restart local v0       #displayPowerWidget:Z
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public setGlobalButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 181
    invoke-static {p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setGlobalOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-void
.end method

.method public setGlobalButtonOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 185
    invoke-static {p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setGlobalOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    return-void
.end method

.method public setupSettingsObserver(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    .line 178
    :cond_0
    return-void
.end method

.method public setupWidget()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 88
    const-string v9, "PowerWidget"

    const-string v10, "Clearing any old widget stuffs"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->removeAllViews()V

    .line 93
    iget-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    if-eqz v9, :cond_0

    .line 94
    iget-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v9, v10}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    if-eqz v9, :cond_1

    .line 98
    iget-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->unobserve()V

    .line 102
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->unloadAllButtons()V

    .line 104
    const-string v9, "PowerWidget"

    const-string v10, "Setting up widget"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "expanded_widget_buttons"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, buttons:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 108
    const-string v9, "PowerWidget"

    const-string v10, "Default buttons being loaded"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v4, "toggleWifi|toggleBluetooth|toggleGPS|toggleSound"

    .line 111
    iget-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 112
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|toggleWimax"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    :cond_2
    const-string v9, "PowerWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Button list: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 119
    .local v8, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 120
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, buttonCount:I
    const-string v9, "\\|"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v1, v0, v6

    .line 124
    .local v1, button:Ljava/lang/String;
    const-string v9, "PowerWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting up button: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030005

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 128
    .local v3, buttonView:Landroid/view/View;
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->loadButton(Ljava/lang/String;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 130
    sget-object v9, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v8, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    add-int/lit8 v2, v2, 0x1

    .line 123
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 133
    :cond_3
    const-string v9, "PowerWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error setting up button: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 138
    .end local v1           #button:Ljava/lang/String;
    .end local v3           #buttonView:Landroid/view/View;
    :cond_4
    const/4 v9, 0x6

    if-le v2, v9, :cond_6

    .line 140
    new-instance v9, Landroid/widget/HorizontalScrollView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 142
    iget-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v10, v10, 0x6

    invoke-virtual {v9, v10}, Landroid/widget/HorizontalScrollView;->setFadingEdgeLength(I)V

    .line 143
    iget-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/high16 v10, 0x100

    invoke-virtual {v9, v10}, Landroid/widget/HorizontalScrollView;->setScrollBarStyle(I)V

    .line 144
    iget-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 146
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v10

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v12}, Landroid/widget/HorizontalScrollView;->getVerticalScrollbarWidth()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 147
    iget-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    sget-object v10, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9, v8, v10}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateScrollbar()V

    .line 149
    iget-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    sget-object v10, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setupBroadcastReceiver()V

    .line 157
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->getAllBroadcastIntentFilters()Landroid/content/IntentFilter;

    move-result-object v5

    .line 159
    .local v5, filter:Landroid/content/IntentFilter;
    const-string v9, "android.settings.SETTINGS_CHANGED_ACTION"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v9, v10, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    iget-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    if-eqz v9, :cond_5

    .line 166
    iget-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->observe()V

    .line 168
    :cond_5
    return-void

    .line 152
    .end local v5           #filter:Landroid/content/IntentFilter;
    :cond_6
    sget-object v9, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public updateWidget()V
    .locals 0

    .prologue
    .line 171
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->updateAllButtons()V

    .line 172
    return-void
.end method
