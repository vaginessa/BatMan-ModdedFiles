.class final Lcom/android/settings/Utils$8;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/Utils;->getImsManager(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    const-string/jumbo v0, "ApnSettings"

    const-string/jumbo v1, "register IMS Listener:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/Utils;->mImsManager:Lcom/sec/ims/ImsManager;

    const-string/jumbo v0, "ApnSettings"

    const-string/jumbo v1, "Deregister IMS Listener:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
