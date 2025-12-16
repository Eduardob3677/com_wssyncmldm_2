.class public Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;
.super Lcom/idm/agent/dl/IDMDlBaseDownload;
.source "SourceFile"


# static fields
.field private static final APPEND_SAVED_BUFFER_SIZE:I = 0x200000

.field private static final DOWNLOAD_PROGRESS_THRESHOLD_SIZE:I = 0x80000

.field static final DOWNLOAD_RECEIVE_BUFFER_SIZE:I = 0xc400

.field public static final IDM_DD_EXTRA_ELEMENT_DESCRIPTIONTYPE:Ljava/lang/String; = "descriptionType"

.field public static final IDM_DD_EXTRA_ELEMENT_INSTALLTYPEURI:Ljava/lang/String; = "installTypeURI"

.field public static final IDM_DD_EXTRA_ELEMENT_SUMMARYDESCRIPTION:Ljava/lang/String; = "summaryDescription"


# instance fields
.field private final actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

.field private checkProgress:I

.field private downloadProgressSize:J

.field private final flexibleBuffer:Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;

.field private final fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlBaseDownload;-><init>()V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    new-instance p1, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;

    const/high16 v0, 0x200000

    const v1, 0xc400

    invoke-direct {p1, v0, v1}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->flexibleBuffer:Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;

    return-void
.end method

.method private checkDeltaExistence()V
    .locals 1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDownloadPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/idm/exception/file/IDMExceptionFileNotFound;

    invoke-direct {p0}, Lcom/idm/exception/file/IDMExceptionFileNotFound;-><init>()V

    throw p0
.end method

.method private isF2FSTypeOfData()Z
    .locals 4

    :try_start_0
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/mounts"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v2, v0, v1

    const/4 v3, 0x2

    aget-object v0, v0, v3

    const-string v3, "/data"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "f2fs"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    return v1

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_3
    const/4 p0, 0x0

    return p0
.end method

.method private setPinAndAllocateIfDownloadingInDataAndF2FSType()V
    .locals 5

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDeltaIndex()I

    move-result v0

    sget-object v1, Lcom/idm/fotaagent/utils/storage/StorageType;->DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/storage/StorageType;->type()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->isF2FSTypeOfData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getDownloadedSize()J

    move-result-wide v1

    iget-object v3, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->flexibleBuffer:Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;

    invoke-virtual {v3}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->idmGetFlexibleBufferLength()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/fotaagent/common/util/NativeUtils;->setPinAndFallocate(Ljava/lang/String;JJ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "setpin and fallocate was failed. try again"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getDownloadedSize()J

    move-result-wide v1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->flexibleBuffer:Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->idmGetFlexibleBufferLength()I

    move-result p0

    int-to-long v3, p0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/fotaagent/common/util/NativeUtils;->setPinAndFallocate(Ljava/lang/String;JJ)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateDownloadInfo(Lcom/idm/agent/dl/IDMDlDownloadInfo;J)V
    .locals 5

    iget-wide v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->downloadProgressSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v0, v1}, Lcom/idm/agent/dl/IDMDlDownloadInfo;->idmSetDownloadSize(J)V

    iget-wide v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->downloadProgressSize:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    div-long/2addr v0, p2

    long-to-int p0, v0

    invoke-virtual {p1}, Lcom/idm/agent/dl/IDMDlDownloadInfo;->idmGetDownloadPercent()I

    move-result p2

    if-eq p2, p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/idm/agent/dl/IDMDlDownloadInfo;->idmSetDownloadPercent(I)V

    :cond_0
    return-void
.end method

.method private verifyFirmwareCheckSum(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p0, "Calculated checksum should not be empty"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return v0

    :cond_0
    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getMD5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Checksum matched"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "Checksum mismatched"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public calculateChecksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string p0, ""

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const p1, 0x8000

    :try_start_1
    new-array p1, p1, [B

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, p1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lcom/idm/fotaagent/utils/EnablerUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Checksum : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getDownloadedSize()J
    .locals 2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getDownloadedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public idmFirmwareVerifyChecksum(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->verifyFirmwareCheckSum(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public idmGetExtraDDElement()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "descriptionType"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "summaryDescription"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "installTypeURI"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public idmGetReceiveDownloadBufferSize()I
    .locals 0

    const p0, 0xc400

    return p0
.end method

.method public idmResetDownloadInfo()V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->flexibleBuffer:Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->idmAllClearBufferInfo()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->downloadProgressSize:J

    return-void
.end method

.method public idmUpdateDownloadInfo(Lcom/idm/agent/dl/IDMDlDownloadInfo;J[B)Z
    .locals 4

    iget-wide v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->downloadProgressSize:J

    array-length v2, p4

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->downloadProgressSize:J

    invoke-virtual {p0, p4, p2, p3}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->writeFirmwareObject([BJ)V

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->updateDownloadInfo(Lcom/idm/agent/dl/IDMDlDownloadInfo;J)V

    invoke-virtual {p0, p2, p3}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->needsToRefreshProgress(J)Z

    move-result p0

    return p0
.end method

.method public needsToRefreshProgress(J)Z
    .locals 5

    iget-wide v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->downloadProgressSize:J

    long-to-int v2, v0

    const/high16 v3, 0x80000

    div-int/2addr v2, v3

    iget v3, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->checkProgress:I

    const/4 v4, 0x1

    if-eq v3, v2, :cond_0

    iput v2, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->checkProgress:I

    return v4

    :cond_0
    cmp-long p0, v0, p1

    if-nez p0, :cond_1

    return v4

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setDownloadedSize(J)V
    .locals 2

    iget-wide v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->downloadProgressSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->downloadProgressSize:J

    return-void
.end method

.method public writeFirmwareObject([BJ)V
    .locals 2

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->flexibleBuffer:Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;

    invoke-virtual {v1, p1, v0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->idmAddFlexibleBuffer([BI)V

    :cond_0
    iget-object p1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->flexibleBuffer:Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->idmGetFlexibleBufferLength()I

    move-result p1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->flexibleBuffer:Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->idmGetAppendSavedBufferSize()I

    move-result v0

    if-gt p1, v0, :cond_1

    iget-wide v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->downloadProgressSize:J

    cmp-long p1, v0, p2

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->flexibleBuffer:Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->idmGetFlexibleBufferLength()I

    move-result p1

    if-lez p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->setPinAndAllocateIfDownloadingInDataAndF2FSType()V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->checkDeltaExistence()V

    :try_start_0
    new-instance p1, Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDownloadPath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "rw"

    invoke-direct {p1, p2, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {p2}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getDownloadedSize()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p2, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->flexibleBuffer:Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;

    invoke-virtual {p2}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->idmGetRealWriteBuffer()[B

    move-result-object p2

    iget-object p3, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->flexibleBuffer:Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;

    invoke-virtual {p3}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->idmGetFlexibleBufferLength()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object p2, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    iget-wide v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->downloadProgressSize:J

    invoke-virtual {p2, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->setDownloadedSize(J)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;->flexibleBuffer:Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->idmClearFlexibleBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ENOSPC"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/idm/exception/file/IDMExceptionFileEnospc;

    invoke-direct {p1, p0}, Lcom/idm/exception/file/IDMExceptionFileEnospc;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
