.class public Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;
.super Lcom/android/incallui/fragment/AnswerImageFragment;
.source "AnswerThreeWidgetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;
.implements Lcom/android/incallui/InCallNotifier$VideoCallUiEventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AnswerThreeWidgetFragment"


# instance fields
.field private mAnswerAsHideButton:Landroid/widget/Button;

.field private mAnswerAsShowButton:Landroid/widget/Button;

.field private mCanAddView:Z

.field private mContainer:Landroid/view/ViewGroup;

.field protected mDecorView:Landroid/view/View;

.field protected mHasNavigationBar:Z

.field private mIncomingCallImageWidgetBackground:Landroid/view/View;

.field private mIncomingCallImageWidgetContainer:Landroid/view/View;

.field private mIncomingHideShowContainer:Landroid/view/ViewGroup;

.field private mIncomingHideShowView:Landroid/view/View;

.field private mIncomingHideShowViewStub:Landroid/view/ViewStub;

.field private mIsAnsweringState:Z

.field private mIsDeviceLandScape:Z

.field private mIsEnoughSpace:Z

.field private mIsNormalWindow:Z

.field protected mVideoUXMode:I

.field private mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

.field private mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

.field private mhideShowMeFloatingButtonView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAnsweringState:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsDeviceLandScape:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mCanAddView:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHasNavigationBar:Z

    iput v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mVideoUXMode:I

    return-void
.end method

.method private answerAsVideo()V
    .locals 3

    const/4 v2, 0x3

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_ANSWER_OPTION:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateButtonsToAnswerAsShowOrHide()V

    :goto_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->incomingCall_answerVideo()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto :goto_0
.end method

.method private answerAsVoice()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    :goto_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->incomingCall_answerVoice()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto :goto_0
.end method

.method private disableButtonAnswerAsShowOrHide()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->setAnsweringState(Z)V

    return-void
.end method

