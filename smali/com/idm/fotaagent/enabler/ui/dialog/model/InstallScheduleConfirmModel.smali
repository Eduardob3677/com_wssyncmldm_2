.class public Lcom/idm/fotaagent/enabler/ui/dialog/model/InstallScheduleConfirmModel;
.super Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/dialog/model/InstallScheduleConfirmModel$ChangeTime;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InstallScheduleConfirmModel;->title()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InstallScheduleConfirmModel;->message()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;->NONE:Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;

    new-instance v4, Lcom/idm/fotaagent/enabler/ui/dialog/model/InstallScheduleConfirmModel$ChangeTime;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InstallScheduleConfirmModel$ChangeTime;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/dialog/model/InstallScheduleConfirmModel$1;)V

    new-instance v5, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubOk;

    invoke-direct {v5}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubOk;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;)V

    return-void
.end method

.method private static message()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->alarmTime()J

    move-result-wide v0

    const v2, 0x7f13004d

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/idm/fotaagent/utils/Formatted$Android;->longDateWeekDayAndTime(JILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static title()Ljava/lang/String;
    .locals 1

    const v0, 0x7f13006f

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
