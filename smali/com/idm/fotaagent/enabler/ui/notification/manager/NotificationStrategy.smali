.class public interface abstract Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DOWNLOAD_PAUSE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

.field public static final PRIMARY_BACKGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

.field public static final PRIMARY_FOREGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

.field public static final SECONDARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy$1;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy$1;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->PRIMARY_BACKGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy$2;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy$2;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->PRIMARY_FOREGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy$3;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy$3;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->SECONDARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy$4;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy$4;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->DOWNLOAD_PAUSE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    return-void
.end method


# virtual methods
.method public abstract getNotificationId()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;
.end method

.method public abstract isForegroundService()Z
.end method
