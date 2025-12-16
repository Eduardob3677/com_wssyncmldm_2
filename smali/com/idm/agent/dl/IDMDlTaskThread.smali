.class public Lcom/idm/agent/dl/IDMDlTaskThread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/idm/agent/dl/IDMDlHandlerMessage;
.implements Lcom/idm/agent/dl/IDMDlInterface;
.implements Lcom/idm/adapter/callback/IDMCallbackStatusInterface;
.implements Lcom/idm/agent/dm/IDMDmInterface;


# instance fields
.field private actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

.field private final adaptersHolder:Lcom/idm/adapter/handler/AdaptersHolder;

.field private final baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

.field private callback:Lcom/idm/adapter/callback/IDMCallback;

.field private context:Landroid/content/Context;

.field private dlAgent:Lcom/idm/agent/dl/DlAgent;

.field private final networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

.field private taskHandler:Landroid/os/Handler;

.field private taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/adapter/handler/AdaptersHolder;Lcom/idm/adapter/callback/IDMCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    iput-object p3, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->adaptersHolder:Lcom/idm/adapter/handler/AdaptersHolder;

    invoke-virtual {p3}, Lcom/idm/adapter/handler/AdaptersHolder;->getNetworkAdapter()Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {p3}, Lcom/idm/adapter/handler/AdaptersHolder;->getBaseDownloadAdapter()Lcom/idm/agent/dl/IDMDlBaseDownload;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    iput-object p4, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->callback:Lcom/idm/adapter/callback/IDMCallback;

    new-instance v0, Lcom/idm/agent/dl/DlAgent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/idm/agent/dl/DlAgent;-><init>(Landroid/content/Context;Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/adapter/handler/AdaptersHolder;Lcom/idm/adapter/callback/IDMCallback;)V

    iput-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    return-void
.end method

