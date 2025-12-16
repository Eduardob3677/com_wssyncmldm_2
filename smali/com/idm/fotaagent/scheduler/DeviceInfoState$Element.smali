.class enum Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/scheduler/DeviceInfoState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

.field public static final enum DEVICE_ID:Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

.field public static final enum MODEL_NAME:Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

.field public static final enum SALES_CODE:Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;


# instance fields
.field private final getterForCurrent:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getterForRegistered:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->DEVICE_ID:Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    sget-object v1, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->MODEL_NAME:Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    sget-object v2, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->SALES_CODE:Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    filled-new-array {v0, v1, v2}, [Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element$1;

    new-instance v1, Lcom/idm/fotaagent/scheduler/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/scheduler/a;-><init>(I)V

    new-instance v2, Lcom/idm/fotaagent/scheduler/b;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/idm/fotaagent/scheduler/b;-><init>(I)V

    const-string v3, "DEVICE_ID"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element$1;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;Ljava/util/function/Function;)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->DEVICE_ID:Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    new-instance v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    new-instance v1, Lcom/idm/fotaagent/scheduler/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/scheduler/a;-><init>(I)V

    new-instance v2, Lcom/idm/fotaagent/scheduler/b;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/idm/fotaagent/scheduler/b;-><init>(I)V

    const-string v3, "MODEL_NAME"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;Ljava/util/function/Function;)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->MODEL_NAME:Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    new-instance v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->get()Lcom/samsung/android/fotaagent/common/feature/SalesCode;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/idm/fotaagent/receiver/b;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lcom/idm/fotaagent/receiver/b;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lcom/idm/fotaagent/scheduler/b;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Lcom/idm/fotaagent/scheduler/b;-><init>(I)V

    const-string v3, "SALES_CODE"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;Ljava/util/function/Function;)V

    sput-object v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->SALES_CODE:Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    invoke-static {}, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->$values()[Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->$VALUES:[Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/function/Supplier;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->getterForCurrent:Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->getterForRegistered:Ljava/util/function/Function;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/function/Supplier;Ljava/util/function/Function;Lcom/idm/fotaagent/scheduler/DeviceInfoState$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;Ljava/lang/String;Ljava/util/Optional;)Lcom/idm/fotaagent/scheduler/DeviceInfoState;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->lambda$state$2(Ljava/lang/String;Ljava/util/Optional;)Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;)Lcom/idm/fotaagent/scheduler/DeviceInfoState;
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->state()Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Lcom/idm/fotaagent/scheduler/DeviceInfoState;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->lambda$state$1(Ljava/lang/String;)Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->lambda$static$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$state$1(Ljava/lang/String;)Lcom/idm/fotaagent/scheduler/DeviceInfoState;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->RUNNABLE:Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    return-object p0
.end method

.method private synthetic lambda$state$2(Ljava/lang/String;Ljava/util/Optional;)Lcom/idm/fotaagent/scheduler/DeviceInfoState;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->logReasonForChanged(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->CHANGED:Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    return-object p0
.end method

.method private static synthetic lambda$static$0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/DeviceId;->readDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private state()Lcom/idm/fotaagent/scheduler/DeviceInfoState;
    .locals 5

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->getterForCurrent:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current value for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " should not be empty"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    sget-object p0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->EMPTY:Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->getterForRegistered:Ljava/util/function/Function;

    new-instance v2, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    invoke-static {}, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->access$200()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/idm/core/ddf/a;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/idm/core/ddf/a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/idm/fotaagent/scheduler/b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/idm/fotaagent/scheduler/b;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/idm/fotaagent/scheduler/c;

    invoke-direct {v3, p0, v0, v1}, Lcom/idm/fotaagent/scheduler/c;-><init>(Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;Ljava/lang/String;Ljava/util/Optional;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->$VALUES:[Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    return-object v0
.end method


# virtual methods
.method public logReasonForChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current value for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is different from registered one("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; reset and re-register device"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void
.end method
