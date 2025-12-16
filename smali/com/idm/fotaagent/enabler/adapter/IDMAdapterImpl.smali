.class public Lcom/idm/fotaagent/enabler/adapter/IDMAdapterImpl;
.super Lcom/idm/adapter/handler/AdaptersHolder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 9

    new-instance v1, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;

    invoke-direct {v1}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;-><init>()V

    new-instance v2, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;

    invoke-direct {v2, p1, p2}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;

    invoke-direct {v3}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;-><init>()V

    new-instance v4, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDLConnectImpl;

    invoke-direct {v4}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDLConnectImpl;-><init>()V

    new-instance v5, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;

    invoke-direct {v5, p1}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDownload;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterContinueProcessImpl;

    invoke-direct {v6}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterContinueProcessImpl;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDMConnectImpl;->getInstance()Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDMConnectImpl;

    move-result-object v7

    new-instance v8, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDMAuthValidImpl;

    invoke-direct {v8}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDMAuthValidImpl;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/idm/adapter/handler/AdaptersHolder;-><init>(Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;Lcom/idm/agent/dm/IDMDmCommandInterface;Lcom/idm/agent/dl/IDMDlConnectInterface;Lcom/idm/agent/dl/IDMDlBaseDownload;Lcom/idm/agent/dm/IDMDmContinueProcess;Lcom/idm/agent/dm/IDMDmConnectInterface;Lcom/idm/agent/dm/IDMDmAuthValidInterface;)V

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method
