.class Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$2;
.super Landroid/database/ContentObserver;
.source "VoWiFiStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$2;->this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$2;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$2;->this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->-get1(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
