.class public final enum Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Requester"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

.field public static final enum BOOT_COMPLETE:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

.field public static final enum DEVICE_INIT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

.field public static final enum DM:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

.field public static final enum FOTA_AGENT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

.field public static final enum MDM:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

.field public static final enum NONE:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

.field public static final enum SERVER_INIT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

.field public static final enum SETUP_WIZARD:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

.field public static final enum USER_INIT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;


# instance fields
.field private final requester:I


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;
    .locals 9

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->NONE:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    sget-object v1, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->USER_INIT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    sget-object v2, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->DEVICE_INIT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    sget-object v3, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->SERVER_INIT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    sget-object v4, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->SETUP_WIZARD:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    sget-object v5, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->BOOT_COMPLETE:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    sget-object v6, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->MDM:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    sget-object v7, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->FOTA_AGENT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    sget-object v8, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->DM:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    filled-new-array/range {v0 .. v8}, [Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->NONE:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    const-string v1, "USER_INIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->USER_INIT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    const-string v1, "DEVICE_INIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->DEVICE_INIT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    const-string v1, "SERVER_INIT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->SERVER_INIT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    const-string v1, "SETUP_WIZARD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->SETUP_WIZARD:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    const-string v1, "BOOT_COMPLETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->BOOT_COMPLETE:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    const-string v1, "MDM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->MDM:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    const-string v1, "FOTA_AGENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->FOTA_AGENT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    const-string v1, "DM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->DM:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    invoke-static {}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->$values()[Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->$VALUES:[Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

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

    iput p3, p0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->requester:I

    return-void
.end method

.method public static synthetic a(ILcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->lambda$of$0(ILcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$of$0(ILcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->getRequester()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static of(I)Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->values()[Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/abupdate/updateengine/a;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/abupdate/updateengine/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->NONE:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->$VALUES:[Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    return-object v0
.end method


# virtual methods
.method public getRequester()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->requester:I

    return p0
.end method
