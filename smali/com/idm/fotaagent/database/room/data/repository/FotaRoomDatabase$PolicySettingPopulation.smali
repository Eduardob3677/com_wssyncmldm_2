.class public Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$PolicySettingPopulation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicySettingPopulation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$PolicySettingPopulation$ByMigration;
    }
.end annotation


# static fields
.field private static final POLICY_OTA_VERSION:Ljava/lang/String; = "FOTA_SYSTEM_POLICY_OTA_VERSION"

.field private static final POLICY_TYPE:Ljava/lang/String; = "FOTA_SYSTEM_POLICY_TYPE"

.field private static final POLICY_VALID_TIME:Ljava/lang/String; = "FOTA_SYSTEM_POLICY_VALID_TIME"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$PolicySettingPopulation;->populate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method private static populate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 6

    const-string v0, "Policy"

    :try_start_0
    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "FOTA_SYSTEM_POLICY_TYPE"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    return-void

    :cond_0
    new-instance v3, Lcom/idm/fotaagent/database/room/data/entity/Property;

    const-string v4, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v0, v4, v2}, Lcom/idm/fotaagent/database/room/data/entity/Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {p0, v3}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->insertOrReplace(Landroidx/sqlite/db/SupportSQLiteDatabase;Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;)J

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "FOTA_SYSTEM_POLICY_VALID_TIME"

    const-wide/16 v4, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/idm/fotaagent/database/room/data/entity/Property;

    const-string v5, "expiredTime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v4, v0, v5, v2}, Lcom/idm/fotaagent/database/room/data/entity/Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {p0, v4}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->insertOrReplace(Landroidx/sqlite/db/SupportSQLiteDatabase;Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;)J

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "FOTA_SYSTEM_POLICY_OTA_VERSION"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/idm/fotaagent/database/room/data/entity/Property;

    const-string v3, "otaVersion"

    invoke-direct {v2, v0, v3, v1}, Lcom/idm/fotaagent/database/room/data/entity/Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {p0, v2}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->insertOrReplace(Landroidx/sqlite/db/SupportSQLiteDatabase;Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method
