.class public final enum Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

.field public static final enum IDM_NOTIFICATION_CHANNEL_GENERAL:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

.field public static final enum IDM_NOTIFICATION_CHANNEL_NO_SOUND_NO_VIBRATION:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->IDM_NOTIFICATION_CHANNEL_GENERAL:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->IDM_NOTIFICATION_CHANNEL_NO_SOUND_NO_VIBRATION:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

    filled-new-array {v0, v1}, [Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

    const-string v1, "IDM_NOTIFICATION_CHANNEL_GENERAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->IDM_NOTIFICATION_CHANNEL_GENERAL:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

    const-string v1, "IDM_NOTIFICATION_CHANNEL_NO_SOUND_NO_VIBRATION"

    invoke-direct {v0, v1, v3, v2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->IDM_NOTIFICATION_CHANNEL_NO_SOUND_NO_VIBRATION:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->$values()[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p2

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "already created - delete NotificationChannel - "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " since obsolete"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "already created - need not create"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "create NotificationChannel - "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized doUpdatePropertiesDependingOnLocale()V
    .locals 4

    const-string v0, "NotificationChannel Name is changed by Locale_Changed - "

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "not yet created (or destroyed), and thus no actions for locale change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->getUserVisibleNotificationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getUserVisibleNotificationName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f130080

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static updatePropertiesDependingOnLocale()V
    .locals 4

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->values()[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-direct {v3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->doUpdatePropertiesDependingOnLocale()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

    return-object v0
.end method


# virtual methods
.method public getNotificationChannel()Landroid/app/NotificationChannel;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->getUserVisibleNotificationName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0, p0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    return-object v1
.end method
