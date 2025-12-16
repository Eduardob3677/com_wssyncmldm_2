.class public Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Skipregister;
.super Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Skipregister$RegistrationStatus;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Skipregister;Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;Ljava/lang/Enum;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Skipregister;->lambda$execute$0(Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;Ljava/lang/Enum;)V

    return-void
.end method

.method private synthetic lambda$execute$0(Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;Ljava/lang/Enum;)V
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Skipregister$RegistrationStatus;->REGISTERED:Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Skipregister$RegistrationStatus;

    if-ne p3, v0, :cond_1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->isRegistered()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "set device as registered"

    invoke-static {p3}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/DeviceId;->readDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readModelName()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->get()Lcom/samsung/android/fotaagent/common/feature/SalesCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;

    invoke-direct {v1}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;-><init>()V

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;->getCorpId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p0, p3, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->setRegister()V

    goto :goto_0

    :cond_0
    const-string p0, "device already registered"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->isRegistered()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "set device as unregistered"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    iget-object p2, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->setUnregister()V

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->clear()V

    goto :goto_0

    :cond_2
    const-string p0, "device already unregistered"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isUserShipBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Not allowed in user-ship binary"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->showToast(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Skipregister$RegistrationStatus;->values()[Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Skipregister$RegistrationStatus;

    move-result-object v2

    sget-object v3, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Skipregister$RegistrationStatus;->REGISTERED:Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Skipregister$RegistrationStatus;

    new-instance v4, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/f;

    invoke-direct {v4, p0, v0, v1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/f;-><init>(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Skipregister;Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;)V

    const-string v0, "Change Registration Status"

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->showDialog(Ljava/lang/String;[Ljava/lang/Enum;Ljava/lang/Enum;Ljava/util/function/Consumer;)V

    return-void
.end method
