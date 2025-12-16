.class enum Lcom/samsung/android/fotaagent/common/log/Logger$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fotaagent/common/log/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/fotaagent/common/log/Logger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/fotaagent/common/log/Logger$Level;

.field public static final enum A:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

.field public static final enum D:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

.field public static final enum E:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

.field public static final enum H:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

.field public static final enum I:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

.field public static final enum S:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

.field public static final enum V:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

.field public static final enum W:Lcom/samsung/android/fotaagent/common/log/Logger$Level;


# instance fields
.field private final priority:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/fotaagent/common/log/Logger$Level;
    .locals 8

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->S:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    sget-object v1, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->H:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    sget-object v2, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->V:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    sget-object v3, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->D:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    sget-object v4, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->I:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    sget-object v5, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->W:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    sget-object v6, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->E:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    sget-object v7, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->A:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level$1;

    const-string v1, "S"

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/fotaagent/common/log/Logger$Level$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->S:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    new-instance v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    const-string v1, "H"

    const/4 v2, 0x1

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/fotaagent/common/log/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->H:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    new-instance v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    const-string v1, "V"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/fotaagent/common/log/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->V:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    new-instance v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    const-string v1, "D"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/fotaagent/common/log/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->D:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    new-instance v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    const-string v1, "I"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/fotaagent/common/log/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->I:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    new-instance v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    const-string v1, "W"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/fotaagent/common/log/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->W:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    new-instance v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    const-string v1, "E"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/fotaagent/common/log/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->E:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    new-instance v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    const-string v1, "A"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/fotaagent/common/log/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->A:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    invoke-static {}, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->$values()[Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->$VALUES:[Lcom/samsung/android/fotaagent/common/log/Logger$Level;

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

    iput p3, p0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->priority:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILcom/samsung/android/fotaagent/common/log/Logger$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/fotaagent/common/log/Logger$Level;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/fotaagent/common/log/Logger$Level;
    .locals 1

    const-class v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/fotaagent/common/log/Logger$Level;
    .locals 1

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->$VALUES:[Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    invoke-virtual {v0}, [Lcom/samsung/android/fotaagent/common/log/Logger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    return-object v0
.end method


# virtual methods
.method public priority()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->priority:I

    return p0
.end method
