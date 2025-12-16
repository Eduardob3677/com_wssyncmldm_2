.class public final enum Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;",
        ">;",
        "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

.field public static final enum Force:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

.field public static final enum Normal:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;


# instance fields
.field private final code:B


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->Normal:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->Force:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    filled-new-array {v0, v1}, [Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->Normal:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    const-string v1, "Force"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->Force:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->$values()[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->$VALUES:[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->code:B

    return-void
.end method

.method public static of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;
    .locals 5

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->values()[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-byte v4, v3, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->code:B

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "code: "

    invoke-static {p0, v1}, LB/f;->t(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->$VALUES:[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    return-object v0
.end method


# virtual methods
.method public toCode()B
    .locals 0

    iget-byte p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->code:B

    return p0
.end method
