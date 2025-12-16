.class public Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;
.super Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/idm/fotaagent/database/sqlite/database/dao/Dao<",
        "Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final IDM_DB_UPDATEHISTORY_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS UpdateHistory (rowid INTEGER PRIMARY KEY,Date INTEGER,Version TEXT,Description TEXT,DescriptionType TEXT,SummaryDescription TEXT,OneUiVersion TEXT,OneUiType TEXT,AndroidVersion TEXT,ResultCode TEXT,PostUrl TEXT,DeltaSize INTEGER,SecurityPatchLevel TEXT);"

.field public static final IDM_DB_UPDATEHISTORY_INFO:Ljava/lang/String; = "UpdateHistory"

.field public static final IDM_DB_UPDATE_HISTORY_ANDROID_VERSION:Ljava/lang/String; = "AndroidVersion"

.field public static final IDM_DB_UPDATE_HISTORY_DATE:Ljava/lang/String; = "Date"

.field public static final IDM_DB_UPDATE_HISTORY_DELTASIZE:Ljava/lang/String; = "DeltaSize"

.field public static final IDM_DB_UPDATE_HISTORY_DESCRIPTION:Ljava/lang/String; = "Description"

.field public static final IDM_DB_UPDATE_HISTORY_DESCRIPTION_TYPE:Ljava/lang/String; = "DescriptionType"

.field public static final IDM_DB_UPDATE_HISTORY_ID:Ljava/lang/String; = "rowid"

.field public static final IDM_DB_UPDATE_HISTORY_ONE_UI_TYPE:Ljava/lang/String; = "OneUiType"

.field public static final IDM_DB_UPDATE_HISTORY_ONE_UI_VERSION:Ljava/lang/String; = "OneUiVersion"

.field private static final IDM_DB_UPDATE_HISTORY_POSTURL:Ljava/lang/String; = "PostUrl"

.field public static final IDM_DB_UPDATE_HISTORY_RESULTCODE:Ljava/lang/String; = "ResultCode"

.field public static final IDM_DB_UPDATE_HISTORY_SECURITYPATCHLEVEL:Ljava/lang/String; = "SecurityPatchLevel"

.field public static final IDM_DB_UPDATE_HISTORY_SUMMARY_DESCRIPTION:Ljava/lang/String; = "SummaryDescription"

.field public static final IDM_DB_UPDATE_HISTORY_VERSION:Ljava/lang/String; = "Version"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public createContValuesFrom(Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;)Landroid/content/ContentValues;
    .locals 2

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->date()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Date"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "Version"

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Description"

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DescriptionType"

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->descriptionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SummaryDescription"

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->summaryDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OneUiVersion"

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->oneUiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OneUiType"

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->oneUiType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AndroidVersion"

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->androidVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ResultCode"

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->resultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->deltaSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "DeltaSize"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "SecurityPatchLevel"

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->securityPatchLevel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic createContValuesFrom(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    check-cast p1, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;->createContValuesFrom(Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public createEntityFrom(Landroid/database/Cursor;)Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;
    .locals 2

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;-><init>()V

    const-string v0, "Date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setDate(J)V

    const-string v0, "Version"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setVersion(Ljava/lang/String;)V

    const-string v0, "Description"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setDescription(Ljava/lang/String;)V

    const-string v0, "DescriptionType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setDescriptionType(Ljava/lang/String;)V

    const-string v0, "SummaryDescription"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setSummaryDescription(Ljava/lang/String;)V

    const-string v0, "OneUiVersion"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setOneUiVersion(Ljava/lang/String;)V

    const-string v0, "OneUiType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setOneUiType(Ljava/lang/String;)V

    const-string v0, "AndroidVersion"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setAndroidVersion(Ljava/lang/String;)V

    const-string v0, "ResultCode"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setResultCode(Ljava/lang/String;)V

    const-string v0, "DeltaSize"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setDeltaSize(J)V

    const-string v0, "SecurityPatchLevel"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setSecurityPatchLevel(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic createEntityFrom(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;->createEntityFrom(Landroid/database/Cursor;)Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    move-result-object p0

    return-object p0
.end method

.method public deleteEmptyUpdateHistoryInfo()I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "UpdateHistory"

    const-string v1, "Date=?"

    const-string v2, "0"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method public getColumnNameForId()Ljava/lang/String;
    .locals 0

    const-string p0, "rowid"

    return-object p0
.end method

.method public getLastSuccessUpdateHistoryInfo()Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;->getLastSuccessUpdateHistoryInfos(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    :goto_0
    return-object p0
.end method

.method public getLastSuccessUpdateHistoryInfos(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    const-string v2, "com.wssyncmldm:all_columns"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;-><init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "ResultCode=?"

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->where(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    move-result-object v1

    const-string v2, "200"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->whereArgs([Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    move-result-object v1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getOrderBy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->orderBy(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->limit(I)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->execute()Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;->createEntityFrom(Landroid/database/Cursor;)Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    if-eqz p1, :cond_1

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_4
    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 0

    const-string p0, "UpdateHistory"

    return-object p0
.end method
