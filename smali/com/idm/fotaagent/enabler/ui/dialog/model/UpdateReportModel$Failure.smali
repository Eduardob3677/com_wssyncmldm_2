.class Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$Failure;
.super Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Failure"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$Failure;->title()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$Failure;->message(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$1;)V

    return-void
.end method

.method private static message(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/Operator;->get()Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/feature/Operator;->getUpdateFailedMessageId()I

    move-result v0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_UPDATE_REPORT:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {v1, p0, v0}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->getSmartSwitchSpannableString(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method

.method private static title()Ljava/lang/String;
    .locals 1

    const v0, 0x7f130066

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
