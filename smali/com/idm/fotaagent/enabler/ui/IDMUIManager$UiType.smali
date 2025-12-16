.class final enum Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/IDMUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UiType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

.field public static final enum ACTIVITY:Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

.field public static final enum DIALOG:Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

.field public static final enum NONE:Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;


# instance fields
.field private final type:I


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->NONE:Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->DIALOG:Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->ACTIVITY:Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    filled-new-array {v0, v1, v2}, [Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->NONE:Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    const-string v1, "DIALOG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->DIALOG:Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    const-string v1, "ACTIVITY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->ACTIVITY:Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->$values()[Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

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

    iput p3, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->type:I

    return-void
.end method

.method public static synthetic a(ILcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->lambda$of$0(ILcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$of$0(ILcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->getType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static of(I)Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->values()[Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/h;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/enabler/ui/h;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->NONE:Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->type:I

    return p0
.end method
