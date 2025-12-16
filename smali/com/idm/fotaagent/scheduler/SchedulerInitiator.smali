.class public final enum Lcom/idm/fotaagent/scheduler/SchedulerInitiator;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/scheduler/SchedulerInitiator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

.field private static final EXTRA_UPDATE_START_VZW:Ljava/lang/String; = "SOFTWARE_UPDATE_START"

.field public static final enum INSTANCE:Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

.field private static final MIN_USER_INIT_INTERVAL_IN_MILLIS:J = 0x3e8L


# instance fields
.field private lastUserInitTime:J


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/scheduler/SchedulerInitiator;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->INSTANCE:Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    filled-new-array {v0}, [Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->INSTANCE:Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    invoke-static {}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->$values()[Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->$VALUES:[Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e9

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->lastUserInitTime:J

    return-void
.end method

.method public static getInstance()Lcom/idm/fotaagent/scheduler/SchedulerInitiator;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->INSTANCE:Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    return-object v0
.end method

.method private initiate(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->initiate(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;[B)V

    return-void
.end method

.method private initiate(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;[B)V
    .locals 2

    sget-object p0, Lcom/idm/fotaagent/scheduler/SchedulerInitiator$1;->$SwitchMap$com$idm$fotaagent$scheduler$interfaces$IDMSchedulerInterface$IDM_SCHEDULE_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "unexpected scheduleType: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x1

    :goto_0
    new-instance v0, Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-direct {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetInitType(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetAppId(I)V

    new-instance p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmSetSchedulerInitType(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmSetActionInfo(Lcom/idm/service/actioninfo/IDMActionInfo;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->setData([B)V

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->getInstance()Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;

    move-result-object p1

    sget-object p2, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_SCHEDULE_START:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, p0, v0, v1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->idmSendMessage(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;Ljava/lang/Object;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/scheduler/SchedulerInitiator;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/scheduler/SchedulerInitiator;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->$VALUES:[Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    return-object v0
.end method


# virtual methods
.method public cancelByMdm()V
    .locals 1

    const-string v0, "SU CANCEL BY MDM"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_SU_CANCEL_BY_MDM:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->initiate(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;)V

    return-void
.end method

.method public cancelGeneric()V
    .locals 1

    const-string v0, "SU CANCEL GENERIC"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_SU_CANCEL_GENERIC:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->initiate(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;)V

    return-void
.end method

.method public cancelOrReset()V
    .locals 1

    const-string v0, "SU CANCEL OR RESET"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_SU_CANCEL_OR_RESET:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->initiate(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;)V

    return-void
.end method

.method public initiateByDevice()V
    .locals 3

    const-string v0, "DEVICE INIT"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->DEVICE_INIT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->startDeviceRegistrationIfUnregistered(Landroid/content/Context;Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;Z)V

    sget-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_DEVICEINIT:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->initiate(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;)V

    return-void
.end method

.method public initiateByServer([B)V
    .locals 3

    const-string v0, "SERVER INIT"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->SERVER_INIT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->startDeviceRegistrationIfUnregistered(Landroid/content/Context;Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;Z)V

    sget-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_SERVERINIT:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    invoke-direct {p0, v0, p1}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->initiate(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;[B)V

    return-void
.end method

.method public initiateByUser()Z
    .locals 3

    const-string v0, "USER INIT"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->isDuplicateUserInit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "SOFTWARE_UPDATE_START"

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/fumo/IntentManager;->sendIntentIfSdmPackageExists(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->USER_INIT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->startDeviceRegistrationIfUnregistered(Landroid/content/Context;Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;Z)V

    sget-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_USERINIT:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->initiate(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;)V

    return v2
.end method

.method public declared-synchronized isDuplicateUserInit()Z
    .locals 7

    const-string v0, "current time: "

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", last user init time: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->lastUserInitTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-wide v3, p0, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->lastUserInitTime:J

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    const-string v0, "Duplicate UserInit"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iput-wide v1, p0, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->lastUserInitTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p0

    throw v0
.end method
