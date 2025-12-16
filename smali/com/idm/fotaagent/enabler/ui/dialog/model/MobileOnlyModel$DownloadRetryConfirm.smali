.class public Lcom/idm/fotaagent/enabler/ui/dialog/model/MobileOnlyModel$DownloadRetryConfirm;
.super Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/dialog/model/MobileOnlyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadRetryConfirm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/dialog/model/MobileOnlyModel$DownloadRetryConfirm$ContinueButtonStrategy;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/MobileOnlyModel$DownloadRetryConfirm;->title()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/MobileOnlyModel$DownloadRetryConfirm;->message()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;->NONE:Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;

    new-instance v4, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubCancelNegative;

    invoke-direct {v4}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubCancelNegative;-><init>()V

    new-instance v5, Lcom/idm/fotaagent/enabler/ui/dialog/model/MobileOnlyModel$DownloadRetryConfirm$ContinueButtonStrategy;

    invoke-direct {v5, p1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/MobileOnlyModel$DownloadRetryConfirm$ContinueButtonStrategy;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;)V

    return-void
.end method

.method private static message()Ljava/lang/String;
    .locals 1

    const v0, 0x7f130047

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static shouldReplace(Landroid/app/AlertDialog;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static title()Ljava/lang/String;
    .locals 1

    const v0, 0x7f13009d

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
