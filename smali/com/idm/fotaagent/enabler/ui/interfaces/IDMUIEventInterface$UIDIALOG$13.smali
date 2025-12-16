.class final enum Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG$13;
.super Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$1;)V

    return-void
.end method


# virtual methods
.method public getDialogModel(Lcom/idm/fotaagent/BundleWrapper;Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel;

    invoke-virtual {p1}, Lcom/idm/fotaagent/BundleWrapper;->getTaskId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getScreenId()Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isDownloadFumoStatus()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "034"

    return-object p0

    :cond_0
    const-string p0, "035"

    return-object p0
.end method
