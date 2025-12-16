.class public abstract enum Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/SerializableConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$BuilderVariant;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;",
        ">;",
        "Lcom/idm/fotaagent/SerializableConsumer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

.field public static final enum IDM_NOTIFICATION_AB_UPDATE_FAIL_INSUFFICIENT_BATTERY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

.field public static final enum IDM_NOTIFICATION_AB_UPDATE_MERGE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

.field public static final enum IDM_NOTIFICATION_DOWNLOAD_CONFIRM:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

.field public static final enum IDM_NOTIFICATION_DOWNLOAD_FAIL_NETWORK_DISCONNECTED:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

.field public static final enum IDM_NOTIFICATION_DOWNLOAD_FAIL_WIFI_DISCONNECTED:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

.field public static final enum IDM_NOTIFICATION_DOWNLOAD_PAUSE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

.field public static final enum IDM_NOTIFICATION_DOWNLOAD_PROGRESS:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

.field public static final enum IDM_NOTIFICATION_DOWNLOAD_RETRY_CONFIRM:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

.field public static final enum IDM_NOTIFICATION_INSTALL_CONFIRM_BACKGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

.field public static final enum IDM_NOTIFICATION_INSTALL_CONFIRM_FOREGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

.field public static final enum IDM_NOTIFICATION_NONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

.field public static final enum IDM_NOTIFICATION_SCHEDULED_POSTPONABLE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

.field public static final enum IDM_NOTIFICATION_SCHEDULED_UNPOSTPONABLE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

.field public static final enum IDM_NOTIFICATION_SYNC_DM:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

.field public static final enum IDM_NOTIFICATION_UPDATE_FAIL_INSUFFICIENT_MEMORY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

.field public static final enum IDM_NOTIFICATION_UPDATE_REPORT:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;


# instance fields
.field private final actionStrategy:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

.field private final bigTextStrategy:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;

.field private final notificationStrategy:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

