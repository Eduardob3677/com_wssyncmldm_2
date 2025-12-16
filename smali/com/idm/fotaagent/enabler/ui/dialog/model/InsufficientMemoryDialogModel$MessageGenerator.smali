.class public Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel$MessageGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageGenerator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDetailMessage()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel;->access$100()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel$MessageGenerator;->getSimpleMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getInsufficientMemoryMessageId()I

    move-result v0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel;->access$100()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel;->access$200(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessage(Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isABModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel$MessageGenerator;->getDetailMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDeltaIndex()I

    move-result v0

    sget-object v1, Lcom/idm/fotaagent/utils/storage/StorageType;->DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/storage/StorageType;->type()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel$MessageGenerator;->getDetailMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result p0

    const/16 v0, 0x32

    if-ne p0, v0, :cond_2

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel$MessageGenerator;->getDetailMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel$MessageGenerator;->getSimpleMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSimpleMessage()Ljava/lang/String;
    .locals 1

    const v0, 0x7f130040

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
