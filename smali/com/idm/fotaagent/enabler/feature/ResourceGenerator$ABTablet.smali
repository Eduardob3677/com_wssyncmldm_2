.class Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$ABTablet;
.super Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ABTablet"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy$Tablet;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy$Tablet;-><init>()V

    new-instance v1, Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy$AB;

    invoke-direct {v1}, Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy$AB;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;-><init>(Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy;Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$1;)V

    return-void
.end method


# virtual methods
.method public getInstallConfirmNotiTitleId()I
    .locals 0

    const p0, 0x7f130092

    return p0
.end method

.method public getInstallConfirmTitleId()I
    .locals 0

    const p0, 0x7f13008e

    return p0
.end method

.method public getRestartCountDownMessageId()I
    .locals 0

    const p0, 0x7f110008

    return p0
.end method

.method public getScheduleInstallMessageId()I
    .locals 0

    const p0, 0x7f1300af

    return p0
.end method
