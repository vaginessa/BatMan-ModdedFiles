.class Lcom/android/systemui/stackdivider/Divider$1;
.super Ljava/lang/Object;
.source "Divider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/Divider;->updateVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/Divider$1;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/Divider$1;->val$visible:Z

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/Divider$1;->val$visible:Z

    invoke-static {v0, v2}, Lcom/android/systemui/stackdivider/Divider;->-set4(Lcom/android/systemui/stackdivider/Divider;Z)Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->val$visible:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/DividerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/Divider;->-get7(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(Z)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->val$visible:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/DividerView;->setIgnoreAutoResize(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->val$visible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v3}, Lcom/android/systemui/stackdivider/DividerView;->showSnapGuide(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
