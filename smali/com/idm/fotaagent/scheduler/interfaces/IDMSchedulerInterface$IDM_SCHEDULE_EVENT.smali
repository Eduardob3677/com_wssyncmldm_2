.class public final enum Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IDM_SCHEDULE_EVENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

.field public static final enum SCHEDULE_EVENT_INTENT_RESUME:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

.field public static final enum SCHEDULE_EVENT_MAX:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

.field public static final enum SCHEDULE_EVENT_NONE:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

.field public static final enum SCHEDULE_EVENT_SCHEDULE_AND_NOTIFICATION:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

.field public static final enum SCHEDULE_EVENT_SCHEDULE_AND_POSTPONE:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

.field public static final enum SCHEDULE_EVENT_SCHEDULE_FINISH:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

.field public static final enum SCHEDULE_EVENT_SCHEDULE_START:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

.field private static final values:[Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;
    .locals 7

    sget-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_NONE:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    sget-object v1, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_SCHEDULE_START:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    sget-object v2, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_SCHEDULE_FINISH:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    sget-object v3, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_SCHEDULE_AND_POSTPONE:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    sget-object v4, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_SCHEDULE_AND_NOTIFICATION:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    sget-object v5, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_INTENT_RESUME:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    sget-object v6, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_MAX:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    filled-new-array/range {v0 .. v6}, [Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    const-string v1, "SCHEDULE_EVENT_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_NONE:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    new-instance v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    const-string v1, "SCHEDULE_EVENT_SCHEDULE_START"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_SCHEDULE_START:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    new-instance v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    const-string v1, "SCHEDULE_EVENT_SCHEDULE_FINISH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_SCHEDULE_FINISH:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    new-instance v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    const-string v1, "SCHEDULE_EVENT_SCHEDULE_AND_POSTPONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_SCHEDULE_AND_POSTPONE:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    new-instance v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    const-string v1, "SCHEDULE_EVENT_SCHEDULE_AND_NOTIFICATION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_SCHEDULE_AND_NOTIFICATION:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    new-instance v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    const-string v1, "SCHEDULE_EVENT_INTENT_RESUME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_INTENT_RESUME:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    new-instance v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    const-string v1, "SCHEDULE_EVENT_MAX"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_MAX:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    invoke-static {}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->$values()[Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->$VALUES:[Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    invoke-static {}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->values()[Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->values:[Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->values:[Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->$VALUES:[Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    return-object v0
.end method
