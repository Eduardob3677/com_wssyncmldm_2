.class public enum Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "InstallationStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

.field public static final enum DOWNLOADING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

.field public static final enum IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

.field public static final enum OPTIMIZING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

.field public static final enum VERIFYING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;


# instance fields
.field private final status:I


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;
    .locals 4

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    sget-object v1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->DOWNLOADING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    sget-object v2, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->VERIFYING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    sget-object v3, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->OPTIMIZING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    filled-new-array {v0, v1, v2, v3}, [Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep$1;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep$2;

    const-string v1, "DOWNLOADING"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->DOWNLOADING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    const/4 v1, 0x2

    const/4 v2, 0x4

    const-string v4, "VERIFYING"

    invoke-direct {v0, v4, v1, v2}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->VERIFYING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    const-string v1, "OPTIMIZING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->OPTIMIZING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-static {}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->$values()[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->$VALUES:[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

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

    iput p3, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->status:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic a(ILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->lambda$containsExceptIdle$3(ILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(ILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->lambda$of$2(ILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->lambda$ofNullable$1(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z

    move-result p0

    return p0
.end method

.method public static containsExceptIdle(I)Z
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->values()[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/abupdate/updateengine/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/abupdate/updateengine/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/idm/adapter/filesystem/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/idm/adapter/filesystem/a;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(ILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->lambda$ofNullable$0(ILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->lambda$containsExceptIdle$4(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$containsExceptIdle$3(ILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$containsExceptIdle$4(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$of$2(ILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$ofNullable$0(ILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$ofNullable$1(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static of(I)Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->values()[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/abupdate/updateengine/a;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/abupdate/updateengine/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    return-object p0
.end method

.method public static ofNullable(I)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->values()[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/abupdate/updateengine/a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/abupdate/updateengine/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/idm/adapter/filesystem/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/idm/adapter/filesystem/a;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LG2/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LG2/b;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->$VALUES:[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->status:I

    return p0
.end method

.method public needsNetwork()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
