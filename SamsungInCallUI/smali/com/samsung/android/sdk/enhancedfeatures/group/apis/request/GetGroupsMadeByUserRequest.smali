.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsMadeByUserRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsMadeByUserRequest$Builder;
    }
.end annotation


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsMadeByUserRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsMadeByUserRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsMadeByUserRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsMadeByUserRequest;->type:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsMadeByUserRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsMadeByUserRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsMadeByUserRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsMadeByUserRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsMadeByUserRequest;->type:Ljava/lang/String;

    return-object v0
.end method
