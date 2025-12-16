.class public Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel;
.super Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$OkButtonStrategy;,
        Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$Success;,
        Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$Failure;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 6

    sget-object v3, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;->NONE:Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;

    sget-object v4, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;->NONE:Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;

    new-instance v5, Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$OkButtonStrategy;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$OkButtonStrategy;-><init>(Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$1;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static createFailure(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$Failure;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$Failure;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createSuccess(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$Success;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/UpdateReportModel$Success;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
