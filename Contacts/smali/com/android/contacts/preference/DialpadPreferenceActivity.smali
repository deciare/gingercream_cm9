.class public Lcom/android/contacts/preference/DialpadPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "DialpadPreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/DialpadPreferenceActivity;->addPreferencesFromResource(I)V

    .line 29
    return-void
.end method
