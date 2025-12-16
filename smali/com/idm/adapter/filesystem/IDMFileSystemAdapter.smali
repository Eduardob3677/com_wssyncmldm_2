.class public Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/adapter/filesystem/IDMFileSystemAdapterInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/nio/file/Path;)J
    .locals 2

    invoke-static {p0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->lambda$idmGetDirSize$1(Ljava/nio/file/Path;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic b(Ljava/nio/file/Path;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->lambda$idmGetDirSize$0(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$idmGetDirSize$0(Ljava/nio/file/Path;)Z
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$idmGetDirSize$1(Ljava/nio/file/Path;)J
    .locals 2

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public idmAppendFileWrite(Ljava/lang/String;[B)V
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    new-array v0, p0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v1, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v1, v0, p0

    sget-object p0, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    sget-object p0, Ljava/nio/file/StandardOpenOption;->SYNC:Ljava/nio/file/StandardOpenOption;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {p1, p2, v0}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public idmDirCreate(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    :goto_0
    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Lcom/idm/exception/file/IDMExceptionFileDirCreate;

    invoke-direct {p0}, Lcom/idm/exception/file/IDMExceptionFileDirCreate;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance p1, Lcom/idm/exception/file/IDMExceptionFileDirCreate;

    invoke-direct {p1, p0}, Lcom/idm/exception/file/IDMExceptionFileDirCreate;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public idmDirDelete(Ljava/lang/String;)V
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    new-array v0, p0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    new-array p0, p0, [Ljava/nio/file/FileVisitOption;

    invoke-static {p1, p0}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, LG2/b;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, LG2/b;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, LA2/a;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, LA2/a;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/idm/exception/file/IDMExceptionFileDelete;

    invoke-direct {p1, p0}, Lcom/idm/exception/file/IDMExceptionFileDelete;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public idmFileCopy(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/nio/file/CopyOption;

    sget-object v0, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/idm/exception/file/IDMExceptionFileIO;

    invoke-direct {p1, p0}, Lcom/idm/exception/file/IDMExceptionFileIO;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public idmFileCreateWrite(Ljava/lang/String;[B)V
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    new-array v0, p0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v1, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v1, v0, p0

    invoke-static {p1, p2, v0}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public idmFileDelete(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/idm/exception/file/IDMExceptionFileDelete;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can\'t delete"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/exception/file/IDMExceptionFileDelete;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    new-instance p1, Lcom/idm/exception/file/IDMExceptionFileDelete;

    invoke-direct {p1, p0}, Lcom/idm/exception/file/IDMExceptionFileDelete;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public idmFileExists(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/idm/exception/file/IDMExceptionFileRead;

    invoke-direct {p0}, Lcom/idm/exception/file/IDMExceptionFileRead;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Lcom/idm/exception/file/IDMExceptionFileNotFound;

    invoke-direct {p0}, Lcom/idm/exception/file/IDMExceptionFileNotFound;-><init>()V

    throw p0
.end method

.method public idmGetByteFromInputStream(Ljava/io/InputStream;)[B
    .locals 3

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const p1, 0x19000

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public idmGetDirSize(Ljava/lang/String;)J
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    new-array v0, p0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    new-array p0, p0, [Ljava/nio/file/FileVisitOption;

    invoke-static {p1, p0}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/idm/adapter/filesystem/a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/idm/adapter/filesystem/a;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/idm/adapter/filesystem/b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/idm/adapter/filesystem/b;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/idm/exception/file/IDMExceptionFileNotFound;

    invoke-direct {p1, p0}, Lcom/idm/exception/file/IDMExceptionFileNotFound;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public idmGetFileSize(Ljava/lang/String;)J
    .locals 0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Lcom/idm/exception/file/IDMExceptionFileNotFound;

    invoke-direct {p0}, Lcom/idm/exception/file/IDMExceptionFileNotFound;-><init>()V

    throw p0
.end method

.method public idmGetToByteFromFile(Ljava/lang/String;)[B
    .locals 0

    const/4 p0, 0x0

    :try_start_0
    new-array p0, p0, [Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public idmGetToStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
