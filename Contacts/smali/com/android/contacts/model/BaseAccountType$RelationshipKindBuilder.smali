.class Lcom/android/contacts/model/BaseAccountType$RelationshipKindBuilder;
.super Lcom/android/contacts/model/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelationshipKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1483
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/BaseAccountType$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1483
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$RelationshipKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "attrs"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 1511
    const-string v0, "assistant"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    .line 1531
    :goto_0
    return-object v0

    .line 1512
    :cond_0
    const-string v0, "brother"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1513
    :cond_1
    const-string v0, "child"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1514
    :cond_2
    const-string v0, "domestic_partner"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1515
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1517
    :cond_3
    const-string v0, "father"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1518
    :cond_4
    const-string v0, "friend"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1519
    :cond_5
    const-string v0, "manager"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1520
    :cond_6
    const-string v0, "mother"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1521
    :cond_7
    const-string v0, "parent"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1522
    :cond_8
    const-string v0, "partner"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto/16 :goto_0

    .line 1523
    :cond_9
    const-string v0, "referred_by"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto/16 :goto_0

    .line 1524
    :cond_a
    const-string v0, "relative"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto/16 :goto_0

    .line 1525
    :cond_b
    const-string v0, "sister"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto/16 :goto_0

    .line 1526
    :cond_c
    const-string v0, "spouse"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto/16 :goto_0

    .line 1527
    :cond_d
    const-string v0, "custom"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1528
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto/16 :goto_0

    .line 1531
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1486
    const-string v0, "relationship"

    return-object v0
.end method

.method public parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 13
    .parameter "context"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/DataKind;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1493
    const/4 v4, 0x0

    const-string v5, "vnd.android.cursor.item/relation"

    const-string v6, "data2"

    const v7, 0x7f0c0118

    const/16 v8, 0xa0

    const v9, 0x7f04008f

    new-instance v10, Lcom/android/contacts/model/BaseAccountType$RelationActionInflater;

    invoke-direct {v10}, Lcom/android/contacts/model/BaseAccountType$RelationActionInflater;-><init>()V

    new-instance v11, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v0, "data1"

    invoke-direct {v11, v0}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Lcom/android/contacts/model/BaseAccountType$RelationshipKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/model/AccountType$StringInflater;Lcom/android/contacts/model/AccountType$StringInflater;)Lcom/android/contacts/model/DataKind;

    move-result-object v12

    .line 1499
    .local v12, kind:Lcom/android/contacts/model/DataKind;
    iget-object v0, v12, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0c0118

    const/16 v4, 0x2061

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1502
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v12, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 1503
    iget-object v0, v12, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1505
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/contacts/model/DataKind;

    const/4 v1, 0x0

    aput-object v12, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
