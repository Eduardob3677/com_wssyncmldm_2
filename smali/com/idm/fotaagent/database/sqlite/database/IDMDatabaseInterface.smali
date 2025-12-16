.class public interface abstract Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "idm.db"

.field public static final DATABASE_VERSION:I = 0xc

.field public static final IDM_ACC:Ljava/lang/String; = "./DMAcc/"

.field public static final IDM_ADDR:Ljava/lang/String; = "/AppAddr/"

.field public static final IDM_AUTH:Ljava/lang/String; = "/AppAuth/"

.field public static final IDM_CONREF:Ljava/lang/String; = "/ToConRef/"

.field public static final IDM_DB_BASEINFO_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS basicInfo (_id INTEGER PRIMARY KEY,b2btarget TEXT,previousversion TEXT,corpId TEXT,salescode TEXT);"

.field public static final IDM_DB_DDFHASH:Ljava/lang/String; = "ddfhash"

.field public static final IDM_DB_DDFHASH_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS ddfhash (filename PRIMARY KEY,hashdata TEXT);"

.field public static final IDM_DB_DDFHASH_DATA:Ljava/lang/String; = "hashdata"

.field public static final IDM_DB_DDFHASH_NAME:Ljava/lang/String; = "filename"

.field public static final IDM_DB_ENABLER_BASIC_B2BTARGET:Ljava/lang/String; = "b2btarget"

.field public static final IDM_DB_ENABLER_BASIC_CORPID:Ljava/lang/String; = "corpId"

.field public static final IDM_DB_ENABLER_BASIC_ID:Ljava/lang/String; = "_id"

.field public static final IDM_DB_ENABLER_BASIC_INFO:Ljava/lang/String; = "basicInfo"

.field public static final IDM_DB_ENABLER_BASIC_INFO_COLUMNS:[Ljava/lang/String;

.field public static final IDM_DB_ENABLER_BASIC_PREVIOUS_FIRMWAREVERSION:Ljava/lang/String; = "previousversion"

.field public static final IDM_DB_ENABLER_BASIC_SALESCODE:Ljava/lang/String; = "salescode"

.field public static final IDM_DB_EXECINFO:Ljava/lang/String; = "execinfo"

.field public static final IDM_DB_EXECINFO_COLUMNS:[Ljava/lang/String;

.field public static final IDM_DB_EXECINFO_CORRELATOR:Ljava/lang/String; = "correlator"

.field public static final IDM_DB_EXECINFO_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS execinfo (_id INTEGER PRIMARY KEY,taskid TEXT,serverid TEXT,path TEXT,data TEXT,correlator TEXT);"

.field public static final IDM_DB_EXECINFO_DATA:Ljava/lang/String; = "data"

.field public static final IDM_DB_EXECINFO_ID:Ljava/lang/String; = "_id"

.field public static final IDM_DB_EXECINFO_PATH:Ljava/lang/String; = "path"

.field public static final IDM_DB_EXECINFO_SERVERID:Ljava/lang/String; = "serverid"

.field public static final IDM_DB_EXECINFO_TASKID:Ljava/lang/String; = "taskid"

.field public static final IDM_DB_NOTIINFO:Ljava/lang/String; = "notiinfo"

.field public static final IDM_DB_NOTIINFO_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS notiinfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,serverid TEXT,sessionid TEXT,uimode INTEGER,initiator INTEGER,future INTEGER,status INTEGER,regdate INTEGER);"

.field public static final IDM_DB_NOTIINFO_FUTURE:Ljava/lang/String; = "future"

.field public static final IDM_DB_NOTIINFO_ID:Ljava/lang/String; = "_id"

.field public static final IDM_DB_NOTIINFO_INITIATOR:Ljava/lang/String; = "initiator"

.field public static final IDM_DB_NOTIINFO_REGDATE:Ljava/lang/String; = "regdate"

.field public static final IDM_DB_NOTIINFO_SERVERID:Ljava/lang/String; = "serverid"

.field public static final IDM_DB_NOTIINFO_SESSIONID:Ljava/lang/String; = "sessionid"

.field public static final IDM_DB_NOTIINFO_STATUS:Ljava/lang/String; = "status"

.field public static final IDM_DB_NOTIINFO_UIMODE:Ljava/lang/String; = "uimode"

.field public static final IDM_DB_PROFILE:Ljava/lang/String; = "profile"

.field public static final IDM_DB_PROFILE_ACTIVE:Ljava/lang/String; = "active"

.field public static final IDM_DB_PROFILE_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS profile (_id INTEGER PRIMARY KEY AUTOINCREMENT,serverid TEXT,active INTEGER);"

.field public static final IDM_DB_PROFILE_ID:Ljava/lang/String; = "_id"

.field public static final IDM_DB_PROFILE_SERVERID:Ljava/lang/String; = "serverid"

.field public static final IDM_DB_SQL_DROP:Ljava/lang/String; = "DROP TABLE IF EXISTS "

.field public static final IDM_FUMO:Ljava/lang/String; = "./FUMO/"

.field public static final IDM_MO_NODE:Ljava/lang/String; = "content://com.idm.providers.dm/mo/"

.field public static final IDM_SFOTA_SERVERID:Ljava/lang/String; = "x6g1q14r75"

.field public static final IDM_SQL_ADD:Ljava/lang/String; = " ADD "

.field public static final IDM_SQL_ALTER_TABLE:Ljava/lang/String; = "ALTER TABLE "

.field public static final IDM_SQL_FROM:Ljava/lang/String; = " from "

.field public static final IDM_SQL_SELECT:Ljava/lang/String; = "select "

.field public static final IDM_SQL_TYPE_INT:Ljava/lang/String; = " INTEGER"

.field public static final IDM_SQL_TYPE_TEXT:Ljava/lang/String; = " TEXT"

.field public static final SDK_DATABBASE_NAME:Ljava/lang/String; = "idmsdk.db"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "data"

    const-string v5, "correlator"

    const-string v0, "_id"

    const-string v1, "serverid"

    const-string v2, "taskid"

    const-string v3, "path"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseInterface;->IDM_DB_EXECINFO_COLUMNS:[Ljava/lang/String;

    const-string v0, "salescode"

    const-string v1, "previousversion"

    const-string v2, "_id"

    const-string v3, "corpId"

    const-string v4, "b2btarget"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseInterface;->IDM_DB_ENABLER_BASIC_INFO_COLUMNS:[Ljava/lang/String;

    return-void
.end method
