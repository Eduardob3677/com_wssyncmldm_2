.class public Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Policies$ForDownload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Policies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForDownload"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Policies$ForDownload;->lambda$getExceptional$0(Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Policies$ForDownload;->lambda$getExceptional$1()V

    return-void
.end method

.method public static getExceptional()Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;->restartPolicyTimerIfNeeded()V

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/b;-><init>(Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;I)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/c;

    invoke-direct {v0, v2}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/c;-><init>(I)V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Checker;

    aput-object v1, v3, v2

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->of([Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Checker;)Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getExceptional$0(Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;->getBehavior()Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/Behavior;

    move-result-object p0

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/Behavior;->checkDownloadable()V

    return-void
.end method

.method private static synthetic lambda$getExceptional$1()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager;->getBehavior()Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/Behavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/Behavior;->checkDownloadable()V

    return-void
.end method
