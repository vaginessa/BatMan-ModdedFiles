.class final Lcom/samsung/android/sdk/ssf/file/FileManager$7;
.super Lcom/samsung/android/sdk/ssf/common/model/FileRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/ssf/file/FileManager;->downloadFileUsingPublicToken(Lcom/samsung/android/sdk/ssf/SsfClient;IILjava/lang/Object;JJLcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/ssf/common/model/FileRequest",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;-><init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method