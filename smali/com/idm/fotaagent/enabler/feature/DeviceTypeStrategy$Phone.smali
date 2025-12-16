.class Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy$Phone;
.super Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Phone"
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

    if-eqz p1, :cond_0

    const p0, 0x7f130051

    goto :goto_0

    :cond_0
    const p0, 0x7f130050

    :goto_0
    return p0
.end method

.method public getDownloadConfirmTitleId()I
    .locals 0

    const p0, 0x7f13003e

    return p0
.end method

.method public getDownloadFailedNetworkDisconnectedMessageId()I
    .locals 0

    const p0, 0x7f130042

    return p0
.end method

.method public getDownloadRetryMessageId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f130044

    goto :goto_0

    :cond_0
    const p0, 0x7f130048

    :goto_0
    return p0
.end method

.method public getInstallConfirmBodyId()I
    .locals 0

    const p0, 0x7f130059

    return p0
.end method

.method public getInsufficientMemoryMessageId()I
    .locals 0

    const p0, 0x7f130072

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

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, 0x7f130078

    return p0

    :cond_0
    const p0, 0x7f13007a

    return p0

    :cond_1
    const p0, 0x7f130079

    return p0
.end method

.method public getUpdateScheduledDialogMessageId()I
    .locals 0

    const p0, 0x7f1300ac

    return p0
.end method

.method public getUpdateSuccessMessageId()I
    .locals 0

    const p0, 0x7f13006a

    return p0
.end method
