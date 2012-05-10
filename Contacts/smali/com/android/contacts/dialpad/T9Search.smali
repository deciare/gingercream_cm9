.class Lcom/android/contacts/dialpad/T9Search;
.super Ljava/lang/Object;
.source "T9Search.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/dialpad/T9Search$T9Adapter;,
        Lcom/android/contacts/dialpad/T9Search$NumberComparator;,
        Lcom/android/contacts/dialpad/T9Search$NameComparator;,
        Lcom/android/contacts/dialpad/T9Search$ContactItem;,
        Lcom/android/contacts/dialpad/T9Search$T9SearchResult;
    }
.end annotation


# static fields
.field private static final CONTACT_PROJECTION:[Ljava/lang/String;

.field private static final PHONE_ID_SELECTION_ARGS:[Ljava/lang/String;

.field private static final PHONE_PROJECTION:[Ljava/lang/String;

.field private static sT9Map:[[C


# instance fields
.field private mAllResults:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/contacts/dialpad/T9Search$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/dialpad/T9Search$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mNameResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/dialpad/T9Search$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/dialpad/T9Search$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevInput:Ljava/lang/String;

.field private mSortMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "is_super_primary"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    const-string v1, "data3"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/contacts/dialpad/T9Search;->PHONE_PROJECTION:[Ljava/lang/String;

    .line 56
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/contacts/dialpad/T9Search;->PHONE_ID_SELECTION_ARGS:[Ljava/lang/String;

    .line 58
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "times_contacted"

    aput-object v1, v0, v4

    const-string v1, "photo_thumb_uri"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/contacts/dialpad/T9Search;->CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/T9Search;->mNameResults:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/T9Search;->mNumberResults:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/T9Search;->mAllResults:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/T9Search;->mContacts:Ljava/util/ArrayList;

    .line 73
    iput-object p1, p0, Lcom/android/contacts/dialpad/T9Search;->mContext:Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Lcom/android/contacts/dialpad/T9Search;->getAll()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/dialpad/T9Search;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/dialpad/T9Search;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/dialpad/T9Search;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/dialpad/T9Search;->mPrevInput:Ljava/lang/String;

    return-object v0
.end method

.method private getAll()V
    .locals 12

    .prologue
    .line 78
    sget-object v0, Lcom/android/contacts/dialpad/T9Search;->sT9Map:[[C

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/android/contacts/dialpad/T9Search;->initT9Map()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/T9Search;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/dialpad/T9Search;->CONTACT_PROJECTION:[Ljava/lang/String;

    const-string v3, "has_phone_number > 0"

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 82
    .local v6, contact:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/contacts/dialpad/T9Search;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/dialpad/T9Search;->PHONE_PROJECTION:[Ljava/lang/String;

    const-string v3, "mimetype = ? "

    sget-object v4, Lcom/android/contacts/dialpad/T9Search;->PHONE_ID_SELECTION_ARGS:[Ljava/lang/String;

    const-string v5, "contact_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 83
    .local v11, phone:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 85
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 87
    .local v7, contactId:J
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    .end local v7           #contactId:J
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 111
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 112
    return-void

    .line 90
    .restart local v7       #contactId:J
    :cond_3
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-nez v0, :cond_1

    .line 91
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 92
    .local v10, num:Ljava/lang/String;
    new-instance v9, Lcom/android/contacts/dialpad/T9Search$ContactItem;

    invoke-direct {v9}, Lcom/android/contacts/dialpad/T9Search$ContactItem;-><init>()V

    .line 93
    .local v9, contactInfo:Lcom/android/contacts/dialpad/T9Search$ContactItem;
    iput-wide v7, v9, Lcom/android/contacts/dialpad/T9Search$ContactItem;->id:J

    .line 94
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/dialpad/T9Search$ContactItem;->name:Ljava/lang/String;

    .line 95
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/dialpad/T9Search$ContactItem;->number:Ljava/lang/String;

    .line 96
    invoke-static {v10}, Lcom/android/contacts/dialpad/T9Search;->removeNonDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/dialpad/T9Search$ContactItem;->normalNumber:Ljava/lang/String;

    .line 97
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/dialpad/T9Search;->nameToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/dialpad/T9Search$ContactItem;->normalName:Ljava/lang/String;

    .line 98
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/contacts/dialpad/T9Search$ContactItem;->timesContacted:I

    .line 99
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v9, Lcom/android/contacts/dialpad/T9Search$ContactItem;->isSuperPrimary:Z

    .line 100
    iget-object v0, p0, Lcom/android/contacts/dialpad/T9Search;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/dialpad/T9Search$ContactItem;->groupType:Ljava/lang/CharSequence;

    .line 101
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 102
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/dialpad/T9Search$ContactItem;->photo:Landroid/net/Uri;

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/dialpad/T9Search;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    .line 99
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initT9Map()V
    .locals 13

    .prologue
    .line 218
    iget-object v11, p0, Lcom/android/contacts/dialpad/T9Search;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060002

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 219
    .local v10, t9Array:[Ljava/lang/String;
    array-length v11, v10

    new-array v11, v11, [[C

    sput-object v11, Lcom/android/contacts/dialpad/T9Search;->sT9Map:[[C

    .line 220
    const/4 v9, 0x0

    .line 221
    .local v9, rc:I
    move-object v0, v10

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v6, v0, v5

    .line 222
    .local v6, item:Ljava/lang/String;
    const/4 v2, 0x0

    .line 223
    .local v2, cc:I
    sget-object v11, Lcom/android/contacts/dialpad/T9Search;->sT9Map:[[C

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    new-array v12, v12, [C

    aput-object v12, v11, v9

    .line 224
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .local v1, arr$:[C
    array-length v8, v1

    .local v8, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v8, :cond_0

    aget-char v3, v1, v4

    .line 225
    .local v3, ch:C
    sget-object v11, Lcom/android/contacts/dialpad/T9Search;->sT9Map:[[C

    aget-object v11, v11, v9

    aput-char v3, v11, v2

    .line 226
    add-int/lit8 v2, v2, 0x1

    .line 224
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 228
    .end local v3           #ch:C
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 221
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_0

    .line 230
    .end local v1           #arr$:[C
    .end local v2           #cc:I
    .end local v6           #item:Ljava/lang/String;
    .end local v8           #len$:I
    :cond_1
    return-void
.end method

.method private static nameToNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "name"

    .prologue
    const/4 v14, 0x0

    .line 233
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v12, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 235
    .local v7, len:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v7, :cond_5

    .line 236
    const/4 v10, 0x0

    .line 237
    .local v10, matched:Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 238
    .local v3, ch:C
    sget-object v1, Lcom/android/contacts/dialpad/T9Search;->sT9Map:[[C

    .local v1, arr$:[[C
    array-length v8, v1

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v1           #arr$:[[C
    .end local v5           #i$:I
    .end local v8           #len$:I
    .local v6, i$:I
    :goto_1
    if-ge v6, v8, :cond_1

    aget-object v11, v1, v6

    .line 239
    .local v11, row:[C
    move-object v2, v11

    .local v2, arr$:[C
    array-length v9, v2

    .local v9, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_2
    if-ge v5, v9, :cond_0

    aget-char v0, v2, v5

    .line 240
    .local v0, a:C
    if-ne v3, v0, :cond_3

    .line 241
    const/4 v10, 0x1

    .line 242
    aget-char v13, v11, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    .end local v0           #a:C
    :cond_0
    if-eqz v10, :cond_4

    .line 250
    .end local v2           #arr$:[C
    .end local v5           #i$:I
    .end local v9           #len$:I
    .end local v11           #row:[C
    :cond_1
    if-nez v10, :cond_2

    .line 251
    sget-object v13, Lcom/android/contacts/dialpad/T9Search;->sT9Map:[[C

    aget-object v13, v13, v14

    aget-char v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 239
    .restart local v0       #a:C
    .restart local v2       #arr$:[C
    .restart local v5       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #row:[C
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 238
    .end local v0           #a:C
    :cond_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_1

    .line 254
    .end local v2           #arr$:[C
    .end local v3           #ch:C
    .end local v6           #i$:I
    .end local v9           #len$:I
    .end local v10           #matched:Z
    .end local v11           #row:[C
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method public static removeNonDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 258
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 259
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 260
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 261
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 262
    .local v0, ch:C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_0

    const/16 v4, 0x39

    if-le v0, v4, :cond_1

    :cond_0
    const/16 v4, 0x2a

    if-eq v0, v4, :cond_1

    const/16 v4, 0x23

    if-eq v0, v4, :cond_1

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    .line 263
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    .end local v0           #ch:C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public search(Ljava/lang/String;)Lcom/android/contacts/dialpad/T9Search$T9SearchResult;
    .locals 9
    .parameter "number"

    .prologue
    const/4 v8, -0x1

    .line 153
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search;->mNameResults:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 154
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search;->mNumberResults:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 155
    invoke-static {p1}, Lcom/android/contacts/dialpad/T9Search;->removeNonDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    const/4 v4, 0x0

    .line 157
    .local v4, pos:I
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "t9_sort"

    const-string v7, "1"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/contacts/dialpad/T9Search;->mSortMode:I

    .line 158
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search;->mPrevInput:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/dialpad/T9Search;->mPrevInput:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_4

    :cond_0
    const/4 v3, 0x1

    .line 160
    .local v3, newQuery:Z
    :goto_0
    if-eqz v3, :cond_5

    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search;->mContacts:Ljava/util/ArrayList;

    :goto_1
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/dialpad/T9Search$ContactItem;

    .line 161
    .local v1, item:Lcom/android/contacts/dialpad/T9Search$ContactItem;
    iput v8, v1, Lcom/android/contacts/dialpad/T9Search$ContactItem;->numberMatchId:I

    .line 162
    iput v8, v1, Lcom/android/contacts/dialpad/T9Search$ContactItem;->nameMatchId:I

    .line 163
    iget-object v5, v1, Lcom/android/contacts/dialpad/T9Search$ContactItem;->normalNumber:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 164
    if-eq v4, v8, :cond_2

    .line 165
    iput v4, v1, Lcom/android/contacts/dialpad/T9Search$ContactItem;->numberMatchId:I

    .line 166
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search;->mNumberResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_2
    iget-object v5, v1, Lcom/android/contacts/dialpad/T9Search$ContactItem;->normalName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 169
    if-eq v4, v8, :cond_1

    .line 170
    iget-object v5, v1, Lcom/android/contacts/dialpad/T9Search$ContactItem;->normalName:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    .line 171
    .local v2, last_space:I
    if-ne v2, v8, :cond_3

    .line 172
    const/4 v2, 0x0

    .line 174
    :cond_3
    sub-int v5, v4, v2

    iput v5, v1, Lcom/android/contacts/dialpad/T9Search$ContactItem;->nameMatchId:I

    .line 175
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search;->mNameResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 158
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/contacts/dialpad/T9Search$ContactItem;
    .end local v2           #last_space:I
    .end local v3           #newQuery:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 160
    .restart local v3       #newQuery:Z
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search;->mAllResults:Ljava/util/Set;

    goto :goto_1

    .line 178
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search;->mAllResults:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 179
    iput-object p1, p0, Lcom/android/contacts/dialpad/T9Search;->mPrevInput:Ljava/lang/String;

    .line 180
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search;->mNumberResults:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/contacts/dialpad/T9Search$NumberComparator;

    invoke-direct {v6}, Lcom/android/contacts/dialpad/T9Search$NumberComparator;-><init>()V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 181
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search;->mNameResults:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/contacts/dialpad/T9Search$NameComparator;

    invoke-direct {v6}, Lcom/android/contacts/dialpad/T9Search$NameComparator;-><init>()V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 182
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search;->mNameResults:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_7

    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search;->mNumberResults:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 183
    :cond_7
    iget v5, p0, Lcom/android/contacts/dialpad/T9Search;->mSortMode:I

    packed-switch v5, :pswitch_data_0

    .line 192
    :goto_3
    new-instance v5, Lcom/android/contacts/dialpad/T9Search$T9SearchResult;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/contacts/dialpad/T9Search;->mAllResults:Ljava/util/Set;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v7, p0, Lcom/android/contacts/dialpad/T9Search;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v7}, Lcom/android/contacts/dialpad/T9Search$T9SearchResult;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 194
    :goto_4
    return-object v5

    .line 185
    :pswitch_0
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search;->mAllResults:Ljava/util/Set;

    iget-object v6, p0, Lcom/android/contacts/dialpad/T9Search;->mNameResults:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 186
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search;->mAllResults:Ljava/util/Set;

    iget-object v6, p0, Lcom/android/contacts/dialpad/T9Search;->mNumberResults:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 189
    :pswitch_1
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search;->mAllResults:Ljava/util/Set;

    iget-object v6, p0, Lcom/android/contacts/dialpad/T9Search;->mNumberResults:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 190
    iget-object v5, p0, Lcom/android/contacts/dialpad/T9Search;->mAllResults:Ljava/util/Set;

    iget-object v6, p0, Lcom/android/contacts/dialpad/T9Search;->mNameResults:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 194
    :cond_8
    const/4 v5, 0x0

    goto :goto_4

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
