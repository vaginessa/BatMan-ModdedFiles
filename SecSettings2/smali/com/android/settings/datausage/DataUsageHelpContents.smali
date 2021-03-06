.class public Lcom/android/settings/datausage/DataUsageHelpContents;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DataUsageHelpContents.java"


# instance fields
.field private mMenuTitle:Ljava/lang/String;

.field private mMoreInfoContentTextView:Landroid/widget/TextView;

.field private mMoreInfoLayout:Landroid/widget/LinearLayout;

.field private mNumberOneContentTextView:Landroid/widget/TextView;

.field private mNumberOneTextView:Landroid/widget/TextView;

.field private mNumberTwoContentTextView:Landroid/widget/TextView;

.field private mNumberTwoTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mMenuTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageHelpContents;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mMenuTitle:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const v2, 0x7f0400bc

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberOneTextView:Landroid/widget/TextView;

    const v2, 0x7f11028b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberOneContentTextView:Landroid/widget/TextView;

    const v2, 0x7f11028c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberTwoTextView:Landroid/widget/TextView;

    const v2, 0x7f11028d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberTwoContentTextView:Landroid/widget/TextView;

    const v2, 0x7f110290

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mMoreInfoContentTextView:Landroid/widget/TextView;

    const v2, 0x7f11028e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mMoreInfoLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberOneTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberTwoTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x2

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mMenuTitle:Ljava/lang/String;

    const-string/jumbo v3, "CheckingDataUsage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberOneContentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageHelpContents;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0545

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberTwoContentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageHelpContents;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0546

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mMoreInfoContentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageHelpContents;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0547

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mMenuTitle:Ljava/lang/String;

    const-string/jumbo v3, "dataLimit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberOneContentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageHelpContents;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0549

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberTwoContentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageHelpContents;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b054a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mMoreInfoLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    return-void
.end method
