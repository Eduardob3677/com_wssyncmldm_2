.class final enum Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$16;
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
.method public constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$1;)V

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
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel$MessageGenerator;->getMessage(Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    const p0, 0x7f130074

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->getInstance()Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->initiateByUser()Z

    return-void
.end method
