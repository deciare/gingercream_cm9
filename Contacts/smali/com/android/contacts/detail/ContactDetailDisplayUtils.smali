.class public Lcom/android/contacts/detail/ContactDetailDisplayUtils;
.super Ljava/lang/Object;
.source "ContactDetailDisplayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;,
        Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method static addStreamItemText(Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "streamItem"
    .parameter "rootView"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 348
    const v4, 0x7f07012f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 349
    .local v2, htmlView:Landroid/widget/TextView;
    const v4, 0x7f070130

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 351
    .local v0, attributionView:Landroid/widget/TextView;
    const v4, 0x7f070131

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 352
    .local v1, commentsView:Landroid/widget/TextView;
    new-instance v3, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;-><init>(Landroid/content/pm/PackageManager;)V

    .line 355
    .local v3, imageGetter:Landroid/text/Html$ImageGetter;
    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3, v5}, Lcom/android/contacts/util/HtmlUtils;->fromHtml(Landroid/content/Context;Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 358
    invoke-static {p1, p0}, Lcom/android/contacts/util/ContactBadgeUtil;->getSocialDate(Lcom/android/contacts/util/StreamItemEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 361
    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getComments()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3, v5}, Lcom/android/contacts/util/HtmlUtils;->fromHtml(Landroid/content/Context;Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 363
    return-object p2
.end method

.method public static createStreamItemView(Landroid/view/LayoutInflater;Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/widget/LinearLayout;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 21
    .parameter "inflater"
    .parameter "context"
    .parameter "streamItem"
    .parameter "parent"
    .parameter "photoClickListener"

    .prologue
    .line 264
    const v4, 0x7f040087

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 265
    .local v13, container:Landroid/view/View;
    const v4, 0x7f07012b

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 267
    .local v14, contentTable:Landroid/view/ViewGroup;
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v3

    .line 268
    .local v3, contactPhotoManager:Lcom/android/contacts/ContactPhotoManager;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v18

    .line 269
    .local v18, photos:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/util/StreamItemPhotoEntry;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v17

    .line 272
    .local v17, photoCount:I
    if-nez v17, :cond_1

    .line 273
    const v4, 0x7f04008a

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 275
    .local v20, textOnlyContainer:Landroid/view/View;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->addStreamItemText(Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View;)Landroid/view/View;

    .line 276
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 315
    .end local v20           #textOnlyContainer:Landroid/view/View;
    :goto_0
    if-eqz p3, :cond_0

    .line 316
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    :cond_0
    return-object v13

    .line 279
    :cond_1
    const/16 v16, 0x0

    .local v16, index:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 280
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/util/StreamItemPhotoEntry;

    .line 281
    .local v5, firstPhoto:Lcom/android/contacts/util/StreamItemPhotoEntry;
    add-int/lit8 v4, v16, 0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_2

    .line 283
    add-int/lit8 v4, v16, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/util/StreamItemPhotoEntry;

    .line 284
    .local v9, secondPhoto:Lcom/android/contacts/util/StreamItemPhotoEntry;
    const v4, 0x7f04008b

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 286
    .local v6, photoContainer:Landroid/view/View;
    const v7, 0x7f07012e

    move-object/from16 v4, p2

    move-object/from16 v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 288
    const v11, 0x7f070132

    move-object v7, v3

    move-object/from16 v8, p2

    move-object v10, v6

    move-object/from16 v12, p4

    invoke-static/range {v7 .. v12}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 290
    invoke-virtual {v14, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 279
    .end local v9           #secondPhoto:Lcom/android/contacts/util/StreamItemPhotoEntry;
    :goto_2
    add-int/lit8 v16, v16, 0x2

    goto :goto_1

    .line 293
    .end local v6           #photoContainer:Landroid/view/View;
    :cond_2
    const v4, 0x7f040089

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 295
    .restart local v6       #photoContainer:Landroid/view/View;
    const v7, 0x7f07012e

    move-object/from16 v4, p2

    move-object/from16 v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 297
    invoke-virtual {v14, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 302
    .end local v5           #firstPhoto:Lcom/android/contacts/util/StreamItemPhotoEntry;
    .end local v6           #photoContainer:Landroid/view/View;
    :cond_3
    const v4, 0x7f04008a

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 305
    .local v19, textContainer:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f090012

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 307
    .local v15, extraVerticalPadding:I
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v15

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v7, v8, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 311
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->addStreamItemText(Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View;)Landroid/view/View;

    .line 312
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public static getAttribution(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "contactData"

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, directoryDisplayName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryType()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, directoryType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v0

    .line 143
    .local v2, displayName:Ljava/lang/String;
    :goto_0
    const v3, 0x7f0c01a5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .end local v0           #directoryDisplayName:Ljava/lang/String;
    .end local v1           #directoryType:Ljava/lang/String;
    .end local v2           #displayName:Ljava/lang/String;
    :goto_1
    return-object v3

    .restart local v0       #directoryDisplayName:Ljava/lang/String;
    .restart local v1       #directoryType:Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .line 140
    goto :goto_0

    .line 145
    .end local v0           #directoryDisplayName:Ljava/lang/String;
    .end local v1           #directoryType:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getCompany(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "contactData"

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDisplayNameSource()I

    move-result v10

    const/16 v11, 0x1e

    if-ne v10, v11, :cond_2

    const/4 v2, 0x1

    .line 155
    .local v2, displayNameIsOrganization:Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity;

    .line 156
    .local v3, entity:Landroid/content/Entity;
    invoke-virtual {v3}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Entity$NamedContentValues;

    .line 157
    .local v8, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v4, v8, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 158
    .local v4, entryValues:Landroid/content/ContentValues;
    const-string v10, "mimetype"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, mimeType:Ljava/lang/String;
    const-string v10, "vnd.android.cursor.item/organization"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 161
    const-string v10, "data1"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, company:Ljava/lang/String;
    const-string v10, "data4"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 167
    .local v9, title:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 168
    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .line 183
    .local v0, combined:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 189
    .end local v0           #combined:Ljava/lang/String;
    .end local v1           #company:Ljava/lang/String;
    .end local v3           #entity:Landroid/content/Entity;
    .end local v4           #entryValues:Landroid/content/ContentValues;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #mimeType:Ljava/lang/String;
    .end local v8           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v9           #title:Ljava/lang/String;
    :goto_2
    return-object v0

    .line 153
    .end local v2           #displayNameIsOrganization:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .restart local v1       #company:Ljava/lang/String;
    .restart local v2       #displayNameIsOrganization:Z
    .restart local v3       #entity:Landroid/content/Entity;
    .restart local v4       #entryValues:Landroid/content/ContentValues;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #mimeType:Ljava/lang/String;
    .restart local v8       #subValue:Landroid/content/Entity$NamedContentValues;
    .restart local v9       #title:Ljava/lang/String;
    :cond_3
    move-object v0, v9

    .line 168
    goto :goto_1

    .line 170
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 171
    if-eqz v2, :cond_5

    const/4 v0, 0x0

    .restart local v0       #combined:Ljava/lang/String;
    :goto_3
    goto :goto_1

    .end local v0           #combined:Ljava/lang/String;
    :cond_5
    move-object v0, v1

    goto :goto_3

    .line 173
    :cond_6
    if-eqz v2, :cond_7

    .line 174
    move-object v0, v9

    .restart local v0       #combined:Ljava/lang/String;
    goto :goto_1

    .line 176
    .end local v0           #combined:Ljava/lang/String;
    :cond_7
    const v10, 0x7f0c01b5

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    aput-object v9, v11, v12

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #combined:Ljava/lang/String;
    goto :goto_1

    .line 189
    .end local v0           #combined:Ljava/lang/String;
    .end local v1           #company:Ljava/lang/String;
    .end local v3           #entity:Landroid/content/Entity;
    .end local v4           #entryValues:Landroid/content/ContentValues;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #mimeType:Ljava/lang/String;
    .end local v8           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v9           #title:Ljava/lang/String;
    :cond_8
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "context"
    .parameter "contactData"

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, displayName:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getAltDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, altDisplayName:Ljava/lang/CharSequence;
    new-instance v2, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v2, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 108
    .local v2, prefs:Lcom/android/contacts/preference/ContactsPreferences;
    const-string v3, ""

    .line 109
    .local v3, styledName:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 110
    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 111
    move-object v3, v1

    .line 118
    :goto_0
    return-object v3

    .line 113
    :cond_0
    move-object v3, v0

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c010a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getFirstListItemOffset(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 518
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    :cond_0
    const/high16 v0, -0x8000

    .line 522
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method public static getPhoneticName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "contactData"

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getPhoneticName()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, phoneticName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    .end local v0           #phoneticName:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #phoneticName:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V
    .locals 8
    .parameter "contactPhotoManager"
    .parameter "streamItem"
    .parameter "streamItemPhoto"
    .parameter "photoContainer"
    .parameter "imageViewId"
    .parameter "photoClickListener"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 326
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 327
    .local v6, frame:Landroid/view/View;
    const v0, 0x7f07012d

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 328
    .local v7, pushLayerView:Landroid/view/View;
    const v0, 0x7f070125

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 329
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz p5, :cond_0

    .line 330
    invoke-virtual {v7, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    new-instance v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;

    invoke-direct {v0, p1, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;-><init>(Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 332
    invoke-virtual {v7, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 333
    invoke-virtual {v7, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 342
    :goto_0
    invoke-virtual {p2}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    .line 344
    return-void

    .line 335
    :cond_0
    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    invoke-virtual {v7, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 337
    invoke-virtual {v7, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 339
    invoke-virtual {v7, v4}, Landroid/view/View;->setClickable(Z)V

    .line 340
    invoke-virtual {v7, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static requestToMoveToOffset(Landroid/widget/ListView;I)V
    .locals 2
    .parameter "listView"
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 538
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 548
    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public static setAlphaOnViewBackground(Landroid/view/View;F)V
    .locals 1
    .parameter "view"
    .parameter "alpha"

    .prologue
    .line 504
    if-eqz p0, :cond_0

    .line 507
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 509
    :cond_0
    return-void
.end method

.method public static setCompanyName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V
    .locals 1
    .parameter "context"
    .parameter "contactData"
    .parameter "textView"

    .prologue
    .line 382
    if-nez p2, :cond_0

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getCompany(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private static setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 1
    .parameter "textToDisplay"
    .parameter "textView"

    .prologue
    .line 415
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    :goto_0
    return-void

    .line 419
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V
    .locals 1
    .parameter "context"
    .parameter "contactData"
    .parameter "textView"

    .prologue
    .line 371
    if-nez p2, :cond_0

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public static setPhoto(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/ImageView;)V
    .locals 6
    .parameter "context"
    .parameter "contactData"
    .parameter "photoView"

    .prologue
    const/4 v5, 0x0

    .line 197
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isLoadingPhoto()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 212
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getPhotoBinaryData()[B

    move-result-object v3

    .line 202
    .local v3, photo:[B
    if-eqz v3, :cond_2

    array-length v4, v3

    invoke-static {v3, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 204
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v2

    .line 205
    .local v2, fadeIn:Z
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    .line 206
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 207
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 208
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 209
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 211
    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    :cond_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 202
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #fadeIn:Z
    :cond_2
    const/4 v4, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/contacts/util/ContactBadgeUtil;->loadDefaultAvatarPhoto(Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method public static setSocialSnippet(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 10
    .parameter "context"
    .parameter "contactData"
    .parameter "statusView"
    .parameter "statusPhotoView"

    .prologue
    const/4 v4, 0x0

    .line 232
    if-nez p2, :cond_0

    .line 258
    :goto_0
    return-void

    .line 236
    :cond_0
    const/4 v9, 0x0

    .line 237
    .local v9, snippet:Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 238
    .local v8, photoUri:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/util/StreamItemEntry;

    .line 240
    .local v6, firstEntry:Lcom/android/contacts/util/StreamItemEntry;
    invoke-virtual {v6}, Lcom/android/contacts/util/StreamItemEntry;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/contacts/util/HtmlUtils;->fromHtml(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    .line 241
    invoke-virtual {v6}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    invoke-virtual {v6}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/util/StreamItemPhotoEntry;

    .line 243
    .local v7, firstPhoto:Lcom/android/contacts/util/StreamItemPhotoEntry;
    invoke-virtual {v7}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getPhotoUri()Ljava/lang/String;

    move-result-object v8

    .line 246
    const/4 v9, 0x0

    .line 249
    .end local v6           #firstEntry:Lcom/android/contacts/util/StreamItemEntry;
    .end local v7           #firstPhoto:Lcom/android/contacts/util/StreamItemPhotoEntry;
    :cond_1
    invoke-static {v9, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 250
    if-eqz v8, :cond_2

    .line 251
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    .line 254
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 256
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setStarred(Lcom/android/contacts/ContactLoader$Result;Landroid/widget/CheckBox;)V
    .locals 1
    .parameter "contactData"
    .parameter "starredView"

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 221
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->getStarred()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method
