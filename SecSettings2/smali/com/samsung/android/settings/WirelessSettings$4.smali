.class Lcom/samsung/android/settings/WirelessSettings$4;
.super Landroid/database/ContentObserver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings$4;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$4;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v3, "multi_path"

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$4;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "mptcp_value"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0b1bda

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$4;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "mptcp_value"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f0b1bdb

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
