.class public Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/Localtest;
.super Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Localtest;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Localtest;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private createAndSaveDmExecInfo(Lcom/idm/service/actioninfo/IDMActionInfo;)V
    .locals 1

    new-instance p0, Lcom/idm/agent/dm/IDMDmExecInfo;

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmExecInfo;-><init>()V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmSetServerId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmSetTaskId(Ljava/lang/String;)V

    const-string p1, "./FUMO/DownloadAndUpdate"

    invoke-virtual {p0, p1}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmSetPath(Ljava/lang/String;)V

    sget-object p1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->Mandatory:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmSetData(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->insertExecInfo(Lcom/idm/agent/dm/IDMDmExecInfo;)V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 3

    const-string v0, "file://"

    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "wrong file name"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->showToast(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/exception/LocalTestDoNothingException;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/exception/LocalTestDoNothingException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public createDatabase()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Localtest;->createDatabase()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/Localtest;->createAndSaveDmExecInfo(Lcom/idm/service/actioninfo/IDMActionInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/exception/LocalTestResetRequiredException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    :goto_0
    const-string v1, "Failed to save DB"

    invoke-direct {v0, v1, p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/exception/LocalTestResetRequiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public executeLocalTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/idm/fotaagent/utils/storage/StorageType;->DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v2}, Lcom/idm/fotaagent/utils/storage/StorageType;->pathForDeltaFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setObjectUrl(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/executor/ABCopyAndUpdateTrigger;

    iget-object v4, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/idm/fotaagent/utils/storage/StorageType;->pathForDeltaFile()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v3, v0

    move-object v5, p2

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/executor/ABCopyAndUpdateTrigger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->start()V

    return-void
.end method

.method public prepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    const-string v0, "file://"

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;->parseAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    new-instance v13, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    move-object v14, p0

    iget-object v2, v14, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    invoke-direct {v13, v2}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    const-string v2, "FILE_HASH"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v2, "FILE_SIZE"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v2, "METADATA_HASH"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    const-string v2, "METADATA_SIZE"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v2, "METADATA_FILE_SIZE"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v2, "OFFSET"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-object v2, v13

    invoke-virtual/range {v2 .. v12}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->saveInstallParamForABUpdate(Ljava/lang/String;JLjava/lang/String;JJJ)V

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setObjectSize(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setObjectUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setUiMode(I)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->savePreviousFirmwareVersion()V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    new-instance v0, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-direct {v0}, Lcom/idm/fotaagent/utils/storage/FileManager;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/storage/FileManager;->deleteDeltaAndMetadataFiles()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/exception/LocalTestResetRequiredException;

    const-string v2, "failed to parse attributes"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/exception/LocalTestResetRequiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
