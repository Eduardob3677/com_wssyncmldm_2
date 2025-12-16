.class Lcom/idm/fotaagent/scheduler/DmSessionStarter$UserInit;
.super Lcom/idm/fotaagent/scheduler/DmSessionStarter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/scheduler/DmSessionStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInit"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/scheduler/DmSessionStarter;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/scheduler/DmSessionStarter$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/idm/fotaagent/scheduler/DmSessionStarter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/scheduler/DmSessionStarter$UserInit;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkInitType()V
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getInitType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/scheduler/exception/WrongInitTypeException;

    const-string v0, "init type should be IDM_INITTYPE_USER"

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/scheduler/exception/WrongInitTypeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUiMode()V
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setUiMode(I)V

    return-void
.end method

.method public showUiFor(Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;)V
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/scheduler/DmSessionStarter$1;->$SwitchMap$com$idm$fotaagent$enabler$network$NetworkBlockedType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "unexpected blockedType : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->context:Landroid/content/Context;

    const p1, 0x7f13007e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/idm/fotaagent/utils/ToastHelper;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->context:Landroid/content/Context;

    const p1, 0x7f130029

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/idm/fotaagent/utils/ToastHelper;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadFailedRoaming;

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->sessionId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadFailedRoaming;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    :goto_0
    return-void
.end method

.method public showUiForDmConnecting()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->CHECKING_FOR_UPDATE:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendActivityMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;)V

    return-void
.end method
