.class public Lcom/idm/fotaagent/receiver/dynamic/TemperatureChangeReceiver;
.super Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;
.source "SourceFile"


# static fields
.field private static final ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.CHECK_SIOP_LEVEL"

.field private static final EXTRA_SIOP_LEVEL:Ljava/lang/String; = "siop_level_broadcast"

.field private static final PAUSE_STANDARD_LEVEL:I = 0x3

.field private static final RESUME_STANDARD_LEVEL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;-><init>()V

    return-void
.end method

.method private getFumoStatus()I
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/dynamic/TemperatureChangeReceiver;->getTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result p0

    return p0
.end method

.method private getTaskId()Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSessionId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.intent.action.CHECK_SIOP_LEVEL"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public handle()V
    .locals 5

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "siop_level_broadcast"

    const/16 v2, -0x63

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "siopLevel : "

    invoke-static {v1, v0}, LB/f;->D(Ljava/lang/String;I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1e

    const/16 v4, 0xf2

    if-gt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/dynamic/TemperatureChangeReceiver;->getFumoStatus()I

    move-result v0

    if-eq v0, v4, :cond_0

    const-string p0, "shouldn\'t execute if not DOWNLOAD_PAUSE"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "resume by temperature changed"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/dynamic/TemperatureChangeReceiver;->getTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    const-string p0, "0215"

    invoke-static {p0}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/dynamic/TemperatureChangeReceiver;->getFumoStatus()I

    move-result v0

    if-eq v0, v3, :cond_2

    const-string p0, "shouldn\'t execute if not DOWNLOAD_IN_PROGRESS"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string v0, "pause by temperature changed"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/dynamic/TemperatureChangeReceiver;->getTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    const-string p0, "0214"

    invoke-static {p0}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
