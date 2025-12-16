.class public Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadFailedRoamingModel;
.super Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadFailedRoamingModel;->title(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadFailedRoamingModel;->message(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;->NONE:Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;

    new-instance v4, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubCancelNegative;

    invoke-direct {v4}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubCancelNegative;-><init>()V

    new-instance v5, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$WifiSettingPositive;

    invoke-direct {v5}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$WifiSettingPositive;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;)V

    return-void
.end method

.method private static message(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isReportFumoStatus()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f130096

    :goto_0
    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const p0, 0x7f130094

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method private static title(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isReportFumoStatus()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f130097

    :goto_0
    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const p0, 0x7f130049

    goto :goto_0

    :goto_1
    return-object p0
.end method
