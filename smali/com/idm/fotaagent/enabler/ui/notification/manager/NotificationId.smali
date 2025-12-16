.class public abstract enum Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId$SecondaryNotificationService;,
        Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId$PrimaryNotificationService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

.field public static final enum NOTIFICATION_ID_CAMPAIGN:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

.field public static final enum NOTIFICATION_ID_NONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

.field public static final enum NOTIFICATION_ID_PRIMARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

.field public static final enum NOTIFICATION_ID_SECONDARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;


# instance fields
.field private volatile notificationType:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;
    .locals 4

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_NONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_PRIMARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_SECONDARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    sget-object v3, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_CAMPAIGN:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    filled-new-array {v0, v1, v2, v3}, [Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId$1;

    const-string v1, "NOTIFICATION_ID_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_NONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId$2;

    const-string v1, "NOTIFICATION_ID_PRIMARY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_PRIMARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId$3;

    const-string v1, "NOTIFICATION_ID_SECONDARY"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_SECONDARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId$4;

    const-string v1, "NOTIFICATION_ID_CAMPAIGN"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_CAMPAIGN:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->$values()[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->values()[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    move-result-object v1

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    :try_start_0
    div-int/lit8 v6, v4, 0x2

    aget-object v6, v1, v6

    invoke-static {v5}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManagerService;->getNotificationTypeOf(Landroid/app/Notification;)Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    move-result-object v5

    iput-object v5, v6, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->notificationType:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notification id is explicitly initialized: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v4, v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-static {v4}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sget-object p1, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_NONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->notificationType:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static clearAllNotificationTypes()V
    .locals 4

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->values()[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->clearNotificationType()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    return-object v0
.end method


# virtual methods
.method public clearNotificationType()V
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_NONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->setNotificationType(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)V

    return-void
.end method

.method public getId()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".getId() should not be called"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getId(Z)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    xor-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    return p0
.end method

.method public getNotificationType()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->notificationType:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    return-object p0
.end method

.method public abstract getNotificationTypeManagerServiceClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManagerService;",
            ">;"
        }
    .end annotation
.end method

.method public setNotificationType(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->notificationType:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->getNotificationType()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
