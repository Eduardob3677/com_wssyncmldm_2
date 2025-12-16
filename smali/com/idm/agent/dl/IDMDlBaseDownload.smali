.class public abstract Lcom/idm/agent/dl/IDMDlBaseDownload;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private deltaPath:Ljava/lang/String;

.field protected fileSystemAdapter:Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

.field private fos:Ljava/io/FileOutputStream;

.field protected lDownloadSize:J

.field protected szDownloadReceiveBuffer:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xc400

    iput v0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->szDownloadReceiveBuffer:I

    new-instance v0, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-direct {v0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;-><init>()V

    iput-object v0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->fileSystemAdapter:Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    return-void
.end method


# virtual methods
.method public getDownloadedSize()J
    .locals 2

    iget-wide v0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->lDownloadSize:J

    return-wide v0
.end method

.method public idmCloseFileInputStream()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->fos:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public idmFirmwareVerifyChecksum(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract idmGetExtraDDElement()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public idmGetReceiveDownloadBufferSize()I
    .locals 0

    iget p0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->szDownloadReceiveBuffer:I

    return p0
.end method

.method public idmOpenFileInputStream(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->fos:Ljava/io/FileOutputStream;

    iput-object p1, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->deltaPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/idm/exception/file/IDMExceptionFileNotFound;

    invoke-direct {p1, p0}, Lcom/idm/exception/file/IDMExceptionFileNotFound;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, Lcom/idm/exception/file/IDMExceptionFileNotFound;

    invoke-direct {p1, p0}, Lcom/idm/exception/file/IDMExceptionFileNotFound;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public idmResetDownloadInfo()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->lDownloadSize:J

    return-void
.end method

.method public idmSetReceiveDownloadBufferSize(I)V
    .locals 0

    iput p1, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->szDownloadReceiveBuffer:I

    return-void
.end method

.method public idmUpdateDownloadInfo(Lcom/idm/agent/dl/IDMDlDownloadInfo;J[B)Z
    .locals 4

    iget-wide v0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->lDownloadSize:J

    array-length v2, p4

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->lDownloadSize:J

    invoke-virtual {p0, p4}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmWriteDeltaFile([B)V

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "totalSize : "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", downloadSize : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->lDownloadSize:J

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->lDownloadSize:J

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-lez p4, :cond_0

    cmp-long p4, p2, v2

    if-lez p4, :cond_0

    invoke-virtual {p1, v0, v1}, Lcom/idm/agent/dl/IDMDlDownloadInfo;->idmSetDownloadSize(J)V

    iget-wide v0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->lDownloadSize:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    div-long/2addr v0, p2

    long-to-int p0, v0

    invoke-virtual {p1}, Lcom/idm/agent/dl/IDMDlDownloadInfo;->idmGetDownloadPercent()I

    move-result p2

    if-eq p2, p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/idm/agent/dl/IDMDlDownloadInfo;->idmSetDownloadPercent(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public idmWriteDeltaFile([B)V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->deltaPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object p1, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object p0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ENOSPC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/idm/exception/file/IDMExceptionFileEnospc;

    invoke-direct {p1, p0}, Lcom/idm/exception/file/IDMExceptionFileEnospc;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, Lcom/idm/exception/file/IDMExceptionFileNotFound;

    invoke-direct {p1, p0}, Lcom/idm/exception/file/IDMExceptionFileNotFound;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/idm/exception/file/IDMExceptionFileNotFound;

    invoke-direct {p0}, Lcom/idm/exception/file/IDMExceptionFileNotFound;-><init>()V

    throw p0
.end method

.method public idmWriteDeltaFile([BI)V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->deltaPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->fos:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object p1, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object p0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ENOSPC"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/idm/exception/file/IDMExceptionFileEnospc;

    invoke-direct {p1, p0}, Lcom/idm/exception/file/IDMExceptionFileEnospc;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, Lcom/idm/exception/file/IDMExceptionFileNotFound;

    invoke-direct {p1, p0}, Lcom/idm/exception/file/IDMExceptionFileNotFound;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/idm/exception/file/IDMExceptionFileNotFound;

    invoke-direct {p0}, Lcom/idm/exception/file/IDMExceptionFileNotFound;-><init>()V

    throw p0
.end method

.method public setDownloadedSize(J)V
    .locals 2

    iget-wide v0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->lDownloadSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/idm/agent/dl/IDMDlBaseDownload;->lDownloadSize:J

    return-void
.end method
