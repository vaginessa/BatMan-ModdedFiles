.class Lcom/yulore/sdk/ivr/service/IvrCacheService$1;
.super Landroid/os/Handler;
.source "IvrCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/sdk/ivr/service/IvrCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;


# direct methods
.method constructor <init>(Lcom/yulore/sdk/ivr/service/IvrCacheService;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    const/4 v1, 0x0

    # setter for: Lcom/yulore/sdk/ivr/service/IvrCacheService;->updating:Z
    invoke-static {v0, v1}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$002(Lcom/yulore/sdk/ivr/service/IvrCacheService;Z)Z

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "YuloreIVR"

    const-string v1, " Server response successfully , Start parsing data"

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    # getter for: Lcom/yulore/sdk/ivr/service/IvrCacheService;->sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;
    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$100(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/android/common/util/SharedPreferencesUtility;

    move-result-object v0

    const-string v1, "last_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulore/android/common/util/SharedPreferencesUtility;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    # getter for: Lcom/yulore/sdk/ivr/service/IvrCacheService;->mType:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;
    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$200(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->UPDATE_ALL:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    if-ne v0, v1, :cond_3

    const-string v0, "YuloreIVR"

    const-string v1, " delete all old data except zip file "

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    # getter for: Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;
    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$300(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getIvrFileDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    # getter for: Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;
    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$300(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getIvrFileDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    # getter for: Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;
    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$300(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getIvrFileDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    # getter for: Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;
    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$300(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getIvrFileDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/yulore/android/common/util/FileUtils;->deleteFile(Ljava/io/File;)V

    :cond_3
    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    const-string v1, "ivr.zip"

    # invokes: Lcom/yulore/sdk/ivr/service/IvrCacheService;->unZipAndDelete(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$400(Lcom/yulore/sdk/ivr/service/IvrCacheService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    # getter for: Lcom/yulore/sdk/ivr/service/IvrCacheService;->mType:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;
    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$200(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->UPDATE_INC:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    if-ne v0, v1, :cond_0

    const-string v0, "YuloreIVR"

    const-string v1, " Delete some data file by server discarded "

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    # getter for: Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;
    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$300(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getIvrFileDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "delete.json"

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/FileUtils;->deleteDat(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "YuloreIVR"

    const-string v1, " download offline data packet failed , please try again later "

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "YuloreIVR"

    const-string v1, " do not need to update "

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "YuloreIVR"

    const-string v1, " analytical exception or server is not response, please try again later "

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "YuloreIVR"

    const-string v1, " json string is empty, please try again later "

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
