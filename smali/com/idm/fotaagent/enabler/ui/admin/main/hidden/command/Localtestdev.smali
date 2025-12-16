.class public Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Localtestdev;
.super Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Localtest;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Localtest;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public executeLocalTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDownloadPath()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download path : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->start()V

    return-void
.end method
