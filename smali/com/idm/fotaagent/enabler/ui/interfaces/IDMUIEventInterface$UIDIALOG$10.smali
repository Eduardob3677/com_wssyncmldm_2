.class final enum Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG$10;
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

    new-instance p0, Lcom/idm/fotaagent/utils/UpdateResultUtils;

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;->isUpdateSucceeded()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel;->createSuccess(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p2}, Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel;->createFailure(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel;

    move-result-object p0

    return-object p0
.end method
