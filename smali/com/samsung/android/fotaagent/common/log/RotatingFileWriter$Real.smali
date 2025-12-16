.class public Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Real"
.end annotation


# static fields
.field private static final CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field private final fileChannel:Ljava/nio/channels/FileChannel;

.field private final filePath:Ljava/nio/file/Path;

.field private final lockForRotation:Ljava/lang/Object;

.field private final minBytesForRotation:I

.field private final numFiles:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/nio/file/Path;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->filePath:Ljava/nio/file/Path;

    iput p2, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->numFiles:I

    iput p3, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->minBytesForRotation:I

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->lockForRotation:Ljava/lang/Object;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/nio/file/OpenOption;

    sget-object p3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    sget-object p3, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    const/4 v0, 0x1

    aput-object p3, p2, v0

    sget-object p3, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    const/4 v0, 0x2

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->fileChannel:Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/file/Path;IILcom/samsung/android/fotaagent/common/log/RotatingFileWriter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;-><init>(Ljava/nio/file/Path;II)V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;)Ljava/nio/file/Path;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->filePath:Ljava/nio/file/Path;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->numFiles:I

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->minBytesForRotation:I

    return p0
.end method

.method private rotateIfNeeded()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    iget v4, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->minBytesForRotation:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->lockForRotation:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    iget v5, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->minBytesForRotation:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->filePath:Ljava/nio/file/Path;

    invoke-interface {v3}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->filePath:Ljava/nio/file/Path;

    invoke-interface {v5}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->numFiles:I

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->numFiles:I

    add-int/lit8 v4, v4, -0x2

    :goto_0
    if-lez v4, :cond_3

    iget-object v5, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->filePath:Ljava/nio/file/Path;

    invoke-interface {v5}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->filePath:Ljava/nio/file/Path;

    invoke-interface {v7}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    new-array v6, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-array v6, v1, [Ljava/nio/file/CopyOption;

    sget-object v7, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v7, v6, v0

    invoke-static {v5, v3, v6}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    :cond_2
    add-int/lit8 v4, v4, -0x1

    move-object v3, v5

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->filePath:Ljava/nio/file/Path;

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v1, v0

    invoke-static {v4, v3, v1}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->fileChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->force()V

    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void
.end method

.method public force()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->fileChannel:Ljava/nio/channels/FileChannel;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result p0

    return p0
.end method

.method public println(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->rotateIfNeeded()V

    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->fileChannel:Ljava/nio/channels/FileChannel;

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->CHARSET:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method
