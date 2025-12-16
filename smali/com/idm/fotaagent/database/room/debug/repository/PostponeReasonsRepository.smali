.class public Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile INSTANCE:Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;


# instance fields
.field private final dao:Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao;

.field private final executor:Lcom/idm/fotaagent/database/room/debug/DBThreadExecutor;


# direct methods
.method private constructor <init>(Lcom/idm/fotaagent/database/room/debug/DBThreadExecutor;Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->executor:Lcom/idm/fotaagent/database/room/debug/DBThreadExecutor;

    iput-object p2, p0, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->dao:Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->lambda$getLimitedPostponeReasons$1(Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsCallback;)V

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->lambda$add$0(Ljava/lang/String;)V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->INSTANCE:Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;

    if-nez v0, :cond_1

    const-class v0, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->INSTANCE:Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;

    if-nez v1, :cond_0

    new-instance v1, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;

    new-instance v2, Lcom/idm/fotaagent/database/room/debug/DBThreadExecutor;

    invoke-direct {v2}, Lcom/idm/fotaagent/database/room/debug/DBThreadExecutor;-><init>()V

    invoke-static {p0}, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;->postponeReasonDao()Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;-><init>(Lcom/idm/fotaagent/database/room/debug/DBThreadExecutor;Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao;)V

    sput-object v1, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->INSTANCE:Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->INSTANCE:Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;

    return-object p0
.end method

.method private synthetic lambda$add$0(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->dao:Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao;

    new-instance v0, Lcom/idm/fotaagent/database/room/debug/entity/PostponeReason;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/room/debug/entity/PostponeReason;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao;->insertOrReplace(Lcom/idm/fotaagent/database/room/debug/entity/PostponeReason;)J

    return-void
.end method

.method private synthetic lambda$getLimitedPostponeReasons$1(Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->dao:Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao;

    invoke-interface {p0}, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao;->getLimitedPostponeReasons()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsCallback;->onPostponeReasonsLoaded(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2

    new-instance v0, LA/o;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1, p1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->executor:Lcom/idm/fotaagent/database/room/debug/DBThreadExecutor;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/debug/DBThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteAll()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->executor:Lcom/idm/fotaagent/database/room/debug/DBThreadExecutor;

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->dao:Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LD1/b;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0}, LD1/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/room/debug/DBThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLimitedPostponeReasons(Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsCallback;)V
    .locals 2

    new-instance v0, LA/o;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1, p1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->executor:Lcom/idm/fotaagent/database/room/debug/DBThreadExecutor;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/debug/DBThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
