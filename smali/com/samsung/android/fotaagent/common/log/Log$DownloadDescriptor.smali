.class Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;
.super Lcom/samsung/android/fotaagent/common/log/LoggerCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fotaagent/common/log/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadDescriptor"
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;


# instance fields
.field private final fileLogger:Lcom/samsung/android/fotaagent/common/log/FileLogger;


# direct methods
.method private constructor <init>(Lcom/samsung/android/fotaagent/common/log/FileLogger;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/fotaagent/common/log/Logger;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/fotaagent/common/log/LoggerCollection;-><init>([Lcom/samsung/android/fotaagent/common/log/Logger;)V

    iput-object p1, p0, Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;->fileLogger:Lcom/samsung/android/fotaagent/common/log/FileLogger;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;
    .locals 7

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;->INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;->INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;

    return-object p0

    :cond_0
    const-class v0, Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;->INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;

    if-eqz v1, :cond_1

    sget-object p0, Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;->INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;

    new-instance v2, Lcom/samsung/android/fotaagent/common/log/FileLogger;

    const-string v3, "file_log"

    const-string v4, "dm_dd.log"

    const/4 v5, 0x4

    const/high16 v6, 0x40000

    invoke-static {p0, v3, v4, v5, v6}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;->of(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/samsung/android/fotaagent/common/log/FileLogger;-><init>(Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;-><init>(Lcom/samsung/android/fotaagent/common/log/FileLogger;)V

    sput-object v1, Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;->INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public forceFileLogger()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;->fileLogger:Lcom/samsung/android/fotaagent/common/log/FileLogger;

    invoke-virtual {p0}, Lcom/samsung/android/fotaagent/common/log/FileLogger;->force()V

    return-void
.end method
