.class abstract enum Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Strategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

.field public static final enum FIRST_NET_NOT_READY:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

.field public static final enum FIRST_NET_READY:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->FIRST_NET_READY:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->FIRST_NET_NOT_READY:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    filled-new-array {v0, v1}, [Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy$1;

    const-string v1, "FIRST_NET_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->FIRST_NET_READY:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy$2;

    const-string v1, "FIRST_NET_NOT_READY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->FIRST_NET_NOT_READY:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->$values()[Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    return-object p0
.end method

.method public static valueOf(Z)Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->FIRST_NET_READY:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->FIRST_NET_NOT_READY:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    :goto_0
    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    return-object v0
.end method


# virtual methods
.method public abstract installPostponeType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;
.end method

.method public abstract installType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;
.end method

.method public abstract isEmergencyService(Landroid/content/Context;)Z
.end method

.method public abstract isScheduledInstall()Z
.end method

.method public abstract postponeType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;
.end method

.method public abstract rebootOrInstall(Ljava/lang/String;)V
.end method

.method public abstract removesMediumEmphasisButton(Ljava/lang/String;)Z
.end method

.method public abstract shouldCountdown(Ljava/lang/String;)Z
.end method

.method public abstract updateNotification(Ljava/lang/String;)V
.end method
