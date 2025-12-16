.class final enum Lcom/idm/fotaagent/enabler/network/NetworkBlockedType$3;
.super Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/network/NetworkBlockedType$1;)V

    return-void
.end method


# virtual methods
.method public getFumoTaskEvent(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadFailedWifiDisconnected;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadFailedWifiDisconnected;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
