.class public Lcom/idm/fotaagent/database/sqlite/database/settings/SettingsDatabaseManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DB_VALUE_AUTO_DOWNLOAD_NOT_SET:I = -0x1

.field public static final DB_VALUE_AUTO_DOWNLOAD_OFF:I = 0x0

.field public static final DB_VALUE_AUTO_DOWNLOAD_WIFI:I = 0x1

.field public static final DB_VALUE_AUTO_DOWNLOAD_WIFI_AND_CELLULAR:I = 0x2

.field private static final KEY_AUTO_DOWNLOAD:Ljava/lang/String; = "SOFTWARE_UPDATE_WIFI_ONLY2"

.field private static final KEY_BADGE_COUNT:Ljava/lang/String; = "badge_for_fota"

.field private static final KEY_FIRST_NET_INSTALL:Ljava/lang/String; = "attfota_forceinstall_FN_sim"

.field private static final KEY_FOTA_SMLDM_BEARER:Ljava/lang/String; = "SMLDM_BEARER"

.field private static final KEY_LAST_CHECKED_DATE:Ljava/lang/String; = "SOFTWARE_UPDATE_LAST_CHECKED_DATE"

.field private static final VALUE_FIRSTNET_STATE_OFF:I = 0x0

.field private static final VALUE_FIRSTNET_STATE_ON:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableFirstNetInstall(Landroid/content/Context;)V
    .locals 1

    const-string v0, "disableFirstNetInstall"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/settings/SettingsDatabaseManager;->setFirstNetInstall(Landroid/content/Context;I)V

    return-void
.end method

.method public static enableFirstNetInstall(Landroid/content/Context;)V
    .locals 1

    const-string v0, "enableFirstNetInstall"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/settings/SettingsDatabaseManager;->setFirstNetInstall(Landroid/content/Context;I)V

    return-void
.end method

.method public static getAutoDownload(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "SOFTWARE_UPDATE_WIFI_ONLY2"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const-string p0, "get auto download : "

    invoke-static {p0, v0}, LB/f;->D(Ljava/lang/String;I)V

    return v0
.end method

.method public static getAutoDownloadOption(Landroid/content/Context;)Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->get()Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->needsToRemoveAutoDownloadMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->getOption()Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removed auto download, regard as "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/settings/SettingsDatabaseManager;->getAutoDownload(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->of(I)Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->NOT_SET:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->getOption()Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "set default auto download : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->getDbValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/settings/SettingsDatabaseManager;->setAutoDownload(Landroid/content/Context;I)Z

    :cond_1
    return-object v1
.end method

.method public static getFotaBearerStatus(Landroid/content/Context;)I
    .locals 3

    const-string v0, "get fota bearer status : "

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "SMLDM_BEARER"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return v1
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "device_provisioned"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    move p0, v0

    :goto_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static setAutoDownload(Landroid/content/Context;I)Z
    .locals 2

    const-string v0, "set auto download : "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "SOFTWARE_UPDATE_WIFI_ONLY2"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static setBadgeCount(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "set badge count : "

    invoke-static {v0, p1}, LB/f;->D(Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "badge_for_fota"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static setFirstNetInstall(Landroid/content/Context;I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "attfota_forceinstall_FN_sim"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static setLastCheckedData(Landroid/content/Context;J)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "SOFTWARE_UPDATE_LAST_CHECKED_DATE"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
