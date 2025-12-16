.class final enum Lcom/idm/network/IDMNetworkSendRecvHandler$1;
.super Lcom/idm/network/IDMNetworkSendRecvHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/network/IDMNetworkSendRecvHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/network/IDMNetworkSendRecvHandler;-><init>(Ljava/lang/String;ILcom/idm/network/IDMNetworkSendRecvHandler$1;)V

    return-void
.end method


# virtual methods
.method public idmSendRecvDLHandling(Lcom/idm/agent/IDMAgentMessageHandler;Lcom/idm/agent/dl/IDMDlAbortInfo;)V
    .locals 0

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/network/IDMNetworkUserAction;->getUserPause()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Send process is completed but urlConnection is disconnected"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/idm/network/IDMNetworkSendRecvHandler;->access$100(Lcom/idm/agent/IDMAgentMessageHandler;)V

    :cond_0
    return-void
.end method
