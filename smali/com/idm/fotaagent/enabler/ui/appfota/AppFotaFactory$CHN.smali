.class Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$CHN;
.super Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CHN"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$CHN;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAppFota()Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater$ForCHN;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater$ForCHN;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getAppUpdateModel()Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/AppUpdate$Link;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/AppUpdate$Link;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.preloadapp.AUC_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.preloadapp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;->context:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getUpdateFwVersion()Ljava/lang/String;

    move-result-object p0

    const-string v1, "EXTRA_FW_VERSION"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
