.class Lcom/android/launcher3/allapps/model/AppsLoader$17;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;->removePackagesAndComponents(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

.field final synthetic val$removedApps:Ljava/util/ArrayList;

.field final synthetic val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$17;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$17;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$17;->val$removedApps:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$17;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$17;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$17;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    # getter for: Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1500()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getLoaderTask()Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v3

    # invokes: Lcom/android/launcher3/allapps/model/AppsLoader;->tryGetCallbacks(Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    invoke-static {v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1400(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$17;->val$removedApps:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$17;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;->bindComponentsRemoved(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    :cond_0
    return-void
.end method