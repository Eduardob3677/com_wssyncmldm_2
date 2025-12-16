.class public abstract enum Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

.field public static final enum POSTPONE_24_HOURS:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

.field public static final enum POSTPONE_30_MINUTES:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

.field public static final enum POSTPONE_REMINDER:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;


# instance fields
.field public final postponeRepository:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->POSTPONE_REMINDER:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->POSTPONE_30_MINUTES:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

    sget-object v2, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->POSTPONE_24_HOURS:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

    filled-new-array {v0, v1, v2}, [Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType$1;

    const-string v1, "POSTPONE_REMINDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->POSTPONE_REMINDER:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType$2;

    const-string v1, "POSTPONE_30_MINUTES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->POSTPONE_30_MINUTES:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType$3;

    const-string v1, "POSTPONE_24_HOURS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->POSTPONE_24_HOURS:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->$values()[Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->$VALUES:[Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

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

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->postponeRepository:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->$VALUES:[Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

    return-object v0
.end method


# virtual methods
.method public postponeIfNeeded(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->get(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->postponeIfNeeded(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;)V

    return-void
.end method

.method public abstract postponeIfNeeded(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;)V
.end method
