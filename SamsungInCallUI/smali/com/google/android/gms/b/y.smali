.class public Lcom/google/android/gms/b/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/b/y$b;,
        Lcom/google/android/gms/b/y$a;,
        Lcom/google/android/gms/b/y$d;,
        Lcom/google/android/gms/b/y$c;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/Object;

.field private static e:Lcom/google/android/gms/b/y;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/android/gms/common/b;

.field private h:I

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/b/y$c",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/b/s",
            "<*>;",
            "Lcom/google/android/gms/b/y$c",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/b/s",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final l:Landroid/os/Handler;

.field private final m:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/gms/common/api/m",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/b/y$a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/google/android/gms/b/y$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/y;->d:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/y;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/b/y;->h:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/b/y;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/y;->l:Landroid/os/Handler;

    return-object v0
.end method

.method public static a()Lcom/google/android/gms/b/y;
    .locals 2

    sget-object v1, Lcom/google/android/gms/b/y;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/b/y;->e:Lcom/google/android/gms/b/y;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/y;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/y$c;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/b/y;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/b/y$c;->a(IZ)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x34

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onRelease received for unknown instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/b/r;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/y;->i:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/b/r;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/y$c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/b/y$c;->a(Lcom/google/android/gms/b/r;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/common/api/m;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/m",
            "<*>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/m;->c()Lcom/google/android/gms/b/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/y;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/b/y;->j:Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/b/y$c;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/b/y$c;-><init>(Lcom/google/android/gms/b/y;Lcom/google/android/gms/common/api/m;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/b/y;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/y$c;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/b/y$c;->b(I)V

    iget-object v1, p0, Lcom/google/android/gms/b/y;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/b/y$c;->a(Lcom/google/android/gms/b/y$c;)V

    iget-object v0, p0, Lcom/google/android/gms/b/y;->n:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/gms/b/y$a;

    iget-object v2, p0, Lcom/google/android/gms/b/y;->m:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/google/android/gms/b/y$a;-><init>(Lcom/google/android/gms/b/y;Lcom/google/android/gms/common/api/m;ILjava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/b/y;->o:Lcom/google/android/gms/b/y$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/y;->o:Lcom/google/android/gms/b/y$b;

    invoke-static {v0}, Lcom/google/android/gms/b/y$b;->a(Lcom/google/android/gms/b/y$b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/google/android/gms/b/y$b;

    iget-object v1, p0, Lcom/google/android/gms/b/y;->m:Ljava/lang/ref/ReferenceQueue;

    iget-object v2, p0, Lcom/google/android/gms/b/y;->n:Landroid/util/SparseArray;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/b/y$b;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/util/SparseArray;)V

    iput-object v0, p0, Lcom/google/android/gms/b/y;->o:Lcom/google/android/gms/b/y$b;

    iget-object v0, p0, Lcom/google/android/gms/b/y;->o:Lcom/google/android/gms/b/y$b;

    invoke-virtual {v0}, Lcom/google/android/gms/b/y$b;->start()V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/b/y;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/b/y;->a:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/gms/b/y;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/b/y;->b:J

    return-wide v0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/b/y;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/b/y;)Lcom/google/android/gms/b/x;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/y;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/y$c;

    invoke-virtual {v0}, Lcom/google/android/gms/b/y$c;->b()V

    invoke-static {v0}, Lcom/google/android/gms/b/y$c;->a(Lcom/google/android/gms/b/y$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/b/y;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/y;->k:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/b/y;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/y;->n:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/b/y;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/y;->j:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/b/y;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/y;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/b/y;)Lcom/google/android/gms/common/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/y;->g:Lcom/google/android/gms/common/b;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/b/y;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/b/y;->c:J

    return-wide v0
.end method

.method static synthetic k(Lcom/google/android/gms/b/y;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/b/y;->h:I

    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/t;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/b/t;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/s;

    iget-object v1, p0, Lcom/google/android/gms/b/y;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/b/y$c;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/b/t;->f()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/b/y$c;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/b/t;->a(Lcom/google/android/gms/b/s;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/b/y$c;->c()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/b/y$c;->c()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/b/t;->a(Lcom/google/android/gms/b/s;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/b/y$c;->a(Lcom/google/android/gms/b/t;)V

    goto :goto_0
.end method

.method a(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/y;->g:Lcom/google/android/gms/common/b;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/y;->g:Lcom/google/android/gms/common/b;

    iget-object v1, p0, Lcom/google/android/gms/b/y;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/y;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/b/y;->l:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/b/y;->a(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/y;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/b/y;->l:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const-string v1, "GoogleApiManager"

    iget v2, p1, Landroid/os/Message;->what:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unknown message id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/b/t;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/y;->a(Lcom/google/android/gms/b/t;)V

    :cond_0
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/m;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/b/y;->a(Lcom/google/android/gms/common/api/m;I)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/b/y;->d()V

    goto :goto_1

    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/b/y;->a(IZ)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/b/r;

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/y;->a(Lcom/google/android/gms/b/r;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/b/y;->i:Landroid/util/SparseArray;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/y;->i:Landroid/util/SparseArray;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/y$c;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x11

    const-string v4, "Error resolution was canceled by the user."

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/b/y$c;->a(Lcom/google/android/gms/b/y$c;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/b/y;->j:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/y;->j:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/y$c;

    invoke-static {v0}, Lcom/google/android/gms/b/y$c;->b(Lcom/google/android/gms/b/y$c;)V

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/b/y;->j:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/y;->j:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/y$c;

    invoke-static {v0}, Lcom/google/android/gms/b/y$c;->c(Lcom/google/android/gms/b/y$c;)V

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/b/y;->j:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/y;->j:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/y$c;

    invoke-static {v0}, Lcom/google/android/gms/b/y$c;->d(Lcom/google/android/gms/b/y$c;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
