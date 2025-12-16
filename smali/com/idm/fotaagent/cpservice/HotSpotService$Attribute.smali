.class abstract enum Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/cpservice/HotSpotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Attribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

.field public static final enum CUR_SW_VER:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

.field public static final enum LAST_UPDATE_STATUS_ERROR_CODE:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

.field public static final enum LAST_UPDATE_STATUS_RESULT:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

.field public static final enum LAST_UPDATE_STATUS_TIME:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

.field public static final enum ONGOING_ERROR_CODE:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

.field public static final enum UPDATE_STATE:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;
    .locals 6

    sget-object v0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->UPDATE_STATE:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    sget-object v1, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->ONGOING_ERROR_CODE:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    sget-object v2, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->LAST_UPDATE_STATUS_TIME:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    sget-object v3, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->LAST_UPDATE_STATUS_RESULT:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    sget-object v4, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->LAST_UPDATE_STATUS_ERROR_CODE:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    sget-object v5, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->CUR_SW_VER:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    filled-new-array/range {v0 .. v5}, [Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute$1;

    const/4 v1, 0x0

    const-string v2, "update_state"

    const-string v3, "UPDATE_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->UPDATE_STATE:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    new-instance v0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute$2;

    const/4 v1, 0x1

    const-string v2, "ongoing_error_code"

    const-string v3, "ONGOING_ERROR_CODE"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->ONGOING_ERROR_CODE:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    new-instance v0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute$3;

    const/4 v1, 0x2

    const-string v2, "last_update_status_time"

    const-string v3, "LAST_UPDATE_STATUS_TIME"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->LAST_UPDATE_STATUS_TIME:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    new-instance v0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute$4;

    const/4 v1, 0x3

    const-string v2, "last_update_status_result"

    const-string v3, "LAST_UPDATE_STATUS_RESULT"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->LAST_UPDATE_STATUS_RESULT:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    new-instance v0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute$5;

    const/4 v1, 0x4

    const-string v2, "last_update_status_error_code"

    const-string v3, "LAST_UPDATE_STATUS_ERROR_CODE"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->LAST_UPDATE_STATUS_ERROR_CODE:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    new-instance v0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute$6;

    const/4 v1, 0x5

    const-string v2, "cur_sw_ver"

    const-string v3, "CUR_SW_VER"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->CUR_SW_VER:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    invoke-static {}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->$values()[Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->$VALUES:[Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->key:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/fotaagent/cpservice/HotSpotService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->getTaskId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$300(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->getUpdateStatus(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400()Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->getLastUpdateInfo()Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getLastUpdateInfo()Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    return-object v0
.end method

.method private static getTaskId()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUpdateStatus(I)Ljava/lang/String;
    .locals 4

    const-string v0, "0"

    const-string v1, "1"

    sparse-switch p0, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected FumoStatus : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    :sswitch_0
    return-object v0

    :sswitch_1
    const-string p0, "4"

    return-object p0

    :sswitch_2
    const-string p0, "3"

    return-object p0

    :sswitch_3
    const-string p0, "2"

    return-object p0

    :sswitch_4
    return-object v1

    :sswitch_5
    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getLibraryUtils()Lcom/idm/fotaagent/utils/LibraryUtils;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/idm/fotaagent/utils/LibraryUtils;->isTaskRunning(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->get()Lcom/idm/fotaagent/InitExecutor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/InitExecutor;->isDmInitialized()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    invoke-static {}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->isRegistered()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getCount()I

    move-result p0

    if-lez p0, :cond_2

    return-object v1

    :cond_2
    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/service/actioninfo/IDMActionInfo;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetFumoStatus()I

    move-result p0

    const-string v0, "currentFumoStatus : "

    if-nez p0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". genuine CHECKING_FOR_UPDATE"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". regard as CHECKING_FOR_UPDATE"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :goto_1
    return-object v1

    :cond_4
    return-object v0

    :cond_5
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0xa -> :sswitch_4
        0x14 -> :sswitch_3
        0x1e -> :sswitch_3
        0x23 -> :sswitch_3
        0x28 -> :sswitch_2
        0x32 -> :sswitch_2
        0x3c -> :sswitch_1
        0x41 -> :sswitch_1
        0x50 -> :sswitch_1
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_4
        0xe6 -> :sswitch_0
        0xf0 -> :sswitch_0
        0xf1 -> :sswitch_3
        0xf2 -> :sswitch_3
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->$VALUES:[Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->key:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
