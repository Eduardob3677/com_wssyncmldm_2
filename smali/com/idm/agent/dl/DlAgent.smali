.class public Lcom/idm/agent/dl/DlAgent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/agent/dl/IDMDlInterface;
.implements Lcom/idm/adapter/callback/IDMCallbackStatusInterface;
.implements Lcom/idm/network/IDMNetworkInterface;
.implements Lcom/idm/agent/dm/IDMDmInterface;


# instance fields
.field private actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

.field private final baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

.field private callback:Lcom/idm/adapter/callback/IDMCallback;

.field private callbackStatus:Lcom/idm/adapter/callback/IDMCallbackStatus;

.field private context:Landroid/content/Context;

.field private final deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

.field private dlAbortInfo:Lcom/idm/agent/dl/IDMDlAbortInfo;

.field private final dlConnectAdapter:Lcom/idm/agent/dl/IDMDlConnectInterface;

.field private downloadInfo:Lcom/idm/agent/dl/IDMDlDownloadInfo;

.field private future:Ljava/util/concurrent/Future;

.field private httpDlConnType:I

.field private httpRetryCount:I

.field private messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

.field private final networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

.field private networkTimer:Lcom/idm/network/IDMNetworkTimer;

.field private request:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/adapter/handler/AdaptersHolder;Lcom/idm/adapter/callback/IDMCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/idm/adapter/callback/IDMCallbackStatus;

    invoke-direct {v0}, Lcom/idm/adapter/callback/IDMCallbackStatus;-><init>()V

    iput-object v0, p0, Lcom/idm/agent/dl/DlAgent;->callbackStatus:Lcom/idm/adapter/callback/IDMCallbackStatus;

    new-instance v0, Lcom/idm/agent/dl/IDMDlDownloadInfo;

    invoke-direct {v0}, Lcom/idm/agent/dl/IDMDlDownloadInfo;-><init>()V

    iput-object v0, p0, Lcom/idm/agent/dl/DlAgent;->downloadInfo:Lcom/idm/agent/dl/IDMDlDownloadInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/agent/dl/DlAgent;->httpRetryCount:I

    iput v0, p0, Lcom/idm/agent/dl/DlAgent;->httpDlConnType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    iput-object v0, p0, Lcom/idm/agent/dl/DlAgent;->future:Ljava/util/concurrent/Future;

    iput-object p1, p0, Lcom/idm/agent/dl/DlAgent;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p3}, Lcom/idm/adapter/handler/AdaptersHolder;->getNetworkAdapter()Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {p3}, Lcom/idm/adapter/handler/AdaptersHolder;->getDlConnectAdapter()Lcom/idm/agent/dl/IDMDlConnectInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/agent/dl/DlAgent;->dlConnectAdapter:Lcom/idm/agent/dl/IDMDlConnectInterface;

    invoke-virtual {p3}, Lcom/idm/adapter/handler/AdaptersHolder;->getBaseDownloadAdapter()Lcom/idm/agent/dl/IDMDlBaseDownload;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    iput-object p4, p0, Lcom/idm/agent/dl/DlAgent;->callback:Lcom/idm/adapter/callback/IDMCallback;

    const/4 p1, 0x1

    iput p1, p0, Lcom/idm/agent/dl/DlAgent;->httpDlConnType:I

    new-instance p1, Lcom/idm/agent/dl/IDMDlAbortInfo;

    invoke-direct {p1}, Lcom/idm/agent/dl/IDMDlAbortInfo;-><init>()V

    iput-object p1, p0, Lcom/idm/agent/dl/DlAgent;->dlAbortInfo:Lcom/idm/agent/dl/IDMDlAbortInfo;

    invoke-virtual {p3}, Lcom/idm/adapter/handler/AdaptersHolder;->getDeviceInfoAdapter()Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/agent/dl/DlAgent;->deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

    return-void
.end method

