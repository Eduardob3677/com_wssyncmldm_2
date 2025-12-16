.class public Lcom/idm/fotaagent/enabler/fumo/IdleChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;
    }
.end annotation


# static fields
.field private static final ACTION_WIRELESS_POWER_SHARING_ENABLED:Ljava/lang/String; = "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_ENABLED"

.field private static final EXCEPTIONS:[Ljava/lang/String;

.field static final EXTRA_TX_ENABLED:Ljava/lang/String; = "enabled"

.field static final FLASH_LIGHT_ENABLED:Ljava/lang/String; = "flashlight_enabled"

.field private static final RECORD_SOURCE_ALL:I = -0x1

.field static final URI_SMART_SWITCH_RUNNING:Ljava/lang/String; = "content://com.sec.android.easyMover.statusProvider/isRunning"


# instance fields
.field private final context:Landroid/content/Context;

.field private postponeReason:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.settings"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->EXCEPTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;->NONE:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->postponeReason:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/enabler/fumo/IdleChecker;Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->lambda$isDeviceIdle$0(Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/idm/fotaagent/enabler/fumo/IdleChecker;Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->lambda$isDeviceIdle$1(Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;)V

    return-void
.end method

.method private isDeviceIdle()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/FloatingFeature;->isMHSDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isLiveDemoDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->isFotaAgentScreenOrExceptionsScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "FotaAgent Screen or Exceptions Screen"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;->values()[Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/idm/fotaagent/enabler/fumo/f;

    invoke-direct {v2, p0}, Lcom/idm/fotaagent/enabler/fumo/f;-><init>(Lcom/idm/fotaagent/enabler/fumo/IdleChecker;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/idm/fotaagent/enabler/fumo/g;

    invoke-direct {v2, p0}, Lcom/idm/fotaagent/enabler/fumo/g;-><init>(Lcom/idm/fotaagent/enabler/fumo/IdleChecker;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_2
    :goto_0
    const-string p0, "MHS or Live Demo: true"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v1
.end method

.method private synthetic lambda$isDeviceIdle$0(Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;)Z
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;->runs(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$isDeviceIdle$1(Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;)V
    .locals 0

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;->access$100(Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;)Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->postponeReason:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;

    return-void
.end method

.method private loadTopPackageName()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->context:Landroid/content/Context;

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const-string v0, "am should not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    const-string v0, "tasks should not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getPostponeReason()Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->postponeReason:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;

    return-object p0
.end method

.method public isCallIdle()Z
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->context:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallStateForSubscription()I

    move-result v0

    const-string v2, "Call state: "

    invoke-static {v2, v0}, LB/f;->D(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v0, "tm should not be null"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;->BY_CALL:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->postponeReason:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;

    :cond_2
    return v1
.end method

.method public isFotaAgentScreenOrExceptionsScreen()Z
    .locals 5

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->loadTopPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->EXCEPTIONS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->loadTopPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isIdle()Z
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->isCallIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->isDeviceIdle()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
