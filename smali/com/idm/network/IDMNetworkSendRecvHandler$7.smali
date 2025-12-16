.class final enum Lcom/idm/network/IDMNetworkSendRecvHandler$7;
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

    invoke-virtual {p2}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmClearDlAbortInfo()V

    invoke-static {p1}, Lcom/idm/network/IDMNetworkSendRecvHandler;->access$700(Lcom/idm/agent/IDMAgentMessageHandler;)V

    return-void
.end method
