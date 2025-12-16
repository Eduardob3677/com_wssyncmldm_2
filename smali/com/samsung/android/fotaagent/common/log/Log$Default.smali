.class Lcom/samsung/android/fotaagent/common/log/Log$Default;
.super Lcom/samsung/android/fotaagent/common/log/Log$AndroidAndFileLogger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fotaagent/common/log/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$Default;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/fotaagent/common/log/Log$AndroidAndFileLogger;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Log$Default;
    .locals 5

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Log$Default;->INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$Default;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/fotaagent/common/log/Log$Default;->INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$Default;

    return-object p0

    :cond_0
    const-class v0, Lcom/samsung/android/fotaagent/common/log/Log$Default;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/fotaagent/common/log/Log$Default;->INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$Default;

    if-eqz v1, :cond_1

    sget-object p0, Lcom/samsung/android/fotaagent/common/log/Log$Default;->INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$Default;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_1
    const-string v1, "log"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const-string v3, "fa_booting0.log"

    invoke-interface {v1, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-array v2, v2, [Ljava/nio/file/FileVisitOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LG2/b;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, LG2/b;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LA2/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, LA2/a;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/samsung/android/fotaagent/common/log/Log;->ANDROID_LOGGER:Lcom/samsung/android/fotaagent/common/log/AndroidLogger;

    invoke-virtual {v2, v1}, Lcom/samsung/android/fotaagent/common/log/Logger;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    new-instance v1, Lcom/samsung/android/fotaagent/common/log/Log$Default;

    const-string v2, "fa_booting.log"

    const/4 v3, 0x5

    const v4, 0x32000

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/android/fotaagent/common/log/Log$Default;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/fotaagent/common/log/Log$Default;->INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$Default;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public switchFileLoggerToSession()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/fotaagent/common/log/Log$AndroidAndFileLogger;->fileLogger:Lcom/samsung/android/fotaagent/common/log/FileLogger;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v1

    const-string v2, ">>>>>   switch log file to fa_session.log   <<<<<"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/fotaagent/common/log/Logger;->I(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/fotaagent/common/log/Log$AndroidAndFileLogger;->fileLogger:Lcom/samsung/android/fotaagent/common/log/FileLogger;

    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/log/Log$AndroidAndFileLogger;->context:Landroid/content/Context;

    const/4 v1, 0x4

    const/high16 v2, 0x100000

    const-string v3, "file_log"

    const-string v4, "fa_session.log"

    invoke-static {p0, v3, v4, v1, v2}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;->of(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/fotaagent/common/log/FileLogger;->changeFileWriter(Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;)V

    return-void
.end method
