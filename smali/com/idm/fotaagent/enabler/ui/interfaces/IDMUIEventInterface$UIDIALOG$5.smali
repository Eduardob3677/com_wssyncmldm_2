.class final enum Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG$5;
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

    invoke-virtual {p1}, Lcom/idm/fotaagent/BundleWrapper;->getTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->isMobileNetworkOnlyByCarrier()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/dialog/model/MobileOnlyModel$DownloadRetryConfirm;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/MobileOnlyModel$DownloadRetryConfirm;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadRetryConfirmModel;

    invoke-static {p2}, Lcom/idm/fotaagent/utils/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result p2

    invoke-direct {p1, p0, p2}, Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadRetryConfirmModel;-><init>(Ljava/lang/String;Z)V

    return-object p1
.end method

.method public getScreenId()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "023"

    goto :goto_0

    :cond_0
    const-string p0, "021"

    :goto_0
    return-object p0
.end method

.method public shouldReplace(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Landroid/app/AlertDialog;)Z
    .locals 0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->isMobileNetworkOnlyByCarrier()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p2}, Lcom/idm/fotaagent/enabler/ui/dialog/model/MobileOnlyModel$DownloadRetryConfirm;->shouldReplace(Landroid/app/AlertDialog;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p2}, Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadRetryConfirmModel;->shouldReplace(Landroid/app/AlertDialog;)Z

    move-result p0

    return p0
.end method
