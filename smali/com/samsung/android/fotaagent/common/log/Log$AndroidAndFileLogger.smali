.class Lcom/samsung/android/fotaagent/common/log/Log$AndroidAndFileLogger;
.super Lcom/samsung/android/fotaagent/common/log/LoggerCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fotaagent/common/log/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidAndFileLogger"
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field final fileLogger:Lcom/samsung/android/fotaagent/common/log/FileLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/fotaagent/common/log/AndroidLogger;Lcom/samsung/android/fotaagent/common/log/FileLogger;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/fotaagent/common/log/Logger;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-direct {p0, v0}, Lcom/samsung/android/fotaagent/common/log/LoggerCollection;-><init>([Lcom/samsung/android/fotaagent/common/log/Logger;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/fotaagent/common/log/Log$AndroidAndFileLogger;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/fotaagent/common/log/Log$AndroidAndFileLogger;->fileLogger:Lcom/samsung/android/fotaagent/common/log/FileLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 3

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Log;->ANDROID_LOGGER:Lcom/samsung/android/fotaagent/common/log/AndroidLogger;

    new-instance v1, Lcom/samsung/android/fotaagent/common/log/FileLogger;

    const-string v2, "file_log"

    invoke-static {p1, v2, p2, p3, p4}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;->of(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/samsung/android/fotaagent/common/log/FileLogger;-><init>(Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/fotaagent/common/log/Log$AndroidAndFileLogger;-><init>(Landroid/content/Context;Lcom/samsung/android/fotaagent/common/log/AndroidLogger;Lcom/samsung/android/fotaagent/common/log/FileLogger;)V

    return-void
.end method


# virtual methods
.method public forceFileLogger()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/log/Log$AndroidAndFileLogger;->fileLogger:Lcom/samsung/android/fotaagent/common/log/FileLogger;

    invoke-virtual {p0}, Lcom/samsung/android/fotaagent/common/log/FileLogger;->force()V

    return-void
.end method
