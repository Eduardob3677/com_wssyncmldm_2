.class public Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$HistoryUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$Updater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryUpdater"
.end annotation


# instance fields
.field private final taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$HistoryUpdater;->taskId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$HistoryUpdater;->lambda$update$0(Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)V

    return-void
.end method

.method private static synthetic lambda$update$0(Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)V
    .locals 1

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/DescriptionContent;->description()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/DescriptionContent;->type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setDescriptionType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/DescriptionContent;->summaryDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setSummaryDescription(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;-><init>()V

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-direct {v1, p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-direct {v2, p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setDate(J)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getUpdateFwVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setVersion(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->descriptionContent()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LC2/c;

    const/4 v3, 0x3

    invoke-direct {v1, v3, v0}, LC2/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getOneUiType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setOneUiType(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getUpdateOneUiVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setOneUiVersion(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getUpdateFwOsVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setAndroidVersion(Ljava/lang/String;)V

    new-instance p1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$HistoryUpdater;->taskId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getObjectSize()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setDeltaSize(J)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getSecurityPatchVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setSecurityPatchLevel(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0, p2}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->setResultCode(Ljava/lang/String;)V

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;-><init>()V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->insertEntity(Ljava/lang/Object;)J

    return-void
.end method
