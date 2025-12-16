.class public Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;,
        Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$OnFirstNetReadyChangedListener;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;


# instance fields
.field private final context:Landroid/content/Context;

.field private final fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

.field private onFirstNetReadyChangedListener:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$OnFirstNetReadyChangedListener;

.field private strategy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->context:Landroid/content/Context;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->isFirstNetReady()Z

    move-result p1

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->valueOf(Z)Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->strategy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->lambda$enableFirstNetInstallIfNeeded$1(Landroid/content/Context;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->lambda$enableFirstNetInstallIfNeeded$0(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static get(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->INSTANCE:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->INSTANCE:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    return-object p0

    :cond_0
    const-class v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->INSTANCE:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    if-eqz v1, :cond_1

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->INSTANCE:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->INSTANCE:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static synthetic lambda$enableFirstNetInstallIfNeeded$0(Ljava/lang/Integer;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x32

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$enableFirstNetInstallIfNeeded$1(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/settings/SettingsDatabaseManager;->enableFirstNetInstall(Landroid/content/Context;)V

    return-void
.end method

.method private updateIfFirstNetReady()Z
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->isFirstNetReady(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "firstNetReady : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/settings/SettingsDatabaseManager;->disableFirstNetInstall(Landroid/content/Context;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->enableFirstNetInstallIfNeeded(Landroid/content/Context;)V

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->FIRST_NET_READY:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->strategy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    if-ne v2, v0, :cond_1

    return v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->strategy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->strategy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->setFirstNetReady(Z)V

    return v0
.end method

.method private updateInstallConfirmScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->onFirstNetReadyChangedListener:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$OnFirstNetReadyChangedListener;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "update install confirm screen"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->onFirstNetReadyChangedListener:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$OnFirstNetReadyChangedListener;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$OnFirstNetReadyChangedListener;->update()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public clearOnFirstNetReadyChangedListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->onFirstNetReadyChangedListener:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$OnFirstNetReadyChangedListener;

    return-void
.end method

.method public declared-synchronized enableFirstNetInstallIfNeeded(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/idm/adapter/filesystem/a;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/idm/adapter/filesystem/a;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/installconfirm/e;

    invoke-direct {v1, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized installPostponeType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->strategy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->installPostponeType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized installType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->strategy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->installType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isAlreadyScheduled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->strategy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->isScheduledInstall()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmergencyService(Landroid/content/Context;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->strategy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->isEmergencyService(Landroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized postponeType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->strategy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->postponeType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rebootOrInstall(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->strategy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->rebootOrInstall(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removesMediumEmphasisButton(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->strategy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->removesMediumEmphasisButton(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setOnFirstNetReadyChangedListener(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$OnFirstNetReadyChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->onFirstNetReadyChangedListener:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$OnFirstNetReadyChangedListener;

    return-void
.end method

.method public declared-synchronized shouldCountdown(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->strategy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->shouldCountdown(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateIfFirstNet()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->updateIfFirstNetReady()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/service/actioninfo/IDMActionInfo;

    if-nez v0, :cond_1

    const-string v0, "actionInfo is null"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->updateInstallConfirmScreen()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->updateNotification(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateNotification(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->strategy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;->updateNotification(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
