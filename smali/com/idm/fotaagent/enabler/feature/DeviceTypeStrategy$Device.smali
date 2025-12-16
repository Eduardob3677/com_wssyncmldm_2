.class Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy$Device;
.super Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Device"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getCautionNotUseDuringUpdateMessageId(Z)I
    .locals 0

    const p0, 0x7f13004f

    return p0
.end method

.method public getDownloadConfirmTitleId()I
    .locals 0

    const p0, 0x7f13003d

    return p0
.end method

.method public getDownloadFailedNetworkDisconnectedMessageId()I
    .locals 0

    const p0, 0x7f130041

    return p0
.end method

.method public getDownloadRetryMessageId(Z)I
    .locals 0

    const p0, 0x7f130047

    return p0
.end method

.method public getInstallConfirmBodyId()I
    .locals 0

    const p0, 0x7f130058

    return p0
.end method

.method public getInsufficientMemoryMessageId()I
    .locals 0

    const p0, 0x7f130071

    return p0
.end method

.method public getModifiedDeviceMessageId()I
    .locals 1

    sget-object p0, Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy$1;->$SwitchMap$com$idm$fotaagent$enabler$feature$Operator:[I

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/Operator;->get()Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, 0x7f130076

    return p0

    :cond_0
    const p0, 0x7f130077

    return p0
.end method

.method public getUpdateScheduledDialogMessageId()I
    .locals 0

    const p0, 0x7f1300ab

    return p0
.end method

.method public getUpdateSuccessMessageId()I
    .locals 0

    const p0, 0x7f130069

    return p0
.end method
