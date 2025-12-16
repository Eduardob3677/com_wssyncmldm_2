.class Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$OkButtonStrategy;
.super Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OkButtonStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const v0, 0x7f130016

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$OkButtonStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnClick(Landroid/content/DialogInterface;Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;->doOnClick(Landroid/content/DialogInterface;Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;)V

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_UPDATE_REPORT:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->cancel(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)V

    return-void
.end method
