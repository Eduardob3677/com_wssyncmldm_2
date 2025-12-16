.class public abstract Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;,
        Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;
    }
.end annotation


# static fields
.field private static final FILE_LENGTH_WATCH_INTERVAL_IN_MILLIS:J = 0xfaL


# instance fields
.field protected final downloadPath:Ljava/nio/file/Path;

.field final onFileLengthChangedListener:Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;

.field protected final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/nio/file/Path;Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->url:Ljava/net/URL;

    iput-object p2, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->downloadPath:Ljava/nio/file/Path;

    iput-object p3, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->onFileLengthChangedListener:Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->watchFileLengthChange()V

    return-void
.end method

.method private watchFileLengthChange()V
    .locals 8

    :try_start_0
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->newWatchService()Ljava/nio/file/WatchService;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->downloadPath:Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/WatchEvent$Kind;

    sget-object v3, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v1, v0, v2}, Ljava/nio/file/Path;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;

    :goto_0
    invoke-interface {v0}, Ljava/nio/file/WatchService;->take()Ljava/nio/file/WatchKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/WatchKey;->pollEvents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/WatchEvent;

    invoke-interface {v4}, Ljava/nio/file/WatchEvent;->context()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    invoke-interface {v1, v4}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->downloadPath:Ljava/nio/file/Path;

    invoke-interface {v4, v5}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->onFileLengthChangedListener:Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;

    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;->onFileLengthChanged(J)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Ljava/nio/file/WatchKey;->reset()Z

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Ljava/nio/file/WatchService;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_1
    const-string v0, "interrupted"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->onFileLengthChangedListener:Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;

    iget-object p0, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->downloadPath:Ljava/nio/file/Path;

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;->onFileLengthChanged(J)V

    :goto_5
    return-void
.end method


# virtual methods
.method public append(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->execute(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;Z)V

    return-void
.end method

.method public execute(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;Z)V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->downloadPath:Ljava/nio/file/Path;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    sget-object v4, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->getInputStream(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v4, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->onFileLengthChangedListener:Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, LD1/b;

    const/16 v6, 0x16

    invoke-direct {v5, v6, p0}, LD1/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v4, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    if-eqz p2, :cond_1

    :try_start_4
    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    :cond_1
    move-wide v11, v4

    :goto_1
    invoke-static {p1}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;->access$000(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;)J

    move-result-wide v4

    cmp-long p2, v11, v4

    if-gez p2, :cond_2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    invoke-static {p1}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;->access$000(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;)J

    move-result-wide v4

    sub-long v9, v4, v11

    move-object v5, v2

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v4

    add-long/2addr v11, v4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countTransferred: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_3

    :try_start_5
    invoke-interface {v3}, Ljava/nio/channels/Channel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_5

    :cond_3
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->finalize(Ljava/lang/Thread;)V

    return-void

    :catchall_3
    move-exception p1

    goto :goto_7

    :goto_3
    if-eqz v3, :cond_4

    :try_start_7
    invoke-interface {v3}, Ljava/nio/channels/Channel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_5
    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p2

    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_6
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_7
    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->finalize(Ljava/lang/Thread;)V

    throw p1
.end method

.method public finalize(Ljava/lang/Thread;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public abstract getInputStream(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;)Ljava/io/InputStream;
.end method

.method public overwrite(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->execute(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;Z)V

    return-void
.end method
