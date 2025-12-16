.class final enum Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType$2;
.super Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$1;)V

    return-void
.end method


# virtual methods
.method public getPostponeAlarmType()Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->POSTPONE_30_MINUTES:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

    return-object p0
.end method

.method public show(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->DOWNLOAD_PROGRESS:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;

    invoke-virtual {p1, v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finish(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;)V

    const p1, 0x7f1300a3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/idm/fotaagent/utils/ToastHelper;->showLongToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
