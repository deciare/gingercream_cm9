.class public Lcom/android/contacts/list/ContactTileListFragment;
.super Landroid/app/Fragment;
.source "ContactTileListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactTileListFragment$3;,
        Lcom/android/contacts/list/ContactTileListFragment$Listener;
    }
.end annotation


# static fields
.field private static LOADER_CONTACTS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

.field private mAdapterListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

.field private final mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

.field private mEmptyView:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    sput v0, Lcom/android/contacts/list/ContactTileListFragment;->LOADER_CONTACTS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 114
    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactTileListFragment$1;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 167
    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactTileListFragment$2;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapterListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getEmptyStateText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    return-object v0
.end method

.method private getEmptyStateText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    sget-object v1, Lcom/android/contacts/list/ContactTileListFragment$3;->$SwitchMap$com$android$contacts$list$ContactTileAdapter$DisplayType:[I

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 158
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized DisplayType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :pswitch_0
    const v1, 0x7f0c0072

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, emptyText:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 155
    .end local v0           #emptyText:Ljava/lang/String;
    :pswitch_1
    const v1, 0x7f0c0062

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    .restart local v0       #emptyText:Ljava/lang/String;
    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public enableQuickContact(Z)V
    .locals 1
    .parameter "enableQuickContact"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->enableQuickContact(Z)V

    .line 112
    return-void
.end method

.method protected inflateAndSetupView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"
    .parameter "layoutResourceId"

    .prologue
    .line 84
    const/4 v1, 0x0

    invoke-virtual {p1, p4, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, listLayout:Landroid/view/View;
    const v1, 0x7f07008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyView:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f07008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Landroid/widget/ListView;

    .line 89
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 90
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 68
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 70
    .local v0, columnCount:I
    new-instance v2, Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapterListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-direct {v2, p1, v3, v0, v4}, Lcom/android/contacts/list/ContactTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileAdapter$Listener;ILcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    .line 72
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-static {p1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactTileAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 78
    const v0, 0x7f04002d

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/contacts/list/ContactTileListFragment;->inflateAndSetupView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 98
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget v1, Lcom/android/contacts/list/ContactTileListFragment;->LOADER_CONTACTS:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 99
    return-void
.end method

.method public setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V
    .locals 2
    .parameter "displayType"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    .line 107
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    .line 108
    return-void
.end method

.method public setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    .line 165
    return-void
.end method
