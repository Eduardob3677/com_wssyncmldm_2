.class public Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$PolicyWindowed;
.super Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyWindowed"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x118988dd1dc517e4L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public getData(J)Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository$DataBuilder;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationManager;->cancel(Landroid/content/Context;)V

    invoke-super {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;->getData(J)Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository$DataBuilder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository$DataBuilder;->autoInstall(Z)Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository$DataBuilder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository$DataBuilder;->scheduledInstallTime(J)Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository$DataBuilder;

    move-result-object p0

    return-object p0
.end method

.method public onAlarm(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/SystemPolicy;->getPolicyType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p0, "no policy windowed"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->getInstance()Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_SCHEDULE_FINISH:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->idmSendMessage(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;Ljava/lang/Object;J)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install;->onAlarm(Ljava/lang/String;)V

    return-void
.end method

.method public updateNotification(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_PRIMARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->cancel(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;)V

    return-void
.end method
