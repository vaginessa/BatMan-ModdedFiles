.class public Lcom/android/launcher3/common/compat/UserManagerCompatV16;
.super Lcom/android/launcher3/common/compat/UserManagerCompat;
.source "UserManagerCompatV16.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/common/compat/UserManagerCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public enableAndResetCache()V
    .locals 0

    return-void
.end method

.method public getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;
    .locals 0

    return-object p1
.end method

.method public getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;
    .locals 0

    return-object p1
.end method

.method public getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUserCreationTime(Lcom/android/launcher3/common/compat/UserHandleCompat;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isQuietModeEnabled(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
