.class public enum Lcom/idm/fotaagent/enabler/feature/Operator;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/feature/Operator$MockOperator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/enabler/feature/Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/enabler/feature/Operator;

.field public static final enum COMMON:Lcom/idm/fotaagent/enabler/feature/Operator;

.field public static final enum DCM:Lcom/idm/fotaagent/enabler/feature/Operator;

.field public static final enum KDI:Lcom/idm/fotaagent/enabler/feature/Operator;

.field public static final enum KOO:Lcom/idm/fotaagent/enabler/feature/Operator;

.field public static final enum KT:Lcom/idm/fotaagent/enabler/feature/Operator;

.field public static final enum LGT:Lcom/idm/fotaagent/enabler/feature/Operator;

.field public static final enum SKT:Lcom/idm/fotaagent/enabler/feature/Operator;

.field public static final enum TMB:Lcom/idm/fotaagent/enabler/feature/Operator;

.field public static final enum TMK:Lcom/idm/fotaagent/enabler/feature/Operator;

.field public static final enum USC:Lcom/idm/fotaagent/enabler/feature/Operator;

.field private static final values:[Lcom/idm/fotaagent/enabler/feature/Operator;


# instance fields
.field private final salesCode:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/enabler/feature/Operator;
    .locals 10

    sget-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->COMMON:Lcom/idm/fotaagent/enabler/feature/Operator;

    sget-object v1, Lcom/idm/fotaagent/enabler/feature/Operator;->DCM:Lcom/idm/fotaagent/enabler/feature/Operator;

    sget-object v2, Lcom/idm/fotaagent/enabler/feature/Operator;->KDI:Lcom/idm/fotaagent/enabler/feature/Operator;

    sget-object v3, Lcom/idm/fotaagent/enabler/feature/Operator;->KT:Lcom/idm/fotaagent/enabler/feature/Operator;

    sget-object v4, Lcom/idm/fotaagent/enabler/feature/Operator;->LGT:Lcom/idm/fotaagent/enabler/feature/Operator;

    sget-object v5, Lcom/idm/fotaagent/enabler/feature/Operator;->SKT:Lcom/idm/fotaagent/enabler/feature/Operator;

    sget-object v6, Lcom/idm/fotaagent/enabler/feature/Operator;->KOO:Lcom/idm/fotaagent/enabler/feature/Operator;

    sget-object v7, Lcom/idm/fotaagent/enabler/feature/Operator;->TMB:Lcom/idm/fotaagent/enabler/feature/Operator;

    sget-object v8, Lcom/idm/fotaagent/enabler/feature/Operator;->TMK:Lcom/idm/fotaagent/enabler/feature/Operator;

    sget-object v9, Lcom/idm/fotaagent/enabler/feature/Operator;->USC:Lcom/idm/fotaagent/enabler/feature/Operator;

    filled-new-array/range {v0 .. v9}, [Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/Operator;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "COMMON"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/enabler/feature/Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->COMMON:Lcom/idm/fotaagent/enabler/feature/Operator;

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/Operator$1;

    const-string v1, "DCM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/feature/Operator$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->DCM:Lcom/idm/fotaagent/enabler/feature/Operator;

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/Operator$2;

    const/4 v1, 0x2

    const-string v2, "KDI/KDR"

    const-string v3, "KDI"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/enabler/feature/Operator$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->KDI:Lcom/idm/fotaagent/enabler/feature/Operator;

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/Operator$3;

    const/4 v1, 0x3

    const-string v2, "KT/KTC/KTO"

    const-string v3, "KT"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/enabler/feature/Operator$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->KT:Lcom/idm/fotaagent/enabler/feature/Operator;

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/Operator$4;

    const/4 v1, 0x4

    const-string v2, "LG/LUC/LUO"

    const-string v3, "LGT"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/enabler/feature/Operator$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->LGT:Lcom/idm/fotaagent/enabler/feature/Operator;

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/Operator;

    const/4 v1, 0x5

    const-string v2, "SKT/SKC/SKO"

    const-string v3, "SKT"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/enabler/feature/Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->SKT:Lcom/idm/fotaagent/enabler/feature/Operator;

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/Operator;

    const/4 v1, 0x6

    const-string v2, "ANY/KOO"

    const-string v3, "KOO"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/enabler/feature/Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->KOO:Lcom/idm/fotaagent/enabler/feature/Operator;

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/Operator$5;

    const-string v1, "TMB"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/feature/Operator$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->TMB:Lcom/idm/fotaagent/enabler/feature/Operator;

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/Operator$6;

    const-string v1, "TMK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/feature/Operator$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->TMK:Lcom/idm/fotaagent/enabler/feature/Operator;

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/Operator$7;

    const-string v1, "USC"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/feature/Operator$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->USC:Lcom/idm/fotaagent/enabler/feature/Operator;

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/Operator;->$values()[Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->$VALUES:[Lcom/idm/fotaagent/enabler/feature/Operator;

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/Operator;->values()[Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->values:[Lcom/idm/fotaagent/enabler/feature/Operator;

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

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/feature/Operator;->salesCode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/feature/Operator$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/feature/Operator;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/idm/fotaagent/enabler/feature/Operator;->salesCode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/fotaagent/enabler/feature/Operator$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/enabler/feature/Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a()Lcom/idm/fotaagent/enabler/feature/Operator;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/Operator;->getOperator()Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$200(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/feature/Operator;->getMobileDataFreeStringId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static varargs belongsTo([Lcom/idm/fotaagent/enabler/feature/Operator;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/Operator;->get()Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object v4

    if-ne v4, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static get()Lcom/idm/fotaagent/enabler/feature/Operator;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/Operator;->getDeviceOperator()Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object v0

    return-object v0
.end method

.method private static getDeviceOperator()Lcom/idm/fotaagent/enabler/feature/Operator;
    .locals 3

    const-string v0, "getDeviceOperator"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/Operator$MockOperator;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/feature/Operator$MockOperator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->getValue()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC2/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LC2/b;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/enabler/feature/Operator;

    return-object v0
.end method

.method private static getMobileDataFreeStringId(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnlyForDl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->isShowMobileNetworkWarning()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "isShowMobileNetworkWarning should be false"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    :cond_1
    const p0, 0x7f130034

    return p0
.end method

.method private static getOperator()Lcom/idm/fotaagent/enabler/feature/Operator;
    .locals 6

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->get()Lcom/samsung/android/fotaagent/common/feature/SalesCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/Operator;->values()[Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/idm/fotaagent/enabler/feature/Operator;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->COMMON:Lcom/idm/fotaagent/enabler/feature/Operator;

    return-object v0
.end method

.method public static valueOf(I)Lcom/idm/fotaagent/enabler/feature/Operator;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->values:[Lcom/idm/fotaagent/enabler/feature/Operator;

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/feature/Operator;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/feature/Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/feature/Operator;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/enabler/feature/Operator;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->$VALUES:[Lcom/idm/fotaagent/enabler/feature/Operator;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/enabler/feature/Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/enabler/feature/Operator;

    return-object v0
.end method


# virtual methods
.method public getDownloadConfirmOperatorBody(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getInstallConfirmOperatorBody(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getInvalidDeltaMessageId()I
    .locals 0

    const p0, 0x7f130064

    return p0
.end method

.method public getSalesCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/feature/Operator;->salesCode:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateFailedMessageId()I
    .locals 0

    const p0, 0x7f130064

    return p0
.end method

.method public isSimAllowed(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isWifiOnlyForDl(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
