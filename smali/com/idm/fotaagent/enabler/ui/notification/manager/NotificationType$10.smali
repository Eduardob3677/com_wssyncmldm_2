.class final enum Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$10;
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

.method public getContentTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    const p0, 0x7f130032

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->access$100()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f130032

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->access$100()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/idm/fotaagent/utils/ToastHelper;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
