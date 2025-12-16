.class final enum Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

.field public static final enum HANDLED_AS_NORMAL:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

.field public static final enum HANDLED_AS_THROWN:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

.field public static final enum NORMAL:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

.field public static final enum THROWN:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

.field public static final enum UNCHECKED:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;
    .locals 5

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->UNCHECKED:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->THROWN:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    sget-object v2, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->HANDLED_AS_THROWN:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    sget-object v3, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->NORMAL:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    sget-object v4, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->HANDLED_AS_NORMAL:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    const-string v1, "UNCHECKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->UNCHECKED:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    const-string v1, "THROWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->THROWN:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    const-string v1, "HANDLED_AS_THROWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->HANDLED_AS_THROWN:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    const-string v1, "NORMAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->NORMAL:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    const-string v1, "HANDLED_AS_NORMAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->HANDLED_AS_NORMAL:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->$values()[Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->$VALUES:[Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->$VALUES:[Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    return-object v0
.end method
