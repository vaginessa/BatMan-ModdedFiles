.class Lcom/android/launcher3/home/HomeBindController$17;
.super Ljava/lang/Object;
.source "HomeBindController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeBindController;->bindWidgetsRestored(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeBindController;

.field final synthetic val$widgets:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController$17;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeBindController$17;->val$widgets:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController$17;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController$17;->val$widgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeBindController;->bindWidgetsRestored(Ljava/util/ArrayList;)V

    return-void
.end method
