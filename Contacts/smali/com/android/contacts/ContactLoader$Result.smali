.class public final Lcom/android/contacts/ContactLoader$Result;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactLoader$Result$Status;
    }
.end annotation


# instance fields
.field private final mAltDisplayName:Ljava/lang/String;

.field private final mCustomRingtone:Ljava/lang/String;

.field private mDirectoryAccountName:Ljava/lang/String;

.field private mDirectoryAccountType:Ljava/lang/String;

.field private mDirectoryDisplayName:Ljava/lang/String;

.field private mDirectoryExportSupport:I

.field private final mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private final mDisplayName:Ljava/lang/String;

.field private final mDisplayNameSource:I

.field private final mEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private final mException:Ljava/lang/Exception;

.field private mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:J

.field private final mInvitableAccountTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsUserProfile:Z

.field private mLoadingPhoto:Z

.field private final mLookupKey:Ljava/lang/String;

.field private final mLookupUri:Landroid/net/Uri;

.field private final mNameRawContactId:J

.field private final mPhoneticName:Ljava/lang/String;

.field private mPhotoBinaryData:[B

.field private final mPhotoId:J

.field private final mPhotoUri:Ljava/lang/String;

.field private final mPresence:Ljava/lang/Integer;

.field private final mRequestedUri:Landroid/net/Uri;

.field private final mSendToVoicemail:Z

.field private final mStarred:Z

.field private final mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

.field private final mStatuses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mStreamItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V
    .locals 2
    .parameter "requestedUri"
    .parameter "uri"
    .parameter "lookupUri"
    .parameter "directoryId"
    .parameter "lookupKey"
    .parameter "id"
    .parameter "nameRawContactId"
    .parameter "displayNameSource"
    .parameter "photoId"
    .parameter "photoUri"
    .parameter "displayName"
    .parameter "altDisplayName"
    .parameter "phoneticName"
    .parameter "starred"
    .parameter "presence"
    .parameter "sendToVoicemail"
    .parameter "customRingtone"
    .parameter "isUserProfile"

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->LOADED:Lcom/android/contacts/ContactLoader$Result$Status;

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    .line 192
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    .line 193
    iput-object p3, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 194
    iput-object p2, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    .line 195
    iput-wide p4, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    .line 196
    iput-object p6, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    .line 197
    iput-wide p7, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    .line 200
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Ljava/util/HashMap;

    .line 201
    iput-wide p9, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    .line 202
    iput p11, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    .line 203
    iput-wide p12, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    .line 204
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    .line 205
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    .line 206
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    .line 207
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    .line 208
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    .line 209
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    .line 210
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    .line 211
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    .line 212
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    .line 213
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    .line 214
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZLcom/android/contacts/ContactLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"
    .parameter "x12"
    .parameter "x13"
    .parameter "x14"
    .parameter "x15"
    .parameter "x16"
    .parameter "x17"
    .parameter "x18"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p22}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result$Status;Ljava/lang/Exception;)V
    .locals 5
    .parameter "requestedUri"
    .parameter "status"
    .parameter "exception"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    sget-object v0, Lcom/android/contacts/ContactLoader$Result$Status;->ERROR:Lcom/android/contacts/ContactLoader$Result$Status;

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ERROR result must have exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iput-object p2, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    .line 149
    iput-object p3, p0, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    .line 150
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    .line 151
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 152
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    .line 153
    iput-wide v3, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    .line 154
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    .line 155
    iput-wide v3, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    .line 156
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    .line 158
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Ljava/util/HashMap;

    .line 159
    iput-wide v3, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    .line 160
    iput v2, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    .line 161
    iput-wide v3, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    .line 162
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    .line 164
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    .line 166
    iput-boolean v2, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    .line 167
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    .line 168
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    .line 169
    iput-boolean v2, p0, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    .line 170
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    .line 171
    iput-boolean v2, p0, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    .line 172
    return-void
.end method

