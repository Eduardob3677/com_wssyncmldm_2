.class final enum Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$11;
.super Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public getContentText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    new-instance p0, Lcom/idm/fotaagent/utils/UpdateResultUtils;

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;->isUpdateSucceeded()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_LAST_UPDATE:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->access$100()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->isMajorUpdate(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;->getLastSuccessUpdateHistoryInfo()Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->access$100()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f13006d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->oneUiVersion()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->access$100()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/Operator;->get()Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/feature/Operator;->getUpdateFailedMessageId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/utils/UpdateResultUtils;

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;->isUpdateSucceeded()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->access$100()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getUpdateSuccessMessageId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p0, 0x7f130066

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    sget-object p1, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_UPDATE_REPORT:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V

    new-instance p0, Lcom/idm/fotaagent/utils/UpdateResultUtils;

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;->isUpdateSucceeded()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_LAST_UPDATE:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->access$100()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->isMajorUpdate(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Major"

    goto :goto_0

    :cond_0
    const-string p0, "Minor"

    :goto_0
    const-string p1, "0019"

    invoke-static {p1, p0}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "0020"

    invoke-static {p0}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;)V

    return-void
.end method
