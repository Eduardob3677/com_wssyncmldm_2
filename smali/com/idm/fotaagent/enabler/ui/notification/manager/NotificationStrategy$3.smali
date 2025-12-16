.class Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationId()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_SECONDARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    return-object p0
.end method

.method public isForegroundService()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
