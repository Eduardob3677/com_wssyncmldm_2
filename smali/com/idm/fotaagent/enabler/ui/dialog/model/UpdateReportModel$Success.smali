.class Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$Success;
.super Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Success"
.end annotation


# static fields
.field static final DEFAULT_BULLET:Ljava/lang/String; = "\u2022 "


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$Success;->title()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$Success;->message(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$1;)V

    return-void
.end method

.method private static message(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_LAST_UPDATE:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    invoke-interface {v0, p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->isMajorUpdate(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;->getLastSuccessUpdateHistoryInfo()Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getUpdateSuccessMessageId()I

    move-result v1

    invoke-static {v1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u2022 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f130082

    invoke-static {v1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->oneUiVersion()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getUpdateSuccessMessageId()I

    move-result p0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static title()Ljava/lang/String;
    .locals 1

    const v0, 0x7f13009d

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
