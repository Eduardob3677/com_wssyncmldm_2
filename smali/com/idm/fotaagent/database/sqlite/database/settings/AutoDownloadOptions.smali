.class public abstract enum Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

.field public static final enum NOT_SET:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

.field public static final enum OFF:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

.field public static final enum WIFI:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

.field public static final enum WIFI_AND_CELLULAR:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;


# instance fields
.field private final dbValue:I


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;
    .locals 4

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->NOT_SET:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->OFF:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    sget-object v2, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->WIFI:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    sget-object v3, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->WIFI_AND_CELLULAR:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    filled-new-array {v0, v1, v2, v3}, [Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions$1;

    const/4 v1, -0x1

    const-string v2, "NOT_SET"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->NOT_SET:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions$2;

    const-string v1, "OFF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->OFF:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions$3;

    const-string v1, "WIFI"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->WIFI:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions$4;

    const-string v1, "WIFI_AND_CELLULAR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->WIFI_AND_CELLULAR:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->$values()[Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->$VALUES:[Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

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

    iput p3, p0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->dbValue:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic a(ILcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->lambda$of$0(ILcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$of$0(ILcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;)Z
    .locals 0

    iget p1, p1, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->dbValue:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static of(I)Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->values()[Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/abupdate/updateengine/a;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/abupdate/updateengine/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->WIFI:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->$VALUES:[Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    return-object v0
.end method


# virtual methods
.method public getDbValue()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->dbValue:I

    return p0
.end method

.method public isRetriable(Landroid/content/Context;Z)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->skipShowConfirm(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public abstract skipShowConfirm(Landroid/content/Context;Z)Z
.end method
