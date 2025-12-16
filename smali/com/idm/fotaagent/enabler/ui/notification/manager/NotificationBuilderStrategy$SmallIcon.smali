.class public interface abstract Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SmallIcon"
.end annotation


# static fields
.field public static final FOTA_COMPLETION:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;

.field public static final FOTA_COMPLETION_OR_FAIL:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;

.field public static final FOTA_CONNECTING:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;

.field public static final FOTA_FAIL:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;

.field public static final FOTA_POSTPONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE2/a;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->FOTA_CONNECTING:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;

    new-instance v0, LE2/a;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->FOTA_POSTPONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;

    new-instance v0, LE2/a;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->FOTA_COMPLETION:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;

    new-instance v0, LE2/a;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->FOTA_FAIL:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;

    new-instance v0, LE2/a;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->FOTA_COMPLETION_OR_FAIL:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;

    return-void
.end method

.method public static synthetic c()I
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->lambda$static$3()I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$static$0()I
    .locals 1

    const v0, 0x7f080203

    return v0
.end method

.method private static synthetic lambda$static$1()I
    .locals 1

    const v0, 0x7f080207

    return v0
.end method

.method private static synthetic lambda$static$2()I
    .locals 1

    const v0, 0x7f080204

    return v0
.end method

.method private static synthetic lambda$static$3()I
    .locals 1

    const v0, 0x7f080205

    return v0
.end method

.method private static synthetic lambda$static$4()I
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/utils/UpdateResultUtils;

    invoke-direct {v0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;->isUpdateSucceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080204

    return v0

    :cond_0
    const v0, 0x7f080205

    return v0
.end method

.method public static synthetic r()I
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->lambda$static$2()I

    move-result v0

    return v0
.end method

.method public static synthetic s()I
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->lambda$static$1()I

    move-result v0

    return v0
.end method

.method public static synthetic v()I
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->lambda$static$4()I

    move-result v0

    return v0
.end method

.method public static synthetic w()I
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->lambda$static$0()I

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract getSmallIcon()I
.end method
