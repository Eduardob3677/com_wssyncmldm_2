.class public final enum Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

.field public static final enum DOWNLOADABLE:Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

.field public static final enum INSTALLABLE:Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

.field public static final enum RESUMEABLE:Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;->DOWNLOADABLE:Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;->RESUMEABLE:Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    sget-object v2, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;->INSTALLABLE:Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    filled-new-array {v0, v1, v2}, [Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    const-string v1, "DOWNLOADABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;->DOWNLOADABLE:Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    const-string v1, "RESUMEABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;->RESUMEABLE:Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    const-string v1, "INSTALLABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;->INSTALLABLE:Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;->$values()[Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;->$VALUES:[Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;->$VALUES:[Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    return-object v0
.end method
