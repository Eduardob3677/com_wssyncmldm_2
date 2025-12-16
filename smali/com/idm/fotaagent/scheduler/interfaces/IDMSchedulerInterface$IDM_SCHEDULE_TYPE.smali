.class public final enum Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IDM_SCHEDULE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

.field public static final enum SCHEDULE_TYPE_DEVICEINIT:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

.field public static final enum SCHEDULE_TYPE_SERVERINIT:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

.field public static final enum SCHEDULE_TYPE_SU_CANCEL_BY_MDM:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

.field public static final enum SCHEDULE_TYPE_SU_CANCEL_BY_SESSION_EXPIRATION:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

.field public static final enum SCHEDULE_TYPE_SU_CANCEL_GENERIC:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

.field public static final enum SCHEDULE_TYPE_SU_CANCEL_OR_RESET:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

.field public static final enum SCHEDULE_TYPE_USERINIT:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

.field public static final enum SCHEDULE_TYPE_USERINIT_RESUME:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

.field private static final sparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final actionInfoStrategy:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;

.field private final executorStrategy:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;

.field private final index:I


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;
    .locals 8

    sget-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_SERVERINIT:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    sget-object v1, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_USERINIT:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    sget-object v2, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_DEVICEINIT:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    sget-object v3, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_USERINIT_RESUME:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    sget-object v4, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_SU_CANCEL_GENERIC:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    sget-object v5, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_SU_CANCEL_OR_RESET:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    sget-object v6, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_SU_CANCEL_BY_MDM:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    sget-object v7, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_SU_CANCEL_BY_SESSION_EXPIRATION:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    filled-new-array/range {v0 .. v7}, [Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    new-instance v6, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    sget-object v4, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;->UPDATE_BY_PUSH_DATA:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;

    sget-object v13, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;->DM_SESSION_STARTER:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;

    const-string v1, "SCHEDULE_TYPE_SERVERINIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;-><init>(Ljava/lang/String;IILcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;)V

    sput-object v6, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_SERVERINIT:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    new-instance v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    sget-object v1, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;->UPDATE_BY_DM_PROFILE:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;

    const-string v8, "SCHEDULE_TYPE_USERINIT"

    const/4 v9, 0x1

    const/4 v10, 0x2

    move-object v7, v0

    move-object v11, v1

    move-object v12, v13

    invoke-direct/range {v7 .. v12}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;-><init>(Ljava/lang/String;IILcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_USERINIT:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    new-instance v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    const/4 v9, 0x2

    const/4 v10, 0x3

    const-string v8, "SCHEDULE_TYPE_DEVICEINIT"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;-><init>(Ljava/lang/String;IILcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_DEVICEINIT:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    new-instance v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    sget-object v6, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;->NO_CHANGE:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;

    sget-object v7, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;->USER_INIT_RESUMER:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;

    const-string v3, "SCHEDULE_TYPE_USERINIT_RESUME"

    const/4 v4, 0x3

    const/16 v5, 0x9

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;-><init>(Ljava/lang/String;IILcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_USERINIT_RESUME:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    new-instance v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    sget-object v7, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;->NULL:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;

    sget-object v14, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;->SOFTWARE_UPDATE_CANCELLER:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;

    const-string v9, "SCHEDULE_TYPE_SU_CANCEL_GENERIC"

    const/4 v10, 0x4

    const/16 v11, 0xf

    move-object v8, v0

    move-object v12, v7

    move-object v13, v14

    invoke-direct/range {v8 .. v13}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;-><init>(Ljava/lang/String;IILcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_SU_CANCEL_GENERIC:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    new-instance v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    const/4 v3, 0x5

    const/16 v4, 0xa

    const-string v2, "SCHEDULE_TYPE_SU_CANCEL_OR_RESET"

    move-object v1, v0

    move-object v5, v7

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;-><init>(Ljava/lang/String;IILcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_SU_CANCEL_OR_RESET:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    new-instance v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    const/4 v3, 0x6

    const/16 v4, 0x10

    const-string v2, "SCHEDULE_TYPE_SU_CANCEL_BY_MDM"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;-><init>(Ljava/lang/String;IILcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_SU_CANCEL_BY_MDM:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    new-instance v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    const/4 v3, 0x7

    const/16 v4, 0x11

    const-string v2, "SCHEDULE_TYPE_SU_CANCEL_BY_SESSION_EXPIRATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;-><init>(Ljava/lang/String;IILcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_SU_CANCEL_BY_SESSION_EXPIRATION:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    invoke-static {}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->$values()[Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->$VALUES:[Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->sparseArray:Landroid/util/SparseArray;

    invoke-static {}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->values()[Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->getIndex()I

    move-result v4

    sget-object v5, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->sparseArray:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    if-eqz v6, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Index "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is already occupied. Replace "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;",
            "Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->index:I

    iput-object p4, p0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->actionInfoStrategy:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;

    iput-object p5, p0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->executorStrategy:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;

    return-void
.end method

.method public static valueOf(I)Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->sparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->$VALUES:[Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->executorStrategy:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;

    invoke-interface {p0, p1}, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;->execute(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;-><init>()V

    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmGetIndex()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->deleteEntity(J)I

    invoke-static {}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->getInstance()Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->idmSchedulerFinish()V

    :goto_0
    return-void
.end method

.method public getActionInfoFrom(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Lcom/idm/service/actioninfo/IDMActionInfo;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->actionInfoStrategy:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;

    invoke-interface {p0, p1}, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;->getActionInfoFrom(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->index:I

    return p0
.end method
