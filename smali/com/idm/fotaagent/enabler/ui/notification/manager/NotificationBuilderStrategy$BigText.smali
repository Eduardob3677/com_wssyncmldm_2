.class public interface abstract Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BigText"
.end annotation


# static fields
.field public static final BIG_TEXT:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;

.field public static final DO_NOTHING:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE2/a;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;->DO_NOTHING:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;

    new-instance v0, LE2/a;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;->BIG_TEXT:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;

    return-void
.end method

.method public static synthetic l(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)Landroid/app/Notification$BigTextStyle;
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;->lambda$static$0(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)Landroid/app/Notification$BigTextStyle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$static$1(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)Landroid/app/Notification$BigTextStyle;
    .locals 1

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContentText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)Landroid/app/Notification$BigTextStyle;
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;->lambda$static$1(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getBigTextStyle(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)Landroid/app/Notification$BigTextStyle;
.end method
