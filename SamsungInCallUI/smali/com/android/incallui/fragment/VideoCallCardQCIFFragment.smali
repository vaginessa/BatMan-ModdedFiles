.class public Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;
.super Lcom/android/incallui/fragment/VideoCallCardFragment;

# interfaces
.implements Lcom/android/incallui/CallCardUi;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallCardQCIFFragment"


# instance fields
.field private mIsScaleAnimationRunning:Z

.field protected mRecInfoFarEnd:Landroid/view/ViewGroup;

.field protected mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIsScaleAnimationRunning:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIsScaleAnimationRunning:Z

    return p1
.end method

.method private animateForCallerInfoContainer(II)V
    .locals 6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIsScaleAnimationRunning:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment$1;-><init>(Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment$2;-><init>(Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private getNavigationBarHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->hasNavigationBar()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private hasNavigationBar()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected inflateCdnipLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1003da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10042f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCdnipNumberLayout:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected inflateCnapLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1003d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100431

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100430

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCnapNameLayout:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public isPrimaryVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isRecordingTimeVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f04013c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIsScaleAnimationRunning:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f1002d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->updateCallCardIndicatorArea()V

    const v0, 0x7f100213

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPhoneNumber:Landroid/widget/TextView;

    const v0, 0x7f10012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryName:Landroid/widget/TextView;

    const v0, 0x7f1003d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    const v0, 0x7f100153

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mNumberLabel:Landroid/widget/TextView;

    const v0, 0x7f100255

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPhotoContainer:Landroid/view/View;

    const v0, 0x7f1000d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPhoto:Landroid/widget/ImageView;

    const v0, 0x7f10020c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const v0, 0x7f10020e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v0, 0x7f100212

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallNumberAndLabel:Landroid/view/View;

    const v0, 0x7f100214

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mElapsedTime:Landroid/widget/TextView;

    const v0, 0x7f1000d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const v0, 0x7f100207

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v0, 0x7f100252

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallStateContainer:Landroid/view/View;

    const v0, 0x7f1002d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallInfoContainer:Landroid/view/View;

    const v0, 0x7f1003d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallBannerContainer:Landroid/view/View;

    const v0, 0x7f1003d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mMoreButtonContainer:Landroid/view/View;

    const v0, 0x7f1003d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    const v0, 0x7f1003d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    const v0, 0x7f10042e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    const v0, 0x7f10042d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    const v0, 0x7f1003d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mNameContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3, v6}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->showRecordingInfo(ZZ)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->updateView()V

    return-void
.end method

.method public setCallCardVisible(Z)V
    .locals 2

    const-string v0, "VideoCallCardQCIFFragment"

    const-string v1, "Nothing to do for QCIF video call"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 7

    const v6, 0x7f0a0366

    const/4 v0, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOldCallState:I

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mMoreButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    move v2, v0

    :goto_1
    if-eq v2, p1, :cond_0

    :cond_3
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isTabletUX()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_10

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->isRecordingTimeVisible()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_6
    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mVolumeButton:Landroid/widget/Button;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v2, v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0348

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    :cond_8
    :goto_3
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallStateContainer:Landroid/view/View;

    invoke-static {v3, v2, p1}, Lcom/android/incallui/util/SecAnimationUtils$Change;->changeHeight(Landroid/view/View;IZ)V

    :goto_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mMoreButtonContainer:Landroid/view/View;

    invoke-static {v2, v1, p1}, Lcom/android/incallui/util/SecAnimationUtils$Change;->changeHeight(Landroid/view/View;IZ)V

    if-eqz v0, :cond_0

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_9
    move v2, v1

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto/16 :goto_2

    :cond_b
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_c
    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mVolumeButton:Landroid/widget/Button;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_d
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a05e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_3

    :cond_e
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallStateContainer:Landroid/view/View;

    const/16 v4, 0xfa

    invoke-static {v3, v2, v4}, Lcom/android/incallui/util/SecAnimationUtils$Change;->changeOnlyHeight(Landroid/view/View;II)V

    goto :goto_4

    :cond_f
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOldCallState:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->updateBgColorForCallState(I)V

    goto/16 :goto_0

    :cond_10
    move v2, v1

    goto/16 :goto_3
.end method

.method public setPrimaryVisibleByDialpad(Z)V
    .locals 0

    return-void
.end method

.method public setRecordTimeUpdate(J)V
    .locals 5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showRecordingInfo(ZZ)V
    .locals 5

    const/16 v4, 0x8

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected updateBgColorForCallState(I)V
    .locals 5

    const v4, 0x7f0e01e3

    const v3, 0x7f0e01e2

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-ne p1, v1, :cond_3

    :cond_2
    const-string v0, "VideoCallCardQCIFFragment"

    const-string v1, "not update callend in hold status"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isDeviceLandScape()Z

    move-result v2

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    :goto_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    goto :goto_1

    :sswitch_2
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isTabletUX()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x6 -> :sswitch_2
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method protected updateHideMeLayout()V
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0367

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isTabletUX()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isDeviceLandScape()Z

    move-result v3

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v3, :cond_5

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->activityHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getBigTemplateHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->activityHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getBigTemplateHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x5

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    :cond_6
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->activityHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getBigTemplateHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->activityHeight:I

    mul-int/lit8 v1, v1, 0x55

    div-int/lit8 v1, v1, 0x64

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->activityWidth:I

    if-ge v1, v3, :cond_8

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->activityHeight:I

    div-int/lit8 v1, v1, 0x64

    mul-int/lit8 v1, v1, 0x41

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getBigTemplateHeight()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0059

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getBigTemplateHeight()I

    move-result v3

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->activityHeight:I

    mul-int/lit8 v4, v4, 0x4b

    div-int/lit8 v4, v4, 0x64

    if-le v3, v4, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getBigTemplateHeight()I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->activityHeight:I

    mul-int/lit8 v2, v2, 0x19

    div-int/lit8 v2, v2, 0x64

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getBigTemplateHeight()I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    :cond_b
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_2
.end method

.method protected updateLayoutForCallState(I)V
    .locals 4

    const/4 v3, 0x3

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateLayoutForCallState(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x2

    move v1, v0

    :goto_1
    if-eq p1, v3, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOldCallState:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOldCallState:I

    if-eq v2, v3, :cond_3

    if-ne p1, v3, :cond_3

    const/16 v0, 0x1f4

    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->animateForCallerInfoContainer(II)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0669

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    move v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected updatePrimaryVisibleForCallState(I)V
    .locals 4

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOldCallState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOldCallState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    const/16 v0, 0x9

    if-eq v0, p1, :cond_2

    const/16 v0, 0xa

    if-ne v0, p1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method protected updateTextColor(I)V
    .locals 4

    const v3, 0x7f0e01ed

    const v2, 0x7f0e0186

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
