.class Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 56

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const/16 v42, 0x0

    const/16 v37, 0x0

    const/4 v9, 0x0

    const-string/jumbo v2, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    packed-switch v32, :pswitch_data_0

    const/16 v29, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-nez v32, :cond_0

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "EXTRA_DOCK_STATE_DESK onSendBecomingNoisyIntent "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v3, 0x800

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap40(Lcom/android/server/audio/AudioService;I)V

    :cond_0
    const/4 v2, 0x3

    move/from16 v0, v32

    if-eq v0, v2, :cond_2

    const/16 v2, 0x69

    move/from16 v0, v32

    if-eq v0, v2, :cond_2

    if-nez v32, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/16 v3, 0x69

    if-eq v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x3

    move/from16 v0, v29

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move/from16 v0, v32

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I

    move/from16 v8, v42

    :goto_1
    return-void

    :pswitch_0
    const/16 v29, 0x7

    goto :goto_0

    :pswitch_1
    const/16 v29, 0x6

    goto :goto_0

    :pswitch_2
    const/16 v29, 0x8

    goto :goto_0

    :pswitch_3
    const/16 v29, 0x9

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v27

    check-cast v27, Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bt device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "disconnection intent received"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v9}, Lcom/android/server/audio/AudioService;->setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    move/from16 v8, v42

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v26, 0x0

    const/16 v49, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get62(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "android.bluetooth.profile.extra.STATE"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    const-string/jumbo v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v27

    check-cast v27, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get62(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get61(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get61(Lcom/android/server/audio/AudioService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    :cond_5
    :goto_2
    const/16 v26, 0x1

    :cond_6
    packed-switch v28, :pswitch_data_1

    :cond_7
    :goto_3
    const/16 v26, 0x0

    :goto_4
    monitor-exit v3

    if-eqz v26, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move/from16 v0, v49

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-wrap22(Lcom/android/server/audio/AudioService;I)V

    new-instance v41, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v41

    move/from16 v1, v49

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v41

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-wrap59(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get61(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    goto :goto_2

    :pswitch_4
    const/16 v49, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get61(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get61(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get61(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioService;->-set36(Lcom/android/server/audio/AudioService;I)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-set6(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v2, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "audio state changed Bt device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_5
    const/16 v49, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioService;->-set36(Lcom/android/server/audio/AudioService;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    goto/16 :goto_4

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get61(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get61(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get61(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioService;->-set36(Lcom/android/server/audio/AudioService;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get49(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    :cond_b
    const-string/jumbo v2, "screen_state=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/audio/AudioService;->mIsScreenState:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get25(Lcom/android/server/audio/AudioService;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap75(Lcom/android/server/audio/AudioService;I)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get49(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    :cond_d
    const-string/jumbo v2, "screen_state=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/audio/AudioService;->mIsScreenState:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-wrap1(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v3, "persist.audio.effectcpufreq"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/audio/AudioService;->mCPUBoostValueForEffect:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, v2, Lcom/android/server/audio/AudioService;->mCPUBoostValueForEffect:I

    if-lez v2, :cond_4a

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "screen_state::startCPUBoost(DVFS_CPU_BOOST_ACTION_TYPE_EFFECT)"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap74(Lcom/android/server/audio/AudioService;I)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_e
    move/from16 v8, v42

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v2, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-wrap30(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get81(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-wrap58(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-set47(Lcom/android/server/audio/AudioService;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get47(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap49(Lcom/android/server/audio/AudioService;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v48

    if-nez v48, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get74(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const-string/jumbo v3, "AudioService"

    const/16 v4, 0xa

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get74(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v7, v3, v4

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-wrap58(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap25(Lcom/android/server/audio/AudioService;Z)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v2, "android.intent.action.USER_BACKGROUND"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string/jumbo v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v54

    if-ltz v54, :cond_14

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v54

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v55

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v55

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-wrap31(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    :cond_14
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const-string/jumbo v3, "no_record_audio"

    const/4 v4, 0x1

    move/from16 v0, v54

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v2, "android.intent.action.USER_FOREGROUND"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string/jumbo v2, "android.intent.action.USER_STARTED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    const-string/jumbo v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v54

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const-string/jumbo v3, "no_record_audio"

    const/4 v4, 0x0

    move/from16 v0, v54

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string/jumbo v2, "android.bluetooth.adapter.extra.STATE"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/16 v2, 0xa

    if-eq v9, v2, :cond_18

    const/16 v2, 0xd

    if-ne v9, v2, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->disconnectAllBluetoothProfiles()V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_19
    move/from16 v8, v42

    goto/16 :goto_1

    :cond_1a
    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v3, "logging"

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService;->setAudioServiceConfig(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-wrap27(Lcom/android/server/audio/AudioService;)V

    const-string/jumbo v2, "dev_shutdown=true"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap11(Lcom/android/server/audio/AudioService;I)I

    move-result v31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get74(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$FineVolumeState;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v7, v3}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_1b
    move/from16 v8, v42

    goto/16 :goto_1

    :cond_1c
    const-string/jumbo v2, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v3, 0x2000000

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap2(Lcom/android/server/audio/AudioService;I)Z

    move-result v38

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "### WiFi Display device state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isConnected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const v3, 0x2008000

    invoke-static {v2, v3, v9}, Lcom/android/server/audio/AudioService;->-wrap9(Lcom/android/server/audio/AudioService;II)I

    const/4 v2, 0x1

    if-ne v9, v2, :cond_1d

    if-eqz v38, :cond_22

    :cond_1d
    if-nez v9, :cond_20

    if-eqz v38, :cond_20

    const-string/jumbo v2, "audioParam;ScreenMirroringState=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, ""

    const/high16 v5, 0x2000000

    invoke-static {v3, v5, v4}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, "0"

    const v5, 0x8000

    invoke-static {v3, v5, v4}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v2, v2, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get48(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get48(Lcom/android/server/audio/AudioService;)I

    move-result v2

    invoke-static {}, Landroid/media/AudioManager;->semGetVideoCallMode()I

    move-result v3

    if-ne v2, v3, :cond_1f

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-wrap58(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audioParam;SplitSound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v3, v3, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_20
    :goto_5
    const/4 v2, 0x1

    if-ne v9, v2, :cond_21

    if-eqz v38, :cond_23

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-set22(Lcom/android/server/audio/AudioService;Z)Z

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get46(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get63(Lcom/android/server/audio/AudioService;)Landroid/hardware/display/SemDeviceStatusListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManager;->semRegisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V

    :goto_7
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSupportDisplayVolumeControl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get46(Lcom/android/server/audio/AudioService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_22
    const-string/jumbo v2, "count"

    const/16 v3, 0x780

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v40

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EXTERNAL_WIFI_CONNECTED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wfdBufferCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, ""

    const/high16 v5, 0x2000000

    invoke-static {v3, v5, v4}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v7, ""

    const-string/jumbo v10, ""

    const/high16 v11, 0x2000000

    invoke-direct {v4, v5, v11, v7, v10}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, "0"

    const v5, 0x8000

    invoke-static {v3, v5, v4}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v7, "0"

    const-string/jumbo v10, "remote-submix"

    const v11, 0x8000

    invoke-direct {v4, v5, v11, v7, v10}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "audioParam;ScreenMirroringState=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v3, "isSupportDisplayVolumeControl"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-set22(Lcom/android/server/audio/AudioService;Z)Z

    goto/16 :goto_6

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get63(Lcom/android/server/audio/AudioService;)Landroid/hardware/display/SemDeviceStatusListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->semUnregisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;)V

    goto/16 :goto_7

    :cond_25
    const-string/jumbo v2, "com.samsung.intent.action.GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v2, 0x1

    if-ne v9, v2, :cond_26

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "GCastDevice is connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, "0"

    const v5, 0x8000

    invoke-static {v3, v5, v4}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v7, "0"

    const-string/jumbo v10, "remote-submix"

    const v11, 0x8000

    invoke-direct {v4, v5, v11, v7, v10}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "audioParam;ScreenMirroringState=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_26
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "GCastDevice is disconnected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "audioParam;ScreenMirroringState=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, "0"

    const v5, 0x8000

    invoke-static {v3, v5, v4}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_27
    const-string/jumbo v2, "com.sec.android.intent.action.SPLIT_SOUND"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v3, "enabled"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_28
    const-string/jumbo v2, "com.samsung.android.app.audio.epinforequest"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v2, -0x1

    if-ne v9, v2, :cond_29

    const-string/jumbo v2, "earcare=reset"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x1

    if-ne v9, v2, :cond_2a

    const/4 v2, 0x1

    :goto_8
    invoke-static {v3, v2}, Lcom/android/server/audio/AudioService;->-set19(Lcom/android/server/audio/AudioService;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-wrap24(Lcom/android/server/audio/AudioService;)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_2a
    const/4 v2, 0x0

    goto :goto_8

    :cond_2b
    const-string/jumbo v2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x69

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-wrap58(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_2c
    const-string/jumbo v2, "com.sec.tms.audio.server"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tms evt state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "app"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_35

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tms evt app : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "server"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v3, 0x4000000

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap2(Lcom/android/server/audio/AudioService;I)Z

    move-result v38

    const/4 v2, 0x2

    if-ne v9, v2, :cond_2d

    if-eqz v38, :cond_2d

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const/high16 v4, 0x4000000

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, ""

    const/high16 v5, 0x4000000

    invoke-static {v3, v5, v4}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_2d
    const/4 v2, 0x1

    if-ne v9, v2, :cond_2e

    if-eqz v38, :cond_2f

    :cond_2e
    move/from16 v8, v42

    goto/16 :goto_1

    :cond_2f
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const/high16 v4, 0x4000000

    const/4 v5, 0x1

    invoke-static {v4, v5, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, ""

    const/high16 v5, 0x4000000

    invoke-static {v3, v5, v4}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v7, ""

    const-string/jumbo v10, ""

    const/high16 v11, 0x4000000

    invoke-direct {v4, v5, v11, v7, v10}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_30
    const-string/jumbo v2, "client"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v3, -0x7fc00000

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap2(Lcom/android/server/audio/AudioService;I)Z

    move-result v38

    const/4 v2, 0x2

    if-ne v9, v2, :cond_31

    if-eqz v38, :cond_31

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const/high16 v4, -0x7fc00000

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, ""

    const/high16 v5, -0x7fc00000

    invoke-static {v3, v5, v4}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_31
    const/4 v2, 0x1

    if-ne v9, v2, :cond_32

    if-eqz v38, :cond_33

    :cond_32
    move/from16 v8, v42

    goto/16 :goto_1

    :cond_33
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const/high16 v4, -0x7fc00000

    const/4 v5, 0x1

    invoke-static {v4, v5, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, ""

    const/high16 v5, -0x7fc00000

    invoke-static {v3, v5, v4}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v7, ""

    const-string/jumbo v10, ""

    const/high16 v11, -0x7fc00000

    invoke-direct {v4, v5, v11, v7, v10}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_34
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tms evt app wrong : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_35
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "tms evt app is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_36
    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string/jumbo v2, "reason"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v47

    const/4 v2, 0x3

    move/from16 v0, v47

    if-ne v0, v2, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v34

    if-eqz v34, :cond_38

    const/16 v2, 0x200

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get47(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->getUserIdForCurrentAudioFocus()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get47(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->getGainRequestForCurrentAudioFocus()I

    move-result v36

    const/4 v2, 0x2

    move/from16 v0, v36

    if-eq v0, v2, :cond_37

    const/4 v2, 0x3

    move/from16 v0, v36

    if-ne v0, v2, :cond_39

    :cond_37
    return-void

    :cond_38
    move/from16 v8, v42

    goto/16 :goto_1

    :cond_39
    const/4 v2, 0x4

    move/from16 v0, v36

    if-eq v0, v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x6e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-wrap58(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_3a
    const-string/jumbo v2, "com.sec.factory.app.factorytest.FTA_ON"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string/jumbo v2, "audioParam;factoryteststate=1"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_3b
    const-string/jumbo v2, "com.sec.factory.app.factorytest.FTA_OFF"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string/jumbo v2, "audioParam;factoryteststate=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_3c
    const-string/jumbo v2, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ANLG_DOCK_HEADSET evt state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v3, 0x800

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap2(Lcom/android/server/audio/AudioService;I)Z

    move-result v38

    if-nez v9, :cond_3d

    if-eqz v38, :cond_3d

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const/16 v4, 0x800

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, ""

    const/16 v5, 0x800

    invoke-static {v3, v5, v4}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_3d
    const/4 v2, 0x1

    if-ne v9, v2, :cond_3e

    if-eqz v38, :cond_3f

    :cond_3e
    move/from16 v8, v42

    goto/16 :goto_1

    :cond_3f
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const/16 v4, 0x800

    const/4 v5, 0x1

    invoke-static {v4, v5, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, ""

    const/16 v5, 0x800

    invoke-static {v3, v5, v4}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v7, ""

    const-string/jumbo v10, ""

    const/16 v11, 0x800

    invoke-direct {v4, v5, v11, v7, v10}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_40
    const-string/jumbo v2, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v2, "smartdock"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v50

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceiver: EXTERNAL_USB_HEADSET_PLUG  state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", smartdock : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v50, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_41

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "EXTERNAL_USB_HEADSET_PLUG, get USB Info mExternalUsbInfo fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "2:44100:44100:1:0:0:48000:16"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;

    :cond_41
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EXTERNAL_USB_HEADSET_PLUG, mExternalUsbInfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x4000

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ""

    const-string/jumbo v12, "AudioService"

    invoke-static/range {v7 .. v12}, Lcom/android/server/audio/AudioService;->-wrap73(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_42
    const-string/jumbo v2, "com.samsung.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string/jumbo v2, "CONNECTION_MODE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audioParam;wfdFixedVolume="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_43
    const-string/jumbo v2, "android.settings.MONO_AUDIO_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v3, "mono"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-set29(Lcom/android/server/audio/AudioService;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get50(Lcom/android/server/audio/AudioService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap67(Lcom/android/server/audio/AudioService;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get65(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    move-result-object v2

    const-string/jumbo v3, "mono_audio_db"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->removeValue(Ljava/lang/String;)I

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_44
    const-string/jumbo v2, "com.android.phone.action.PERSONALISE_CALL_SOUND_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v3, "value"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-set33(Lcom/android/server/audio/AudioService;I)I

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "on receive : mNbQualityMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get54(Lcom/android/server/audio/AudioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get54(Lcom/android/server/audio/AudioService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap69(Lcom/android/server/audio/AudioService;I)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_45
    const-string/jumbo v2, "com.android.phone.NATURAL_SOUND"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v3, "value"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-set32(Lcom/android/server/audio/AudioService;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get53(Lcom/android/server/audio/AudioService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap68(Lcom/android/server/audio/AudioService;I)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_46
    const-string/jumbo v2, "android.settings.ALL_SOUND_MUTE"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v3, "mute"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-set2(Lcom/android/server/audio/AudioService;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-wrap61(Lcom/android/server/audio/AudioService;)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_47
    const-string/jumbo v2, "com.android.systemui.statusbar.ANIMATING"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-set43(Lcom/android/server/audio/AudioService;Z)Z

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_48
    const-string/jumbo v2, "com.android.systemui.statusbar.COLLAPSED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-set43(Lcom/android/server/audio/AudioService;Z)Z

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_49
    const-string/jumbo v2, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    :cond_4a
    move/from16 v8, v42

    goto/16 :goto_1

    :cond_4b
    const-string/jumbo v2, "com.samsung.flipfolder.OPEN"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v3, "flipOpen"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-set20(Lcom/android/server/audio/AudioService;Z)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "folder_open="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get45(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_4c
    const-string/jumbo v2, "com.samsung.sec.knox.KNOX_MODE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    const-string/jumbo v2, "persona_id"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get47(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->getUserIdForCurrentAudioFocus()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get47(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->getGainRequestForCurrentAudioFocus()I

    move-result v36

    const/4 v2, 0x2

    move/from16 v0, v36

    if-eq v0, v2, :cond_4d

    const/4 v2, 0x3

    move/from16 v0, v36

    if-ne v0, v2, :cond_4e

    :cond_4d
    return-void

    :cond_4e
    const/4 v2, 0x4

    move/from16 v0, v36

    if-eq v0, v2, :cond_4d

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AS.onReceive() persona not active: lockedPersonaId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; userIdForCurrentAudioFocus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-eq v14, v2, :cond_4f

    if-ne v14, v6, :cond_4f

    invoke-static {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_50

    :cond_4f
    move/from16 v8, v42

    goto/16 :goto_1

    :cond_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v10

    const/16 v11, 0x6e

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->-wrap58(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get47(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get47(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->getUserIdForCurrentAudioFocus()I

    move-result v6

    const/4 v2, -0x1

    if-eq v6, v2, :cond_51

    if-eq v6, v14, :cond_51

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get47(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->notifyOtherTopOfAudioFocusStack()V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_51
    move/from16 v8, v42

    goto/16 :goto_1

    :cond_52
    const-string/jumbo v2, "com.samsung.intent.action.WB_AMR"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string/jumbo v2, "EXTRA_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    const/16 v2, 0x8

    move/from16 v0, v35

    if-ne v0, v2, :cond_53

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "wb_amr swb"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "wb_amr=swb"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_53
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_54

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "wb_amr on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "wb_amr=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_54
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "wb_amr off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "wb_amr=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_55
    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "ACTION_SUBINFO_RECORD_UPDATED received"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get47(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/MediaFocusControl;->unregisterPhoneStateListener(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get47(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/MediaFocusControl;->registerPhoneStateListener(Landroid/content/Context;)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_56
    const-string/jumbo v2, "sec.app.policy.UPDATE.audio"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "Reload effect white list"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-wrap52(Lcom/android/server/audio/AudioService;)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_57
    const-string/jumbo v2, "com.sec.media.action.AUDIOCORE_LOGGING"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "[logging] receive ACTING_AUDIOCORE_LOGGING"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v3, "logging"

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService;->setAudioServiceConfig(Ljava/lang/String;)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_58
    const-string/jumbo v2, "com.sec.android.intent.action.DHR_HQM_REFRESH_REQ"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "[logging] receive ACTING_AUDIOCORE_BIGDATA_APP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-set17(Lcom/android/server/audio/AudioService;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v3, "logging"

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService;->setAudioServiceConfig(Ljava/lang/String;)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_59
    const-string/jumbo v2, "com.samsung.intent.action.SOUND_OFF_TOAST"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get85(Lcom/android/server/audio/AudioService;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_5a

    new-instance v22, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x103012b

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const v3, 0x104091c

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-set50(Lcom/android/server/audio/AudioService;Landroid/widget/Toast;)Landroid/widget/Toast;

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get85(Lcom/android/server/audio/AudioService;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->setShowForAllUsers()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get85(Lcom/android/server/audio/AudioService;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get85(Lcom/android/server/audio/AudioService;)Landroid/widget/Toast;

    move-result-object v2

    const v3, 0x104091c

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V

    goto :goto_9

    :cond_5b
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v44

    const-string/jumbo v2, "android.intent.extra.UID"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v53

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") is removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Z

    move-result v2

    if-eqz v2, :cond_5f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get69(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundKitchen;

    move-result-object v2

    move/from16 v0, v53

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$SoundKitchen;->removeItem(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v15

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v16, 0x75

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lcom/android/server/audio/AudioService;->-wrap58(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->showMultisoundToast()V

    :cond_5c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, v2, Lcom/android/server/audio/AudioService;->mIgnoreAudioFocusUid:I

    move/from16 v0, v53

    if-ne v2, v0, :cond_5d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/audio/AudioService;->mIgnoreAudioFocusUid:I

    :cond_5d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AppCategorizer;

    move-result-object v2

    if-eqz v2, :cond_5e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AppCategorizer;

    move-result-object v2

    move/from16 v0, v53

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$AppCategorizer;->removePackage(I)V

    :cond_5e
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/util/SparseIntArray;

    move-result-object v2

    move/from16 v0, v53

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->delete(I)V

    const-string/jumbo v2, "com.samsung.android.soundassistant"

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-wrap28(Lcom/android/server/audio/AudioService;)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get69(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundKitchen;

    move-result-object v2

    const/16 v3, 0x64

    move/from16 v0, v53

    invoke-virtual {v2, v0, v3}, Lcom/android/server/audio/AudioService$SoundKitchen;->setAppVolume(II)V

    goto :goto_a

    :cond_60
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService;->getUidForPackage(Ljava/lang/String;)I

    move-result v52

    if-eqz v52, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getSelectedAppList()[Ljava/lang/String;

    move-result-object v25

    const/16 v33, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, v25

    array-length v3, v0

    :goto_b
    if-ge v2, v3, :cond_62

    aget-object v43, v25, v2

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_61

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_64

    :cond_61
    const/16 v33, 0x1

    :cond_62
    if-nez v33, :cond_63

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService;->isInAllowedList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AppCategorizer;

    move-result-object v2

    move/from16 v0, v52

    move-object/from16 v1, v44

    invoke-virtual {v2, v0, v1}, Lcom/android/server/audio/AudioService$AppCategorizer;->putPackage(ILjava/lang/String;)V

    :cond_63
    move/from16 v8, v42

    goto/16 :goto_1

    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_65
    const-string/jumbo v2, "android.intent.action.TurnOff_MultiSound"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v15

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v16, 0x75

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lcom/android/server/audio/AudioService;->-wrap58(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    new-instance v39, Landroid/content/Intent;

    invoke-direct/range {v39 .. v39}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.MULTISOUND_STATE_CHANGED"

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "enabled"

    const/4 v3, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v39

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-wrap56(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_66
    const-string/jumbo v2, "android.intent.action.SAS_NOTIFICATION_CLEAR"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->clearNotification()V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_67
    const-string/jumbo v2, "android.intent.action.Headup_Notification_Close"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->clearHeadupNotificaton()V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_68
    const-string/jumbo v2, "android.intent.action.Headup_Notification_ChangeDevice"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->getPinDevice()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService;->getPriorityDevice(I)I

    move-result v46

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move/from16 v0, v46

    invoke-static {v3, v0}, Lcom/android/server/audio/AudioService;->-wrap17(Lcom/android/server/audio/AudioService;I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v46

    invoke-virtual {v2, v0, v3}, Lcom/android/server/audio/AudioService;->setDeviceToForceByUser(ILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->clearHeadupNotificaton()V

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_69
    const-string/jumbo v2, "com.sec.media.action.mute_interval"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-wrap37(Lcom/android/server/audio/AudioService;)V

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[Mute Interval]Checking timer remaining time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->getRemainingMuteIntervalMs()I

    move-result v4

    const v5, 0xea60

    div-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mins"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_6a
    const-string/jumbo v2, "com.sec.android.screensharing.DLNA_STATUS"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string/jumbo v2, "status"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v51

    const-string/jumbo v2, "player_type"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v45

    const/4 v2, 0x1

    move/from16 v0, v51

    if-ne v0, v2, :cond_6d

    if-eqz v45, :cond_6b

    const/4 v2, 0x2

    move/from16 v0, v45

    if-ne v0, v2, :cond_6c

    :cond_6b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-set18(Lcom/android/server/audio/AudioService;Z)Z

    :goto_c
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsDLNAStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v8, v42

    goto/16 :goto_1

    :cond_6c
    const/4 v2, 0x3

    move/from16 v0, v45

    if-eq v0, v2, :cond_6b

    :cond_6d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-set18(Lcom/android/server/audio/AudioService;Z)Z

    goto :goto_c

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