.field private final smallIconStrategy:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;
    .locals 16

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_NONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_SYNC_DM:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_CONFIRM:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    sget-object v3, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_PROGRESS:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    sget-object v4, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_PAUSE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    sget-object v5, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_INSTALL_CONFIRM_BACKGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    sget-object v6, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_INSTALL_CONFIRM_FOREGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    sget-object v7, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_SCHEDULED_POSTPONABLE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    sget-object v8, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_SCHEDULED_UNPOSTPONABLE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    sget-object v9, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_AB_UPDATE_MERGE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    sget-object v10, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_UPDATE_REPORT:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    sget-object v11, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_FAIL_WIFI_DISCONNECTED:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    sget-object v12, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_FAIL_NETWORK_DISCONNECTED:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    sget-object v13, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_RETRY_CONFIRM:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    sget-object v14, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_AB_UPDATE_FAIL_INSUFFICIENT_BATTERY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    sget-object v15, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_UPDATE_FAIL_INSUFFICIENT_MEMORY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    filled-new-array/range {v0 .. v15}, [Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 20

    new-instance v6, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$1;

    sget-object v7, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;->DO_NOTHING:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;

    sget-object v8, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->FOTA_CONNECTING:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;

    sget-object v16, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->PRIMARY_BACKGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    const-string v1, "IDM_NOTIFICATION_NONE"

    const/4 v2, 0x0

    move-object v0, v6

    move-object v3, v7

    move-object v4, v8

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$1;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    sput-object v6, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_NONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    new-instance v6, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$2;

    sget-object v17, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;->BIG_TEXT:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;

    sget-object v18, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->PRIMARY_FOREGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    const-string v1, "IDM_NOTIFICATION_SYNC_DM"

    const/4 v2, 0x1

    move-object v0, v6

    move-object/from16 v3, v17

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$2;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    sput-object v6, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_SYNC_DM:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$3;

    sget-object v6, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->FOTA_COMPLETION:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;

    sget-object v19, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->DISMISS_24_HOURS:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

    const-string v10, "IDM_NOTIFICATION_DOWNLOAD_CONFIRM"

    const/4 v11, 0x2

    move-object v9, v0

    move-object/from16 v12, v17

    move-object v13, v6

    move-object/from16 v14, v19

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$3;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_CONFIRM:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    new-instance v9, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$4;

    const-string v1, "IDM_NOTIFICATION_DOWNLOAD_PROGRESS"

    const/4 v2, 0x3

    move-object v0, v9

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$4;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    sput-object v9, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_PROGRESS:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$5;

    sget-object v14, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->DISMISS_PAUSE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

    sget-object v15, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->DOWNLOAD_PAUSE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    const-string v10, "IDM_NOTIFICATION_DOWNLOAD_PAUSE"

    const/4 v11, 0x4

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$5;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_PAUSE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    new-instance v7, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$6;

    const-string v1, "IDM_NOTIFICATION_INSTALL_CONFIRM_BACKGROUND"

    const/4 v2, 0x5

    move-object v0, v7

    move-object/from16 v3, v17

    move-object v4, v6

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$6;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    sput-object v7, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_INSTALL_CONFIRM_BACKGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    new-instance v7, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$7;

    const-string v1, "IDM_NOTIFICATION_INSTALL_CONFIRM_FOREGROUND"

    const/4 v2, 0x6

    move-object v0, v7

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$7;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    sput-object v7, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_INSTALL_CONFIRM_FOREGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$8;

    sget-object v4, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->FOTA_POSTPONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;

    sget-object v14, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->POSTPONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

    const-string v10, "IDM_NOTIFICATION_SCHEDULED_POSTPONABLE"

    const/4 v11, 0x7

    move-object v9, v0

    move-object v13, v4

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$8;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_SCHEDULED_POSTPONABLE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    new-instance v6, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$9;

    const-string v1, "IDM_NOTIFICATION_SCHEDULED_UNPOSTPONABLE"

    const/16 v2, 0x8

    move-object v0, v6

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$9;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    sput-object v6, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_SCHEDULED_UNPOSTPONABLE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    new-instance v6, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$10;

    const-string v1, "IDM_NOTIFICATION_AB_UPDATE_MERGE"

    const/16 v2, 0x9

    move-object v0, v6

    move-object v4, v8

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$10;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    sput-object v6, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_AB_UPDATE_MERGE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    new-instance v6, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$11;

    sget-object v4, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->FOTA_COMPLETION_OR_FAIL:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;

    sget-object v7, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->SECONDARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    const-string v1, "IDM_NOTIFICATION_UPDATE_REPORT"

    const/16 v2, 0xa

    move-object v0, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$11;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    sput-object v6, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_UPDATE_REPORT:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$12;

    sget-object v6, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->FOTA_FAIL:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->WIFI_SETTINGS:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

    const-string v10, "IDM_NOTIFICATION_DOWNLOAD_FAIL_WIFI_DISCONNECTED"

    const/16 v11, 0xb

    move-object v9, v0

    move-object v13, v6

    move-object v14, v1

    invoke-direct/range {v9 .. v15}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$12;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_FAIL_WIFI_DISCONNECTED:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$13;

    const-string v10, "IDM_NOTIFICATION_DOWNLOAD_FAIL_NETWORK_DISCONNECTED"

    const/16 v11, 0xc

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$13;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_FAIL_NETWORK_DISCONNECTED:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    new-instance v8, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$14;

    const-string v1, "IDM_NOTIFICATION_DOWNLOAD_RETRY_CONFIRM"

    const/16 v2, 0xd

    move-object v0, v8

    move-object v4, v6

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$14;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    sput-object v8, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_RETRY_CONFIRM:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$15;

    const-string v10, "IDM_NOTIFICATION_AB_UPDATE_FAIL_INSUFFICIENT_BATTERY"

    const/16 v11, 0xe

    move-object v9, v0

    move-object/from16 v14, v19

    move-object/from16 v15, v18

    invoke-direct/range {v9 .. v15}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$15;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_AB_UPDATE_FAIL_INSUFFICIENT_BATTERY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$16;

    const/16 v11, 0xf

    sget-object v14, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->GO_TO_STORAGE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

    const-string v10, "IDM_NOTIFICATION_UPDATE_FAIL_INSUFFICIENT_MEMORY"

    move-object v9, v0

    move-object v15, v7

    invoke-direct/range {v9 .. v15}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$16;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_UPDATE_FAIL_INSUFFICIENT_MEMORY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->$values()[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;",
            "Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;",
            "Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;",
            "Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->bigTextStrategy:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;

    iput-object p4, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->smallIconStrategy:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;

    iput-object p5, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->actionStrategy:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

    iput-object p6, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->notificationStrategy:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;",
            "Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;",
            "Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;",
            ")V"
        }
    .end annotation

    sget-object v5, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->NO_ACTION:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V

    return-void
.end method

.method public static synthetic access$100()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$300(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->isImportantUpdate(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->excludeCharsFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private doGetBuilder(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 4

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->IDM_NOTIFICATION_CHANNEL_NO_SOUND_NO_VIBRATION:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContentTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContentText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getBigTextStyle(Ljava/lang/String;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getSmallIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getDismissPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getAction(Ljava/lang/String;)Landroid/app/Notification$Action;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setForegroundServiceBehavior(I)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "setForegroundServiceBehavior is introduced since S OS"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method private static excludeCharsFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "%1$s"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%2$s"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getBigTextStyle(Ljava/lang/String;)Landroid/app/Notification$BigTextStyle;
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->bigTextStrategy:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;

    invoke-interface {v0, p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;->getBigTextStyle(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    return-object p0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getDismissPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationDismissReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "notificationType"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getNotificationStrategy()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    move-result-object p0

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->getNotificationId()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/high16 v2, 0xc000000

    invoke-static {v1, p0, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v1}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    invoke-virtual {v1, p1}, Lcom/idm/fotaagent/BundleWrapper;->setTaskId(Ljava/lang/String;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/BundleWrapper;->setNotificationType(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/BundleWrapper;->setConsumer(Lcom/idm/fotaagent/SerializableConsumer;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/BundleWrapper;->build()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "com.wssyncmldm:bundle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getNotificationStrategy()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    move-result-object p0

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->getNotificationId()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/high16 v1, 0xc000000

    invoke-static {v0, p0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getSmallIcon()I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->smallIconStrategy:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->getSmallIcon()I

    move-result p0

    return p0
.end method

.method private static isImportantUpdate(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getServerId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->getUpdateType()Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;->Important:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " clicked for taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->onClick(Ljava/lang/String;)V

    return-void
.end method

.method public applyVariantTo(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getBuilderVariant()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$BuilderVariant;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$BuilderVariant;->applyVariantTo(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getAction(Ljava/lang/String;)Landroid/app/Notification$Action;
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->actionStrategy:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1, p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->getAction(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method public final getBuilder(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->doGetBuilder(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->applyVariantTo(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getContentText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMajorOrMinorContentText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_WHATS_NEW:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->isMajorUpdate(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f130039

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getUpdateOneUiVersion()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f13003b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationStrategy()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->notificationStrategy:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    return-object p0
.end method

.method public isSet()Z
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getNotificationStrategy()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->getNotificationId()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->getNotificationType()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needsRemind()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onClick(Ljava/lang/String;)V
.end method

.method public timeMillisForRemind()J
    .locals 2

    sget-object p0, Lcom/idm/fotaagent/utils/EpochTime;->DAY_1_LATER:Lcom/idm/fotaagent/utils/EpochTime;

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/EpochTime;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method
