.class final Landroid/net/wifi/nan/SubscribeSettings$1;
.super Ljava/lang/Object;
.source "SubscribeSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/SubscribeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/nan/SubscribeSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nan/SubscribeSettings;
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Landroid/net/wifi/nan/SubscribeSettings;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v2, v4}, Landroid/net/wifi/nan/SubscribeSettings;-><init>(IIILandroid/net/wifi/nan/SubscribeSettings;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/nan/SubscribeSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nan/SubscribeSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/nan/SubscribeSettings;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/nan/SubscribeSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/nan/SubscribeSettings$1;->newArray(I)[Landroid/net/wifi/nan/SubscribeSettings;

    move-result-object v0

    return-object v0
.end method