.method public static synthetic a(Lcom/idm/agent/dl/DlAgent;Lcom/idm/network/IDMNetworkHttpAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/agent/dl/DlAgent;->lambda$createUrlConnector$0(Lcom/idm/network/IDMNetworkHttpAdapter;)V

    return-void
.end method

.method private addHttpHeader(ILjava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "Range"

    const-string v1, "bytes="

    const-string v2, "Download FilePath : "

    iget-object v3, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    const/4 v4, 0x0

    iget v5, p0, Lcom/idm/agent/dl/DlAgent;->httpDlConnType:I

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmMakeHttpHeader(ILjava/net/HttpURLConnection;Ljava/lang/String;I)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v3, "Content-Length"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetHttpHeadersMap()Lo/b;

    move-result-object p1

    invoke-virtual {p1, v3}, Lo/k;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetHttpHeadersMap()Lo/b;

    move-result-object p1

    invoke-virtual {p1, v3}, Lo/k;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "0"

    invoke-virtual {p2, v3, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetHttpHeadersMap()Lo/b;

    move-result-object p1

    const-string p3, "Accept"

    invoke-virtual {p1, p3}, Lo/k;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2, p3, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetHttpHeadersMap()Lo/b;

    move-result-object p1

    const-string p3, "Content-Type"

    invoke-virtual {p1, p3}, Lo/k;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2, p3, p5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {p1}, Lcom/idm/agent/dl/IDMDlBaseDownload;->getDownloadedSize()J

    move-result-wide p3

    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {p0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetHttpHeadersMap()Lo/b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lo/k;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private checkDownloadComplete()V
    .locals 7

    const-string v0, "idmCheckDownloadSize"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v0}, Lcom/idm/agent/dl/IDMDlBaseDownload;->getDownloadedSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v2}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetObjectSize()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downloadedSize = ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "], DD\'s ObjSize = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    cmp-long v0, v0, v2

    const/4 v1, 0x5

    const/16 v2, 0x2710

    const/4 v3, 0x1

    const/16 v4, 0x23

    if-nez v0, :cond_1

    const-string v0, "DOWNLOAD COMPLETE"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    iget-object v5, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v5}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v6}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDownloadPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmFirmwareVerifyChecksum(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetCommand(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDlNotifyDownloadReportCode(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->callbackStatus:Lcom/idm/adapter/callback/IDMCallbackStatus;

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v1

    iget-object v3, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDlNotifyDownloadReportCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->callbackStatus:Lcom/idm/adapter/callback/IDMCallbackStatus;

    invoke-virtual {p0, v0, v1}, Lcom/idm/agent/dl/DlAgent;->setCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/agent/dl/DlAgent;->deleteDeltaFile()V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetCommand(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDlNotifyDownloadReportCode(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->callbackStatus:Lcom/idm/adapter/callback/IDMCallbackStatus;

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v1

    iget-object v4, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDlNotifyDownloadReportCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->callbackStatus:Lcom/idm/adapter/callback/IDMCallbackStatus;

    invoke-virtual {p0, v0, v1}, Lcom/idm/agent/dl/DlAgent;->setCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    const-string v0, "RECEIVE OVERSIZE"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->W(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/agent/dl/DlAgent;->deleteDeltaFile()V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetCommand(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDlNotifyDownloadReportCode(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->callbackStatus:Lcom/idm/adapter/callback/IDMCallbackStatus;

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v1

    iget-object v4, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDlNotifyDownloadReportCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->callbackStatus:Lcom/idm/adapter/callback/IDMCallbackStatus;

    invoke-virtual {p0, v0, v1}, Lcom/idm/agent/dl/DlAgent;->setCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    goto :goto_0

    :cond_2
    const-string p0, "download delta is still remain"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method private continueRetry(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDK continueRetry : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "errorCode : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v2, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_RECEIVEFAIL:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessageDelayed(Ljava/lang/Enum;IJ)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v2, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_SENDFAIL:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessageDelayed(Ljava/lang/Enum;IJ)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v2, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_CONNECTFAIL:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessageDelayed(Ljava/lang/Enum;IJ)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createParentDirectoryIfNotExist(Ljava/lang/String;)V
    .locals 3

    new-instance p0, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-direct {p0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;-><init>()V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "szDownloadPath : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " || szDownloadParentPath : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmFileExists(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/idm/exception/file/IDMExceptionFileNotFound; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmDirCreate(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/idm/exception/file/IDMExceptionFileDirCreate; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private createUrlConnector(Lcom/idm/network/IDMNetworkHttpAdapter;)V
    .locals 3

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, LA/o;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2, p1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/agent/dl/DlAgent;->future:Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/idm/agent/dl/DlAgent;->future:Ljava/util/concurrent/Future;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v1, Lcom/idm/exception/http/IDMExceptionHttpSend;

    invoke-direct {v1, p1}, Lcom/idm/exception/http/IDMExceptionHttpSend;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v0, p0, Lcom/idm/agent/dl/DlAgent;->future:Ljava/util/concurrent/Future;

    throw p1
.end method

.method private getConnectServerURL(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getConnectServerURL Fumo Status : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x23

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xdc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe6

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf2

    if-eq p1, v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetInstallTypeUri()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetNotifyUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetObjectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetObjectUrlAddNetworkInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetObjectUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    move-object p0, p1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDownloadDescriptorUrl()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getNotifyResultData(I)[B
    .locals 1

    const-string v0, "getNotifyResultData"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/idm/agent/dl/DlAgent;->getReportStatus(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "resultString : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getReceiveState(I)Lcom/idm/network/IDMNetworkSendRecvState;
    .locals 2

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->SUCCESS:Lcom/idm/network/IDMNetworkSendRecvHandler;

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/network/IDMNetworkUserAction;->getUserCancel()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->USER_CANCEL:Lcom/idm/network/IDMNetworkSendRecvHandler;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/network/IDMNetworkUserAction;->getUserPause()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->PAUSE:Lcom/idm/network/IDMNetworkSendRecvHandler;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/network/IDMNetworkUserAction;->getRequestRetry()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->REQUEST_RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;

    goto :goto_0

    :cond_2
    if-lez p1, :cond_7

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/idm/network/IDMNetworkHttpAdapter;

    invoke-direct {v0}, Lcom/idm/network/IDMNetworkHttpAdapter;-><init>()V

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmDisconnectHttpUrlConnection(Ljava/net/HttpURLConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    :cond_3
    const/16 p0, 0x1fa

    if-ne p1, p0, :cond_4

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->MEMORY_FULL:Lcom/idm/network/IDMNetworkSendRecvHandler;

    goto :goto_0

    :cond_4
    const/16 p0, 0x1fb

    if-ne p1, p0, :cond_5

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->OVERSIZE_DELTA:Lcom/idm/network/IDMNetworkSendRecvHandler;

    goto :goto_0

    :cond_5
    const/16 p0, 0x1fc

    if-ne p1, p0, :cond_6

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->FILE_NOT_FOUND:Lcom/idm/network/IDMNetworkSendRecvHandler;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;

    :cond_7
    :goto_0
    return-object v0
.end method

.method private getReportStatus(I)Ljava/lang/String;
    .locals 0

    const-string p0, "900 Success"

    packed-switch p1, :pswitch_data_0

    const-string p1, "getReportStatus unknown (default SUCCESS)"

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    const-string p0, "466 WifiBackGround Session Failed"

    return-object p0

    :pswitch_1
    const-string p0, "462 Blocked by MDM Policy"

    return-object p0

    :pswitch_2
    const-string p0, "461 Blocked by AFW Policy"

    return-object p0

    :pswitch_3
    const-string p0, "954 Loader Error"

    return-object p0

    :pswitch_4
    const-string p0, "953 Non-Acceptable Content"

    return-object p0

    :pswitch_5
    const-string p0, "952 Device Aborted"

    return-object p0

    :pswitch_6
    const-string p0, "951 Invalid DDVersion"

    return-object p0

    :pswitch_7
    const-string p0, "906 Invalid descriptor"

    return-object p0

    :pswitch_8
    const-string p0, "905 Attribute mismatch"

    return-object p0

    :pswitch_9
    const-string p0, "903 Loss of Service"

    return-object p0

    :pswitch_a
    const-string p0, "902 User Cancelled"

    return-object p0

    :pswitch_b
    const-string p0, "901 Insufficient memory"

    :pswitch_c
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSendState(I)Lcom/idm/network/IDMNetworkSendRecvState;
    .locals 1

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->SUCCESS:Lcom/idm/network/IDMNetworkSendRecvHandler;

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/idm/network/IDMNetworkHttpAdapter;

    invoke-direct {p1}, Lcom/idm/network/IDMNetworkHttpAdapter;-><init>()V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v0}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmDisconnectHttpUrlConnection(Ljava/net/HttpURLConnection;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    :cond_0
    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;

    :cond_1
    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/network/IDMNetworkUserAction;->getUserCancel()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->USER_CANCEL:Lcom/idm/network/IDMNetworkSendRecvHandler;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/network/IDMNetworkUserAction;->getUserPause()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->PAUSE:Lcom/idm/network/IDMNetworkSendRecvHandler;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/network/IDMNetworkUserAction;->getRequestRetry()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->REQUEST_RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;

    :cond_4
    :goto_0
    return-object v0
.end method

.method private getVerifyCommand(I)I
    .locals 0

    const/16 p0, 0xa

    if-eq p1, p0, :cond_3

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_2

    const/16 p0, 0x23

    if-eq p1, p0, :cond_1

    const/16 p0, 0xc8

    if-eq p1, p0, :cond_2

    const/16 p0, 0xdc

    if-eq p1, p0, :cond_0

    const/16 p0, 0xe6

    if-eq p1, p0, :cond_1

    const/16 p0, 0xf2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private isContinueNetworkRetry(I)Z
    .locals 2

    const/16 v0, 0x1f5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->dlConnectAdapter:Lcom/idm/agent/dl/IDMDlConnectInterface;

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/idm/agent/dl/DlAgent;->httpRetryCount:I

    invoke-interface {v0, v1, p1, p0}, Lcom/idm/agent/dl/IDMDlConnectInterface;->idmDLConnectFailRetryStatus(Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_0
    const/16 v0, 0x1f6

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->dlConnectAdapter:Lcom/idm/agent/dl/IDMDlConnectInterface;

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/idm/agent/dl/DlAgent;->httpRetryCount:I

    invoke-interface {v0, v1, p1, p0}, Lcom/idm/agent/dl/IDMDlConnectInterface;->idmDLSendFailRetryStatus(Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_1
    const/16 v0, 0x1f7

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->dlConnectAdapter:Lcom/idm/agent/dl/IDMDlConnectInterface;

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/idm/agent/dl/DlAgent;->httpRetryCount:I

    invoke-interface {v0, v1, p1, p0}, Lcom/idm/agent/dl/IDMDlConnectInterface;->idmDLReceiveRetryStatus(Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isCustomApnOpenFailed()Z
    .locals 2

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetIsCustomApn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmCustomApnOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmCustomApnClose()V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->dlAbortInfo:Lcom/idm/agent/dl/IDMDlAbortInfo;

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetErrorCode(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v0

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->dlAbortInfo:Lcom/idm/agent/dl/IDMDlAbortInfo;

    invoke-direct {p0, v0, v1}, Lcom/idm/agent/dl/DlAgent;->retryOperation(ILcom/idm/agent/dl/IDMDlAbortInfo;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isDownloadComplete()Z
    .locals 4

    const-string v0, "isDownloadComplete"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v0}, Lcom/idm/agent/dl/IDMDlBaseDownload;->getDownloadedSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    :goto_0
    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetObjectSize()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-string p0, "DOWNLOAD COMPLETE"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isNetworkBlock()Z
    .locals 2

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->dlConnectAdapter:Lcom/idm/agent/dl/IDMDlConnectInterface;

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/idm/agent/dl/IDMDlConnectInterface;->idmDLProcessBlockForNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->dlAbortInfo:Lcom/idm/agent/dl/IDMDlAbortInfo;

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetErrorCode(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v0

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->dlAbortInfo:Lcom/idm/agent/dl/IDMDlAbortInfo;

    invoke-direct {p0, v0, v1}, Lcom/idm/agent/dl/DlAgent;->retryOperation(ILcom/idm/agent/dl/IDMDlAbortInfo;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isRetryPossible(ILcom/idm/agent/dl/IDMDlAbortInfo;)Z
    .locals 3

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v2}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->idmIsAvailableFOTAWithRoamingNetwork(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Roaming status : do not retry"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0, p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetNetworkRetryCount(I)I

    move-result v0

    iput v0, p0, Lcom/idm/agent/dl/DlAgent;->httpRetryCount:I

    invoke-virtual {p2, v0}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetRetryCount(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmGetErrorCode()I

    move-result v0

    const/16 v1, 0x1f9

    if-ne v0, v1, :cond_1

    const-string v0, "Network Header Fail do not retry"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0, p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetNetworkRetryCount(I)I

    move-result v0

    iput v0, p0, Lcom/idm/agent/dl/DlAgent;->httpRetryCount:I

    invoke-virtual {p2, v0}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetRetryCount(I)V

    :cond_1
    iget v0, p0, Lcom/idm/agent/dl/DlAgent;->httpRetryCount:I

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v1, p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetNetworkRetryCount(I)I

    move-result p1

    if-ge v0, p1, :cond_2

    iget p1, p0, Lcom/idm/agent/dl/DlAgent;->httpRetryCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/idm/agent/dl/DlAgent;->httpRetryCount:I

    invoke-virtual {p2, p1}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetRetryCount(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "httpRetryCount : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/idm/agent/dl/DlAgent;->httpRetryCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$createUrlConnector$0(Lcom/idm/network/IDMNetworkHttpAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSocketTrafficStats()V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    invoke-virtual {p1, v0, p0}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmConnectHttpUrlConnection(Ljava/net/HttpURLConnection;Lcom/idm/network/IDMNetworkTimer;)V

    return-void
.end method

.method private normalRetryOperation(ILcom/idm/agent/dl/IDMDlAbortInfo;)V
    .locals 3

    invoke-virtual {p2}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmGetErrorCode()I

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/idm/agent/dl/DlAgent;->isRetryPossible(ILcom/idm/agent/dl/IDMDlAbortInfo;)Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK normalRetryOperation isRetryPossible Result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/idm/agent/dl/DlAgent;->continueRetry(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object p1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_ABORT:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    invoke-virtual {p0, p1, v0, p2}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private receivePackage(ILjava/net/HttpURLConnection;Lcom/idm/core/dd/IDMDDDataInfo;Lcom/idm/agent/dl/IDMDlAbortInfo;)Lcom/idm/network/IDMNetworkSendRecvState;
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "InputStream Close Fail"

    const-string v6, "Not Correct Command() : "

    const-string v7, "Invalid Content Type!!, expected content - type: "

    const-string v8, "recieve Package for DL"

    invoke-static {v8}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v8, Lcom/idm/network/IDMNetworkHttpHeaderInfo;

    invoke-direct {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;-><init>()V

    const/16 v10, 0x1f7

    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_0
    new-instance v15, Lcom/idm/network/IDMNetworkHttpAdapter;

    invoke-direct {v15}, Lcom/idm/network/IDMNetworkHttpAdapter;-><init>()V

    new-instance v14, Lcom/idm/network/IDMNetworkTimer;

    sget-object v16, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;->IDM_NETWORK_TIMER_MODE_RECEIVE:Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    iget-object v13, v1, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v13, v2}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetConnectNetworkTimeOut(I)I

    move-result v17

    iget-object v13, v1, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v13, v2}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetExtraTime(I)I

    move-result v2

    iget-object v13, v1, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    move-object/from16 v18, v13

    move-object v13, v14

    move-object v9, v14

    move-object/from16 v14, v16

    move-object/from16 p1, v15

    move/from16 v15, v17

    move/from16 v16, v2

    move-object/from16 v17, p1

    invoke-direct/range {v13 .. v18}, Lcom/idm/network/IDMNetworkTimer;-><init>(Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;IILcom/idm/network/IDMNetworkHttpAdapter;Ljava/net/HttpURLConnection;)V

    iput-object v9, v1, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    move-object/from16 v13, p1

    move-object/from16 v2, p2

    invoke-virtual {v13, v2, v8, v9}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmRecvHttpHeaderUrlConnection(Ljava/net/HttpURLConnection;Lcom/idm/network/IDMNetworkHttpHeaderInfo;Lcom/idm/network/IDMNetworkTimer;)V

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetConnectionType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetConnectionType()Ljava/lang/String;

    move-result-object v9

    const-string v14, "close"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iput v11, v1, Lcom/idm/agent/dl/DlAgent;->httpDlConnType:I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v2, v12

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v2, v12

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v2, v12

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object v3, v0

    move-object v2, v12

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move-object v3, v0

    move-object v2, v12

    goto/16 :goto_a

    :cond_0
    const/4 v9, 0x1

    iput v9, v1, Lcom/idm/agent/dl/DlAgent;->httpDlConnType:I

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Lcom/idm/exception/http/IDMExceptionHttpHeader; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/idm/exception/file/IDMExceptionFileEnospc; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/idm/exception/file/IDMExceptionFileNotFound; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/idm/exception/http/IDMExceptionHttpReceive; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/idm/exception/file/IDMExceptionFileRead; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_c

    :try_start_1
    iget-object v9, v1, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v9}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v9

    const/16 v14, 0xa

    if-eq v9, v14, :cond_a

    const/16 v3, 0x1e

    if-eq v9, v3, :cond_2

    const/16 v14, 0x23

    if-eq v9, v14, :cond_b

    const/16 v14, 0xc8

    if-eq v9, v14, :cond_2

    const/16 v3, 0xdc

    if-eq v9, v3, :cond_b

    const/16 v3, 0xe6

    if-eq v9, v3, :cond_b

    const/16 v3, 0xf2

    if-eq v9, v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v6}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    sget-object v3, Lcom/idm/network/IDMNetworkSendRecvHandler;->RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;
    :try_end_1
    .catch Lcom/idm/exception/http/IDMExceptionHttpHeader; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/idm/exception/file/IDMExceptionFileEnospc; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/idm/exception/file/IDMExceptionFileNotFound; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/idm/exception/http/IDMExceptionHttpReceive; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/idm/exception/file/IDMExceptionFileRead; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v6, v1, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v6}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmCloseFileInputStream()V

    iget-object v6, v1, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    iput-object v12, v1, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    :cond_1
    invoke-virtual {v4, v11}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetErrorCode(I)V

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetResponseCode()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetResponseCode(I)V

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    :goto_1
    return-object v3

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto/16 :goto_d

    :catch_5
    move-exception v0

    move-object v3, v0

    goto/16 :goto_6

    :catch_6
    move-exception v0

    move-object v3, v0

    goto/16 :goto_8

    :catch_7
    move-exception v0

    move-object v3, v0

    goto/16 :goto_9

    :catch_8
    move-exception v0

    move-object v3, v0

    goto/16 :goto_a

    :cond_2
    :try_start_3
    iget-object v6, v1, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v6}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDownloadPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/idm/agent/dl/DlAgent;->createParentDirectoryIfNotExist(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v9, v6}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmOpenFileInputStream(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v6}, Lcom/idm/agent/dl/IDMDlBaseDownload;->getDownloadedSize()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Lcom/idm/agent/dl/IDMDlBaseDownload;->setDownloadedSize(J)V

    iget-object v6, v1, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    :cond_3
    iget-object v6, v1, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v6}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmCheckContentTypeIfNecessary()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetContentType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v1, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v6}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDownloadType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetContentType()Ljava/lang/String;

    move-result-object v9

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v6}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDownloadType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    const/16 v9, 0x1f9

    goto/16 :goto_5

    :cond_5
    iget-object v6, v1, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v6}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetObjectSize()J

    move-result-wide v6

    :goto_2
    iget-object v9, v1, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v9}, Lcom/idm/agent/dl/IDMDlBaseDownload;->getDownloadedSize()J

    move-result-wide v14

    cmp-long v9, v6, v14

    if-eqz v9, :cond_b

    iget-object v9, v1, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v9}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmGetReceiveDownloadBufferSize()I

    move-result v9

    invoke-virtual {v13, v2, v9}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmRecvHttpBodyDataUrlConnection(Ljava/io/InputStream;I)[B

    move-result-object v9

    if-eqz v9, :cond_9

    array-length v14, v9

    if-nez v14, :cond_6

    goto :goto_3

    :cond_6
    iget-object v14, v1, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v14}, Lcom/idm/agent/dl/IDMDlBaseDownload;->getDownloadedSize()J

    move-result-wide v14

    cmp-long v14, v6, v14

    if-gez v14, :cond_7

    const-string v3, "recvData oversize!!"

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const/16 v9, 0x1fb

    goto :goto_5

    :cond_7
    iget-object v14, v1, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    iget-object v15, v1, Lcom/idm/agent/dl/DlAgent;->downloadInfo:Lcom/idm/agent/dl/IDMDlDownloadInfo;

    invoke-virtual {v14, v15, v6, v7, v9}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmUpdateDownloadInfo(Lcom/idm/agent/dl/IDMDlDownloadInfo;J[B)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v1, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v9, v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetCommand(I)V

    iget-object v9, v1, Lcom/idm/agent/dl/DlAgent;->callbackStatus:Lcom/idm/adapter/callback/IDMCallbackStatus;

    iget-object v14, v1, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v14}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v14

    iget-object v15, v1, Lcom/idm/agent/dl/DlAgent;->downloadInfo:Lcom/idm/agent/dl/IDMDlDownloadInfo;

    const/16 v3, 0x2711

    invoke-virtual {v9, v3, v14, v11, v15}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    iget-object v3, v1, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v3

    iget-object v9, v1, Lcom/idm/agent/dl/DlAgent;->callbackStatus:Lcom/idm/adapter/callback/IDMCallbackStatus;

    invoke-direct {v1, v3, v9}, Lcom/idm/agent/dl/DlAgent;->setCallbackProgress(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    :cond_8
    const/16 v3, 0x1e

    goto :goto_2

    :cond_9
    :goto_3
    const-string v3, "recvData null"

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    :goto_4
    move v9, v10

    goto :goto_5

    :cond_a
    invoke-virtual {v13, v2}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmRecvHttpBodyDataUrlConnection(Ljava/io/InputStream;)[B

    move-result-object v6

    new-instance v7, Lcom/idm/core/dd/IDMDDXmlParser;

    invoke-direct {v7}, Lcom/idm/core/dd/IDMDDXmlParser;-><init>()V

    iget-object v9, v1, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v9}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmGetExtraDDElement()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Lcom/idm/core/dd/IDMDDXmlParser;->idmDDXmlDataParser([BLjava/util/List;)Lcom/idm/core/dd/IDMDDXmlDataSet;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/idm/core/dd/IDMDDDataInfo;->idmSetDDXmlDataSet(Lcom/idm/core/dd/IDMDDXmlDataSet;)V

    invoke-virtual {v3, v6}, Lcom/idm/core/dd/IDMDDDataInfo;->idmSetDownloadDescriptorData([B)V

    :cond_b
    move v9, v11

    goto :goto_5

    :cond_c
    const-string v3, "InputStream is null"

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/idm/exception/http/IDMExceptionHttpHeader; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/idm/exception/file/IDMExceptionFileEnospc; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/idm/exception/file/IDMExceptionFileNotFound; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/idm/exception/http/IDMExceptionHttpReceive; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/idm/exception/file/IDMExceptionFileRead; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :goto_5
    iget-object v3, v1, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v3}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmCloseFileInputStream()V

    iget-object v3, v1, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    iput-object v12, v1, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    :cond_d
    invoke-virtual {v4, v9}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetErrorCode(I)V

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetResponseCode()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetResponseCode(I)V

    if-eqz v2, :cond_14

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    goto/16 :goto_c

    :catch_9
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    goto/16 :goto_c

    :goto_6
    :try_start_5
    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v3, v1, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v3}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmCloseFileInputStream()V

    iget-object v3, v1, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    iput-object v12, v1, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    :cond_e
    invoke-virtual {v4, v10}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetErrorCode(I)V

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetResponseCode()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetResponseCode(I)V

    if-eqz v2, :cond_f

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_7

    :catch_a
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    :cond_f
    :goto_7
    move v9, v10

    goto/16 :goto_c

    :goto_8
    :try_start_7
    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v3, v1, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v3}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmCloseFileInputStream()V

    iget-object v3, v1, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    iput-object v12, v1, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    :cond_10
    const/16 v9, 0x1fc

    invoke-virtual {v4, v9}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetErrorCode(I)V

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetResponseCode()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetResponseCode(I)V

    if-eqz v2, :cond_14

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_c

    :goto_9
    :try_start_9
    const-string v6, "File Memory Full"

    invoke-static {v6}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    iget-object v3, v1, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v3}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmCloseFileInputStream()V

    iget-object v3, v1, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    iput-object v12, v1, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    :cond_11
    const/16 v9, 0x1fa

    invoke-virtual {v4, v9}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetErrorCode(I)V

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetResponseCode()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetResponseCode(I)V

    if-eqz v2, :cond_14

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_c

    :goto_a
    :try_start_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Http Error ResCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    iget-object v3, v1, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v3}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmCloseFileInputStream()V

    iget-object v3, v1, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    iput-object v12, v1, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    :cond_12
    const/16 v3, 0x1f9

    invoke-virtual {v4, v3}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetErrorCode(I)V

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetResponseCode()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetResponseCode(I)V

    if-eqz v2, :cond_13

    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    :cond_13
    :goto_b
    move v9, v3

    :cond_14
    :goto_c
    const-string v2, "============== idmRecvPackage ============="

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Lcom/idm/agent/dl/DlAgent;->getReceiveState(I)Lcom/idm/network/IDMNetworkSendRecvState;

    move-result-object v1

    return-object v1

    :goto_d
    iget-object v6, v1, Lcom/idm/agent/dl/DlAgent;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v6}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmCloseFileInputStream()V

    iget-object v6, v1, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    if-eqz v6, :cond_15

    invoke-virtual {v6}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    iput-object v12, v1, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    :cond_15
    invoke-virtual {v4, v11}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetErrorCode(I)V

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetResponseCode()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetResponseCode(I)V

    if-eqz v2, :cond_16

    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_e

    :catch_c
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    :cond_16
    :goto_e
    throw v3
.end method

.method private retryOperation(ILcom/idm/agent/dl/IDMDlAbortInfo;)V
    .locals 2

    invoke-virtual {p2}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmGetErrorCode()I

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/idm/agent/dl/DlAgent;->isRetryPossible(ILcom/idm/agent/dl/IDMDlAbortInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/idm/agent/dl/DlAgent;->isContinueNetworkRetry(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/idm/agent/dl/DlAgent;->continueRetry(I)V

    goto :goto_0

    :cond_0
    const-string p1, "do not retry"

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object p1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_ABORT:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    invoke-virtual {p0, p1, v0, p2}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result p1

    const/16 v1, 0x23

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/idm/agent/dl/DlAgent;->isDownloadComplete()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "DLAbort, But Download Complete"

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object p1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_FINISH:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object p1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_ABORT:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    invoke-virtual {p0, p1, v0, p2}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private sendPackage(ILjava/lang/String;[BLcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;Lcom/idm/agent/dl/IDMDlAbortInfo;)Lcom/idm/network/IDMNetworkSendRecvState;
    .locals 16

    move-object/from16 v8, p0

    move/from16 v0, p1

    move-object/from16 v9, p3

    move-object/from16 v7, p4

    const-string v10, "Not Correct Command() : "

    const-string v1, "sendPackage for DL"

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v11, Lcom/idm/network/IDMNetworkHttpAdapter;

    invoke-direct {v11}, Lcom/idm/network/IDMNetworkHttpAdapter;-><init>()V

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/network/IDMNetworkUserAction;->getUserPause()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Current is pausing. Don\'t send package"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->PAUSE:Lcom/idm/network/IDMNetworkSendRecvHandler;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/network/IDMNetworkUserAction;->getRequestRetry()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Request retry. Don\'t send package"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->REQUEST_RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;

    return-object v0

    :cond_1
    const/16 v12, 0x1f5

    :try_start_0
    invoke-virtual {v7, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetConnectNetworkTimeOut(I)I

    move-result v3

    invoke-virtual {v7, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetRecvNetworkTimeOut(I)I

    move-result v4

    invoke-virtual {v7, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetNetworkTrustInfo(I)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    move-object v1, v11

    move-object/from16 v2, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmCreateHttpUrlConnection(Ljava/lang/String;IILjavax/net/ssl/SSLSocketFactory;Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;)Ljava/net/HttpURLConnection;

    move-result-object v1

    iput-object v1, v8, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    new-instance v1, Lcom/idm/network/IDMNetworkTimer;

    sget-object v3, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;->IDM_NETWORK_TIMER_MODE_CONNECT:Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    invoke-virtual {v7, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetConnectNetworkTimeOut(I)I

    move-result v4

    invoke-virtual {v7, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetExtraTime(I)I

    move-result v5

    iget-object v7, v8, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    move-object v2, v1

    move-object v6, v11

    invoke-direct/range {v2 .. v7}, Lcom/idm/network/IDMNetworkTimer;-><init>(Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;IILcom/idm/network/IDMNetworkHttpAdapter;Ljava/net/HttpURLConnection;)V

    iput-object v1, v8, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    iget-object v1, v8, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v1
    :try_end_0
    .catch Lcom/idm/exception/http/IDMExceptionHttpSend; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/idm/exception/http/IDMExceptionHttpNetwork; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/idm/exception/http/IDMExceptionHttpConnect; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/idm/exception/http/IDMExceptionHttpUrlConnect; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xa

    const-string v3, "GET"

    const-string v13, "HTTP Send Header"

    const/4 v4, 0x1

    const/4 v14, 0x0

    if-eq v1, v2, :cond_5

    const/16 v15, 0x1e

    if-eq v1, v15, :cond_3

    const/16 v2, 0x23

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    const/16 v2, 0xdc

    if-eq v1, v2, :cond_5

    const/16 v2, 0xe6

    if-eq v1, v2, :cond_2

    const/16 v2, 0xf2

    if-eq v1, v2, :cond_3

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :cond_2
    iget-object v1, v8, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    invoke-virtual {v11, v1, v2}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmSetRequestMethod(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    iget-object v1, v8, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    iget-object v3, v8, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    new-instance v4, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v4, v9, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v5, "application/vnd.oma.dd+xml"

    const-string v6, "application/vnd.oma.dd+xml"

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/idm/agent/dl/DlAgent;->addHttpHeader(ILjava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v11, v0}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmDisplayHttpHeaderRequestCode(Ljava/net/HttpURLConnection;)V

    iget-object v0, v8, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    iget-object v1, v8, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    invoke-virtual {v11, v0, v9, v1}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmSendHttpUrlConnection(Ljava/net/HttpURLConnection;[BLcom/idm/network/IDMNetworkTimer;)V

    invoke-static {v13}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, v8, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v11, v1, v3}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmSetRequestMethod(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    iget-object v3, v8, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    iget-object v1, v8, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDownloadType()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v8, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDownloadType()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v8, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDownloadPath()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/idm/agent/dl/DlAgent;->addHttpHeader(ILjava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v11, v0}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmDisplayHttpHeaderRequestCode(Ljava/net/HttpURLConnection;)V

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/network/IDMNetworkUserAction;->getUserPause()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v8, Lcom/idm/agent/dl/DlAgent;->callbackStatus:Lcom/idm/adapter/callback/IDMCallbackStatus;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1, v15, v14}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(III)V

    iget-object v0, v8, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lcom/idm/agent/dl/DlAgent;->callbackStatus:Lcom/idm/adapter/callback/IDMCallbackStatus;

    invoke-virtual {v8, v0, v1}, Lcom/idm/agent/dl/DlAgent;->setCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    :cond_4
    invoke-direct {v8, v11}, Lcom/idm/agent/dl/DlAgent;->createUrlConnector(Lcom/idm/network/IDMNetworkHttpAdapter;)V

    invoke-static {v13}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, v8, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v11, v1, v3}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmSetRequestMethod(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    iget-object v3, v8, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    const-string v5, "application/vnd.oma.dd+xml"

    const-string v6, "application/vnd.oma.dd+xml"

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/idm/agent/dl/DlAgent;->addHttpHeader(ILjava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v11, v0}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmDisplayHttpHeaderRequestCode(Ljava/net/HttpURLConnection;)V

    iget-object v0, v8, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    iget-object v1, v8, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    invoke-virtual {v11, v0, v1}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmConnectHttpUrlConnection(Ljava/net/HttpURLConnection;Lcom/idm/network/IDMNetworkTimer;)V

    invoke-static {v13}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/idm/exception/http/IDMExceptionHttpSend; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/idm/exception/http/IDMExceptionHttpNetwork; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/idm/exception/http/IDMExceptionHttpConnect; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/idm/exception/http/IDMExceptionHttpUrlConnect; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move v12, v14

    goto :goto_4

    :goto_1
    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_2
    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    const-string v1, "HttpNetwork Send Fail"

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/16 v12, 0x1f6

    :goto_4
    iget-object v0, v8, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    const/4 v0, 0x0

    iput-object v0, v8, Lcom/idm/agent/dl/DlAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    :cond_6
    move-object/from16 v1, p5

    invoke-virtual {v1, v12}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmSetErrorCode(I)V

    invoke-direct {v8, v12}, Lcom/idm/agent/dl/DlAgent;->getSendState(I)Lcom/idm/network/IDMNetworkSendRecvState;

    move-result-object v0

    return-object v0
.end method

.method private setCallbackProgress(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->callback:Lcom/idm/adapter/callback/IDMCallback;

    invoke-interface {p0, p1, p2}, Lcom/idm/adapter/callback/IDMCallback;->idmOnProgress(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    return-void
.end method


# virtual methods
.method public cancelDl()V
    .locals 2

    const-string v0, "cancelDl"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/idm/network/IDMNetworkUserAction;->setUserCancel(Z)V

    invoke-virtual {p0}, Lcom/idm/agent/dl/DlAgent;->finishDl()V

    return-void
.end method

.method public deleteDeltaFile()V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-direct {v0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;-><init>()V

    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDownloadPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmFileDelete(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/idm/exception/file/IDMExceptionFileDelete; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public finishDl()V
    .locals 2

    const-string v0, "finishDl"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/agent/dl/DlAgent;->httpRetryCount:I

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetIsCustomApn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmCustomApnClose()V

    :cond_0
    new-instance v0, Lcom/idm/network/IDMNetworkHttpAdapter;

    invoke-direct {v0}, Lcom/idm/network/IDMNetworkHttpAdapter;-><init>()V

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmDisconnectHttpUrlConnection(Ljava/net/HttpURLConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    :cond_1
    invoke-static {}, Lcom/idm/adapter/common/IDMDeviceLockControl;->getInstance()Lcom/idm/adapter/common/IDMDeviceLockControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/adapter/common/IDMDeviceLockControl;->idmLockRelease()V

    return-void
.end method

.method public pauseDl()V
    .locals 2

    const-string v0, "pauseDl"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/idm/network/IDMNetworkUserAction;->setUserPause(Z)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    invoke-virtual {p0}, Lcom/idm/agent/dl/DlAgent;->finishDl()V

    return-void
.end method

.method public processDl()V
    .locals 9

    const-string v0, "processDl"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/adapter/common/IDMDeviceLockControl;->getInstance()Lcom/idm/adapter/common/IDMDeviceLockControl;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/idm/adapter/common/IDMDeviceLockControl;->idmLockAcquire(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/idm/agent/dl/DlAgent;->isNetworkBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v0

    const/16 v1, 0xf2

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/idm/agent/dl/DlAgent;->checkDownloadComplete()V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reportstatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDlNotifyDownloadReportCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/idm/agent/dl/DlAgent;->getConnectServerURL(I)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Uri : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/idm/agent/dl/DlAgent;->getVerifyCommand(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDlNotifyDownloadReportCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/idm/agent/dl/DlAgent;->getNotifyResultData(I)[B

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/idm/agent/dl/DlAgent;->isCustomApnOpenFailed()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSocketTrafficStats()V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v4

    iget-object v7, p0, Lcom/idm/agent/dl/DlAgent;->networkInfoAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    iget-object v8, p0, Lcom/idm/agent/dl/DlAgent;->dlAbortInfo:Lcom/idm/agent/dl/IDMDlAbortInfo;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/idm/agent/dl/DlAgent;->sendPackage(ILjava/lang/String;[BLcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;Lcom/idm/agent/dl/IDMDlAbortInfo;)Lcom/idm/network/IDMNetworkSendRecvState;

    move-result-object v0

    sget-object v3, Lcom/idm/network/IDMNetworkSendRecvHandler;->SUCCESS:Lcom/idm/network/IDMNetworkSendRecvHandler;

    if-ne v0, v3, :cond_a

    iget-object v4, p0, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_a

    new-instance v0, Lcom/idm/core/dd/IDMDDDataInfo;

    invoke-direct {v0}, Lcom/idm/core/dd/IDMDDDataInfo;-><init>()V

    iget-object v4, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v4

    iget-object v5, p0, Lcom/idm/agent/dl/DlAgent;->request:Ljava/net/HttpURLConnection;

    iget-object v6, p0, Lcom/idm/agent/dl/DlAgent;->dlAbortInfo:Lcom/idm/agent/dl/IDMDlAbortInfo;

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/idm/agent/dl/DlAgent;->receivePackage(ILjava/net/HttpURLConnection;Lcom/idm/core/dd/IDMDDDataInfo;Lcom/idm/agent/dl/IDMDlAbortInfo;)Lcom/idm/network/IDMNetworkSendRecvState;

    move-result-object v4

    if-ne v4, v3, :cond_8

    const-string v3, "receivePackage Success"

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/idm/agent/dl/DlAgent;->getVerifyCommand(I)I

    move-result v3

    if-ne v3, v2, :cond_5

    const-string v1, "[IDM_CASE_DOWNLOAD_DESCRIPTOR]"

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_FINISH:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    invoke-virtual {p0, v1, v0}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-ne v3, v0, :cond_6

    const-string v0, "[IDM_CASE_DOWNLOAD_IN_PROGRESS]"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_CONTINUE:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    invoke-virtual {p0, v0, v2}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;I)V

    goto :goto_2

    :cond_6
    if-ne v3, v1, :cond_7

    const-string v0, "[IDM_CASE_REPORT_DOWNLOAD_RESULT]"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_FINISH:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDlNotifyDownloadReportCode()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;I)V

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_FINISH:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    invoke-virtual {p0, v0, v2}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;I)V

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;

    if-ne v4, v0, :cond_9

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v0

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->dlAbortInfo:Lcom/idm/agent/dl/IDMDlAbortInfo;

    invoke-direct {p0, v0, v1}, Lcom/idm/agent/dl/DlAgent;->retryOperation(ILcom/idm/agent/dl/IDMDlAbortInfo;)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->dlAbortInfo:Lcom/idm/agent/dl/IDMDlAbortInfo;

    invoke-interface {v4, v0, p0}, Lcom/idm/network/IDMNetworkSendRecvState;->idmSendRecvDLHandling(Lcom/idm/agent/IDMAgentMessageHandler;Lcom/idm/agent/dl/IDMDlAbortInfo;)V

    goto :goto_2

    :cond_a
    sget-object v1, Lcom/idm/network/IDMNetworkSendRecvHandler;->RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v0

    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->dlAbortInfo:Lcom/idm/agent/dl/IDMDlAbortInfo;

    invoke-direct {p0, v0, v1}, Lcom/idm/agent/dl/DlAgent;->retryOperation(ILcom/idm/agent/dl/IDMDlAbortInfo;)V

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/idm/agent/dl/DlAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->dlAbortInfo:Lcom/idm/agent/dl/IDMDlAbortInfo;

    invoke-interface {v0, v1, p0}, Lcom/idm/network/IDMNetworkSendRecvState;->idmSendRecvDLHandling(Lcom/idm/agent/IDMAgentMessageHandler;Lcom/idm/agent/dl/IDMDlAbortInfo;)V

    :goto_2
    return-void
.end method

.method public requestRetryDl()V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/idm/network/IDMNetworkUserAction;->setRequestRetry(Z)V

    invoke-virtual {p0}, Lcom/idm/agent/dl/DlAgent;->finishDl()V

    return-void
.end method

.method public setCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dl/DlAgent;->callback:Lcom/idm/adapter/callback/IDMCallback;

    invoke-interface {p0, p1, p2}, Lcom/idm/adapter/callback/IDMCallback;->idmOnStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    return-void
.end method

.method public setDlActionInfo(Lcom/idm/service/actioninfo/IDMActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dl/DlAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    return-void
.end method

.method public setMessageHandler(Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/idm/agent/IDMAgentMessageHandler;

    invoke-direct {v0, p1}, Lcom/idm/agent/IDMAgentMessageHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/idm/agent/dl/DlAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    return-void
.end method
