.class public Lcom/android/contacts/dialpad/T9Search$T9Adapter;
.super Landroid/widget/ArrayAdapter;
.source "T9Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/T9Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "T9Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/dialpad/T9Search$ContactItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/dialpad/T9Search$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuInflate:Landroid/view/LayoutInflater;

.field private mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

.field final synthetic this$0:Lcom/android/contacts/dialpad/T9Search;


# direct methods
.method public constructor <init>(Lcom/android/contacts/dialpad/T9Search;Landroid/content/Context;ILjava/util/ArrayList;Landroid/view/LayoutInflater;Lcom/android/contacts/ContactPhotoManager;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .parameter "menuInflate"
    .parameter "photoLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/dialpad/T9Search$ContactItem;",
            ">;",
            "Landroid/view/LayoutInflater;",
            "Lcom/android/contacts/ContactPhotoManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 275
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/dialpad/T9Search$ContactItem;>;"
    iput-object p1, p0, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->this$0:Lcom/android/contacts/dialpad/T9Search;

    .line 276
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 277
    iput-object p4, p0, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->mItems:Ljava/util/ArrayList;

    .line 278
    iput-object p5, p0, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->mMenuInflate:Landroid/view/LayoutInflater;

    .line 279
    iput-object p6, p0, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    .line 280
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 285
    if-nez p2, :cond_0

    .line 286
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->mMenuInflate:Landroid/view/LayoutInflater;

    const v6, 0x7f040080

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 287
    new-instance v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;-><init>(Lcom/android/contacts/dialpad/T9Search$T9Adapter;)V

    .line 288
    .local v0, holder:Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;
    const v5, 0x7f07011c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 289
    const v5, 0x7f07011d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->number:Landroid/widget/TextView;

    .line 290
    const v5, 0x7f07011b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/QuickContactBadge;

    iput-object v5, v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->icon:Landroid/widget/QuickContactBadge;

    .line 291
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 295
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/dialpad/T9Search$ContactItem;

    .line 296
    .local v3, o:Lcom/android/contacts/dialpad/T9Search$ContactItem;
    iget-object v5, v3, Lcom/android/contacts/dialpad/T9Search$ContactItem;->name:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 297
    iget-object v5, v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->this$0:Lcom/android/contacts/dialpad/T9Search;

    #getter for: Lcom/android/contacts/dialpad/T9Search;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/dialpad/T9Search;->access$000(Lcom/android/contacts/dialpad/T9Search;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v5, v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->number:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object v5, v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->icon:Landroid/widget/QuickContactBadge;

    const v6, 0x7f02006c

    invoke-virtual {v5, v6}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 300
    iget-object v5, v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->icon:Landroid/widget/QuickContactBadge;

    iget-object v6, v3, Lcom/android/contacts/dialpad/T9Search$ContactItem;->number:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 325
    :goto_1
    return-object p2

    .line 293
    .end local v0           #holder:Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;
    .end local v3           #o:Lcom/android/contacts/dialpad/T9Search$ContactItem;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;

    .restart local v0       #holder:Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;
    goto :goto_0

    .line 302
    .restart local v3       #o:Lcom/android/contacts/dialpad/T9Search$ContactItem;
    :cond_1
    iget-object v5, v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/android/contacts/dialpad/T9Search$ContactItem;->name:Ljava/lang/String;

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 303
    iget-object v5, v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->number:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/android/contacts/dialpad/T9Search$ContactItem;->normalNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/contacts/dialpad/T9Search$ContactItem;->groupType:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 304
    iget-object v5, v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->number:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget v5, v3, Lcom/android/contacts/dialpad/T9Search$ContactItem;->nameMatchId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 306
    iget-object v5, v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    .line 307
    .local v4, s:Landroid/text/Spannable;
    iget-object v5, v3, Lcom/android/contacts/dialpad/T9Search$ContactItem;->normalName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->this$0:Lcom/android/contacts/dialpad/T9Search;

    #getter for: Lcom/android/contacts/dialpad/T9Search;->mPrevInput:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/contacts/dialpad/T9Search;->access$100(Lcom/android/contacts/dialpad/T9Search;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 308
    .local v1, nameStart:I
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->this$0:Lcom/android/contacts/dialpad/T9Search;

    #getter for: Lcom/android/contacts/dialpad/T9Search;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/dialpad/T9Search;->access$000(Lcom/android/contacts/dialpad/T9Search;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v6, p0, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->this$0:Lcom/android/contacts/dialpad/T9Search;

    #getter for: Lcom/android/contacts/dialpad/T9Search;->mPrevInput:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/contacts/dialpad/T9Search;->access$100(Lcom/android/contacts/dialpad/T9Search;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    const/16 v7, 0x12

    invoke-interface {v4, v5, v1, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 310
    iget-object v5, v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .end local v1           #nameStart:I
    .end local v4           #s:Landroid/text/Spannable;
    :cond_2
    iget v5, v3, Lcom/android/contacts/dialpad/T9Search$ContactItem;->numberMatchId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 313
    iget-object v5, v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->number:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    .line 314
    .restart local v4       #s:Landroid/text/Spannable;
    iget v2, v3, Lcom/android/contacts/dialpad/T9Search$ContactItem;->numberMatchId:I

    .line 315
    .local v2, numberStart:I
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->this$0:Lcom/android/contacts/dialpad/T9Search;

    #getter for: Lcom/android/contacts/dialpad/T9Search;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/dialpad/T9Search;->access$000(Lcom/android/contacts/dialpad/T9Search;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v6, p0, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->this$0:Lcom/android/contacts/dialpad/T9Search;

    #getter for: Lcom/android/contacts/dialpad/T9Search;->mPrevInput:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/contacts/dialpad/T9Search;->access$100(Lcom/android/contacts/dialpad/T9Search;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    const/16 v7, 0x12

    invoke-interface {v4, v5, v2, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 317
    iget-object v5, v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->number:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .end local v2           #numberStart:I
    .end local v4           #s:Landroid/text/Spannable;
    :cond_3
    iget-object v5, v3, Lcom/android/contacts/dialpad/T9Search$ContactItem;->photo:Landroid/net/Uri;

    if-eqz v5, :cond_4

    .line 320
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search$T9Adapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    iget-object v6, v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->icon:Landroid/widget/QuickContactBadge;

    iget-object v7, v3, Lcom/android/contacts/dialpad/T9Search$ContactItem;->photo:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZ)V

    .line 323
    :goto_2
    iget-object v5, v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->icon:Landroid/widget/QuickContactBadge;

    iget-object v6, v3, Lcom/android/contacts/dialpad/T9Search$ContactItem;->number:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 322
    :cond_4
    iget-object v5, v0, Lcom/android/contacts/dialpad/T9Search$T9Adapter$ViewHolder;->icon:Landroid/widget/QuickContactBadge;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZ)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_2
.end method
