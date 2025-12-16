.class public final synthetic Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Skipregister;

.field public final synthetic d:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

.field public final synthetic e:Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Skipregister;Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/f;->c:Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Skipregister;

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/f;->d:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    iput-object p3, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/f;->e:Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/f;->e:Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    check-cast p1, Ljava/lang/Enum;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/f;->c:Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Skipregister;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/f;->d:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    invoke-static {v1, p0, v0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Skipregister;->c(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Skipregister;Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;Ljava/lang/Enum;)V

    return-void
.end method
