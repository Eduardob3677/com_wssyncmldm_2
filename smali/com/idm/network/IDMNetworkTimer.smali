.class public Lcom/idm/network/IDMNetworkTimer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/network/IDMNetworkInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/network/IDMNetworkTimer$IDMNetworkTimerTask;
    }
.end annotation


# instance fields
.field private httpAdapter:Lcom/idm/network/IDMNetworkHttpAdapter;

.field private nCurrentTimerCount:I

.field private nMaxTimerCount:I

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private timerMode:Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

.field private urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;IILcom/idm/network/IDMNetworkHttpAdapter;Ljava/net/HttpURLConnection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/network/IDMNetworkTimer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    div-int/lit16 p2, p2, 0x3e8

    add-int/2addr p2, p3

    iput p2, p0, Lcom/idm/network/IDMNetworkTimer;->nMaxTimerCount:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/idm/network/IDMNetworkTimer;->nCurrentTimerCount:I

    iput-object p4, p0, Lcom/idm/network/IDMNetworkTimer;->httpAdapter:Lcom/idm/network/IDMNetworkHttpAdapter;

    iput-object p5, p0, Lcom/idm/network/IDMNetworkTimer;->urlConnection:Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/idm/network/IDMNetworkTimer;->timerMode:Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    invoke-virtual {p0}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkStartTimer()V

    return-void
.end method

.method public static synthetic access$100(Lcom/idm/network/IDMNetworkTimer;)Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;
    .locals 0

    iget-object p0, p0, Lcom/idm/network/IDMNetworkTimer;->timerMode:Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/idm/network/IDMNetworkTimer;)I
    .locals 0

    iget p0, p0, Lcom/idm/network/IDMNetworkTimer;->nCurrentTimerCount:I

    return p0
.end method

.method public static synthetic access$202(Lcom/idm/network/IDMNetworkTimer;I)I
    .locals 0

    iput p1, p0, Lcom/idm/network/IDMNetworkTimer;->nCurrentTimerCount:I

    return p1
.end method

.method public static synthetic access$208(Lcom/idm/network/IDMNetworkTimer;)I
    .locals 2

    iget v0, p0, Lcom/idm/network/IDMNetworkTimer;->nCurrentTimerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/idm/network/IDMNetworkTimer;->nCurrentTimerCount:I

    return v0
.end method

.method public static synthetic access$300(Lcom/idm/network/IDMNetworkTimer;)I
    .locals 0

    iget p0, p0, Lcom/idm/network/IDMNetworkTimer;->nMaxTimerCount:I

    return p0
.end method

.method public static synthetic access$400(Lcom/idm/network/IDMNetworkTimer;)Ljava/net/HttpURLConnection;
    .locals 0

    iget-object p0, p0, Lcom/idm/network/IDMNetworkTimer;->urlConnection:Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/idm/network/IDMNetworkTimer;)Lcom/idm/network/IDMNetworkHttpAdapter;
    .locals 0

    iget-object p0, p0, Lcom/idm/network/IDMNetworkTimer;->httpAdapter:Lcom/idm/network/IDMNetworkHttpAdapter;

    return-object p0
.end method


# virtual methods
.method public idmNetworkEndTimer()V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/idm/network/IDMNetworkTimer;->nCurrentTimerCount:I

    iget-object v0, p0, Lcom/idm/network/IDMNetworkTimer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "=====================>> endTimer"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/network/IDMNetworkTimer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public idmNetworkStartTimer()V
    .locals 8

    const-string v0, "=====================>> startTimer"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/network/IDMNetworkTimer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/idm/network/IDMNetworkTimer$IDMNetworkTimerTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/idm/network/IDMNetworkTimer$IDMNetworkTimerTask;-><init>(Lcom/idm/network/IDMNetworkTimer;Lcom/idm/network/IDMNetworkTimer$1;)V

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
