.class public Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat$TriggeredByRegistration;
.super Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TriggeredByRegistration"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "versioninfo/ActiveDeviceInfo/CycleOfDeviceHeartbeat"

    const-string v1, "versioninfo/ActiveDeviceInfo/ImmediatelyDeviceHeartbeat"

    const-string v2, "versioninfo/ActiveDeviceInfo/ServiceURL"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
