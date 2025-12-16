.class public Lcom/idm/fotaagent/enabler/ui/dialog/model/MobileOnlyModel$DownloadFailedRoaming;
.super Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/dialog/model/MobileOnlyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadFailedRoaming"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/MobileOnlyModel$DownloadFailedRoaming;->title()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/MobileOnlyModel$DownloadFailedRoaming;->message()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;->NONE:Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;

    new-instance v4, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubCancelNegative;

    invoke-direct {v4}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubCancelNegative;-><init>()V

    sget-object v5, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;->NONE:Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;)V

    return-void
.end method

.method private static message()Ljava/lang/String;
    .locals 1

    const v0, 0x7f130095

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static title()Ljava/lang/String;
    .locals 1

    const v0, 0x7f130049

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
