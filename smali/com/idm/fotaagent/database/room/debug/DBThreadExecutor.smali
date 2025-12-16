.class public Lcom/idm/fotaagent/database/room/debug/DBThreadExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dbExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/database/room/debug/DBThreadExecutor;->dbExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/debug/DBThreadExecutor;->dbExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
