.class public final enum Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;",
        ">;",
        "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

.field public static final enum Emergency:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

.field public static final enum Mandatory:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

.field public static final enum Optional:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;


# instance fields
.field private final code:B


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->Optional:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->Mandatory:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    sget-object v2, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->Emergency:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    filled-new-array {v0, v1, v2}, [Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    const/4 v1, 0x0

    const/16 v2, 0x4f

    const-string v3, "Optional"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->Optional:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    const/4 v1, 0x1

    const/16 v2, 0x4d

    const-string v3, "Mandatory"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->Mandatory:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    const/4 v1, 0x2

    const/16 v2, 0x45

    const-string v3, "Emergency"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->Emergency:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->$values()[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->$VALUES:[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

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

    iput-byte p3, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->code:B

    return-void
.end method

.method public static of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;
    .locals 5

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->values()[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->toCode()B

    move-result v4

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

.method public static of(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;
    .locals 4

    const-string v0, "code: "

    if-eqz p0, :cond_1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 p0, 0x0

    aget-byte p0, v1, p0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0, p0}, Lh0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->$VALUES:[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    return-object v0
.end method


# virtual methods
.method public toCode()B
    .locals 0

    iget-byte p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->code:B

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->toCode()B

    move-result p0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
