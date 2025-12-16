.class public Lcom/idm/fotaagent/restapi/request/FOTABody$OneShot;
.super Lcom/idm/fotaagent/restapi/request/FOTABody$ForHeartbeat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/request/FOTABody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneShot"
.end annotation


# static fields
.field static final NODE_ONESHOT_HEARTBEAT:Ljava/lang/String; = "DeviceHeartbeatForPushVO"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/request/FOTABody$ForHeartbeat;-><init>()V

    return-void
.end method


# virtual methods
.method public getMainNode()Ljava/lang/String;
    .locals 0

    const-string p0, "DeviceHeartbeatForPushVO"

    return-object p0
.end method
