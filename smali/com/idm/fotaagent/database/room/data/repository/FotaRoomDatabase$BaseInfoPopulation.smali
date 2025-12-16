.class public Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$BaseInfoPopulation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseInfoPopulation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$BaseInfoPopulation$ByMigration;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$BaseInfoPopulation;->populate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method private static populate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    const-string v1, "previousversion"

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getBasicInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "no data for migration"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/idm/fotaagent/database/room/data/entity/Property;

    const-string v2, "General"

    const-string v3, "previousFirmwareVersion"

    invoke-direct {v1, v2, v3, v0}, Lcom/idm/fotaagent/database/room/data/entity/Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {p0, v1}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->insertOrReplace(Landroidx/sqlite/db/SupportSQLiteDatabase;Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
