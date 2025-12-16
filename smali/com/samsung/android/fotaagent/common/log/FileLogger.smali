.class Lcom/samsung/android/fotaagent/common/log/FileLogger;
.super Lcom/samsung/android/fotaagent/common/log/Logger;
.source "SourceFile"


# static fields
.field private static final PID:Ljava/lang/String;


# instance fields
.field private fileWriter:Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

.field private final readLockForFileWriter:Ljava/util/concurrent/locks/Lock;

.field private final writeLockForFileWriter:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->PID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/fotaagent/common/log/FileLogger;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;->STUB:Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/fotaagent/common/log/FileLogger;-><init>(Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;I)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/fotaagent/common/log/FileLogger;-><init>(Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;I)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/fotaagent/common/log/Logger;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->fileWriter:Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->readLockForFileWriter:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->writeLockForFileWriter:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/cipher/AESWithRSA;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Log;->ANDROID_LOGGER:Lcom/samsung/android/fotaagent/common/log/AndroidLogger;

    invoke-static {}, Lcom/samsung/android/fotaagent/common/log/Where;->here()Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/fotaagent/common/log/Logger;->printStackTrace(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Throwable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[!] Log encryption failed: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private retryLog(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->writeLockForFileWriter:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->fileWriter:Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    invoke-interface {v0}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->fileWriter:Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;->clone(Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;)Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->fileWriter:Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->fileWriter:Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    invoke-interface {v1, p1}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->writeLockForFileWriter:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    :goto_2
    :try_start_1
    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Log;->ANDROID_LOGGER:Lcom/samsung/android/fotaagent/common/log/AndroidLogger;

    invoke-static {}, Lcom/samsung/android/fotaagent/common/log/Where;->here()Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->printStackTrace(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->writeLockForFileWriter:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private static when()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/utils/Formatted$DateTimeWithoutYearForLog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/utils/Formatted$DateTimeWithoutYearForLog;-><init>(J)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/Formatted$DateTimeWithoutYearForLog;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeFileWriter(Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->writeLockForFileWriter:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->fileWriter:Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    invoke-interface {v0}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;->close()V

    iput-object p1, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->fileWriter:Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->writeLockForFileWriter:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Log;->ANDROID_LOGGER:Lcom/samsung/android/fotaagent/common/log/AndroidLogger;

    invoke-static {}, Lcom/samsung/android/fotaagent/common/log/Where;->here()Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->printStackTrace(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->writeLockForFileWriter:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public force()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->readLockForFileWriter:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->fileWriter:Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    invoke-interface {v0}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;->force()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->readLockForFileWriter:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/samsung/android/fotaagent/common/log/Log;->ANDROID_LOGGER:Lcom/samsung/android/fotaagent/common/log/AndroidLogger;

    invoke-static {}, Lcom/samsung/android/fotaagent/common/log/Where;->here()Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/fotaagent/common/log/Logger;->printStackTrace(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->readLockForFileWriter:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public log(Lcom/samsung/android/fotaagent/common/log/Logger$Level;Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/fotaagent/common/log/FileLogger;->PID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :try_start_0
    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->S:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->H:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0, p3}, Lcom/samsung/android/fotaagent/common/log/FileLogger;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/fotaagent/common/log/FileLogger;->when()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p1, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->readLockForFileWriter:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->fileWriter:Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    invoke-interface {p1, p3}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->readLockForFileWriter:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/fotaagent/common/log/FileLogger;->readLockForFileWriter:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
    :try_end_2
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    sget-object p1, Lcom/samsung/android/fotaagent/common/log/Log;->ANDROID_LOGGER:Lcom/samsung/android/fotaagent/common/log/AndroidLogger;

    invoke-static {}, Lcom/samsung/android/fotaagent/common/log/Where;->here()Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/fotaagent/common/log/Logger;->printStackTrace(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    sget-object p2, Lcom/samsung/android/fotaagent/common/log/Log;->ANDROID_LOGGER:Lcom/samsung/android/fotaagent/common/log/AndroidLogger;

    invoke-static {}, Lcom/samsung/android/fotaagent/common/log/Where;->here()Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->printStackTrace(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Throwable;)V

    invoke-direct {p0, p3}, Lcom/samsung/android/fotaagent/common/log/FileLogger;->retryLog(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
