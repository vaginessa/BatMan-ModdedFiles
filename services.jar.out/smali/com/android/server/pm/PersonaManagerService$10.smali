.class Lcom/android/server/pm/PersonaManagerService$10;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService;->removeUserStateLocked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$personaHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iput p2, p0, Lcom/android/server/pm/PersonaManagerService$10;->val$personaHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-get19(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-get24(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v2, p0, Lcom/android/server/pm/PersonaManagerService$10;->val$personaHandle:I

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
