.class Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;
.super Ljava/lang/Object;
.source "AddAudioApplications.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/AddAudioApplications$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iput-object p2, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iget-object v1, v1, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get1(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "multisound_app"

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->val$packageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iget-object v1, v1, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get1(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iget-object v2, v2, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-virtual {v2}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->val$packageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iget-object v1, v1, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get0(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iget-object v2, v2, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v2}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get2(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->val$packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->addPackage(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iget-object v1, v1, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-virtual {v1}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->finish()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AddAudioApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method
