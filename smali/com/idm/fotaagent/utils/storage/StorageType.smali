.class public abstract enum Lcom/idm/fotaagent/utils/storage/StorageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/utils/storage/StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/utils/storage/StorageType;

.field public static final enum CACHE:Lcom/idm/fotaagent/utils/storage/StorageType;

.field public static final enum DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

.field static final NAME_DELTA_FILE:Ljava/lang/String; = "update.zip"

.field public static final PATH_CACHE:Ljava/lang/String; = "/cache"


# instance fields
.field private final type:I


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/utils/storage/StorageType;
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/utils/storage/StorageType;->CACHE:Lcom/idm/fotaagent/utils/storage/StorageType;

    sget-object v1, Lcom/idm/fotaagent/utils/storage/StorageType;->DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

    filled-new-array {v0, v1}, [Lcom/idm/fotaagent/utils/storage/StorageType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/utils/storage/StorageType$1;

    const-string v1, "CACHE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/utils/storage/StorageType$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/utils/storage/StorageType;->CACHE:Lcom/idm/fotaagent/utils/storage/StorageType;

    new-instance v0, Lcom/idm/fotaagent/utils/storage/StorageType$2;

    const-string v1, "DATA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/utils/storage/StorageType$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/utils/storage/StorageType;->DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-static {}, Lcom/idm/fotaagent/utils/storage/StorageType;->$values()[Lcom/idm/fotaagent/utils/storage/StorageType;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/utils/storage/StorageType;->$VALUES:[Lcom/idm/fotaagent/utils/storage/StorageType;

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

    iput p3, p0, Lcom/idm/fotaagent/utils/storage/StorageType;->type:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILcom/idm/fotaagent/utils/storage/StorageType$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/utils/storage/StorageType;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic a(ILcom/idm/fotaagent/utils/storage/StorageType;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/utils/storage/StorageType;->lambda$get$0(ILcom/idm/fotaagent/utils/storage/StorageType;)Z

    move-result p0

    return p0
.end method

.method public static get(I)Lcom/idm/fotaagent/utils/storage/StorageType;
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/utils/storage/StorageType;->values()[Lcom/idm/fotaagent/utils/storage/StorageType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/abupdate/updateengine/a;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/abupdate/updateengine/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/utils/storage/StorageType;->DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/utils/storage/StorageType;

    return-object p0
.end method

.method private static synthetic lambda$get$0(ILcom/idm/fotaagent/utils/storage/StorageType;)Z
    .locals 0

    iget p1, p1, Lcom/idm/fotaagent/utils/storage/StorageType;->type:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/utils/storage/StorageType;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/utils/storage/StorageType;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/utils/storage/StorageType;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/utils/storage/StorageType;->$VALUES:[Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/utils/storage/StorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/utils/storage/StorageType;

    return-object v0
.end method


# virtual methods
.method public abstract path()Ljava/lang/String;
.end method

.method public pathForDeltaFile()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/storage/StorageType;->path()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/fota/update.zip"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public pathForFotaFolder()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/storage/StorageType;->path()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/fota"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public type()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/utils/storage/StorageType;->type:I

    return p0
.end method
