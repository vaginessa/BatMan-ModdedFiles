.class Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$7;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setDayLiteSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$7;->this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$7;->this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    invoke-virtual {v2}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.app.spage"

    const-string v3, "com.samsung.android.app.spage.main.settings.SettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$7;->this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    invoke-virtual {v2}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/launcher3/SettingsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method