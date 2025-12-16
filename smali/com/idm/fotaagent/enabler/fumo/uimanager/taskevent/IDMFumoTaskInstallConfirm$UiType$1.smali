.class final enum Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType$1;
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

    sget-object p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->POSTPONE_REMINDER:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

    return-object p0
.end method

.method public show(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->INSTALL_CONFIRM:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;

    new-instance v1, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v1}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    invoke-virtual {v1, p1}, Lcom/idm/fotaagent/BundleWrapper;->setTaskId(Ljava/lang/String;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendActivityMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;Lcom/idm/fotaagent/BundleWrapper;)V

    return-void
.end method
