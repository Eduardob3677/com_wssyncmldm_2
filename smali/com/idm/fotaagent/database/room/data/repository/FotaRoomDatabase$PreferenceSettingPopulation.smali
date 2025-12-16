.class public Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$PreferenceSettingPopulation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceSettingPopulation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$PreferenceSettingPopulation$ByMigration;
    }
.end annotation


# static fields
.field private static final DEVICE_REGISTRATION:Ljava/lang/String; = "FOTA_CLIENT_REGISTRATION"

.field private static final FCM_REGISTRATION:Ljava/lang/String; = "Push.Registration.FCM"

.field private static final POLLING_FILE_NAME:Ljava/lang/String; = "Polling.File.Name"

.field private static final POLLING_TIME:Ljava/lang/String; = "FOTA_CLIENT_POLLING_TIME"

.field private static final SPP_REGISTRATION:Ljava/lang/String; = "Push.Registration.SPP"

.field private static final TERMS_AGREE:I = 0x1

.field private static final TERMS_NONE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$PreferenceSettingPopulation;->populate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method private static populate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 10

    const-string v0, "Polling"

    const-string v1, "DEVICE_PREFERENCE"

    :try_start_0
    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "FOTA_CLIENT_REGISTRATION"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "Device is not registered. Do Nothing"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    const-string v4, "DeviceRegistration"

    const-string v6, "state"

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    :try_start_1
    new-instance v3, Lcom/idm/fotaagent/database/room/data/entity/Property;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v3, v4, v6, v8}, Lcom/idm/fotaagent/database/room/data/entity/Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {p0, v3}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->insertOrReplace(Landroidx/sqlite/db/SupportSQLiteDatabase;Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;)J

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/idm/fotaagent/database/room/data/entity/Property;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v3, v4, v6, v8}, Lcom/idm/fotaagent/database/room/data/entity/Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {p0, v3}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->insertOrReplace(Landroidx/sqlite/db/SupportSQLiteDatabase;Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;)J

    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "FOTA_CLIENT_POLLING_TIME"

    const-wide/16 v8, 0x0

    invoke-static {v3, v4, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    new-instance v8, Lcom/idm/fotaagent/database/room/data/entity/Property;

    const-string v9, "nextTime"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v8, v0, v9, v3}, Lcom/idm/fotaagent/database/room/data/entity/Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {p0, v8}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->insertOrReplace(Landroidx/sqlite/db/SupportSQLiteDatabase;Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;)J

    invoke-virtual {v2, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "Polling.File.Name"

    const-string v8, ""

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/idm/fotaagent/database/room/data/entity/Property;

    const-string v8, "fileName"

    invoke-direct {v4, v0, v8, v3}, Lcom/idm/fotaagent/database/room/data/entity/Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {p0, v4}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->insertOrReplace(Landroidx/sqlite/db/SupportSQLiteDatabase;Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;)J

    invoke-virtual {v2, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "Push.Registration.FCM"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "Push.Registration.SPP"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v5, v7

    :cond_3
    new-instance v0, Lcom/idm/fotaagent/database/room/data/entity/Property;

    const-string v1, "PushRegistration"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/idm/fotaagent/database/room/data/entity/Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {p0, v0}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->insertOrReplace(Landroidx/sqlite/db/SupportSQLiteDatabase;Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
