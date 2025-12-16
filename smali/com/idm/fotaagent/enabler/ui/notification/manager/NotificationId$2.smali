.class final enum Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId$2;
.super Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId$1;)V

    return-void
.end method


# virtual methods
.method public getNotificationTypeManagerServiceClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManagerService;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId$PrimaryNotificationService;

    return-object p0
.end method
