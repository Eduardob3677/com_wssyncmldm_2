.class final enum Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

.field public static final enum DOWNLOAD_CONFIRM:Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

.field public static final enum DOWNLOAD_PROGRESS:Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

.field public static final enum INSTALL_CONFIRM:Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

.field public static final enum LAST_UPDATE:Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;


# instance fields
.field private final activities:[Ljava/lang/String;

.field private final screenIdSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;
    .locals 4

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->LAST_UPDATE:Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->DOWNLOAD_CONFIRM:Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->DOWNLOAD_PROGRESS:Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    sget-object v3, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->INSTALL_CONFIRM:Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    filled-new-array {v0, v1, v2, v3}, [Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/enabler/ui/c;-><init>(I)V

    const-string v2, "LastUpdateActivity"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "LAST_UPDATE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;[Ljava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->LAST_UPDATE:Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/c;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/enabler/ui/c;-><init>(I)V

    const-string v2, "DownloadConfirmActivity"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "DOWNLOAD_CONFIRM"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;[Ljava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->DOWNLOAD_CONFIRM:Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/enabler/ui/c;-><init>(I)V

    const-string v2, "DownloadProgressActivity"

    const-string v3, "DownloadAndInstallProgressActivity"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "DOWNLOAD_PROGRESS"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;[Ljava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->DOWNLOAD_PROGRESS:Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/c;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/enabler/ui/c;-><init>(I)V

    const-string v2, "InstallConfirmActivity"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "INSTALL_CONFIRM"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;[Ljava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->INSTALL_CONFIRM:Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->$values()[Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/util/function/Supplier;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->screenIdSupplier:Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->activities:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->lambda$static$3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$000(Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->getScreenId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->activities:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->lambda$static$2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->lambda$static$1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->lambda$static$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScreenId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->screenIdSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$static$0()Ljava/lang/String;
    .locals 1

    const-string v0, "004"

    return-object v0
.end method

.method private static synthetic lambda$static$1()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_WHATS_NEW:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->isMajorUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "005"

    goto :goto_0

    :cond_0
    const-string v0, "006"

    :goto_0
    return-object v0
.end method

.method private static synthetic lambda$static$2()Ljava/lang/String;
    .locals 1

    const-string v0, "020"

    return-object v0
.end method

.method private static synthetic lambda$static$3()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_WHATS_NEW:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->isMajorUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "012"

    goto :goto_0

    :cond_0
    const-string v0, "013"

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    return-object v0
.end method
