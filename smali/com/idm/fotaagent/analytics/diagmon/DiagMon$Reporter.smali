.class public Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/analytics/diagmon/DiagMon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reporter"
.end annotation


# static fields
.field private static final DIAGMON_INIT_TIMEOUT_IN_SEC:I = 0x5

.field public static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final KEY_SERVICE_DEFINED_KEY:Ljava/lang/String; = "serviceDefinedKey"

.field private static final REPORT_DIRECTORY_PATH:Ljava/lang/String; = "diagmon_report"


# instance fields
.field private builder:LL2/c;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->access$100()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->access$200()Landroid/content/Context;

    move-result-object v0

    const-string v1, "diagmon_report"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    :try_start_1
    new-instance v1, LL2/c;

    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->access$200()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string v4, ""

    iput-object v4, v1, LL2/c;->b:Ljava/lang/String;

    iput-object v4, v1, LL2/c;->c:Ljava/lang/String;

    iput-object v4, v1, LL2/c;->d:Ljava/lang/String;

    iput-object v4, v1, LL2/c;->e:Ljava/lang/String;

    iput-object v3, v1, LL2/c;->a:Landroid/content/Context;

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-interface {v0, v2}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LL2/c;->b:Ljava/lang/String;

    iput-object p1, v1, LL2/c;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->builder:LL2/c;

    iput-object p2, p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->throwable:Ljava/lang/Throwable;

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "FE_wssyncmldm"

    invoke-direct {p0, v0, p1}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;Lcom/idm/fotaagent/analytics/diagmon/DiagMon$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->lambda$report$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/nio/file/Path;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->lambda$prepareFilesToReport$1(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/nio/file/Path;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->lambda$prepareFilesToReport$2(Ljava/nio/file/Path;)V

    return-void
.end method

.method private static copyUpTo6([Ljava/io/File;)[Ljava/io/File;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    return-object p0
.end method

.method private static synthetic lambda$prepareFilesToReport$1(Ljava/nio/file/Path;)Z
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$prepareFilesToReport$2(Ljava/nio/file/Path;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->access$200()Landroid/content/Context;

    move-result-object v0

    const-string v1, "diagmon_report"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, p0, v1}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private lambda$report$0(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->builder:LL2/c;

    iget-object p0, p0, LL2/c;->d:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static prepareFilesToReport()V
    .locals 14

    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->access$200()Landroid/content/Context;

    move-result-object v0

    const-string v1, "diagmon_report"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object v0

    :try_start_0
    new-instance v1, LG2/b;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, LG2/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, LA2/a;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, LA2/a;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->close()V

    invoke-static {}, Ljava/util/stream/Stream;->builder()Ljava/util/stream/Stream$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/idm/fotaagent/utils/storage/StorageType;->CACHE:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v3}, Lcom/idm/fotaagent/utils/storage/StorageType;->path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/recovery/last_command"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/idm/fotaagent/utils/storage/StorageType;->path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/recovery/last_log"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/idm/fotaagent/utils/storage/StorageType;->path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/recovery/last_install"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/idm/fotaagent/utils/storage/StorageType;->path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/recovery/last_recovery"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/idm/fotaagent/utils/storage/StorageType;->path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/recovery/block.map"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/idm/fotaagent/utils/storage/StorageType;->DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v3}, Lcom/idm/fotaagent/utils/storage/StorageType;->path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/log/recovery.log"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/idm/fotaagent/utils/storage/StorageType;->path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/log/power_off_reset_reason.txt"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/idm/fotaagent/utils/storage/StorageType;->path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/log/recovery_patch_log.txt"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v5, "/cache/fota/fota.status"

    filled-new-array/range {v5 .. v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, LG2/b;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, LG2/b;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/idm/adapter/filesystem/a;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/idm/adapter/filesystem/a;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, LG2/b;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, LG2/b;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/idm/fotaagent/utils/storage/StorageType;->path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/log/update_engine_log"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    invoke-static {v1}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->sortAndCopy([Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, LG2/b;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, LG2/b;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->access$200()Landroid/content/Context;

    move-result-object v1

    const-string v3, "fota.db"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->access$200()Landroid/content/Context;

    move-result-object v3

    const-string v4, "idm.db"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->access$200()Landroid/content/Context;

    move-result-object v4

    const-string v5, "idmsdk.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    filled-new-array {v1, v3, v4}, [Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/idm/adapter/filesystem/a;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/idm/adapter/filesystem/a;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, LG2/b;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, LG2/b;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->access$200()Landroid/content/Context;

    move-result-object v1

    const-string v3, "file_log"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v2, [Ljava/nio/file/FileVisitOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v1

    :try_start_1
    new-instance v2, Lcom/idm/adapter/filesystem/a;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/idm/adapter/filesystem/a;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/stream/BaseStream;->close()V

    invoke-interface {v0}, Ljava/util/stream/Stream$Builder;->build()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LA2/a;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, LA2/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->forceFileLogger(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Ljava/util/stream/BaseStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v0}, Ljava/util/stream/BaseStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method private printStackTrace()V
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->fatalExceptionLogger(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Logger;

    move-result-object v0

    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/fotaagent/utils/DeviceUtils;->readAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Lcom/samsung/android/fotaagent/common/log/Logger;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static sortAndCopy([Ljava/io/File;)[Ljava/io/File;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->sortByModified([Ljava/io/File;)V

    invoke-static {p0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->copyUpTo6([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static sortByModified([Ljava/io/File;)V
    .locals 2

    new-instance v0, Lcom/idm/adapter/filesystem/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/idm/adapter/filesystem/b;-><init>(I)V

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public report()V
    .locals 4

    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->access$300()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, " called at "

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "diagmon is not enabled: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->builder:LL2/c;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "EventBuilder initialization fails: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->printStackTrace()V

    :cond_2
    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->access$400()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LF2/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, LF2/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Do not report due to blocked error code : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->builder:LL2/c;

    iget-object p0, p0, LL2/c;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v1, p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->builder:LL2/c;

    iget-object v1, v1, LL2/c;->c:Ljava/lang/String;

    const-string v2, "serviceDefinedKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->builder:LL2/c;

    iget-object v1, v1, LL2/c;->e:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->builder:LL2/c;

    iget-object p0, p0, LL2/c;->d:Ljava/lang/String;

    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/idm/fotaagent/analytics/diagmon/jobschedule/DiagmonReportJobScheduleManager;->schedule(Landroid/content/Context;Landroid/os/PersistableBundle;)V

    return-void

    :cond_4
    :try_start_0
    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->prepareFilesToReport()V

    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->access$200()Landroid/content/Context;

    iget-object v0, p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->builder:LL2/c;

    invoke-static {v0}, LL2/b;->j(LL2/c;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Succeeded to report"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->throwable:Ljava/lang/Throwable;

    if-eqz p0, :cond_6

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_5
    const-string p0, "Failed to report"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public withDescription(Ljava/lang/String;)Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->builder:LL2/c;

    if-eqz v0, :cond_0

    iput-object p1, v0, LL2/c;->e:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public withServiceDefinedKey(Ljava/lang/String;)Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->builder:LL2/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, LL2/c;->a:Landroid/content/Context;

    invoke-static {v1}, LN2/a;->a(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "delimiter is included : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf1/a;->r0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object p1, v0, LL2/c;->c:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object p0
.end method
