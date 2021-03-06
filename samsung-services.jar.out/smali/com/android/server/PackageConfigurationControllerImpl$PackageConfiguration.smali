.class Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
.super Ljava/lang/Object;
.source "PackageConfigurationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageConfigurationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageConfiguration"
.end annotation


# instance fields
.field private mAspectRatio:F

.field private mConventionalRatio:F

.field private mConventionalServerRatio:F

.field private mForceShowBackgroundSurface:Z

.field private mIsConventionalMode:Z

.field private mNavbarIsAlwaysEnabled:Z

.field private mReducedAppScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

.field private mReducedSideTouchAreaSize:I

.field final synthetic this$0:Lcom/android/server/PackageConfigurationControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/PackageConfigurationControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->this$0:Lcom/android/server/PackageConfigurationControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mAspectRatio:F

    return v0
.end method

.method public getConventionalRatio()F
    .locals 1

    iget v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mConventionalRatio:F

    return v0
.end method

.method public getConventionalServerRatio()F
    .locals 1

    iget v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mConventionalServerRatio:F

    return v0
.end method

.method public getReducedAppScreenParams()Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mReducedAppScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    return-object v0
.end method

.method public getReducedSideTouchAreaSize()I
    .locals 1

    iget v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mReducedSideTouchAreaSize:I

    return v0
.end method

.method public isBackgroundSurfaceNeed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mForceShowBackgroundSurface:Z

    return v0
.end method

.method public isConventionalMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mIsConventionalMode:Z

    return v0
.end method

.method public isDefault()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mReducedAppScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mReducedSideTouchAreaSize:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mNavbarIsAlwaysEnabled:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mAspectRatio:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mConventionalRatio:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mConventionalServerRatio:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNavbarIsAlwaysEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mNavbarIsAlwaysEnabled:Z

    return v0
.end method

.method public setAspectRatio(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mAspectRatio:F

    return-void
.end method

.method public setBackgroundSurfaceNeeded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mForceShowBackgroundSurface:Z

    return-void
.end method

.method public setConventionalMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mIsConventionalMode:Z

    return-void
.end method

.method public setConventionalRatio(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mConventionalRatio:F

    return-void
.end method

.method public setConventionalServerRatio(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mConventionalServerRatio:F

    return-void
.end method

.method public setNavbarIsAlwaysEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mNavbarIsAlwaysEnabled:Z

    return-void
.end method

.method setReducedScreenParams(Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mReducedAppScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    return-void
.end method

.method public setReducedSideTouchAreaSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mReducedSideTouchAreaSize:I

    return-void
.end method
