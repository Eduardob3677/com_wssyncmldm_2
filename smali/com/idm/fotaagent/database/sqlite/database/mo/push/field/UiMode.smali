.class public final enum Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/Field;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;",
        ">;",
        "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/Field;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

.field public static final enum BACKGROUND:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

.field public static final enum INFORMATIVE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

.field public static final enum NOT_SPECIFIED:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

.field public static final enum USER_INTERACTION:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

.field public static final enum WIFI_BACKGROUND:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;


# instance fields
.field private final code:B


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;
    .locals 5

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->NOT_SPECIFIED:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->BACKGROUND:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    sget-object v2, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->INFORMATIVE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    sget-object v3, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->USER_INTERACTION:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    sget-object v4, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->WIFI_BACKGROUND:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    const-string v1, "NOT_SPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->NOT_SPECIFIED:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    const-string v1, "BACKGROUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->BACKGROUND:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    const-string v1, "INFORMATIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->INFORMATIVE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    const-string v1, "USER_INTERACTION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->USER_INTERACTION:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    const-string v1, "WIFI_BACKGROUND"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->WIFI_BACKGROUND:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->$values()[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->$VALUES:[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

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

    iput-byte p3, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->code:B

    return-void
.end method

.method public static of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;
    .locals 5

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->values()[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-byte v4, v3, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->code:B

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

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->$VALUES:[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    return-object v0
.end method


# virtual methods
.method public toCode()B
    .locals 0

    iget-byte p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->code:B

    return p0
.end method
