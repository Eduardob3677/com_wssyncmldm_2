.class public Lcom/idm/fotaagent/receiver/SecureBroadcastReceiver;
.super Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;
.source "SourceFile"


# static fields
.field static final ACTION_FIRSTNET_FORCE_UPDATE:Ljava/lang/String; = "com.samsung.intent.action.FIRSTNET_FORCE_UPDATE"

.field static final ACTION_MDM_REGISTER:Ljava/lang/String; = "sec.fota.intent.MDM_REGISTER"

.field static final ACTION_MDM_SUCANCEL:Ljava/lang/String; = "sec.fota.intent.MDM_SU_CANCEL"

.field public static final ACTION_PULL:Ljava/lang/String; = "sec.fota.action.SOFTWARE_UPDATE"

.field static final ACTION_SETUPWIZARD_COMPLETED:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/receiver/SecureBroadcastReceiver;->lambda$isCorpIdChanged$1(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/receiver/SecureBroadcastReceiver;->lambda$isCorpIdChanged$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private getTaskId()Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSessionId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isCorpIdChanged$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isCorpIdChanged$1(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public handle()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Receive broadcast message:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "sec.fota.intent.MDM_SU_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "com.samsung.intent.action.FIRSTNET_FORCE_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "sec.fota.action.SOFTWARE_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "sec.fota.intent.MDM_REGISTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_0

    :sswitch_4
    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    const-string p0, "unexpected action"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->getInstance()Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->cancelByMdm()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/database/sqlite/database/settings/SettingsDatabaseManager;->disableFirstNetInstall(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->get(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    move-result-object v0

    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/SecureBroadcastReceiver;->getTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->rebootOrInstall(Ljava/lang/String;)V

    return-void

    :pswitch_2
    invoke-static {}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->getInstance()Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->initiateByUser()Z

    return-void

    :pswitch_3
    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->enableSendResultForMDM()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/receiver/SecureBroadcastReceiver;->isCorpIdChanged()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->get()Lcom/idm/fotaagent/InitExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/InitExecutor;->reset()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->MDM:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    invoke-static {p0, v0}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->startDeviceRegistration(Landroid/content/Context;Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;)V

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager;->sendRegistrationResultIfNeeded(I)V

    :goto_1
    return-void

    :pswitch_4
    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->SETUP_WIZARD:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    invoke-static {p0, v0}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->scheduleDeviceRegistrationIfNeeded(Landroid/content/Context;Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6311576f -> :sswitch_4
        -0x400d7cbd -> :sswitch_3
        -0x3fbf2d7c -> :sswitch_2
        0x26e25e48 -> :sswitch_1
        0x3b0d3257 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isCorpIdChanged()Z
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;->getCorpId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->getCorpId()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LF2/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, LF2/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/idm/fotaagent/receiver/b;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/idm/fotaagent/receiver/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current CorpId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Registered CorpId: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    const-string p0, "Current CorpId is different from registered one; reset and re-register device"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :cond_0
    return v1
.end method
