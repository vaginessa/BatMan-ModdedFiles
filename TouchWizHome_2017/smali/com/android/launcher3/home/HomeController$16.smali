.class Lcom/android/launcher3/home/HomeController$16;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/item/ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->getWidgetForAppWidgetId(I)Lcom/android/launcher3/home/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;

.field final synthetic val$appWidgetId:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$16;->this$0:Lcom/android/launcher3/home/HomeController;

    iput p2, p0, Lcom/android/launcher3/home/HomeController$16;->val$appWidgetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    iget v1, p0, Lcom/android/launcher3/home/HomeController$16;->val$appWidgetId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
