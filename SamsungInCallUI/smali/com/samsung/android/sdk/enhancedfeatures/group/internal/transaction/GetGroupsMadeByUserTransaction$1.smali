.class Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsMadeByUserTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsMadeByUserTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsMadeByUserTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsMadeByUserTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsMadeByUserTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsMadeByUserTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 8

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setReqId(I)V

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsMadeByUserTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsMadeByUserTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsMadeByUserTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsMadeByUserTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsMadeByUserListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsMadeByUserListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsMadeByUserResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsMadeByUserResponse;-><init>()V

    check-cast p2, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoResponse;

    iget v0, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoResponse;->groups_count:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsMadeByUserResponse;->setCount(I)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsMadeByUserResponse;->setReqId(I)V

    invoke-virtual {v1, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsMadeByUserResponse;->setUserData(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsMadeByUserResponse;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoResponse;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setId(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->group_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setGroupName(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->app_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setAppId(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->owner_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setOwnerId(Ljava/lang/String;)V

    iget v5, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->sid:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setSid(I)V

    iget v5, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->option:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setOption(I)V

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->created_at:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setCreatedAt(J)V

    iget v5, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->members_count:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setMembersCount(I)V

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setType(Ljava/lang/String;)V

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->meta_data:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setMetaData(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsMadeByUserResponse;->setGroups(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsMadeByUserTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsMadeByUserTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsMadeByUserTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsMadeByUserTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsMadeByUserListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsMadeByUserListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsMadeByUserResponse;)V

    goto/16 :goto_0
.end method
