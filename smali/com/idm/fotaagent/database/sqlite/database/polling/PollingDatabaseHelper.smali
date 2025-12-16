.class Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static instance:Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "fota.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseHelper;
    .locals 2

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseHelper;->instance:Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseHelper;->instance:Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseHelper;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseHelper;->instance:Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    :try_start_0
    const-string p0, "CREATE TABLE IF NOT EXISTS polling(_id INTEGER PRIMARY KEY,url TEXT,periodUnit TEXT,period TEXT,time TEXT,range TEXT)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "onUpgrade - Not implemented yet:"

    invoke-static {p3, p1}, LB/f;->t(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
