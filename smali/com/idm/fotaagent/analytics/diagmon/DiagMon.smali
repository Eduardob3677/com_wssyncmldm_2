.class public Lcom/idm/fotaagent/analytics/diagmon/DiagMon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;
    }
.end annotation


# static fields
.field public static final DESCRIPTION_DEVICE_REGISTRATION_FAILED:Ljava/lang/String; = "Device registration failed"

.field public static final DEVICE_REGISTRATION_FAILED_DUE_TO_ABNORMAL_CONNECTION:Ljava/lang/String; = "434"

.field public static final DM_AUTHENTICATION_ERROR_DURING_REPORTING:Ljava/lang/String; = "431"

.field public static final DM_HTTP_RESPONSE_ERROR_DURING_REPORTING:Ljava/lang/String; = "432"

.field public static final DM_SYNCML_ERROR_DURING_REPORTING:Ljava/lang/String; = "433"

.field private static final ERROR_CODE_BLOCK_LIST:[Ljava/lang/String;

.field private static final ERROR_CODE_DEPRECATED_ENDPOINT:Ljava/lang/String; = "DEPRECATED_ENDPOINT"

.field private static final ERROR_CODE_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field public static final INVALID_DEVICE_STATE_ERROR:Ljava/lang/String; = "430"

.field private static context:Landroid/content/Context;

.field private static enabled:Z

.field private static final future:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final original:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SERVICE_NOT_AVAILABLE"

    const-string v1, "DEPRECATED_ENDPOINT"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->ERROR_CODE_BLOCK_LIST:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->original:Ljava/lang/Thread$UncaughtExceptionHandler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->enabled:Z

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->future:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->handleUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$100()Ljava/util/concurrent/CompletableFuture;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->future:Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method

.method public static synthetic access$200()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->enabled:Z

    return v0
.end method

.method public static synthetic access$400()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->ERROR_CODE_BLOCK_LIST:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->lambda$setup$0(Landroid/content/Context;)V

    return-void
.end method

.method private static handleUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;-><init>(Ljava/lang/Throwable;Lcom/idm/fotaagent/analytics/diagmon/DiagMon$1;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->withDescription(Ljava/lang/String;)Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->report()V

    sget-object v0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->original:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$setup$0(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->setupLocked(Landroid/content/Context;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setup(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/idm/fotaagent/analytics/diagmon/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/analytics/diagmon/b;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static setupLocked(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    sget-boolean v0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->enabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->context:Landroid/content/Context;

    new-instance v0, LL2/a;

    invoke-direct {v0, p0}, LL2/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, LL2/a;->a()V

    const-string p0, "x6g1q14r75"

    iput-object p0, v0, LL2/a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readUN()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, LL2/a;->f:Ljava/lang/String;

    invoke-static {v0}, LL2/b;->H(LL2/a;)V

    new-instance p0, Lcom/idm/fotaagent/analytics/diagmon/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->enabled:Z

    sget-object p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->future:Ljava/util/concurrent/CompletableFuture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->enabled:Z

    :goto_0
    return-void
.end method
