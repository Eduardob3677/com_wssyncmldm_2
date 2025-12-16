.class public Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest;
.super Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;
.source "SourceFile"


# instance fields
.field private final repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    return-void
.end method

.method public static synthetic c(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest;Ljava/lang/Enum;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest;->lambda$execute$0(Ljava/lang/Enum;)V

    return-void
.end method

.method private synthetic lambda$execute$0(Ljava/lang/Enum;)V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setIopTestMode(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;)V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest;->changeIopMode(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;)V

    return-void
.end method


# virtual methods
.method public changeIopMode(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;)V
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest$1;->$SwitchMap$com$idm$fotaagent$database$room$data$repository$AdminRepository$IopTestMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "IOP Test On"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RootingCheck;->ROOTING_CHECK_ON:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RootingCheck;

    invoke-virtual {p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setRootingCheck(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RootingCheck;)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RoamingCheck;->ROAMING_CHECK_ON:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RoamingCheck;

    invoke-virtual {p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setRoamingCheck(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RoamingCheck;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    sget-object p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$PackageVerification;->PACKAGE_VERIFICATION_ON:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$PackageVerification;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setPackageVerification(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$PackageVerification;)V

    goto :goto_1

    :cond_1
    const-string p1, "IOP Test Off"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RootingCheck;->ROOTING_CHECK_OFF:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RootingCheck;

    invoke-virtual {p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setRootingCheck(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RootingCheck;)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RoamingCheck;->ROAMING_CHECK_OFF:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RoamingCheck;

    invoke-virtual {p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setRoamingCheck(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RoamingCheck;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    sget-object p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$PackageVerification;->PACKAGE_VERIFICATION_OFF:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$PackageVerification;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setPackageVerification(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$PackageVerification;)V

    :goto_1
    return-void
.end method

.method public execute()V
    .locals 4

    invoke-static {}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;->values()[Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getIopTestMode()Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;

    move-result-object v1

    new-instance v2, LC2/c;

    const/4 v3, 0x7

    invoke-direct {v2, v3, p0}, LC2/c;-><init>(ILjava/lang/Object;)V

    const-string v3, "IOP Test Setting"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->showDialog(Ljava/lang/String;[Ljava/lang/Enum;Ljava/lang/Enum;Ljava/util/function/Consumer;)V

    return-void
.end method
