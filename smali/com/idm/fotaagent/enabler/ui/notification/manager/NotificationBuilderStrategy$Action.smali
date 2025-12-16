.class public interface abstract Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Action"
.end annotation


# static fields
.field public static final DISMISS_24_HOURS:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

.field public static final DISMISS_PAUSE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

.field public static final GO_TO_STORAGE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

.field public static final NO_ACTION:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

.field public static final POSTPONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

.field public static final WIFI_SETTINGS:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE2/a;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->NO_ACTION:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

    new-instance v0, LE2/a;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->POSTPONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

    new-instance v0, LE2/a;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->DISMISS_PAUSE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

    new-instance v0, LE2/a;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->DISMISS_24_HOURS:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

    new-instance v0, LE2/a;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->WIFI_SETTINGS:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

    new-instance v0, LE2/a;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->GO_TO_STORAGE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->lambda$static$4(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->lambda$static$5(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->lambda$static$0(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->lambda$static$3(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$static$1(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;
    .locals 1

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/idm/fotaagent/enabler/ui/reschedulepostpone/ReschedulePostponeActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x34000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, 0xc000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance p2, Landroid/app/Notification$Action$Builder;

    const v0, 0x7f13000e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$2(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;
    .locals 3

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationDismissReceiver;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "notificationType"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const/high16 v1, 0xc000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getNotificationStrategy()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    move-result-object p2

    invoke-interface {p2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->isForegroundService()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/16 p2, 0x18

    :goto_0
    new-instance v0, Landroid/app/Notification$Action$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f110005

    invoke-virtual {p0, v2, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {v0, p2, p0, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$3(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;
    .locals 3

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationDismissReceiver;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "notificationType"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, 0xc000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance p2, Landroid/app/Notification$Action$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f110005

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$4(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p2, 0x10008000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, 0xc000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance p2, Landroid/app/Notification$Action$Builder;

    const v0, 0x7f13001c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$5(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sec.android.app.myfiles.RUN_STORAGE_ANALYSIS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.android.settings"

    const-string v0, "com.samsung.android.settings.analyzestorage.ui.MainActivity"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0x10008000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p2, 0x0

    const/high16 v0, 0xc000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance p2, Landroid/app/Notification$Action$Builder;

    const v0, 0x7f130012

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->lambda$static$1(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->lambda$static$2(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getAction(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;
.end method
