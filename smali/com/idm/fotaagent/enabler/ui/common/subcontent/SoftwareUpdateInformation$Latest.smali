.class public Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Latest;
.super Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Latest"
.end annotation


# static fields
.field private static final BUILD_ONEUI:Ljava/lang/String; = "ro.build.version.oneui"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Latest;->makeContent()Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;-><init>(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)V

    return-void
.end method

.method private static getAndroidVersion()Ljava/lang/String;
    .locals 2

    # Check if mock is enabled and return mock value
    sget-object v0, Lcom/idm/fotaagent/IDMApplication;->context:Landroid/content/Context;

    if-eqz v0, :cond_real

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_real

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getAndroidVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_real

    return-object v0

    :cond_real
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Build.VERSION.RELEASE is empty"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static getBuildOneUi()I
    .locals 2

    const-string v0, "ro.build.version.oneui"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getOneUiVersion()Ljava/lang/String;
    .locals 5

    # Check if mock is enabled and return mock value
    sget-object v0, Lcom/idm/fotaagent/IDMApplication;->context:Landroid/content/Context;

    if-eqz v0, :cond_real

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_real

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getOneUiVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_real

    return-object v0

    :cond_real
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Latest;->getBuildOneUi()I

    move-result v0

    const-string v1, "."

    if-lez v0, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Latest;->getBuildOneUi()I

    move-result v0

    div-int/lit16 v2, v0, 0x2710

    rem-int/lit16 v3, v0, 0x2710

    div-int/lit8 v3, v3, 0x64

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Latest;->isSemAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v2, 0x15f90

    sub-int/2addr v0, v2

    div-int/lit16 v2, v0, 0x2710

    rem-int/lit16 v0, v0, 0x2710

    div-int/lit8 v0, v0, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "1.0"

    return-object v0
.end method

.method private static getSecurityPatchLevel()Ljava/lang/String;
    .locals 3

    # Check if mock is enabled and return mock value
    sget-object v0, Lcom/idm/fotaagent/IDMApplication;->context:Landroid/content/Context;

    if-eqz v0, :cond_real

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_real

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getSecurityPatch(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_real

    return-object v0

    :cond_real
    sget-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Build.VERSION.SECURITY_PATCH is empty"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static isSemAvailable()Z
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->access$600()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.feature.samsung_experience_mobile"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->access$600()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static makeContent()Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;
    .locals 8

    new-instance v7, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readFirmwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Latest;->getSecurityPatchLevel()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Latest;->getOneUiVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Latest;->getAndroidVersion()Ljava/lang/String;

    move-result-object v6

    const v1, 0x7f130025

    const/4 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;-><init>(ILjava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method
