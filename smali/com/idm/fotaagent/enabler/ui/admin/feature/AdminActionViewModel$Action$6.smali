.class final enum Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action$6;
.super Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$1;)V

    return-void
.end method


# virtual methods
.method public doAction()V
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->POLLING:Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public getString(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/high16 p0, 0x7f130000

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
