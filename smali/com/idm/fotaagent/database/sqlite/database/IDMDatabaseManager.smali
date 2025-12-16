.class public Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/syncml/Constants;
.implements Lcom/idm/providers/mo/IDMMoDatabaseConstants;


# static fields
.field private static final INSTANCE:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;


# instance fields
.field private databaseHelper:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private final dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->INSTANCE:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->openEnablerDB()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    return-void
.end method

.method private deleteEnablerEntities(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->deleteEntity(Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->deleteExecInfo(Ljava/lang/String;)V

    return-void
.end method

.method private deleteExecInfo(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "execinfo"

    const-string v1, "taskid = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private deleteTable(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DROP TABLE IF EXISTS "

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private doesTableExist(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT name FROM sqlite_master WHERE type = \'table\' AND name = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->INSTANCE:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    return-object v0
.end method

.method private isEnablerDBTableCorrupt()Z
    .locals 7

    const-string v5, "scheduleinfo"

    const-string v6, "UpdateHistory"

    const-string v0, "actioninfo"

    const-string v1, "basicInfo"

    const-string v2, "ddfhash"

    const-string v3, "execinfo"

    const-string v4, "profile"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    :try_start_0
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->doesTableExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "table corrupted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v1

    :goto_2
    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private isMoDBTableCorrupt()Z
    .locals 5

    const-string v0, "xfumo"

    const-string v1, "xnode"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v4, v3}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoIsExistDbTable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "table corrupted : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public activateSFotaServer()V
    .locals 5

    const-string v0, "result : "

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "active"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "profile"

    const-string v3, "serverid = ?"

    const-string v4, "x6g1q14r75"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long v1, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized closeEnablerDB()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->databaseHelper:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->databaseHelper:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public deleteEnablerEntitiesAndResetFumoExtMo()V
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getAllTaskIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "taskId should not be null"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;

    new-instance v3, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v3, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->reset()V

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->deleteEnablerEntities(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->clear()V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->deleteAll()I

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->deleteAll()I

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->deleteAll()I

    invoke-static {p0}, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->deleteAll()V

    return-void
.end method

.method public deleteExecInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "execinfo"

    const-string v1, "taskid = ? AND path = ?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public doesSFotaServerInfoExist()Z
    .locals 11

    const-string v0, "serverid"

    const-string v1, "active"

    const-string v2, "_id"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "profile"

    const-string v6, "serverid = ?"

    const-string p0, "x6g1q14r75"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return v0
.end method

.method public getAllDDFHashInfos()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "filename"

    const-string v2, "hashdata"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    :try_start_0
    iget-object v3, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ddfhash"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;

    invoke-direct {v3}, Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;-><init>()V

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;->idmSetDDFFileName(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;->idmSetDDFHashData(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;->idmGetDDFFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    if-eqz p0, :cond_1

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_4
    return-object v0
.end method

.method public getBasicInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "basicInfo"

    const-string v3, "_id = ?"

    const-string p0, "1"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_0
    if-eqz p0, :cond_1

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_3
    const-string p0, ""

    return-object p0
.end method

.method public getExecInfo(Ljava/lang/String;)Lcom/idm/agent/dm/IDMDmExecInfo;
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "execinfo"

    sget-object v3, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseInterface;->IDM_DB_EXECINFO_COLUMNS:[Ljava/lang/String;

    const-string v4, "taskid = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/idm/agent/dm/IDMDmExecInfo;

    invoke-direct {p1}, Lcom/idm/agent/dm/IDMDmExecInfo;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "serverid"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmSetServerId(Ljava/lang/String;)V

    const-string v0, "taskid"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmSetTaskId(Ljava/lang/String;)V

    const-string v0, "path"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmSetPath(Ljava/lang/String;)V

    const-string v0, "data"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmSetData(Ljava/lang/String;)V

    const-string v0, "correlator"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmSetCorrelator(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    if-eqz p0, :cond_1

    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, p1

    goto :goto_3

    :cond_1
    :goto_2
    throw v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_4
    return-object v0
.end method

.method public getProfile(Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;)Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;
    .locals 8

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;-><init>()V

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "/AAuthName"

    invoke-virtual {v1, v3, v4, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetServerId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object v2

    const-string v5, "/AAuthType"

    invoke-virtual {v1, v3, v5, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetServerAuthtype(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object v2

    const-string v6, "/AAuthSecret"

    invoke-virtual {v1, v3, v6, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetServerPwd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object v2

    const-string v7, "/AAuthData"

    invoke-virtual {v1, v3, v7, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetServerNonce(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v4, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetClientId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v5, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetClientAuthtype(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v6, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetClientPwd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v7, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetClientNonce(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccServerUriInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetServerUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetDBAdapter()Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetXnodeInfo(Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoXnodeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxDMAcc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Name"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetNodeInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetActive()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetActive(I)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound;

    const-string p1, "xnode is null. DMACC PATH NAME is not set in profile"

    invoke-direct {p0, p1}, Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getReleaseProfile()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getReleaseServerInfo()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getProfile(Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;)Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound;

    const-string v0, "serverInfo should not be null"

    invoke-direct {p0, v0}, Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getReleaseServerInfo()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;
    .locals 11

    const-string v0, "serverid"

    const-string v1, "active"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "profile"

    const-string v5, "active = ?"

    const-string p0, "1"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;

    invoke-direct {v2}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmSetServer(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmSetActive(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v10, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    if-eqz p0, :cond_1

    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_4
    return-object v10
.end method

.method public getServerInfos()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "serverid"

    const-string v2, "active"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    :try_start_0
    iget-object v3, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "profile"

    const-string v10, "_id asc"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;

    invoke-direct {v3}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;-><init>()V

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmSetServer(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmSetActive(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    if-eqz p0, :cond_1

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_4
    return-object v0
.end method

.method public idmChangeServerIdProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update \'profile\' set serverid = replace(serverid,\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method public insertDDFHashInfo(Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;->idmGetDDFFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filename"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hashdata"

    invoke-virtual {p1}, Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;->idmGetDDFHashData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string p1, "ddfhash"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public insertExecInfo(Lcom/idm/agent/dm/IDMDmExecInfo;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serverid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "taskid"

    invoke-virtual {p1}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmGetTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path"

    invoke-virtual {p1}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmGetPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {p1}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmGetData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "correlator"

    invoke-virtual {p1}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmGetCorrelator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string p1, "execinfo"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public isDBTableCorrupt()Z
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->isEnablerDBTableCorrupt()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->isMoDBTableCorrupt()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public declared-synchronized openEnablerDB()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->databaseHelper:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->databaseHelper:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public replaceServerInfo(Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "serverid"

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetActive()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "active"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string p1, "profile"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public resetEnablerDB()V
    .locals 4

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->deleteTable()V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->deleteTable()V

    const-string v0, "ddfhash"

    const-string v1, "execinfo"

    const-string v2, "profile"

    const-string v3, "basicInfo"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->deleteTable(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->databaseHelper:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public resetManagedObjectDB()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoDatabaseBeginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getServerInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;

    iget-object v2, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoDatabaseDeleteTable(Ljava/lang/String;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    const-string v1, "xnode"

    invoke-virtual {v0, v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoDatabaseDeleteTable(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    const-string v1, "xfumo"

    invoke-virtual {v0, v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoDatabaseDeleteTable(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmXnodeDatabaseCreate()V

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoDatabaseSetTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoDatabaseEndTransaction()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->dbManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoDatabaseEndTransaction()V

    throw v0
.end method

.method public updateActiveServer(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UPDATE profile SET active = CASE WHEN serverid = \'"

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'THEN 1 ELSE 0 END;"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
