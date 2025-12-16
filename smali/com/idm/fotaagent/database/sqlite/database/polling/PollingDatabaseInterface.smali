.class public interface abstract Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final COLUMN_PERIOD:Ljava/lang/String; = "period"

.field public static final COLUMN_PERIOD_UNIT:Ljava/lang/String; = "periodUnit"

.field public static final COLUMN_RANGE:Ljava/lang/String; = "range"

.field public static final COLUMN_TIME:Ljava/lang/String; = "time"

.field public static final COLUMN_URL:Ljava/lang/String; = "url"

.field public static final CREATE_POLLING_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS polling(_id INTEGER PRIMARY KEY,url TEXT,periodUnit TEXT,period TEXT,time TEXT,range TEXT)"

.field public static final DATABASE_NAME:Ljava/lang/String; = "fota.db"

.field public static final DATABASE_TABLE_POLLING:Ljava/lang/String; = "polling"

.field public static final DATABASE_VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "time"

    const-string v1, "range"

    const-string v2, "url"

    const-string v3, "periodUnit"

    const-string v4, "period"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseInterface;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
