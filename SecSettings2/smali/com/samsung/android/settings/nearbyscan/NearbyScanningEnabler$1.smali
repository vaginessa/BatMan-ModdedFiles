.class Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;
.super Landroid/database/ContentObserver;
.source "NearbyScanningEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    const-string/jumbo v1, "NearbyScanningEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mNearbyScanningObserver DB value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get2(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get2(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v4

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get2(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v4

    if-ne v0, v2, :cond_2

    const v1, 0x7f0b1bd3

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get2(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    if-ne v0, v2, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const v1, 0x7f0b1bd4

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get3(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get3(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    if-ne v0, v2, :cond_5

    :goto_4
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-ne v0, v2, :cond_7

    :goto_5
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    :cond_7
    move v2, v3

    goto :goto_5
.end method
