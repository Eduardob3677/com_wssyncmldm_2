.class Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer$DoRestart;
.super Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoRestart"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public restart()V
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getUpdateFwVersion()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->calculateValidTime()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->setVersionAndExpiredTime(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->start()V

    return-void
.end method
