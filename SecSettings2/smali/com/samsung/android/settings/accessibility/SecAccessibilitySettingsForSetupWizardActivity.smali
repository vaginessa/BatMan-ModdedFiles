.class public Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;
.super Lcom/android/settings/SettingsActivity;
.source "SecAccessibilitySettingsForSetupWizardActivity.java"


# instance fields
.field private mSendExtraWindowStateChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v4, 0x7f110112

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->setMainContentId(I)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v4, "SupportLightNavigationBar|SupportForceTouch|SupportCustomBgColor|SupportNaviBarRemoteView"

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    const v4, 0x7f110589

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04001c

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->setIsDrawerPresent(Z)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setUiOptions(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v4}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/view/Window;)V

    const v4, 0x7f11074d

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    new-instance v4, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity$1;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity$1;-><init>(Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const v4, 0x7f110113

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v1}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v4, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity$2;-><init>(Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;)V

    invoke-virtual {v1, v4}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04001d

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onNavigateUp()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "activity_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->mSendExtraWindowStateChanged:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "activity_title"

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
