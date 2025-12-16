.class final enum Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeLengthValueDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder$Decoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

.field public static final enum DOWNLOAD_TYPE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

.field public static final enum INSTALL_TYPE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

.field public static final enum POSTPONE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

.field public static final enum SERVICE_TYPE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

.field public static final enum UPDATE_TYPE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;


# instance fields
.field private final decoder:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder$Decoder;

.field private final type:B


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;
    .locals 5

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->INSTALL_TYPE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->POSTPONE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    sget-object v2, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->UPDATE_TYPE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    sget-object v3, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->SERVICE_TYPE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    sget-object v4, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->DOWNLOAD_TYPE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/a;-><init>(I)V

    const-string v2, "INSTALL_TYPE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;-><init>(Ljava/lang/String;IBLcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder$Decoder;)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->INSTALL_TYPE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/a;-><init>(I)V

    const-string v2, "POSTPONE"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;-><init>(Ljava/lang/String;IBLcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder$Decoder;)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->POSTPONE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/a;-><init>(I)V

    const-string v2, "UPDATE_TYPE"

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;-><init>(Ljava/lang/String;IBLcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder$Decoder;)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->UPDATE_TYPE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/a;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/a;-><init>(I)V

    const-string v2, "SERVICE_TYPE"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;-><init>(Ljava/lang/String;IBLcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder$Decoder;)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->SERVICE_TYPE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/a;-><init>(I)V

    const-string v2, "DOWNLOAD_TYPE"

    const/4 v4, 0x5

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;-><init>(Ljava/lang/String;IBLcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder$Decoder;)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->DOWNLOAD_TYPE:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->$values()[Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->$VALUES:[Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder$Decoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder$Decoder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->type:B

    iput-object p4, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->decoder:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder$Decoder;

    return-void
.end method

.method public static synthetic a([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->lambda$static$0([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1300(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->lambda$static$3([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->lambda$static$1([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->lambda$static$2([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->lambda$static$4([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;
    .locals 1

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$1([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;
    .locals 1

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$2([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;
    .locals 1

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;->of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$3([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;
    .locals 1

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$4([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;
    .locals 1

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;->of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;

    move-result-object p0

    return-object p0
.end method

.method private static of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;
    .locals 5

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->values()[Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-byte v4, v3, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->type:B

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type: "

    invoke-static {p0, v1}, LB/f;->t(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->$VALUES:[Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    return-object v0
.end method


# virtual methods
.method public decode([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->decoder:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder$Decoder;

    invoke-interface {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder$Decoder;->decode([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object p0

    return-object p0
.end method