.method private constructor <init>(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 2
    .parameter "from"

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    .line 218
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    .line 219
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    .line 220
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 221
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    .line 222
    iget-wide v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    .line 223
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    .line 224
    iget-wide v0, p1, Lcom/android/contacts/ContactLoader$Result;->mId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    .line 225
    iget-wide v0, p1, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    .line 226
    iget v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    iput v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    .line 227
    iget-wide v0, p1, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    .line 228
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    .line 229
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    .line 230
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    .line 231
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    .line 232
    iget-boolean v0, p1, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    .line 233
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    .line 234
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    .line 235
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    .line 236
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Ljava/util/HashMap;

    .line 237
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    .line 239
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    .line 240
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    .line 241
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    .line 242
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    .line 243
    iget v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    iput v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    .line 245
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    .line 247
    iget-boolean v0, p1, Lcom/android/contacts/ContactLoader$Result;->mLoadingPhoto:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLoadingPhoto:Z

    .line 248
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    .line 249
    iget-boolean v0, p1, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    .line 250
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    .line 251
    iget-boolean v0, p1, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    .line 252
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ContactLoader$Result;Lcom/android/contacts/ContactLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;-><init>(Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/ContactLoader$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p5}, Lcom/android/contacts/ContactLoader$Result;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/ContactLoader$Result;Lcom/android/contacts/GroupMetaData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->addGroupMetaData(Lcom/android/contacts/GroupMetaData;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/ContactLoader$Result;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->setLoadingPhoto(Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-static {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-static {p0}, Lcom/android/contacts/ContactLoader$Result;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/ContactLoader$Result;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->setPhotoBinaryData([B)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addGroupMetaData(Lcom/android/contacts/GroupMetaData;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    return-void
.end method

.method private static forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;
    .locals 2
    .parameter "requestedUri"
    .parameter "exception"

    .prologue
    .line 175
    new-instance v0, Lcom/android/contacts/ContactLoader$Result;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->ERROR:Lcom/android/contacts/ContactLoader$Result$Status;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private static forNotFound(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    .locals 3
    .parameter "requestedUri"

    .prologue
    .line 179
    new-instance v0, Lcom/android/contacts/ContactLoader$Result;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->NOT_FOUND:Lcom/android/contacts/ContactLoader$Result$Status;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "displayName"
    .parameter "directoryType"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "exportSupport"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    .line 260
    iput-object p2, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    .line 261
    iput-object p3, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    .line 262
    iput-object p4, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    .line 263
    iput p5, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    .line 264
    return-void
.end method

.method private setLoadingPhoto(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/android/contacts/ContactLoader$Result;->mLoadingPhoto:Z

    .line 268
    return-void
.end method

.method private setPhotoBinaryData([B)V
    .locals 0
    .parameter "photoBinaryData"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    .line 272
    return-void
.end method


# virtual methods
.method public getAltDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v7, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 433
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Cannot extract content values from an aggregated contact"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 437
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 438
    .local v0, entity:Landroid/content/Entity;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    .line 440
    .local v6, subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    if-eqz v6, :cond_2

    .line 441
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 442
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 443
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 444
    .local v2, pair:Landroid/content/Entity$NamedContentValues;
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, v2, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 445
    iget-object v7, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    .end local v1           #i:I
    .end local v2           #pair:Landroid/content/Entity$NamedContentValues;
    .end local v5           #size:I
    :cond_2
    iget-wide v7, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    if-eqz v7, :cond_3

    .line 453
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 454
    .local v3, photo:Landroid/content/ContentValues;
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v7, "data15"

    iget-object v8, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 456
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    .end local v3           #photo:Landroid/content/ContentValues;
    :cond_3
    return-object v4
.end method

.method public getCustomRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryExportSupport()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    return v0
.end method

.method public getDirectoryId()J
    .locals 2

    .prologue
    .line 395
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNameSource()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    return v0
.end method

.method public getEntities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getGroupMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method getId()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 306
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    return-wide v0
.end method

.method public getInvitableAccountTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getNameRawContactId()J
    .locals 2

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    return-wide v0
.end method

.method public getPhoneticName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoBinaryData()[B
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 351
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    return-wide v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStarred()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    return v0
.end method

.method public getStatuses()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Ljava/util/HashMap;

    return-object v0
.end method

.method public getStreamItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isDirectoryEntry()Z
    .locals 4

    .prologue
    .line 399
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->ERROR:Lcom/android/contacts/ContactLoader$Result$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->LOADED:Lcom/android/contacts/ContactLoader$Result$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingPhoto()Z
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLoadingPhoto:Z

    return v0
.end method

.method public isNotFound()Z
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->NOT_FOUND:Lcom/android/contacts/ContactLoader$Result$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendToVoicemail()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    return v0
.end method

.method public isUserProfile()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    return v0
.end method