.method private idmGetDLTaskId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method private idmStopThreadLooper()V
    .locals 1

    const-string v0, "idmStopThreadLooper"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->taskHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlTaskThread;->idmGetDLTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/idm/service/provider/IDMProviderService;->idmRemoveTask(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public idmCancelMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->valueOf(I)Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/idm/agent/dl/IDMDlTaskThread$1;->$SwitchMap$com$idm$agent$interfaces$IDMEventInterface$IDM_DL_TASK_EVENT:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 p1, 0xf

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-virtual {p0}, Lcom/idm/agent/dl/DlAgent;->pauseDl()V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/idm/service/actioninfo/IDMActionInfo;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/idm/service/actioninfo/IDMActionInfo;

    iput-object p1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    :cond_2
    iget-object p0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-virtual {p0}, Lcom/idm/agent/dl/DlAgent;->cancelDl()V

    goto :goto_0

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    check-cast p1, Landroid/net/Network;

    invoke-virtual {v0, p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSetNetwork(Landroid/net/Network;)V

    :cond_4
    iget-object p0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-virtual {p0}, Lcom/idm/agent/dl/DlAgent;->requestRetryDl()V

    :goto_0
    return-void
.end method

.method public idmGetDLTaskHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->taskHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public idmHandleMessage(Landroid/os/Message;)V
    .locals 14

    const-string v0, "abortCode ["

    const-string v1, "actionInfo.idmGetSuCancel() : "

    new-instance v2, Lcom/idm/adapter/callback/IDMCallbackStatus;

    invoke-direct {v2}, Lcom/idm/adapter/callback/IDMCallbackStatus;-><init>()V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->valueOf(I)Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Message : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const/16 v4, 0x455

    const/16 v5, 0x2712

    :try_start_0
    sget-object v6, Lcom/idm/agent/dl/IDMDlTaskThread$1;->$SwitchMap$com$idm$agent$interfaces$IDMEventInterface$IDM_DL_TASK_EVENT:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v6, v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x5

    const-string v9, "401"

    const/16 v10, 0x23

    const/16 v11, 0xf0

    const/16 v12, 0x2710

    const/4 v13, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetIsCustomApn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmCustomApnClose()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    const/16 v0, 0xf2

    invoke-virtual {v2, v12, v0, v13}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(III)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlTaskThread;->idmGetDLTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/idm/agent/dl/DlAgent;->setCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlTaskThread;->idmStopThreadLooper()V

    goto/16 :goto_6

    :pswitch_1
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v0}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmResetDownloadInfo()V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-virtual {v0}, Lcom/idm/agent/dl/DlAgent;->processDl()V

    goto/16 :goto_6

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSuCancel()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSuCancel()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SuCancel or WifiBackGroundCancel"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDmResultCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v11, v13, v0}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlTaskThread;->idmGetDLTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/idm/agent/dl/DlAgent;->setCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v13}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetAppId(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    iget-object v3, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->adaptersHolder:Lcom/idm/adapter/handler/AdaptersHolder;

    iget-object v6, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->callback:Lcom/idm/adapter/callback/IDMCallback;

    invoke-static {v0, v1, v3, v6}, Lcom/idm/service/provider/IDMProviderService;->idmDMStart(Landroid/content/Context;Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/adapter/handler/AdaptersHolder;Lcom/idm/adapter/callback/IDMCallback;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlTaskThread;->idmStopThreadLooper()V

    goto/16 :goto_6

    :cond_1
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetNotifyUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "NotifyUrl is empty"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v13}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetAppId(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v11}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetCommand(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDmResultCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v9}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDmResultCode(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDmResultCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v11, v13, v0}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    iget-object v3, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->adaptersHolder:Lcom/idm/adapter/handler/AdaptersHolder;

    iget-object v6, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->callback:Lcom/idm/adapter/callback/IDMCallback;

    invoke-static {v0, v1, v3, v6}, Lcom/idm/service/provider/IDMProviderService;->idmDMStart(Landroid/content/Context;Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/adapter/handler/AdaptersHolder;Lcom/idm/adapter/callback/IDMCallback;)Ljava/lang/String;

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlTaskThread;->idmGetDLTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/idm/agent/dl/DlAgent;->setCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlTaskThread;->idmStopThreadLooper()V

    goto/16 :goto_6

    :cond_3
    const-string v0, "Start download result report"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v1}, Lcom/idm/agent/dl/DlAgent;->setDlActionInfo(Lcom/idm/service/actioninfo/IDMActionInfo;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->taskHandler:Landroid/os/Handler;

    sget-object v1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_START:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    :pswitch_3
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmCustomApnClose()V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v0}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmResetDownloadInfo()V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-virtual {v0}, Lcom/idm/agent/dl/DlAgent;->deleteDeltaFile()V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v10}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetCommand(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v8}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDlNotifyDownloadReportCode(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v0

    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDlNotifyDownloadReportCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v12, v0, v7, v1}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/idm/agent/dl/DlAgent;->setCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-virtual {v0}, Lcom/idm/agent/dl/DlAgent;->processDl()V

    goto/16 :goto_6

    :pswitch_4
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmCustomApnClose()V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v0}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmResetDownloadInfo()V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v10}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetCommand(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDlNotifyDownloadReportCode(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v0

    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDlNotifyDownloadReportCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v12, v0, v13, v1}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/idm/agent/dl/DlAgent;->setCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-virtual {v0}, Lcom/idm/agent/dl/DlAgent;->processDl()V

    goto/16 :goto_6

    :pswitch_5
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmCustomApnClose()V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v0}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmResetDownloadInfo()V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v10}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetCommand(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v6}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDlNotifyDownloadReportCode(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v0

    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDlNotifyDownloadReportCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v12, v0, v13, v1}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/idm/agent/dl/DlAgent;->setCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-virtual {v0}, Lcom/idm/agent/dl/DlAgent;->processDl()V

    goto/16 :goto_6

    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmCustomApnClose()V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->baseDownloadAdapter:Lcom/idm/agent/dl/IDMDlBaseDownload;

    invoke-virtual {v0}, Lcom/idm/agent/dl/IDMDlBaseDownload;->idmResetDownloadInfo()V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-virtual {v0}, Lcom/idm/agent/dl/DlAgent;->processDl()V

    goto/16 :goto_6

    :pswitch_7
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-virtual {v0}, Lcom/idm/agent/dl/DlAgent;->finishDl()V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v1, Lcom/idm/agent/dl/IDMDlAbortInfo;

    if-eqz v3, :cond_4

    check-cast v1, Lcom/idm/agent/dl/IDMDlAbortInfo;

    invoke-virtual {v1}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmGetRetryCount()I

    move-result v13

    :cond_4
    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    iget-object v3, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetNetworkRetryCount(I)I

    move-result v1

    if-lt v13, v1, :cond_5

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v5, v4, v0, v1}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlTaskThread;->idmGetDLTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/idm/agent/dl/DlAgent;->setCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    :cond_5
    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlTaskThread;->idmStopThreadLooper()V

    goto/16 :goto_6

    :pswitch_8
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-virtual {v0}, Lcom/idm/agent/dl/DlAgent;->finishDl()V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_10

    if-eq v0, v10, :cond_9

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_8

    const/16 v1, 0xe6

    if-eq v0, v1, :cond_6

    const-string v0, "SDK [DL Finish - default]"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v0

    invoke-virtual {v2, v12, v0, v13}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(III)V

    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlTaskThread;->idmStopThreadLooper()V

    goto/16 :goto_4

    :cond_6
    const-string v0, "SDK [DL Finish - IDM_DL_STATE_DOWNLOAD_IN_CANCEL]"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v13}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetAppId(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v11}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetCommand(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDmResultCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v9}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDmResultCode(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDmResultCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v11, v13, v0}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    iget-object v3, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->adaptersHolder:Lcom/idm/adapter/handler/AdaptersHolder;

    iget-object v6, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->callback:Lcom/idm/adapter/callback/IDMCallback;

    invoke-static {v0, v1, v3, v6}, Lcom/idm/service/provider/IDMProviderService;->idmDMStart(Landroid/content/Context;Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/adapter/handler/AdaptersHolder;Lcom/idm/adapter/callback/IDMCallback;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlTaskThread;->idmStopThreadLooper()V

    goto/16 :goto_4

    :cond_8
    const-string v0, "SDK [DL Finish - IDM_DL_STATE_POSTPONE_TO_UPDATE]"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v12, v1, v13, v0}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlTaskThread;->idmStopThreadLooper()V

    goto/16 :goto_4

    :cond_9
    const-string v0, "SDK [DL Finish - IDM_DL_STATE_REPORT_DOWNLOAD_RESULT]"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "/Download"

    if-ne v0, v7, :cond_b

    :try_start_2
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetReportUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0x28

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetReportUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Start download result generic alert report"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v13}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetAppId(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    const-string v1, "200"

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDmResultCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetCommand(I)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDmResultCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v3, v13, v0}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    iget-object v3, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->adaptersHolder:Lcom/idm/adapter/handler/AdaptersHolder;

    iget-object v6, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->callback:Lcom/idm/adapter/callback/IDMCallback;

    invoke-static {v0, v1, v3, v6}, Lcom/idm/service/provider/IDMProviderService;->idmDMStart(Landroid/content/Context;Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/adapter/handler/AdaptersHolder;Lcom/idm/adapter/callback/IDMCallback;)Ljava/lang/String;

    goto :goto_3

    :cond_a
    invoke-virtual {v2, v12, v3, v13}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(III)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDmResultCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDlNotifyDownloadReportCode()I

    move-result v0

    if-ne v0, v6, :cond_c

    const-string v0, "501"

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDlNotifyDownloadReportCode()I

    move-result v0

    if-ne v0, v8, :cond_d

    const-string v0, "402"

    goto :goto_1

    :cond_d
    const-string v0, "400"

    :goto_1
    iget-object v3, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3, v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDmResultCode(Ljava/lang/String;)V

    :cond_e
    iget-object v3, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3, v13}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetAppId(I)V

    iget-object v3, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetReportUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v6, 0x14

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetReportUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1, v6}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetCommand(I)V

    goto :goto_2

    :cond_f
    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    const/16 v3, 0xf1

    invoke-virtual {v1, v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetCommand(I)V

    :goto_2
    invoke-virtual {v2, v12, v6, v13, v0}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    iget-object v3, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->adaptersHolder:Lcom/idm/adapter/handler/AdaptersHolder;

    iget-object v6, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->callback:Lcom/idm/adapter/callback/IDMCallback;

    invoke-static {v0, v1, v3, v6}, Lcom/idm/service/provider/IDMProviderService;->idmDMStart(Landroid/content/Context;Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/adapter/handler/AdaptersHolder;Lcom/idm/adapter/callback/IDMCallback;)Ljava/lang/String;

    :goto_3
    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlTaskThread;->idmStopThreadLooper()V

    goto :goto_4

    :cond_10
    const-string v0, "SDK [DL Finish - IDM_DL_STATE_FUMO_START]"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v12, v1, v13, v0}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlTaskThread;->idmStopThreadLooper()V

    :goto_4
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlTaskThread;->idmGetDLTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/idm/agent/dl/DlAgent;->setCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    goto :goto_6

    :pswitch_9
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-virtual {v0}, Lcom/idm/agent/dl/DlAgent;->processDl()V

    goto :goto_6

    :pswitch_a
    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    iget-object v1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->taskHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/idm/agent/dl/DlAgent;->setMessageHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-virtual {v0}, Lcom/idm/agent/dl/DlAgent;->processDl()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :goto_5
    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-virtual {v0}, Lcom/idm/agent/dl/DlAgent;->finishDl()V

    new-instance v0, Lcom/idm/agent/dl/IDMDlAbortInfo;

    invoke-direct {v0}, Lcom/idm/agent/dl/IDMDlAbortInfo;-><init>()V

    invoke-virtual {v0}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmGetErrorCode()I

    move-result v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v5, v4, v0, p1}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    iget-object p1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->dlAgent:Lcom/idm/agent/dl/DlAgent;

    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlTaskThread;->idmGetDLTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/idm/agent/dl/DlAgent;->setCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    invoke-direct {p0}, Lcom/idm/agent/dl/IDMDlTaskThread;->idmStopThreadLooper()V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public idmSetDLTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->taskId:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/idm/agent/dl/IDMDlWeakRefHandler;

    invoke-direct {v0, p0}, Lcom/idm/agent/dl/IDMDlWeakRefHandler;-><init>(Lcom/idm/agent/dl/IDMDlHandlerMessage;)V

    iput-object v0, p0, Lcom/idm/agent/dl/IDMDlTaskThread;->taskHandler:Landroid/os/Handler;

    sget-object p0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_START:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string p0, "SDK IDM_DL_TASK_EVENT_START send Message"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
