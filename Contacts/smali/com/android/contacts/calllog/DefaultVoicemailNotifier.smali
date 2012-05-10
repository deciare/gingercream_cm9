.class public Lcom/android/contacts/calllog/DefaultVoicemailNotifier;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifier.java"

# interfaces
.implements Lcom/android/contacts/calllog/VoicemailNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/DefaultVoicemailNotifier$1;,
        Lcom/android/contacts/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;,
        Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;,
        Lcom/android/contacts/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;,
        Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;,
        Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/contacts/calllog/DefaultVoicemailNotifier;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNameLookupQuery:Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;

.field private final mNewCallsQuery:Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;Lcom/android/contacts/calllog/PhoneNumberHelper;)V
    .locals 0
    .parameter "context"
    .parameter "notificationManager"
    .parameter "newCallsQuery"
    .parameter "nameLookupQuery"
    .parameter "phoneNumberHelper"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 81
    iput-object p3, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mNewCallsQuery:Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;

    .line 82
    iput-object p4, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mNameLookupQuery:Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;

    .line 83
    iput-object p5, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 84
    return-void
.end method

.method private createMarkNewVoicemailsAsOldIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/contacts/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    const-string v1, "com.android.contacts.calllog.ACTION_MARK_NEW_VOICEMAILS_AS_OLD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static createNameLookupQuery(Landroid/content/ContentResolver;)Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;
    .locals 2
    .parameter "contentResolver"

    .prologue
    .line 280
    new-instance v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;-><init>(Landroid/content/ContentResolver;Lcom/android/contacts/calllog/DefaultVoicemailNotifier$1;)V

    return-object v0
.end method

.method public static createNewCallsQuery(Landroid/content/ContentResolver;)Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;
    .locals 2
    .parameter "contentResolver"

    .prologue
    .line 217
    new-instance v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;-><init>(Landroid/content/ContentResolver;Lcom/android/contacts/calllog/DefaultVoicemailNotifier$1;)V

    return-object v0
.end method

.method public static createPhoneNumberHelper(Landroid/content/Context;)Lcom/android/contacts/calllog/PhoneNumberHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 321
    new-instance v0, Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/contacts/calllog/DefaultVoicemailNotifier;
    .locals 8
    .parameter "context"

    .prologue
    .line 64
    const-class v7, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/android/contacts/calllog/DefaultVoicemailNotifier;

    if-nez v0, :cond_0

    .line 65
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 67
    .local v2, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 68
    .local v6, contentResolver:Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;

    invoke-static {v6}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->createNewCallsQuery(Landroid/content/ContentResolver;)Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;

    move-result-object v3

    invoke-static {v6}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->createNameLookupQuery(Landroid/content/ContentResolver;)Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;

    move-result-object v4

    invoke-static {p0}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->createPhoneNumberHelper(Landroid/content/Context;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;Lcom/android/contacts/calllog/PhoneNumberHelper;)V

    sput-object v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/android/contacts/calllog/DefaultVoicemailNotifier;

    .line 73
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    .end local v6           #contentResolver:Landroid/content/ContentResolver;
    :cond_0
    sget-object v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/android/contacts/calllog/DefaultVoicemailNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method


# virtual methods
.method public clearNotification()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "DefaultVoicemailNotifier"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 192
    return-void
.end method

.method public updateNotification(Landroid/net/Uri;)V
    .locals 13
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mNewCallsQuery:Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;

    invoke-interface {v0}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;->query()[Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;

    move-result-object v6

    .line 93
    array-length v0, v6

    if-nez v0, :cond_0

    .line 94
    const-string v0, "DefaultVoicemailNotifier"

    const-string v1, "No voicemails to notify about: clear the notification."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->clearNotification()V

    .line 180
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 106
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    .line 112
    array-length v9, v6

    move v5, v3

    move-object v4, v2

    :goto_1
    if-ge v5, v9, :cond_4

    aget-object v1, v6, v5

    .line 114
    iget-object v0, v1, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mNameLookupQuery:Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;

    iget-object v10, v1, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    invoke-interface {v0, v10}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;->query(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v10, v1, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 122
    iget-object v0, v1, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    .line 125
    :cond_1
    iget-object v10, v1, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    invoke-interface {v8, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v4, v0

    .line 135
    :cond_2
    :goto_2
    if-eqz p1, :cond_9

    iget-object v0, v1, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 112
    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v2, v0

    goto :goto_1

    .line 130
    :cond_3
    const v10, 0x7f0c01d1

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v3

    aput-object v0, v11, v12

    invoke-virtual {v7, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    .line 140
    :cond_4
    if-eqz p1, :cond_5

    if-nez v2, :cond_5

    .line 141
    const-string v0, "DefaultVoicemailNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The new call could not be found in the call log: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_5
    const v0, 0x7f0e0008

    array-length v1, v6

    new-array v5, v12, [Ljava/lang/Object;

    array-length v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v3

    invoke-virtual {v7, v0, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x108007e

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    if-eqz v2, :cond_7

    const/4 v0, -0x1

    :goto_4
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->createMarkNewVoicemailsAsOldIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 161
    array-length v0, v6

    if-ne v0, v12, :cond_8

    .line 163
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/contacts/CallDetailActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->callsUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 165
    const-string v4, "EXTRA_VOICEMAIL_URI"

    aget-object v5, v6, v3

    iget-object v5, v5, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    :goto_5
    iget-object v4, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 174
    if-eqz v2, :cond_6

    .line 175
    const v0, 0x7f0c01d2

    new-array v4, v12, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {v7, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 179
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "DefaultVoicemailNotifier"

    invoke-virtual {v0, v2, v12, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_7
    move v0, v3

    .line 150
    goto :goto_4

    .line 169
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_5

    :cond_9
    move-object v0, v2

    goto/16 :goto_3
.end method
