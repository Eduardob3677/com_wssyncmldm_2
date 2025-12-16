.class Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/syncml/Constants;


# static fields
.field private static DATABASE_NAME:Ljava/lang/String; = "idm.db"

.field private static instance:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;->DATABASE_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private addAndroidVersionColumnToUpdateHistory(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "AndroidVersion"

    const-string v1, " TEXT"

    const-string v2, "UpdateHistory"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;->addColumnToTableIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private addColumnToTableIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "Add column: "

    const-string v1, "ALTER TABLE "

    invoke-direct {p0, p1, p3, p2}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;->doesColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ADD "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return v2
.end method

.method private doesColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string p0, "select "

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "no such"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_3
    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;
    .locals 2

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;->instance:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;->instance:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;->instance:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;->instance:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS profile (_id INTEGER PRIMARY KEY AUTOINCREMENT,serverid TEXT,active INTEGER);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS actioninfo (_id TEXT PRIMARY KEY,inittype INTEGER,serverId TEXT,sessionid TEXT,notiId INTEGER,appId INTEGER,command INTEGER,alertCommandNode TEXT,downloadpath TEXT,downloadDescriptorUrl TEXT,objectUrl TEXT,notifyurl TEXT,downloadReportCode INTEGER,objectsize TEXT,downloadType TEXT,reportUrl TEXT,correlator TEXT,pushuimode INTEGER,deltaindex INTEGER,inituimode INTEGER,description TEXT,isupdatereportingsession INTEGER,dmresultcode TEXT,reusmestate INTEGER,dltotalretrycount INTEGER,dmtotalretrycount INTEGER,dlcurrentretrycount INTEGER,currentdownloadmode INTEGER,notificationdmstartstate INTEGER,sucancel INTEGER,postponedownloadautoinstall INTEGER,installtypeuri TEXT,fumostatus INTEGER);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS scheduleinfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,type INTEGER,data BLOB);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS ddfhash (filename PRIMARY KEY,hashdata TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS execinfo (_id INTEGER PRIMARY KEY,taskid TEXT,serverid TEXT,path TEXT,data TEXT,correlator TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS basicInfo (_id INTEGER PRIMARY KEY,b2btarget TEXT,previousversion TEXT,corpId TEXT,salescode TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS UpdateHistory (rowid INTEGER PRIMARY KEY,Date INTEGER,Version TEXT,Description TEXT,DescriptionType TEXT,SummaryDescription TEXT,OneUiVersion TEXT,OneUiType TEXT,AndroidVersion TEXT,ResultCode TEXT,PostUrl TEXT,DeltaSize INTEGER,SecurityPatchLevel TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "oldVersion : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newVersion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const-string p0, "db should not be null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    if-lt p3, v0, :cond_1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;->deleteEmptyUpdateHistoryInfo()I

    :cond_1
    const/16 v0, 0xb

    if-ge p2, v0, :cond_2

    if-lt p3, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseHelper;->addAndroidVersionColumnToUpdateHistory(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    return-void
.end method
