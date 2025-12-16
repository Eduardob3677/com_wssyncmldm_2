.class public Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;,
        Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$BearerChangeReceiver;,
        Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$CarrierFeatureChangeReceiver;,
        Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$DefaultDataSubInfoChangeReceiver;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;


# instance fields
.field final receivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;",
            ">;",
            "Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;

    invoke-direct {v0}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->INSTANCE:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->receivers:Ljava/util/Map;

    sget-object v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;->UNREGISTERED:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    iput-object v0, p0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->state:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    return-void
.end method

.method public static clearWifiPostponeIfNecessary(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "taskId is empty"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->isWifiSetting()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "This postpone type is not clearing case"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnlyForDl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getPushUiMode()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "clear wifi postpone"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->cancel()V

    return-void

    :cond_3
    :goto_0
    const-string p0, "Wifi still has been required"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->INSTANCE:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;

    return-object v0
.end method

.method public static resetNetworkFeatures()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->reloadFeature()V

    invoke-static {v0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->reScheduleIfExistPendingJob(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->clearWifiPostponeIfNecessary(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized isRegistered()Z
    .locals 2

    const-string v0, "state: "

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->state:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->state:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    sget-object v1, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;->REGISTERED:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register()V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "register"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;->REGISTERED:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    iput-object v0, p0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->state:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    const-class v4, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeAutoRegistered;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const-class v4, Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Annotation attached to unsupported class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    sget-object v4, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->NOT_SPECIFY_FOR_SYSTEM:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    const-class v5, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-class v5, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->register(Ljava/lang/Class;Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;->PARTIALLY_REGISTERED:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    iput-object v3, p0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->state:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Ljava/lang/Class;Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;",
            ">;",
            "Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;",
            ")Z"
        }
    .end annotation

    const-string v0, "already registered: "

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", property : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->receivers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;

    sget-object v1, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$1;->$SwitchMap$com$idm$fotaagent$receiver$dynamic$ReceiverToBeSpecifiedFlag$Property:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x2

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0}, Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0}, Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {p2, v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0}, Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {p2, v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :goto_0
    iget-object p2, p0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->receivers:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public registerTemperatureChangeReceiverIfNeeded()V
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getTemperatureChecker()Lcom/idm/fotaagent/utils/temperature/TemperatureChecker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/temperature/TemperatureChecker;->needsCheckTemperatureChange()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getInstance()Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;

    move-result-object p0

    const-class v0, Lcom/idm/fotaagent/receiver/dynamic/TemperatureChangeReceiver;

    sget-object v1, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->EXPORT:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->register(Ljava/lang/Class;Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized unregister()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "unregister"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;->UNREGISTERED:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    iput-object v0, p0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->state:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->receivers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;

    if-nez v1, :cond_0

    const-string v1, "receiver is null"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->receivers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregister(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "receiver is null for "

    const-string v1, "unregister: "

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->receivers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method
