.class public Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v0, 0x7f0c012a

    .line 558
    if-nez p1, :cond_0

    .line 580
    :goto_0
    :pswitch_0
    return v0

    .line 559
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 580
    const v0, 0x7f0c0123

    goto :goto_0

    .line 560
    :pswitch_1
    const v0, 0x7f0c0124

    goto :goto_0

    .line 561
    :pswitch_2
    const v0, 0x7f0c0125

    goto :goto_0

    .line 562
    :pswitch_3
    const v0, 0x7f0c0126

    goto :goto_0

    .line 563
    :pswitch_4
    const v0, 0x7f0c0127

    goto :goto_0

    .line 564
    :pswitch_5
    const v0, 0x7f0c0128

    goto :goto_0

    .line 565
    :pswitch_6
    const v0, 0x7f0c0129

    goto :goto_0

    .line 567
    :pswitch_7
    const v0, 0x7f0c012b

    goto :goto_0

    .line 568
    :pswitch_8
    const v0, 0x7f0c012c

    goto :goto_0

    .line 569
    :pswitch_9
    const v0, 0x7f0c012d

    goto :goto_0

    .line 570
    :pswitch_a
    const v0, 0x7f0c012e

    goto :goto_0

    .line 571
    :pswitch_b
    const v0, 0x7f0c012f

    goto :goto_0

    .line 572
    :pswitch_c
    const v0, 0x7f0c0130

    goto :goto_0

    .line 573
    :pswitch_d
    const v0, 0x7f0c0131

    goto :goto_0

    .line 574
    :pswitch_e
    const v0, 0x7f0c0132

    goto :goto_0

    .line 575
    :pswitch_f
    const v0, 0x7f0c0133

    goto :goto_0

    .line 576
    :pswitch_10
    const v0, 0x7f0c0134

    goto :goto_0

    .line 577
    :pswitch_11
    const v0, 0x7f0c0135

    goto :goto_0

    .line 578
    :pswitch_12
    const v0, 0x7f0c0136

    goto :goto_0

    .line 579
    :pswitch_13
    const v0, 0x7f0c0137

    goto :goto_0

    .line 559
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 553
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
