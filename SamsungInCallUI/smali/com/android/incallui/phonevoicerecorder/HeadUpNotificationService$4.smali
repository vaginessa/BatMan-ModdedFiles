.class Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$4;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->animateForSlideOut(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;


# direct methods
.method constructor <init>(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$4;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$4;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    iput-boolean v1, v0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$4;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    iput-boolean v1, v0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsPopupShowing:Z

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$4;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->stopSelf()V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$4;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->onEndAnimation()V

    return-void
.end method
