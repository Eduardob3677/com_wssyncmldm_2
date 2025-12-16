.class public Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Landroid/app/AlarmManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;->lambda$start$0(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Landroid/app/AlarmManager;)V

    return-void
.end method

.method public static synthetic b(Landroid/app/PendingIntent;Landroid/app/AlarmManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;->lambda$stop$1(Landroid/app/PendingIntent;Landroid/app/AlarmManager;)V

    return-void
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;->context:Landroid/content/Context;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    return-object p0
.end method

.method private getExistingPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;->context:Landroid/content/Context;

    const-class v2, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationAlarmReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0xc000000

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getPendingIntent(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;->context:Landroid/content/Context;

    const-class v2, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v1}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    invoke-virtual {v1, p1}, Lcom/idm/fotaagent/BundleWrapper;->setNotificationType(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/BundleWrapper;->build()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "com.wssyncmldm:bundle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;->context:Landroid/content/Context;

    const/4 v0, 0x0

    const/high16 v1, 0xc000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$start$0(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Landroid/app/AlarmManager;)V
    .locals 2

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->timeMillisForRemind()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;->getPendingIntent(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v0, v1, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private static synthetic lambda$stop$1(Landroid/app/PendingIntent;Landroid/app/AlarmManager;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public start(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)V
    .locals 3

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/notification/manager/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/a;-><init>(Ljava/lang/Object;Ljava/io/Serializable;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public stop()V
    .locals 3

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;->getExistingPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/notification/manager/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/b;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    const-string p0, "Cancel notification alarm"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method
