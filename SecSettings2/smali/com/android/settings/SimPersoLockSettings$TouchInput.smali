.class Lcom/android/settings/SimPersoLockSettings$TouchInput;
.super Ljava/lang/Object;
.source "SimPersoLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimPersoLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/SimPersoLockSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/SimPersoLockSettings;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->this$0:Lcom/android/settings/SimPersoLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f1102e2

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    const v0, 0x7f1102d9

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    const v0, 0x7f1102da

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    const v0, 0x7f1102db

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    const v0, 0x7f1102dc

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    const v0, 0x7f1102dd

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    const v0, 0x7f1102de

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    const v0, 0x7f1102df

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    const v0, 0x7f1102e0

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    const v0, 0x7f1102e1

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    const v0, 0x7f1101a6

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mCancelButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    const-string/jumbo v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    const-string/jumbo v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string/jumbo v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    const-string/jumbo v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SimPersoLockSettings;Lcom/android/settings/SimPersoLockSettings$TouchInput;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SimPersoLockSettings$TouchInput;-><init>(Lcom/android/settings/SimPersoLockSettings;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    const/4 v0, 0x7

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    const/16 v0, 0x8

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/SimPersoLockSettings;->-get0()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->this$0:Lcom/android/settings/SimPersoLockSettings;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/SimPersoLockSettings$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$TouchInput;->this$0:Lcom/android/settings/SimPersoLockSettings;

    invoke-static {v1, v0}, Lcom/android/settings/SimPersoLockSettings;->-wrap0(Lcom/android/settings/SimPersoLockSettings;I)V

    :cond_2
    return-void
.end method
