.class Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;
.super Ljava/lang/Object;
.source "PowerButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    .line 211
    const/4 v2, 0x0

    .line 212
    .local v2, result:Z
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 213
    .local v3, type:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$300()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/statusbar/powerwidget/PowerButton;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->handleLongClick()Z

    move-result v2

    .line 220
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/statusbar/powerwidget/PowerButton;>;"
    :cond_1
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$500()Landroid/view/View$OnLongClickListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 221
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$500()Landroid/view/View$OnLongClickListener;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 223
    :cond_2
    return v2
.end method
