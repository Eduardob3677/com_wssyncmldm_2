.class public Lcom/idm/agent/dm/IDMDmTaskThread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/idm/agent/dm/IDMDmInterface;
.implements Lcom/idm/agent/dm/IDMDmHandlerMessage;
.implements Lcom/idm/adapter/callback/IDMCallbackStatusInterface;


# instance fields
.field private actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

.field private dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

.field private final networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

.field private taskHandler:Landroid/os/Handler;

.field private taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/adapter/handler/AdaptersHolder;Lcom/idm/adapter/callback/IDMCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p3}, Lcom/idm/adapter/handler/AdaptersHolder;->getNetworkAdapter()Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    new-instance v0, Lcom/idm/agent/dm/IDMDmAgent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/idm/agent/dm/IDMDmAgent;-><init>(Landroid/content/Context;Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/adapter/handler/AdaptersHolder;Lcom/idm/adapter/callback/IDMCallback;)V

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    return-void
.end method

.method private idmGetDMTaskId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method private idmStopThreadLooper()V
    .locals 1

    const-string v0, "idmStopThreadLooper"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->taskHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmTaskThread;->idmGetDMTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/idm/service/provider/IDMProviderService;->idmRemoveTask(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public idmCancelMessage(Landroid/os/Message;)V
    .locals 4

    new-instance v0, Lcom/idm/adapter/callback/IDMCallbackStatus;

    invoke-direct {v0}, Lcom/idm/adapter/callback/IDMCallbackStatus;-><init>()V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->valueOf(I)Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Message : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/idm/agent/dm/IDMDmTaskThread$1;->$SwitchMap$com$idm$agent$interfaces$IDMEventInterface$IDM_DM_TASK_EVENT:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, p1, Lcom/idm/service/actioninfo/IDMActionInfo;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/idm/service/actioninfo/IDMActionInfo;

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    :cond_1
    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    invoke-virtual {p1}, Lcom/idm/agent/dm/IDMDmAgent;->idmCancelDM()V

    const/16 p1, 0x3ef

    const/4 v1, 0x0

    const/16 v2, 0x2710

    invoke-virtual {v0, v2, p1, v1}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(III)V

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmTaskThread;->idmGetDMTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmSetCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    :goto_0
    return-void
.end method

.method public idmGetDMTaskHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->taskHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public idmHandleMessage(Landroid/os/Message;)V
    .locals 5

    new-instance v0, Lcom/idm/adapter/callback/IDMCallbackStatus;

    invoke-direct {v0}, Lcom/idm/adapter/callback/IDMCallbackStatus;-><init>()V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->valueOf(I)Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Message : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/idm/agent/dm/IDMDmTaskThread$1;->$SwitchMap$com$idm$agent$interfaces$IDMEventInterface$IDM_DM_TASK_EVENT:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x0

    const/16 v3, 0x2710

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/16 p1, 0x3f6

    invoke-virtual {v0, v3, p1, v2}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(III)V

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmSetCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSuCancel()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p1, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmSetDmActionInfo(Lcom/idm/service/actioninfo/IDMActionInfo;)V

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    invoke-virtual {p1}, Lcom/idm/agent/dm/IDMDmAgent;->idmInitStatus()V

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->taskHandler:Landroid/os/Handler;

    sget-object p1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_START:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmTaskThread;->idmStopThreadLooper()V

    goto/16 :goto_1

    :pswitch_1
    invoke-static {}, Lcom/idm/adapter/common/IDMDeviceLockControl;->getInstance()Lcom/idm/adapter/common/IDMDeviceLockControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/adapter/common/IDMDeviceLockControl;->idmLockRelease()V

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetIsCustomApn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmCustomApnClose()V

    :cond_1
    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    invoke-virtual {p1}, Lcom/idm/agent/dm/IDMDmAgent;->idmInitStatus()V

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->taskHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmStartDM(Landroid/os/Handler;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    invoke-virtual {v1}, Lcom/idm/agent/dm/IDMDmAgent;->idmFinishDM()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v1, Lcom/idm/agent/dm/IDMDmAbortInfo;

    const/16 v3, 0x3f1

    const/16 v4, 0x2712

    if-eqz v2, :cond_2

    check-cast v1, Lcom/idm/agent/dm/IDMDmAbortInfo;

    invoke-virtual {v1}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmGetErrorCode()I

    move-result v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v4, v3, v1, p1}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4, v3, p1}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(III)V

    :goto_0
    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmTaskThread;->idmGetDMTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmSetCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmTaskThread;->idmStopThreadLooper()V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    invoke-virtual {v1}, Lcom/idm/agent/dm/IDMDmAgent;->idmFinishDM()V

    const/16 v1, 0x3f5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmTaskThread;->idmGetDMTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmSetCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmTaskThread;->idmStopThreadLooper()V

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    invoke-virtual {v1}, Lcom/idm/agent/dm/IDMDmAgent;->idmFinishDM()V

    const/16 v1, 0x3f2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(IIILjava/lang/Object;)V

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmTaskThread;->idmGetDMTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmSetCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmTaskThread;->idmStopThreadLooper()V

    goto :goto_1

    :pswitch_5
    const/16 p1, 0x3f3

    invoke-virtual {v0, v3, p1, v2}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(III)V

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmTaskThread;->idmGetDMTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmSetCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    invoke-virtual {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmProcessDM()V

    goto :goto_1

    :pswitch_6
    const/16 p1, 0x3eb

    invoke-virtual {v0, v3, p1, v2}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(III)V

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmTaskThread;->idmGetDMTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmSetCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->dmAgent:Lcom/idm/agent/dm/IDMDmAgent;

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->taskHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmStartDM(Landroid/os/Handler;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public idmSetDMTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->taskId:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/idm/agent/dm/IDMDmWeakRefHandler;

    invoke-direct {v0, p0}, Lcom/idm/agent/dm/IDMDmWeakRefHandler;-><init>(Lcom/idm/agent/dm/IDMDmHandlerMessage;)V

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmTaskThread;->taskHandler:Landroid/os/Handler;

    sget-object p0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_START:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string p0, "IDM_DM_TASK_EVENT_START send Message"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
