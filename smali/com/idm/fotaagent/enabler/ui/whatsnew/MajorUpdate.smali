.class public interface abstract Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FOR_LAST_UPDATE:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

.field public static final FOR_WHATS_NEW:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_WHATS_NEW:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_LAST_UPDATE:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->lambda$static$1(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->lambda$static$0(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$0(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->isMinor()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->descriptionContent()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$1(Landroid/content/Context;)Z
    .locals 1

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;->getLastSuccessUpdateHistoryInfo()Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->isMinor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->summaryDescription()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract isMajorUpdate(Landroid/content/Context;)Z
.end method
