.class final enum Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG$9;
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

    new-instance p0, Lcom/idm/fotaagent/enabler/ui/dialog/model/InstallScheduleConfirmModel;

    invoke-virtual {p1}, Lcom/idm/fotaagent/BundleWrapper;->getTaskId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InstallScheduleConfirmModel;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
