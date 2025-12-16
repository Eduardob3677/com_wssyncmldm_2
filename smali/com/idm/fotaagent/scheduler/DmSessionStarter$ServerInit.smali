.class Lcom/idm/fotaagent/scheduler/DmSessionStarter$ServerInit;
.super Lcom/idm/fotaagent/scheduler/DmSessionStarter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/scheduler/DmSessionStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerInit"
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

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/scheduler/DmSessionStarter$ServerInit;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkInitType()V
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getInitType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/scheduler/exception/WrongInitTypeException;

    const-string v0, "init type should be IDM_INITTYPE_SERVER"

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/scheduler/exception/WrongInitTypeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUiMode()V
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setUiMode(I)V

    return-void
.end method
