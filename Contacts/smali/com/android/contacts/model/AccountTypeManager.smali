.class public abstract Lcom/android/contacts/model/AccountTypeManager;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 92
    const-class v1, Lcom/android/contacts/model/AccountTypeManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 4
    .parameter "context"

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 82
    const-string v1, "contactAccountTypes"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountTypeManager;

    .line 84
    .local v0, service:Lcom/android/contacts/model/AccountTypeManager;
    if-nez v0, :cond_0

    .line 85
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->createAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 86
    const-string v1, "AccountTypeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No account type service in context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-object v0
.end method


# virtual methods
.method public contains(Lcom/android/contacts/model/AccountWithDataSet;Z)Z
    .locals 4
    .parameter "account"
    .parameter "contactWritableOnly"

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-virtual {p0, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 155
    .local v0, account_2:Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    const/4 v2, 0x1

    .line 159
    .end local v0           #account_2:Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    return v2
.end method

.method public abstract getAccountType(Lcom/android/contacts/model/AccountTypeWithDataSet;)Lcom/android/contacts/model/AccountType;
.end method

.method public final getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;
    .locals 1
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    .line 110
    invoke-static {p1, p2}, Lcom/android/contacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Lcom/android/contacts/model/AccountTypeWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public final getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;
    .locals 1
    .parameter "account"

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/android/contacts/model/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Lcom/android/contacts/model/AccountTypeWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAccountTypes(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccounts(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroupWritableAccounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;
    .locals 2
    .parameter "accountType"
    .parameter "dataSet"
    .parameter "mimeType"

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 139
    .local v0, type:Lcom/android/contacts/model/AccountType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getUsableInvitableAccountTypes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end method
