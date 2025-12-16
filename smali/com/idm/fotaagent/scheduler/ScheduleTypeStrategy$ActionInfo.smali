.class public interface abstract Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionInfo"
.end annotation


# static fields
.field public static final NO_CHANGE:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;

.field public static final NULL:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;

.field public static final UPDATE_BY_DM_PROFILE:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;

.field public static final UPDATE_BY_PUSH_DATA:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/scheduler/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/scheduler/e;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;->UPDATE_BY_PUSH_DATA:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;

    new-instance v0, Lcom/idm/fotaagent/scheduler/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/scheduler/e;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;->UPDATE_BY_DM_PROFILE:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;

    new-instance v0, Lcom/idm/fotaagent/scheduler/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/scheduler/e;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;->NO_CHANGE:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;

    new-instance v0, Lcom/idm/fotaagent/scheduler/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/scheduler/e;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;->NULL:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Lcom/idm/service/actioninfo/IDMActionInfo;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;->lambda$static$2(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Lcom/idm/service/actioninfo/IDMActionInfo;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;->lambda$static$1(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Lcom/idm/service/actioninfo/IDMActionInfo;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;->lambda$static$0(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Lcom/idm/service/actioninfo/IDMActionInfo;
    .locals 3

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->decode([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmGetActionInfo()Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object p0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->serverId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetServerId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->sessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetSessionId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->uiMode()Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->toCode()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetPushUiMode(I)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetDBAdapter()Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->serverId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetXnodeInfo(Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoXnodeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxFumo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DownloadAndUpdate"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetAlertCommandNode(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->save(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;)V

    return-object p0
.end method

.method private static synthetic lambda$static$1(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Lcom/idm/service/actioninfo/IDMActionInfo;
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getReleaseProfile()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    move-result-object v0

    const-string v1, "failed to get release profile info"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetDBAdapter()Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmGetActionInfo()Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object p0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetServerId(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/adapter/common/IDMCommonUtils;->idmAgentLibMakeSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetSessionId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetXnodeInfo(Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoXnodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxFumo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/DownloadAndUpdate"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetAlertCommandNode(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private static synthetic lambda$static$2(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Lcom/idm/service/actioninfo/IDMActionInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract getActionInfoFrom(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Lcom/idm/service/actioninfo/IDMActionInfo;
.end method
