.class public abstract enum Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

.field public static final enum POLLING:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

.field public static final enum PULL:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

.field public static final enum PUSH_BACKGROUND:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

.field public static final enum PUSH_INFORMATIVE:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

.field public static final enum PUSH_INTERACTIVE:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

.field public static final enum PUSH_WIFIBACKROUND:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

.field public static final enum RESET_REGISTER:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;
    .locals 7

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->PUSH_BACKGROUND:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->PUSH_INFORMATIVE:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->PUSH_INTERACTIVE:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    sget-object v3, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->PUSH_WIFIBACKROUND:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    sget-object v4, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->PULL:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    sget-object v5, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->POLLING:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    sget-object v6, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->RESET_REGISTER:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    filled-new-array/range {v0 .. v6}, [Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action$1;

    const-string v1, "PUSH_BACKGROUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->PUSH_BACKGROUND:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action$2;

    const-string v1, "PUSH_INFORMATIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->PUSH_INFORMATIVE:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action$3;

    const-string v1, "PUSH_INTERACTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->PUSH_INTERACTIVE:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action$4;

    const-string v1, "PUSH_WIFIBACKROUND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->PUSH_WIFIBACKROUND:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action$5;

    const-string v1, "PULL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->PULL:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action$6;

    const-string v1, "POLLING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->POLLING:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action$7;

    const-string v1, "RESET_REGISTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->RESET_REGISTER:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->$values()[Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->initiatePush(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;)V

    return-void
.end method

.method private static initiatePush(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;)V
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getReleaseServerInfo()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "releaseServerInfo should not be null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "serverId should not be null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;-><init>([B)V

    invoke-virtual {v1, p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->uiMode(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->build()Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData;->generate()[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notiData : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/idm/fotaagent/utils/EnablerUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->getInstance()Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->initiateByServer([B)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    return-object v0
.end method


# virtual methods
.method public abstract doAction()V
.end method

.method public abstract getString(Landroid/content/Context;)Ljava/lang/String;
.end method
