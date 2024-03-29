.class public Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
.super Lcom/android/contacts/model/EntityDelta$ValuesDelta;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GroupDelta"
.end annotation


# instance fields
.field private mAccountHasGroups:Z

.field private mUngrouped:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    .line 246
    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    return v0
.end method

.method public static fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .locals 2
    .parameter "after"

    .prologue
    .line 295
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-direct {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;-><init>()V

    .line 296
    .local v0, entry:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    .line 297
    iput-object p0, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    .line 298
    return-object v0
.end method

.method public static fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .locals 2
    .parameter "before"

    .prologue
    .line 288
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-direct {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;-><init>()V

    .line 289
    .local v0, entry:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    iput-object p0, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    .line 290
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    .line 291
    return-object v0
.end method

.method public static fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .locals 9
    .parameter "resolver"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "dataSet"
    .parameter "accountHasGroups"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 255
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 258
    .local v7, settingsUri:Landroid/net/Uri$Builder;
    if-eqz p3, :cond_0

    .line 259
    const-string v0, "data_set"

    invoke-virtual {v7, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 261
    :cond_0
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "should_sync"

    aput-object v0, v2, v4

    const-string v0, "ungrouped_visible"

    aput-object v0, v2, v5

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 266
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 267
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "account_name"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v0, "account_type"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v0, "data_set"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    const-string v0, "should_sync"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    const-string v0, "ungrouped_visible"

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    invoke-static {v8}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->setUngrouped(Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 283
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v0

    .line 278
    :cond_2
    :try_start_1
    const-string v0, "should_sync"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string v0, "ungrouped_visible"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    invoke-static {v8}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->setUngrouped(Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 283
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getAccountType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    :goto_0
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    goto :goto_0
.end method


# virtual methods
.method public beforeExists()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buildDiff()Landroid/content/ContentProviderOperation;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->isInsert()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 365
    iget-boolean v5, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v5, :cond_1

    .line 366
    iget-object v5, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v6, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 367
    sget-object v5, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 401
    :cond_0
    :goto_0
    return-object v5

    .line 372
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unexpected diff"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 374
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->isUpdate()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 375
    iget-boolean v6, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v6, :cond_4

    .line 376
    const-string v5, "account_name"

    invoke-virtual {p0, v5}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, accountName:Ljava/lang/String;
    const-string v5, "account_type"

    invoke-virtual {p0, v5}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, accountType:Ljava/lang/String;
    const-string v5, "data_set"

    invoke-virtual {p0, v5}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, dataSet:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "account_name=? AND account_type=?"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .local v3, selection:Ljava/lang/StringBuilder;
    if-nez v2, :cond_3

    .line 383
    const-string v5, " AND data_set IS NULL"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    new-array v4, v9, [Ljava/lang/String;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    .line 389
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_1
    sget-object v5, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    goto :goto_0

    .line 386
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_3
    const-string v5, " AND data_set=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v9

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto :goto_1

    .line 394
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #dataSet:Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/StringBuilder;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_4
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    #calls: Lcom/android/contacts/list/CustomContactListFilterActivity;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$100(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getShouldSync()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 313
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "should_sync"

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const-string v0, "should_sync"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "context"

    .prologue
    .line 335
    iget-boolean v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v3, :cond_2

    .line 336
    invoke-direct {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/contacts/util/LocalizedNameResolver;->getAllContactsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, customAllContactsName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 352
    .end local v0           #customAllContactsName:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 341
    .restart local v0       #customAllContactsName:Ljava/lang/String;
    :cond_0
    iget-boolean v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAccountHasGroups:Z

    if-eqz v3, :cond_1

    .line 342
    const v3, 0x7f0c011f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_1
    const v3, 0x7f0c0120

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 347
    .end local v0           #customAllContactsName:Ljava/lang/String;
    :cond_2
    const-string v3, "title_res"

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 348
    .local v2, titleRes:Ljava/lang/Integer;
    if-eqz v2, :cond_3

    .line 349
    const-string v3, "res_package"

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 352
    .end local v1           #packageName:Ljava/lang/String;
    :cond_3
    const-string v3, "title"

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "ungrouped_visible"

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string v0, "group_visible"

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public putShouldSync(Z)V
    .locals 2
    .parameter "shouldSync"

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "should_sync"

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->put(Ljava/lang/String;I)V

    .line 324
    return-void

    .line 323
    :cond_0
    const-string v0, "should_sync"

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public putVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "ungrouped_visible"

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->put(Ljava/lang/String;I)V

    .line 328
    return-void

    .line 327
    :cond_0
    const-string v0, "group_visible"

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected setUngrouped(Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .locals 1
    .parameter "accountHasGroups"

    .prologue
    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    .line 303
    iput-boolean p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAccountHasGroups:Z

    .line 304
    return-object p0
.end method
