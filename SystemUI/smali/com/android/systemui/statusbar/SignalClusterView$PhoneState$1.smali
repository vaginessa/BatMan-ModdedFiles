.class Lcom/android/systemui/statusbar/SignalClusterView$PhoneState$1;
.super Ljava/lang/Object;
.source "SignalClusterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState$1;->this$1:Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState$1;->this$1:Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState$1;->this$1:Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState$1;->this$1:Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string/jumbo v1, "MobileData"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandDeskSettingsPanel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
