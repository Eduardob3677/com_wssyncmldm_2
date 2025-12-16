.class Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$NonABDevice;
.super Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonABDevice"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy$Device;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy$Device;-><init>()V

    new-instance v1, Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy$NonAB;

    invoke-direct {v1}, Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy$NonAB;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;-><init>(Lcom/idm/fotaagent/enabler/feature/DeviceTypeStrategy;Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy;Lcom/idm/fotaagent/enabler/feature/ResourceGenerator$1;)V

    return-void
.end method


# virtual methods
.method public getRestartCountDownMessageId()I
    .locals 0

    const/high16 p0, 0x7f110000

    return p0
.end method
