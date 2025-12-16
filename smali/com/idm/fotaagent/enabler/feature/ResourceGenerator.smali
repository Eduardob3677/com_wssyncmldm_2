.class public abstract Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$ABTablet;,
        Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$NonABTablet;,
        Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$ABPhone;,
        Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$NonABPhone;,
        Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$ABDevice;,
        Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$NonABDevice;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;


# instance fields
.field protected final deviceTypeStrategy:Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;

.field protected final updateTypeStrategy:Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy;


# direct methods
.method private constructor <init>(Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->deviceTypeStrategy:Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->updateTypeStrategy:Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy;Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;-><init>(Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy;)V

    return-void
.end method

.method public static createResourceGenerator()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;
    .locals 4

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isABModel()Z

    move-result v0

    const-string v1, "ro.build.characteristics"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "tablet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected deviceType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". regard as PHONE"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$ABPhone;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$ABPhone;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$NonABPhone;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$NonABPhone;-><init>()V

    :goto_1
    return-object v0

    :pswitch_0
    if-eqz v0, :cond_4

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$ABDevice;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$ABDevice;-><init>()V

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$NonABDevice;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$NonABDevice;-><init>()V

    :goto_2
    return-object v0

    :pswitch_1
    if-eqz v0, :cond_5

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$ABPhone;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$ABPhone;-><init>()V

    goto :goto_3

    :cond_5
    new-instance v0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$NonABPhone;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$NonABPhone;-><init>()V

    :goto_3
    return-object v0

    :pswitch_2
    if-eqz v0, :cond_6

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$ABTablet;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$ABTablet;-><init>()V

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$NonABTablet;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$NonABTablet;-><init>()V

    :goto_4
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3488c19a -> :sswitch_2
        0x65b3d6e -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->INSTANCE:Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->INSTANCE:Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    return-object v0

    :cond_0
    const-class v0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->INSTANCE:Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->INSTANCE:Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->createResourceGenerator()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object v1

    sput-object v1, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->INSTANCE:Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getCautionNotUseDuringUpdateMessageId(Z)I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->deviceTypeStrategy:Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;->getCautionNotUseDuringUpdateMessageId(Z)I

    move-result p0

    return p0
.end method

.method public getDownloadConfirmHighEmphasisButtonTitleId()I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->updateTypeStrategy:Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy;->getDownloadConfirmHighEmphasisButtonTitleId()I

    move-result p0

    return p0
.end method

.method public getDownloadConfirmImportantTitleId()I
    .locals 0

    const p0, 0x7f13004c

    return p0
.end method

.method public getDownloadConfirmTitleId()I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->deviceTypeStrategy:Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;->getDownloadConfirmTitleId()I

    move-result p0

    return p0
.end method

.method public getDownloadFailedNetworkDisconnectedMessageId()I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->deviceTypeStrategy:Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;->getDownloadFailedNetworkDisconnectedMessageId()I

    move-result p0

    return p0
.end method

.method public getDownloadRetryMessageId(Z)I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->deviceTypeStrategy:Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;->getDownloadRetryMessageId(Z)I

    move-result p0

    return p0
.end method

.method public getInstallConfirmBody(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->deviceTypeStrategy:Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;->getInstallConfirmBodyId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInstallConfirmHighEmphasisButtonTitleId()I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->updateTypeStrategy:Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy;->getInstallConfirmHighEmphasisButtonTitleId()I

    move-result p0

    return p0
.end method

.method public getInstallConfirmImportantTitleId()I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->updateTypeStrategy:Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy;->getInstallConfirmImportantTitleId()I

    move-result p0

    return p0
.end method

.method public getInstallConfirmMediumEmphasisButtonTitleId()I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->updateTypeStrategy:Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy;->getInstallConfirmMediumEmphasisButtonTitleId()I

    move-result p0

    return p0
.end method

.method public getInstallConfirmNotiTitleId()I
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getInstallConfirmTitleId()I

    move-result p0

    return p0
.end method

.method public getInstallConfirmTitleId()I
    .locals 0

    const p0, 0x7f130056

    return p0
.end method

.method public getInsufficientMemoryMessageId()I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->deviceTypeStrategy:Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;->getInsufficientMemoryMessageId()I

    move-result p0

    return p0
.end method

.method public getModifiedDeviceMessageId()I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->deviceTypeStrategy:Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;->getModifiedDeviceMessageId()I

    move-result p0

    return p0
.end method

.method public abstract getRestartCountDownMessageId()I
.end method

.method public getScheduleInstallMessageId()I
    .locals 0

    const p0, 0x7f130070

    return p0
.end method

.method public getSmartSwitchDialogMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->deviceTypeStrategy:Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;->getSmartSwitchDialogMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUpdateScheduledDialogMessageId()I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->deviceTypeStrategy:Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;->getUpdateScheduledDialogMessageId()I

    move-result p0

    return p0
.end method

.method public getUpdateSuccessMessageId()I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->deviceTypeStrategy:Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;->getUpdateSuccessMessageId()I

    move-result p0

    return p0
.end method
