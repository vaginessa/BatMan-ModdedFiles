.class final Landroid/service/vr/VrListenerService$VrListenerHandler;
.super Landroid/os/Handler;
.source "VrListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/vr/VrListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VrListenerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/vr/VrListenerService;


# direct methods
.method public constructor <init>(Landroid/service/vr/VrListenerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/service/vr/VrListenerService$VrListenerHandler;->this$0:Landroid/service/vr/VrListenerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Landroid/service/vr/VrListenerService$VrListenerHandler;->this$0:Landroid/service/vr/VrListenerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/service/vr/VrListenerService;->onCurrentVrActivityChanged(Landroid/content/ComponentName;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
