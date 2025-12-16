.class public enum Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "EngineStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

.field public static final enum CLEANUP_PREVIOUS_UPDATE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

.field public static final enum DOWNLOADING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

.field public static final enum IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

.field public static final enum OPTIMIZING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

.field public static final enum PREPARING_UPDATE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

.field public static final enum UPDATED_NEED_REBOOT:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

.field public static final enum UPDATE_AVAILABLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

.field public static final enum VERIFYING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;


# instance fields
.field private final status:I


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;
    .locals 8

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    sget-object v1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->UPDATE_AVAILABLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    sget-object v2, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->DOWNLOADING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    sget-object v3, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->VERIFYING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    sget-object v4, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->OPTIMIZING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    sget-object v5, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->UPDATED_NEED_REBOOT:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    sget-object v6, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->CLEANUP_PREVIOUS_UPDATE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    sget-object v7, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->PREPARING_UPDATE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    filled-new-array/range {v0 .. v7}, [Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus$1;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    const-string v1, "UPDATE_AVAILABLE"

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->UPDATE_AVAILABLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    const-string v1, "DOWNLOADING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->DOWNLOADING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    const-string v1, "VERIFYING"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->VERIFYING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    const-string v1, "OPTIMIZING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->OPTIMIZING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus$2;

    const-string v1, "UPDATED_NEED_REBOOT"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->UPDATED_NEED_REBOOT:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    const-string v1, "CLEANUP_PREVIOUS_UPDATE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->CLEANUP_PREVIOUS_UPDATE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    const/4 v1, 0x7

    const/4 v2, -0x2

    const-string v3, "PREPARING_UPDATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->PREPARING_UPDATE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    invoke-static {}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->$values()[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->$VALUES:[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

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

    iput p3, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->status:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic a(ILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->lambda$of$0(ILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$of$0(ILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->getStatus()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static of(I)Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->values()[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/abupdate/updateengine/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/abupdate/updateengine/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->$VALUES:[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->status:I

    return p0
.end method

.method public isRunning()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
