.class Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;
.super Ljava/lang/Object;
.source "VoiceCallButtonFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallButtonFragment;->inflateInCallButtons(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopDockConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateAudioButtons(I)V
    invoke-static {v1, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$600(Lcom/android/incallui/fragment/VoiceCallButtonFragment;I)V

    :cond_0
    return-void
.end method
