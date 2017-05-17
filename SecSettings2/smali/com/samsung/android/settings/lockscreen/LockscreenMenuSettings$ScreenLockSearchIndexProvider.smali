.class Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "LockscreenMenuSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenLockSearchIndexProvider"
.end annotation


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private mLockUtil:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    const-class v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    return-void
.end method

.method private isGuestUser(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v3
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNotificationsIconsOnly()Z

    move-result v7

    if-eqz v7, :cond_14

    const-string/jumbo v7, "lock_screen_menu_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "secured_lock_settigns"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "show_information"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "secured_lock_settigns"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "lock_screen_menu_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "lock_screen_menu_sec_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap2(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "find_my_mobile"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "unlock_set_or_change"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "other_security_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "silent_lock"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v7

    if-nez v7, :cond_8

    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSilentLock()Z

    move-result v7

    if-nez v7, :cond_9

    const-string/jumbo v7, "silent_lock"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string/jumbo v7, "lock_app_shortcut"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "lock_screen_menu_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "lock_screen_menu_sec_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "unlock_set_or_change"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "silent_lock"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "secured_lock_settigns"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string/jumbo v7, "app_ops_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string/jumbo v7, "lock_screen_menu_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "lock_screen_menu_sec_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "unlock_set_or_change"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "show_information"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "secured_lock_settigns"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "toggle_install_applications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string/jumbo v7, "toggle_install_applications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v7

    if-nez v7, :cond_d

    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-nez v7, :cond_e

    :cond_e
    const-string/jumbo v7, "key_private_mode"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_17

    const/4 v2, 0x1

    :goto_2
    const-string/jumbo v7, "persona"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v7

    if-eqz v7, :cond_18

    if-eqz v2, :cond_18

    :goto_3
    invoke-static {p1}, Lcom/android/settings/Utils;->hasSamsungPassApplication(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-static {p1}, Lcom/android/settings/Utils;->hasSamsungPassFrameworkPackage(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_10

    :cond_f
    const-string/jumbo v7, "samsung_pass"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static {p1}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string/jumbo v7, "silent_lock"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    const-string/jumbo v7, "com.samsung.android.app.aodservice"

    invoke-static {p1, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    const-string/jumbo v7, "always_on_screen"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnabled()Z

    move-result v7

    if-eqz v7, :cond_13

    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "silent_lock"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    return-object v4

    :cond_14
    const-string/jumbo v7, "lock_screen_menu_sec_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_15
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->isGuestUser(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_16

    invoke-static {p1}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_16
    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_17
    const/4 v2, 0x0

    goto :goto_2

    :cond_18
    const-string/jumbo v7, "secure_folder"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x2

    const v11, 0x7f0b04c3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v9, "unlock_set_or_change"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v9, 0x7f0b12d2

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const/4 v9, 0x3

    iput v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get0()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    const-class v9, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    invoke-static {p1, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap3(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    iget-object v9, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string/jumbo v9, "trust_agent"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-class v9, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const-string/jumbo v9, "show_information"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v9

    if-eqz v9, :cond_9

    const v9, 0x7f0b0958

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v9, 0x7f0b0959

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_1
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v9, "toggle_install_applications"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v9, 0x7f0b1654

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_d

    const v9, 0x7f0b093c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_2
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-nez v9, :cond_1

    const/4 v6, 0x1

    :cond_1
    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v4

    if-eqz v6, :cond_2

    if-eqz v4, :cond_e

    :cond_2
    :goto_3
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v9, "secured_lock_settigns"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-class v9, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const v9, 0x7f0b0987

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string/jumbo v9, ""

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    const-string/jumbo v9, ""

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v9, "always_on_screen"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-string/jumbo v9, "android.intent.action.MAIN"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    const-string/jumbo v9, "com.samsung.android.app.aodservice"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    const-string/jumbo v9, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    const v9, 0x7f0b0429

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string/jumbo v9, ""

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    const-string/jumbo v9, ""

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v9, "other_security_settings"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-class v9, Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const v9, 0x7f0b095a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v9, 0x7f0b095b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_f

    :cond_6
    :goto_4
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_7
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_11

    :cond_8
    :goto_6
    return-object v8

    :cond_9
    const v9, 0x7f0b094f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {p1}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {p1}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v2

    const/16 v9, 0x8

    if-ne v2, v9, :cond_a

    const v9, 0x7f0b0986

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const v9, 0x7f0b0985

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_c

    const v9, 0x7f0b0984

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    const v9, 0x7f0b0950

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    const v9, 0x7f0b03a8

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_2

    :cond_e
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v9, "find_my_mobile"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v9, 0x7f0b0829

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string/jumbo v9, ""

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    const-string/jumbo v9, ""

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_f
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v9, "iris_settings"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-string/jumbo v9, "android.intent.action.MAIN"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    const-string/jumbo v9, "com.android.settings"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    const-string/jumbo v9, "com.samsung.android.settings.iris.IrisLockSettings"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    const v9, 0x7f0b08a2

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    iput v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_10
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v9, "finger_scanner"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-string/jumbo v9, "android.intent.action.MAIN"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    const-class v9, Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    const v9, 0x7f0b08a1

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    iput v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_11
    invoke-static {p1}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_8

    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v9, "silent_lock"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-string/jumbo v9, "android.intent.action.MAIN"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    const-class v9, Lcom/samsung/android/settings/face/FaceEntry;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    const v9, 0x7f0b08a0

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    iput v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v3, 0x0

    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/provider/SearchIndexableResource;

    invoke-direct {v6, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v7, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v7, 0x7f080099

    iput v7, v6, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get0()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    const v4, 0x7f080101

    :cond_3
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap1()Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v6, Landroid/provider/SearchIndexableResource;

    invoke-direct {v6, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v7, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    iput v4, v6, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v0, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "device_policy"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v8}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_7

    const v4, 0x7f080113

    :goto_2
    new-instance v6, Landroid/provider/SearchIndexableResource;

    invoke-direct {v6, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v7, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    iput v4, v6, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const v4, 0x7f080117

    goto :goto_1

    :cond_7
    const v4, 0x7f080114

    goto :goto_2
.end method