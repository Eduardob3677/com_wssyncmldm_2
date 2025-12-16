.class public Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadRetryConfirmModel;
.super Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadRetryConfirmModel$ContinueButtonStrategy;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 6

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadRetryConfirmModel;->title()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadRetryConfirmModel;->message(Z)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;->NONE:Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubCancelNeutral;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubCancelNeutral;-><init>()V

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_1

    new-instance p2, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubCancelNegative;

    invoke-direct {p2}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubCancelNegative;-><init>()V

    :goto_2
    move-object v4, p2

    goto :goto_3

    :cond_1
    new-instance p2, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$WifiSettingNegative;

    invoke-direct {p2}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$WifiSettingNegative;-><init>()V

    goto :goto_2

    :goto_3
    new-instance v5, Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadRetryConfirmModel$ContinueButtonStrategy;

    invoke-direct {v5, p1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadRetryConfirmModel$ContinueButtonStrategy;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;)V

    return-void
.end method

.method private static message(Z)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getDownloadRetryMessageId(Z)I

    move-result p0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shouldReplace(Landroid/app/AlertDialog;)Z
    .locals 4

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wasWifiConnected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isWifiConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/idm/fotaagent/utils/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/idm/fotaagent/utils/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-eq p0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0
.end method

.method private static title()Ljava/lang/String;
    .locals 1

    const v0, 0x7f130035

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
