.class public Lcom/idm/fotaagent/restapi/request/FOTABody$Periodic;
.super Lcom/idm/fotaagent/restapi/request/FOTABody$ForHeartbeat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/request/FOTABody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Periodic"
.end annotation


# static fields
.field static final NODE_PERIODIC_HEARTBEAT:Ljava/lang/String; = "DeviceHeartbeatVO"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/request/FOTABody$ForHeartbeat;-><init>()V

    return-void
.end method


# virtual methods
.method public getMainNode()Ljava/lang/String;
    .locals 0

    const-string p0, "DeviceHeartbeatVO"

    return-object p0
.end method