.method private inflateHideShowMeFloatingButton(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f100205

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonView:Landroid/view/View;

    const v1, 0x7f100472

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButtonLayout()V

    goto :goto_0
.end method

.method private inflateIncomingHideShowLayout(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x7f100206

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowView:Landroid/view/View;

    if-eqz v0, :cond_1

    const v0, 0x7f1003bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowView:Landroid/view/View;

    const v1, 0x7f1003c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowView:Landroid/view/View;

    const v1, 0x7f1003c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private isEnoughSpace()Z
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v4, "AnswerThreeWidgetFragment"

    const-string v5, "isEnoughSpace : Activity is null."

    invoke-static {v4, v5, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v2

    :cond_0
    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v4, "AnswerThreeWidgetFragment"

    const-string v5, "isEnoughSpace : metrics is null."

    invoke-static {v4, v5, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToMultiWindowLayout()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    iget-object v5, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-virtual {v5}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getPrimaryCallCardHeight()I

    move-result v5

    iget-object v6, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCardMetrics;

    iget v6, v6, Lcom/android/incallui/service/vt/VideoCardMetrics;->caller_info_height:I

    add-int/2addr v5, v6

    iget-object v6, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v6, v6, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_height:I

    add-int/2addr v5, v6

    if-gt v4, v5, :cond_2

    const-string v4, "AnswerThreeWidgetFragment"

    const-string v5, "isEnoughSpace - false"

    invoke-static {v4, v5, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private needToReInflateLayout()Z
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsThreeWidget:Z

    iget-boolean v2, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    iget v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mVideoUXMode:I

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isEnoughSpace()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowThreeWidget()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsThreeWidget:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToMultiWindowLayout()Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoUXMode()I

    move-result v5

    iput v5, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mVideoUXMode:I

    iget-boolean v5, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsThreeWidget:Z

    if-ne v5, v3, :cond_0

    iget-boolean v5, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    if-ne v5, v1, :cond_0

    iget-boolean v5, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    if-ne v5, v2, :cond_0

    iget v5, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mVideoUXMode:I

    if-eq v5, v4, :cond_5

    :cond_0
    iget-boolean v5, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    if-eq v5, v1, :cond_1

    const-string v5, "AnswerThreeWidgetFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "needToReInflateLayout isEnoughSpace "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v5, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsThreeWidget:Z

    if-eq v5, v3, :cond_2

    const-string v5, "AnswerThreeWidgetFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "needToReInflateLayout isThreeWidget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsThreeWidget:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v5, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mVideoUXMode:I

    if-eq v5, v4, :cond_3

    const-string v5, "AnswerThreeWidgetFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "needToReInflateLayout VideoUXMode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mVideoUXMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v5, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    if-eq v5, v2, :cond_4

    const-string v5, "AnswerThreeWidgetFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "needToReInflateLayout isNormalWindow "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v7, v6

    :cond_5
    return v7

    :cond_6
    move v5, v7

    goto/16 :goto_0
.end method

.method private needToShowHideShowMeFloatingButton()Z
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "AnswerThreeWidgetFragment"

    const-string v7, "needToShowHideShowMeFloatingButton : Activity is null."

    invoke-static {v4, v7, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v4, "AnswerThreeWidgetFragment"

    const-string v7, "needToShowHideShowMeFloatingButton : metrics is null."

    invoke-static {v4, v7, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v4, v5

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v4, v4, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_floating_button_bottom_offset:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00bf

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int v2, v4, v7

    iget-object v4, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getOutgoingCallCardHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToMultiWindowLayout()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    sub-int/2addr v4, v1

    if-gt v4, v2, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_0
.end method

.method private needToShowThreeWidget()Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->THREE_WIDGET:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    return v0
.end method

.method private showIncomingHideShowLayout(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private toggleHideShowMeFloatingButton()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0900c6

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButton()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->hideMe(I)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButton()V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->showMe(I)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendLiveVideo()V

    goto :goto_1
.end method

.method private updateButtonsToAnswerAsShowOrHide()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->setAnsweringState(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->showIncomingHideShowLayout(Z)V

    return-void
.end method


# virtual methods
.method protected addAnswerFragmentView()V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mCanAddView:Z

    if-nez v3, :cond_0

    const-string v3, "AnswerThreeWidgetFragment"

    const-string v4, "addAnswerFragmentView : AnswerFragment view can not be added."

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->removeAnswerFragmentView()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->inflateAnswerFragmentView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "AnswerThreeWidgetFragment"

    const-string v4, "addAnswerFragmentView : AnswerFragment view is null."

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v3, "AnswerThreeWidgetFragment"

    const-string v4, "addAnswerFragmentView"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->onFinishInflate(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3, p0}, Lcom/android/incallui/AnswerPresenter;->onUiReady(Lcom/android/incallui/AnswerUi;)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->showAnswerUi(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsDeviceLandScape:Z

    goto :goto_0

    :cond_2
    const-string v3, "AnswerThreeWidgetFragment"

    const-string v4, "addAnswerFragmentView : Top view is null."

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public enableButtonAnswerAsShowOrHide()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "enableButtonAnswerAsShowOrHide "

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected inflateAnswerFragmentView()Landroid/view/View;
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v5, "AnswerThreeWidgetFragment"

    const-string v6, "inflateAnswerFragmentView : Activity is null."

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-object v1

    :cond_0
    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mContainer:Landroid/view/ViewGroup;

    if-nez v6, :cond_1

    const-string v5, "AnswerThreeWidgetFragment"

    const-string v6, "inflateAnswerFragmentView : View container is null."

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToMultiWindowLayout()Z

    move-result v6

    if-nez v6, :cond_2

    :goto_1
    iput-boolean v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoUXMode()I

    move-result v4

    iput v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mVideoUXMode:I

    iget-boolean v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    if-eqz v4, :cond_3

    const v4, 0x7f04009e

    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    const v4, 0x7f04009f

    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public isAnsweringState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAnsweringState:Z

    return v0
.end method

.method public isShowIncomingHideShowLayout()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected needToMultiWindowLayout()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "AnswerThreeWidgetFragment"

    const-string v5, "needToMultiWindowLayout : Activity is null."

    invoke-static {v4, v5, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoUXMode()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics;->hasMultiWindowType(I)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "AnswerThreeWidgetFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v1, "AnswerThreeWidgetFragment"

    const-string v2, "answer as hide!"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->disableButtonAnswerAsShowOrHide()V

    goto :goto_0

    :sswitch_1
    const-string v1, "AnswerThreeWidgetFragment"

    const-string v2, "answer as show!"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->disableButtonAnswerAsShowOrHide()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->toggleHideShowMeFloatingButton()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1003c1 -> :sswitch_1
        0x7f1003c2 -> :sswitch_0
        0x7f100472 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/AnswerImageFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v1

    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsDeviceLandScape:Z

    if-eq v3, v1, :cond_0

    const-string v3, "AnswerThreeWidgetFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsDeviceLandScape:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->addAnswerFragmentView()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToMultiWindowLayout()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0, v1}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    :cond_1
    return-void
.end method

.method public onContentViewChanged(Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "onCreateView..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHasNavigationBar:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->registerSystemUiVisibilityChangeListener()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowThreeWidget()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsThreeWidget:Z

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isEnoughSpace()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setIsEnoughSpaceForAnswer(Z)V

    iput-object p2, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0400bf

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->removeAnswerFragmentView()V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mDecorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->onDestroyView()V

    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/AnswerImageFragment;->onFinishInflate(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateNavigationBar()V

    const v0, 0x7f100204

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetContainer:Landroid/view/View;

    const v0, 0x7f100201

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateAnswerLayout()V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_ANSWER_OPTION:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->inflateIncomingHideShowLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isAnsweringState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateButtonsToAnswerAsShowOrHide()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->inflateHideShowMeFloatingButton(Landroid/view/View;)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->addVideoCallMetricsListener(Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->addVideoCallUiEventListener(Lcom/android/incallui/InCallNotifier$VideoCallUiEventListener;)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/AnswerImageFragment;->onMultiWindowModeChanged(Z)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToReInflateLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setIsEnoughSpaceForAnswer(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->addAnswerFragmentView()V

    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "AnswerThreeWidgetFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger(whichHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowThreeWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "LEFT_HANDLE: answer as voice!"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->answerAsVoice()V

    goto :goto_0

    :cond_0
    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "LEFT_HANDLE: answer as video!"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->answerAsVideo()V

    goto :goto_0

    :pswitch_1
    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "LEFT_TOP_HANDLE: answer as video!"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->answerAsVideo()V

    goto :goto_0

    :pswitch_2
    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "RIGHT_HANDLE: reject!"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerPresenter;->onDecline(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->incomingCall_decline()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onVideoCallMetricsChagned(Lcom/android/incallui/service/vt/VideoCallMetrics;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToReInflateLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setIsEnoughSpaceForAnswer(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->addAnswerFragmentView()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateIncomingCallWidgetLayout()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButtonLayout()V

    goto :goto_0
.end method

.method public onVideoCallUiEvent(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButton()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/AnswerImageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mCanAddView:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->addAnswerFragmentView()V

    return-void
.end method

.method public registerSystemUiVisibilityChangeListener()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHasNavigationBar:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "AnswerThreeWidgetFragment"

    const-string v2, "registerSystemUiVisibilityChangeListener : Activity is null."

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mDecorView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mDecorView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mDecorView:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment$1;-><init>(Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    const-string v1, "AnswerThreeWidgetFragment"

    const-string v2, "registerSystemUiVisibilityChangeListener"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v1, "AnswerThreeWidgetFragment"

    const-string v2, "registerSystemUiVisibilityChangeListener : decorView is null."

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected removeAnswerFragmentView()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallNotifier;->removeVideoCallMetricsListener(Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallNotifier;->removeVideoCallUiEventListener(Lcom/android/incallui/InCallNotifier$VideoCallUiEventListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1, v5, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    iput-object v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->unregisterDetector()V

    iput-object v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v1, :cond_3

    iput-object v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iput-object v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonView:Landroid/view/View;

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAlreadyAnimationProcessing:Z

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAnswerAnimationRunning:Z

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAnsweringState:Z

    const-string v1, "AnswerThreeWidgetFragment"

    const-string v2, "removeAnswerFragmentView"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->showAnswerUi(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1, p0}, Lcom/android/incallui/AnswerPresenter;->onUiUnready(Lcom/android/incallui/AnswerUi;)V

    :goto_0
    return-void

    :cond_7
    const-string v1, "AnswerThreeWidgetFragment"

    const-string v2, "removeAnswerFragmentView : Top view is null."

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setAnsweringState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAnsweringState:Z

    return-void
.end method

.method protected updateAnswerLayout()V
    .locals 13

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v8, "AnswerThreeWidgetFragment"

    const-string v9, "updateAnswerLayout : Activity is null."

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v8}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v8, "AnswerThreeWidgetFragment"

    const-string v9, "updateAnswerLayout : metrics is null."

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f00e1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    const v10, 0x7f02032e

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v8, 0x14

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, v5, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v8, v8, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_reject_message_handler_width:I

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-virtual {v5}, Lcom/android/incallui/service/vt/VideoCallMetrics;->hasNavigationBarZone()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v6

    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_9

    move v8, v6

    :goto_1
    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v8}, Lcom/android/incallui/RejectMsgContent;->updateNavitationArea()V

    :cond_6
    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetContainer:Landroid/view/View;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_c

    invoke-virtual {v5}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation()Z

    move-result v8

    if-eqz v8, :cond_a

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_2
    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetContainer:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v8, v5, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v8, v8, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_bg_height:I

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v5, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget-boolean v8, v8, Lcom/android/incallui/service/vt/VideoButtonMetrics;->transparent_answer_bg:Z

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x106000d

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200ee

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_3
    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v8, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_9
    move v8, v9

    goto :goto_1

    :cond_a
    invoke-virtual {v5}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isRightHandRotation()Z

    move-result v8

    if-eqz v8, :cond_b

    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_b
    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_c
    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_d
    iget-object v8, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f01a5

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3
.end method

.method public updateHideShowMeFloatingButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateHideShowMeFloatingButtonLayout()V
    .locals 15

    const/16 v12, 0x8

    const/4 v2, 0x1

    const/4 v11, 0x0

    iget-object v10, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    if-eqz v10, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowHideShowMeFloatingButton()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v10}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v10, "AnswerThreeWidgetFragment"

    const-string v11, "updateHideShowMeFloatingButtonLayout : metrics is null."

    invoke-static {v10, v11, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToMultiWindowLayout()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v10

    if-eqz v10, :cond_4

    :goto_1
    iget-object v10, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v10}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v9, -0x1

    if-eqz v2, :cond_5

    const/4 v9, -0x2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f0a0519

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    iget-object v10, v4, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-virtual {v10}, Lcom/android/incallui/service/vt/VideoMetrics;->getBigDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    iget v10, v4, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v14

    add-int/2addr v13, v14

    sub-int/2addr v13, v7

    sub-int v1, v10, v13

    if-lez v1, :cond_2

    iget-boolean v10, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHasNavigationBar:Z

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation()Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/2addr v1, v5

    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_2
    iget-object v10, v4, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-virtual {v10}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getOutgoingCallCardHeight()I

    move-result v10

    add-int v8, v10, v7

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_2
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v10, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v10, v3}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v13, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    if-eqz v6, :cond_6

    move v10, v11

    :goto_3
    invoke-virtual {v13, v10}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    if-eqz v6, :cond_7

    :goto_4
    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButton()V

    goto :goto_0

    :cond_4
    move v2, v11

    goto :goto_1

    :cond_5
    iget-object v10, v4, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v10, v10, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_floating_button_bottom_offset:I

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_2

    :cond_6
    move v10, v12

    goto :goto_3

    :cond_7
    move v11, v12

    goto :goto_4
.end method

.method public updateIncomingCallWidgetLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateAnswerLayout()V

    return-void
.end method

.method protected updateNavigationBar()V
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "AnswerThreeWidgetFragment"

    const-string v4, "updateNavigationBar : Activity is null."

    invoke-static {v3, v4, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToMultiWindowLayout()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBackKey(Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-static {v0, v1}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    goto :goto_0
.end method
