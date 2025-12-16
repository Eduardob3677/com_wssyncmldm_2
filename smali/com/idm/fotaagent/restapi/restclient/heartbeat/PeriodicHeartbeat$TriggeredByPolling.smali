.class public Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat$TriggeredByPolling;
.super Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TriggeredByPolling"
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

    const-string v1, ""

    const-string v2, "versioninfo/ActiveDeviceInfo/ServiceURL"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Url = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Period = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;->periodInDay:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->D(Ljava/lang/Object;)V

    return-void
.end method
