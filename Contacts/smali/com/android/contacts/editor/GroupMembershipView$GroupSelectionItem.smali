.class public final Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
.super Ljava/lang/Object;
.source "GroupMembershipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/GroupMembershipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupSelectionItem"
.end annotation


# instance fields
.field private mChecked:Z

.field private final mGroupId:J

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Z)V
    .locals 0
    .parameter "groupId"
    .parameter "title"
    .parameter "checked"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide p1, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mGroupId:J

    .line 65
    iput-object p3, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mTitle:Ljava/lang/String;

    .line 66
    iput-boolean p4, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mChecked:Z

    .line 67
    return-void
.end method


# virtual methods
.method public getGroupId()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mGroupId:J

    return-wide v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mChecked:Z

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
