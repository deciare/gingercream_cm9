.class public Lcom/android/contacts/vcard/ImportVCardActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ImportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;,
        Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;,
        Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;,
        Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;,
        Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;,
        Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;,
        Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;,
        Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/contacts/model/AccountWithDataSet;

.field private mAccountSelectionListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

.field private mAllVCardFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

.field private mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

.field private mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

.field private mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

.field private mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

.field private mVCardScanThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    .line 186
    new-instance v0, Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    .line 608
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/contacts/vcard/ImportVCardActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->startVCardSelectAndImport()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;)Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/model/AccountWithDataSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCardFromSDCard(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCardFromSDCard(Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private doScanExternalStorageAndImportVCard()V
    .locals 2

    .prologue
    .line 1018
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1019
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1020
    :cond_0
    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->showDialog(I)V

    .line 1025
    :goto_0
    return-void

    .line 1022
    :cond_1
    new-instance v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardScanThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;

    .line 1023
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->showDialog(I)V

    goto :goto_0
.end method

.method private getSelectImportTypeDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 771
    new-instance v2, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    .line 772
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c00db

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    iget-object v5, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 778
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    .line 779
    .local v1, items:[Ljava/lang/String;
    const v3, 0x7f0c00cc

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 781
    const/4 v3, 0x1

    const v4, 0x7f0c00cd

    invoke-virtual {p0, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 783
    const/4 v3, 0x2

    const v4, 0x7f0c00ce

    invoke-virtual {p0, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 785
    invoke-virtual {v0, v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 786
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private getVCardFileSelectDialog(Z)Landroid/app/Dialog;
    .locals 13
    .parameter "multipleSelect"

    .prologue
    .line 790
    iget-object v9, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    .line 791
    .local v6, size:I
    new-instance v5, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;

    invoke-direct {v5, p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Z)V

    .line 792
    .local v5, listener:Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0c00db

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    invoke-virtual {v9, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x104

    iget-object v11, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 799
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-array v4, v6, [Ljava/lang/CharSequence;

    .line 800
    .local v4, items:[Ljava/lang/CharSequence;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 801
    .local v1, dateFormat:Ljava/text/DateFormat;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 802
    iget-object v9, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;

    .line 803
    .local v8, vcardFile:Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 804
    .local v7, stringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v8}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 805
    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 806
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 810
    .local v3, indexToBeSpanned:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-virtual {v8}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->getLastModified()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 812
    new-instance v9, Landroid/text/style/RelativeSizeSpan;

    const v10, 0x3f333333

    invoke-direct {v9, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v7, v9, v3, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 815
    aput-object v7, v4, v2

    .line 801
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 817
    .end local v3           #indexToBeSpanned:I
    .end local v7           #stringBuilder:Landroid/text/SpannableStringBuilder;
    .end local v8           #vcardFile:Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    :cond_0
    if-eqz p1, :cond_1

    .line 818
    const/4 v9, 0x0

    check-cast v9, [Z

    invoke-virtual {v0, v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 822
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9

    .line 820
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v0, v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private importVCard(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 747
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    .line 748
    return-void
.end method

.method private importVCard([Landroid/net/Uri;)V
    .locals 1
    .parameter "uris"

    .prologue
    .line 760
    new-instance v0, Lcom/android/contacts/vcard/ImportVCardActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity$1;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;[Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 768
    return-void
.end method

.method private importVCard([Ljava/lang/String;)V
    .locals 4
    .parameter "uriStrings"

    .prologue
    .line 751
    array-length v1, p1

    .line 752
    .local v1, length:I
    new-array v2, v1, [Landroid/net/Uri;

    .line 753
    .local v2, uris:[Landroid/net/Uri;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 754
    aget-object v3, p1, v0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v0

    .line 753
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    .line 757
    return-void
.end method

.method private importVCardFromSDCard(Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;)V
    .locals 4
    .parameter "vcardFile"

    .prologue
    .line 743
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    .line 744
    return-void
.end method

.method private importVCardFromSDCard(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 732
    .local p1, selectedVCardFileList:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 733
    .local v2, size:I
    new-array v3, v2, [Ljava/lang/String;

    .line 734
    .local v3, uriStrings:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 735
    .local v0, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;

    .line 736
    .local v4, vcardFile:Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 739
    .end local v4           #vcardFile:Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard([Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method private startImport()V
    .locals 5

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 881
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 882
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 883
    const-string v2, "VCardImport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting vCard import using Uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-direct {p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard(Landroid/net/Uri;)V

    .line 889
    :goto_0
    return-void

    .line 886
    :cond_0
    const-string v2, "VCardImport"

    const-string v3, "Start vCard without Uri. The user will select vCard manually."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->doScanExternalStorageAndImportVCard()V

    goto :goto_0
.end method

.method private startVCardSelectAndImport()V
    .locals 3

    .prologue
    .line 720
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 721
    .local v0, size:I
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 723
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCardFromSDCard(Ljava/util/List;)V

    .line 729
    :goto_0
    return-void

    .line 724
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 725
    new-instance v1, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    const v2, 0x7f070008

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 727
    :cond_2
    new-instance v1, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    const v2, 0x7f070009

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 862
    if-nez p1, :cond_0

    .line 863
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 864
    new-instance v0, Lcom/android/contacts/model/AccountWithDataSet;

    const-string v1, "account_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_set"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 868
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->startImport()V

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    if-eqz p2, :cond_2

    .line 871
    const-string v0, "VCardImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result code was not OK nor CANCELED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1005
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1008
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    .line 1009
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 827
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 832
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 833
    if-eqz v0, :cond_0

    .line 834
    const-string v2, "account_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 835
    const-string v2, "account_type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 836
    const-string v4, "data_set"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 842
    new-instance v1, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {v1, v3, v2, v0}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 857
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->startImport()V

    .line 858
    :goto_2
    return-void

    .line 838
    :cond_0
    const-string v0, "VCardImport"

    const-string v2, "intent does not exist"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    goto :goto_0

    .line 844
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 845
    invoke-virtual {v0, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 846
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 847
    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    goto :goto_1

    .line 848
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 849
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    goto :goto_1

    .line 851
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/SelectAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .parameter "resId"
    .parameter "bundle"

    .prologue
    const v9, 0x7f0c00d0

    const v8, 0x1010355

    const/4 v4, 0x1

    const v7, 0x104000a

    const/4 v6, 0x0

    .line 893
    sparse-switch p1, :sswitch_data_0

    .line 980
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    :goto_0
    return-object v3

    .line 895
    :sswitch_0
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccountSelectionListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    if-nez v3, :cond_0

    .line 896
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "mAccountSelectionListener must not be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 899
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccountSelectionListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-static {p0, p1, v3, v4}, Lcom/android/contacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v3

    goto :goto_0

    .line 903
    :sswitch_1
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    if-nez v3, :cond_1

    .line 904
    const v3, 0x7f0c00c7

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 905
    .local v2, title:Ljava/lang/String;
    const v3, 0x7f0c00cf

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 906
    .local v1, message:Ljava/lang/String;
    invoke-static {p0, v2, v1, v4, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    .line 908
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardScanThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 909
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardScanThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;

    invoke-virtual {v3}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->start()V

    .line 911
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 914
    :sswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c00c5

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c00c6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 920
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 923
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_3
    const v3, 0x7f0c00d7

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 924
    .restart local v1       #message:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 929
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 932
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #message:Ljava/lang/String;
    :sswitch_4
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->getSelectImportTypeDialog()Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    .line 935
    :sswitch_5
    invoke-direct {p0, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->getVCardFileSelectDialog(Z)Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    .line 938
    :sswitch_6
    invoke-direct {p0, v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->getVCardFileSelectDialog(Z)Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    .line 941
    :sswitch_7
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    if-nez v3, :cond_2

    .line 942
    const v3, 0x7f0c00dc

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 943
    .restart local v2       #title:Ljava/lang/String;
    const v3, 0x7f0c00dd

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 944
    .restart local v1       #message:Ljava/lang/String;
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    .line 945
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 946
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 947
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 948
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 949
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->startVCardService()V

    .line 951
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 954
    :sswitch_8
    const v3, 0x7f0c00d1

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0c00d2

    invoke-virtual {p0, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 956
    .restart local v1       #message:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 962
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 965
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #message:Ljava/lang/String;
    :sswitch_9
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;

    .line 966
    .restart local v1       #message:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 967
    const-string v3, "VCardImport"

    const-string v4, "Error message is null while it must not."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const v3, 0x7f0c00da

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 970
    :cond_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c00e0

    invoke-virtual {p0, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 976
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 893
    :sswitch_data_0
    .sparse-switch
        0x7f070005 -> :sswitch_1
        0x7f070006 -> :sswitch_2
        0x7f070007 -> :sswitch_3
        0x7f070008 -> :sswitch_4
        0x7f070009 -> :sswitch_6
        0x7f07000a -> :sswitch_5
        0x7f07000b -> :sswitch_7
        0x7f07000c -> :sswitch_8
        0x7f07000d -> :sswitch_9
        0x7f0c00c9 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 996
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 997
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 998
    const-string v0, "VCardImport"

    const-string v1, "Cache thread is still running. Show progress dialog again."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->showDialog(I)V

    .line 1001
    :cond_0
    return-void
.end method

.method showFailureNotification(I)V
    .locals 4
    .parameter "reasonId"

    .prologue
    .line 1028
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/contacts/vcard/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1030
    .local v1, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 1034
    .local v0, notification:Landroid/app/Notification;
    const-string v2, "VCardServiceFailure"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1036
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/contacts/vcard/ImportVCardActivity$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/vcard/ImportVCardActivity$2;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1043
    return-void
.end method

.method startVCardService()V
    .locals 3

    .prologue
    .line 984
    new-instance v0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    .line 986
    const-string v0, "VCardImport"

    const-string v1, "Bind to VCardService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 989
    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 990
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/contacts/vcard/ImportVCardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 992
    return-void
.end method
