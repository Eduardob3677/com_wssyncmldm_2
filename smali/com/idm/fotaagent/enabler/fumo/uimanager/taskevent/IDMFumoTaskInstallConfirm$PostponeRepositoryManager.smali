.class Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostponeRepositoryManager"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final postponeRepository:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->postponeRepository:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->setAutoInstall(Z)V

    return-void
.end method

.method public static synthetic access$200(Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;)J
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->scheduledInstallTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$300(Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->setScheduledInstallTime(J)V

    return-void
.end method

.method public static synthetic access$400(Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->isNone()Z

    move-result p0

    return p0
.end method

.method private isNone()Z
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->postponeRepository:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->isNone()Z

    move-result p0

    return p0
.end method

.method private scheduledInstallTime()J
    .locals 2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->postponeRepository:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->scheduledInstallTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private setAutoInstall(Z)V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->postponeRepository:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->setAutoInstall(Z)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationManager;->cancel(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private setScheduledInstallTime(J)V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->postponeRepository:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-virtual {v0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->setScheduledInstallTime(J)V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationManager;->cancel(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
