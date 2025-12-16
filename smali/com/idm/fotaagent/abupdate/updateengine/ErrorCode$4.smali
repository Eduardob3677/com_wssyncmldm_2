.class final enum Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$4;
.super Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$1;)V

    return-void
.end method


# virtual methods
.method public showDialogIfPossible()V
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-static {}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->getDmResultCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDmResultCode(Ljava/lang/String;)V

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_UPDATE_FAIL_INSUFFICIENT_MEMORY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-static {}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getUiMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_INSUFFICIENT_MEMORY:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    new-instance v1, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v1}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/BundleWrapper;->setTaskId(Ljava/lang/String;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;)V

    :cond_0
    return-void
.end method
