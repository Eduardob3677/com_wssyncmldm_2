.class public final enum Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/IntentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

.field public static final enum ERROR:Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

.field public static final enum LATEST:Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

.field public static final enum PROCESSING:Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

.field public static final enum SUCCESS:Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;


# instance fields
.field private final status:I


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;
    .locals 4

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->SUCCESS:Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->LATEST:Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    sget-object v2, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->PROCESSING:Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    sget-object v3, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->ERROR:Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    filled-new-array {v0, v1, v2, v3}, [Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->SUCCESS:Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    const-string v1, "LATEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->LATEST:Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    const-string v1, "PROCESSING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->PROCESSING:Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->ERROR:Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->$values()[Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->$VALUES:[Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->status:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->$VALUES:[Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    return-object v0
.end method


# virtual methods
.method public status()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->status:I

    return p0
.end method
