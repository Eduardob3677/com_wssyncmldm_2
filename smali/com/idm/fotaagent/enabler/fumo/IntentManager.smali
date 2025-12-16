.class public Lcom/idm/fotaagent/enabler/fumo/IntentManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;,
        Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;
    }
.end annotation


# static fields
.field static final PACKAGE_NAME_VZW_DM:Ljava/lang/String; = "com.samsung.sdm"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/IntentManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static sendFotaStatus(Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;

    const-string v1, "com.xdm.intent.UPDATE_RESULT"

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x1000020

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->setFlags(I)Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->status()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->setExtra(Ljava/lang/String;I)Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->sendBroadcast()V

    return-void
.end method

.method public static sendFotaStatus(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDmResultCode()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/IntentManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getUpdateFwVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "401"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "200"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->SUCCESS:Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/IntentManager;->sendFotaStatus(Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readFirmwareVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->ERROR:Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/IntentManager;->sendFotaStatus(Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;)V

    return-void

    :cond_2
    sget-object p0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->LATEST:Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/IntentManager;->sendFotaStatus(Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;)V

    return-void

    :cond_3
    :goto_0
    sget-object p0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->LATEST:Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/IntentManager;->sendFotaStatus(Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;)V

    return-void
.end method

.method public static sendIntentIfSdmPackageExists(Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/IntentManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.sdm"

    invoke-static {v0, v1}, Lcom/idm/fotaagent/utils/GeneralUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "sdm package is not installed. skip to send intent"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;

    const-string v2, "com.samsung.sdm.START_DM_SYNC_SESSION"

    invoke-direct {v0, v2}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->setPackage(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;

    move-result-object v0

    const-string v1, "TYPE"

    invoke-virtual {v0, v1, p0}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->setExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->sendBroadcast()V

    return-void
.end method

.method public static sendIntentToOmc()V
    .locals 2

    const-string v0, "sendIntentToOmc"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;

    const-string v1, "com.samsung.intent.action.OMC_UPDATE"

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->setFlags(I)Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;

    move-result-object v0

    const-string v1, "com.samsung.android.sdm.config"

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->setPackage(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->sendBroadcast()V

    return-void
.end method

.method public static sendMDMUnregister()V
    .locals 2

    const-string v0, "sendMDMUnregister"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;

    const-string v1, "sec.fota.intent.MDM_UNREGISTER"

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x1000020

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->setFlags(I)Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->sendBroadcast()V

    return-void
.end method

.method public static setLastCheckedDateAndSendIntent()V
    .locals 4

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v0, "currentTimeMillis is 0"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/IntentManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/settings/SettingsDatabaseManager;->setLastCheckedData(Landroid/content/Context;J)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;

    const-string v1, "sec.fota.intent.CHECKED_DATE_UPDATED"

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x1000020

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->setFlags(I)Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->sendBroadcast()V

    return-void
.end method
