.class Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy$Tablet;
.super Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tablet"
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

    const p0, 0x7f130053

    goto :goto_0

    :cond_0
    const p0, 0x7f130052

    :goto_0
    return p0
.end method

.method public getDownloadConfirmTitleId()I
    .locals 0

    const p0, 0x7f13003f

    return p0
.end method

.method public getDownloadFailedNetworkDisconnectedMessageId()I
    .locals 0

    const p0, 0x7f130043

    return p0
.end method

.method public getDownloadRetryMessageId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f130045

    goto :goto_0

    :cond_0
    const p0, 0x7f130048

    :goto_0
    return p0
.end method

.method public getInstallConfirmBodyId()I
    .locals 0

    const p0, 0x7f13005a

    return p0
.end method

.method public getInsufficientMemoryMessageId()I
    .locals 0

    const p0, 0x7f130073

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

    const p0, 0x7f13007b

    return p0

    :cond_0
    const p0, 0x7f13007d

    return p0

    :cond_1
    const p0, 0x7f13007c

    return p0
.end method

.method public getSmartSwitchDialogMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f1300b3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1300b2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f1300b5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1300b7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUpdateScheduledDialogMessageId()I
    .locals 0

    const p0, 0x7f1300ad

    return p0
.end method

.method public getUpdateSuccessMessageId()I
    .locals 0

    const p0, 0x7f13006b

    return p0
.end method
