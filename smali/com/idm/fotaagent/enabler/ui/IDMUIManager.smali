.class public final enum Lcom/idm/fotaagent/enabler/ui/IDMUIManager;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/enabler/ui/IDMUIManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

.field private static final DEFAULT_DELAY_IN_MILLIS:I = 0x12c

.field public static final enum INSTANCE:Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

.field private static final MAX_INTERVAL_FOR_DIALOG_IN_MILLIS:J = 0x3e8L


# instance fields
.field private final activityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private lastRequestTimeForUi:J


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/enabler/ui/IDMUIManager;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->INSTANCE:Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    filled-new-array {v0}, [Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->INSTANCE:Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->$values()[Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->activityMap:Ljava/util/Map;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->lastRequestTimeForUi:J

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "UIManager"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/f;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/ui/f;-><init>(Lcom/idm/fotaagent/enabler/ui/IDMUIManager;)V

    invoke-direct {p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->lambda$finishEntryActivityIfExists$4(Landroid/app/Activity;)V

    return-void
.end method

.method public static allowsToFinish(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "not allowed: activity is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "not allowed: activity is destroyed"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "not allowed: activity is finishing"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->lambda$getActivityInMapWithoutEntry$5(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->lambda$getActivityInMapEntryFirstly$7(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/idm/fotaagent/enabler/ui/IDMUIManager;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->lambda$new$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/idm/fotaagent/enabler/ui/IDMUIManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finish(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->lambda$finishAllActivitiesExcept$9(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private finish(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->activityMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->allowsToFinish(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private finishAllActivitiesExcept(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "except "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/idm/fotaagent/enabler/ui/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishIf(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private finishIf(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->activityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/g;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/ui/g;-><init>(Lcom/idm/fotaagent/enabler/ui/IDMUIManager;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic g(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->lambda$finishEntryActivityIfExists$2(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method private getActivityInMapEntryFirstly()Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getActivityMapStream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/d;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/enabler/ui/d;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getActivityMapStream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/d;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getActivityMapStream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private getActivityMapStream()Ljava/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->activityMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->INSTANCE:Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    return-object v0
.end method

.method public static synthetic h(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->lambda$getActivityInMapEntryFirstly$6(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Ljava/util/Map$Entry;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->lambda$finishEntryActivityIfExists$3(Ljava/util/Map$Entry;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private idmHandleMessage(Landroid/os/Message;)V
    .locals 10

    const-string v0, " [UI Operate DIALOG ID : "

    const-string v1, " [UI Operate ACTIVITY ID : "

    const-string v2, "UiType : "

    :try_start_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->of(I)Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$1;->$SwitchMap$com$idm$fotaagent$enabler$ui$IDMUIManager$UiType:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    const-string v5, "]"

    if-eq v3, v4, :cond_1

    const/4 v0, 0x2

    if-eq v3, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->lastRequestTimeForUi:J

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->valueOf(I)Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {p0, v0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->idmStartActivity(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;Lcom/idm/fotaagent/BundleWrapper;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishAllActivitiesExcept(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v6, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->lastRequestTimeForUi:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-long v6, v3, v6

    const-wide/16 v8, 0x3e8

    sub-long/2addr v8, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v8, v6

    if-lez v1, :cond_2

    :try_start_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    iput-wide v3, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->lastRequestTimeForUi:J

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->valueOf(I)Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {p0, v1, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->idmStartDialog(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishAllActivitiesExcept(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private idmStartActivity(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;Lcom/idm/fotaagent/BundleWrapper;)V
    .locals 6

    invoke-virtual {p2}, Lcom/idm/fotaagent/BundleWrapper;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/idm/fotaagent/BundleWrapper;->getResourceId()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "idmStartActivity : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->getActivityClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$1;->$SwitchMap$com$idm$fotaagent$enabler$ui$interfaces$IDMUIEventInterface$UIACTIVITY:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    const/4 v1, 0x4

    if-eq v3, v1, :cond_1

    const/4 p2, 0x5

    if-eq v3, p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "unexpected UIACTIVITY: + "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p1, "EXTRA_KEY"

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getInstance()Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;

    move-result-object p1

    const-class p2, Lcom/idm/fotaagent/receiver/dynamic/TemperatureChangeReceiver;

    invoke-virtual {p1, p2}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->unregister(Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setUiMode(I)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v4}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setUiMode(I)V

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->isNone()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->cancel()V

    :cond_4
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/high16 p1, 0x24040000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private idmStartDialog(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "idmStartDialog : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/idm/fotaagent/BundleWrapper;->setDialogType(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)Lcom/idm/fotaagent/BundleWrapper;

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->getDialogClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x34040000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_KEY"

    invoke-virtual {p2}, Lcom/idm/fotaagent/BundleWrapper;->build()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic j(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->lambda$finishAllActivities$8(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Ljava/util/Map$Entry;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->lambda$startActivity$1(Ljava/util/Map$Entry;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$finishAllActivities$8(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$finishAllActivitiesExcept$9(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$finishEntryActivityIfExists$2(Ljava/util/Map$Entry;)Z
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->USER_INIT_ENTRY:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$finishEntryActivityIfExists$3(Ljava/util/Map$Entry;)Ljava/util/Optional;
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$finishEntryActivityIfExists$4(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->allowsToFinish(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getActivityInMapEntryFirstly$6(Ljava/util/Map$Entry;)Z
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->USER_INIT_ENTRY:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getActivityInMapEntryFirstly$7(Ljava/util/Map$Entry;)Z
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->USER_INIT_ENTRY:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getActivityInMapWithoutEntry$5(Ljava/util/Map$Entry;)Z
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->USER_INIT_ENTRY:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->idmHandleMessage(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$startActivity$1(Ljava/util/Map$Entry;)Ljava/util/Optional;
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/IDMUIManager;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/enabler/ui/IDMUIManager;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    return-object v0
.end method


# virtual methods
.method public finish(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;)V
    .locals 0

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finish(Ljava/lang/String;)V

    return-void
.end method

.method public finish(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)Z
    .locals 3

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->activityMap:Ljava/util/Map;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->allowsToFinish(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "EXTRA_KEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    new-instance v2, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v2, v0}, Lcom/idm/fotaagent/BundleWrapper;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/BundleWrapper;->getDialogType()Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    move-result-object v0

    if-eq p1, v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] is different from ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]; do not finish."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public finishAllActivities()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/d;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishIf(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public finishEntryActivityIfExists()V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getActivityMapStream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/d;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getActivityInMapWithoutEntry()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getActivityMapStream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/d;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public put(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->activityMap:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->allowsToFinish(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "previous activity["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] still exists, finish it"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public remove(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->activityMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eq p1, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] is different from ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] in map; do not remove."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->activityMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sendActivityMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;)V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v0}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendActivityMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;Lcom/idm/fotaagent/BundleWrapper;)V

    return-void
.end method

.method public sendActivityMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;Lcom/idm/fotaagent/BundleWrapper;)V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    sget-object p1, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->ACTIVITY:Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->getType()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendDelayedDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v0}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDelayedDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;J)V

    return-void
.end method

.method public sendDelayedDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;)V
    .locals 2

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDelayedDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;J)V

    return-void
.end method

.method public sendDelayedDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gez v2, :cond_0

    const-string p3, "delayInMillis should be non-negative"

    invoke-static {p3}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    move-wide p3, v0

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    sget-object p1, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->DIALOG:Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->getType()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v0}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;)V

    return-void
.end method

.method public sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;)V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    sget-object p1, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->DIALOG:Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager$UiType;->getType()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getActivityInMapEntryFirstly()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
