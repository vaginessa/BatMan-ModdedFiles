.class Lcom/samsung/android/settings/fmm/FindMyMobileSettings$15;
.super Ljava/lang/Object;
.source "FindMyMobileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showNotificationChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$15;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$15;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$15;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-wrap0(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "remote_control"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$15;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-wrap0(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "remote_control"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.remotecontrol_off"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "FindMyMobileSettings"

    const-string/jumbo v4, " onCheckedChanged[remotecontrol_off]"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$15;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$15;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100275

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-set0(I)I

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$15;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get1(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get0()I

    move-result v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$15;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get5(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$15;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-wrap0(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "remote_control"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$15;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    sput-boolean v2, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->chkboxFlag:Z

    :cond_2
    return-void
.end method
