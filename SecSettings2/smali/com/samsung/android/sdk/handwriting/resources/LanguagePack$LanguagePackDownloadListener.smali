.class Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;
.super Ljava/lang/Object;
.source "LanguagePack.java"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguagePackDownloadListener"
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$OnDownloadListener;

.field final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;


# virtual methods
.method public onComplete(I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$400(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " download complete = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[onComplete] mDownloadInProgress: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$800(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", mDownloadProgress: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$200(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$200(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I

    move-result v0

    if-eq v0, v7, :cond_3

    :cond_1
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$600(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I

    move-result v1

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$900(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;IZI)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$200(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I

    move-result v0

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$800(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0, v7}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$202(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$802(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0, v8}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$002(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0, v8}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$1102(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$OnDownloadListener;

    if-nez v0, :cond_7

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$208(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$200(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$400(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$400(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$200(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    invoke-interface {v0, p0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->download(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$800(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$600(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$700(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;IZZII)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$1000(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->finishDownload(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$1000(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->cancelDownload(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$OnDownloadListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$OnDownloadListener;->onComplete(I)V

    goto :goto_2
.end method

.method public onProgress(II)V
    .locals 7

    const/16 v4, 0x64

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$200(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I

    move-result v6

    if-ltz v6, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    mul-int/lit8 v1, v6, 0x64

    mul-int/lit8 v3, p1, 0x64

    div-int/2addr v3, p2

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$400(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$302(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;I)I

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$400(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$300(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$600(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$300(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I

    move-result v5

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$700(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;IZZII)V

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$OnDownloadListener;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$OnDownloadListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$300(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I

    move-result v1

    invoke-interface {v0, v1, v4}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$OnDownloadListener;->onProgress(II)V

    goto :goto_1
.end method
