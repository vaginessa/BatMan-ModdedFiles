.class Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old$1;
.super Ljava/lang/Object;
.source "ProgressCircle_old.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;

    invoke-static {v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;->access$100(Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;

    invoke-static {v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;->access$200(Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;

    invoke-static {v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;->access$100(Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;->access$002(Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;F)F

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;->invalidate()V

    return-void
.end method
