.class final enum Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$9;
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
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_SCHEDULED_POSTPONABLE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContentText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getContentTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_SCHEDULED_POSTPONABLE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContentTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_SCHEDULED_POSTPONABLE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->onClick(Ljava/lang/String;)V

    return-void
.end method
