.class public final enum Lcom/idm/fotaagent/scheduler/DeviceInfoState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/scheduler/DeviceInfoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/scheduler/DeviceInfoState;

.field public static final enum CHANGED:Lcom/idm/fotaagent/scheduler/DeviceInfoState;

.field public static final enum EMPTY:Lcom/idm/fotaagent/scheduler/DeviceInfoState;

.field public static final enum RUNNABLE:Lcom/idm/fotaagent/scheduler/DeviceInfoState;


# instance fields
.field private final exception:Lcom/idm/fotaagent/scheduler/exception/DeviceInfoException;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/scheduler/DeviceInfoState;
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->RUNNABLE:Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    sget-object v1, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->EMPTY:Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    sget-object v2, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->CHANGED:Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    filled-new-array {v0, v1, v2}, [Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "RUNNABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/scheduler/DeviceInfoState;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/scheduler/exception/DeviceInfoException;)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->RUNNABLE:Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    new-instance v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    new-instance v1, Lcom/idm/fotaagent/scheduler/exception/DeviceInfoEmptyException;

    invoke-direct {v1}, Lcom/idm/fotaagent/scheduler/exception/DeviceInfoEmptyException;-><init>()V

    const-string v2, "EMPTY"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/idm/fotaagent/scheduler/DeviceInfoState;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/scheduler/exception/DeviceInfoException;)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->EMPTY:Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    new-instance v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    new-instance v1, Lcom/idm/fotaagent/scheduler/exception/DeviceInfoChangedException;

    invoke-direct {v1}, Lcom/idm/fotaagent/scheduler/exception/DeviceInfoChangedException;-><init>()V

    const-string v2, "CHANGED"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/idm/fotaagent/scheduler/DeviceInfoState;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/scheduler/exception/DeviceInfoException;)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->CHANGED:Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    invoke-static {}, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->$values()[Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->$VALUES:[Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/scheduler/exception/DeviceInfoException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/idm/fotaagent/scheduler/exception/DeviceInfoException;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->exception:Lcom/idm/fotaagent/scheduler/exception/DeviceInfoException;

    return-void
.end method

.method public static synthetic access$200()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static get()Lcom/idm/fotaagent/scheduler/DeviceInfoState;
    .locals 4

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-static {}, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->isCustomProfileMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CheckProfileEditMode : true"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->RUNNABLE:Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    return-object v0

    :cond_0
    sget-object v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->DEVICE_ID:Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    invoke-static {v0}, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->access$000(Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;)Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->MODEL_NAME:Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    invoke-static {v1}, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->access$000(Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;)Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->SALES_CODE:Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    invoke-static {v2}, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->access$000(Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;)Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    move-result-object v2

    sget-object v3, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->RUNNABLE:Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    if-ne v0, v3, :cond_1

    if-ne v1, v3, :cond_1

    if-ne v2, v3, :cond_1

    return-object v3

    :cond_1
    sget-object v3, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->EMPTY:Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    if-eq v0, v3, :cond_3

    if-eq v1, v3, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->CHANGED:Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    return-object v0

    :cond_3
    :goto_0
    return-object v3
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/scheduler/DeviceInfoState;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/scheduler/DeviceInfoState;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->$VALUES:[Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/scheduler/DeviceInfoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    return-object v0
.end method


# virtual methods
.method public checkException()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->exception:Lcom/idm/fotaagent/scheduler/exception/DeviceInfoException;

    if-nez p0, :cond_0

    return-void

    :cond_0
    throw p0
.end method
