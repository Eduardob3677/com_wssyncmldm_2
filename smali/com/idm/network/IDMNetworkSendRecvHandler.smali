.class public enum Lcom/idm/network/IDMNetworkSendRecvHandler;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/idm/network/IDMNetworkSendRecvState;
.implements Lcom/idm/adapter/callback/IDMCallbackStatusInterface;
.implements Lcom/idm/agent/dl/IDMDlInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/network/IDMNetworkSendRecvHandler;",
        ">;",
        "Lcom/idm/network/IDMNetworkSendRecvState;",
        "Lcom/idm/adapter/callback/IDMCallbackStatusInterface;",
        "Lcom/idm/agent/dl/IDMDlInterface;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/network/IDMNetworkSendRecvHandler;

.field public static final enum FILE_NOT_FOUND:Lcom/idm/network/IDMNetworkSendRecvHandler;

.field public static final enum MEMORY_FULL:Lcom/idm/network/IDMNetworkSendRecvHandler;

.field public static final enum OVERSIZE_DELTA:Lcom/idm/network/IDMNetworkSendRecvHandler;

.field public static final enum PAUSE:Lcom/idm/network/IDMNetworkSendRecvHandler;

.field public static final enum REQUEST_RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;

.field public static final enum RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;

.field public static final enum SUCCESS:Lcom/idm/network/IDMNetworkSendRecvHandler;

.field public static final enum USER_CANCEL:Lcom/idm/network/IDMNetworkSendRecvHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/idm/network/IDMNetworkSendRecvHandler$1;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/network/IDMNetworkSendRecvHandler$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->SUCCESS:Lcom/idm/network/IDMNetworkSendRecvHandler;

    new-instance v1, Lcom/idm/network/IDMNetworkSendRecvHandler$2;

    const-string v3, "USER_CANCEL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/idm/network/IDMNetworkSendRecvHandler$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/idm/network/IDMNetworkSendRecvHandler;->USER_CANCEL:Lcom/idm/network/IDMNetworkSendRecvHandler;

    new-instance v3, Lcom/idm/network/IDMNetworkSendRecvHandler$3;

    const-string v5, "PAUSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/idm/network/IDMNetworkSendRecvHandler$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/idm/network/IDMNetworkSendRecvHandler;->PAUSE:Lcom/idm/network/IDMNetworkSendRecvHandler;

    new-instance v5, Lcom/idm/network/IDMNetworkSendRecvHandler$4;

    const-string v7, "REQUEST_RETRY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/idm/network/IDMNetworkSendRecvHandler$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/idm/network/IDMNetworkSendRecvHandler;->REQUEST_RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;

    new-instance v7, Lcom/idm/network/IDMNetworkSendRecvHandler$5;

    const-string v9, "MEMORY_FULL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/idm/network/IDMNetworkSendRecvHandler$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/idm/network/IDMNetworkSendRecvHandler;->MEMORY_FULL:Lcom/idm/network/IDMNetworkSendRecvHandler;

    new-instance v9, Lcom/idm/network/IDMNetworkSendRecvHandler$6;

    const-string v11, "OVERSIZE_DELTA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/idm/network/IDMNetworkSendRecvHandler$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/idm/network/IDMNetworkSendRecvHandler;->OVERSIZE_DELTA:Lcom/idm/network/IDMNetworkSendRecvHandler;

    new-instance v11, Lcom/idm/network/IDMNetworkSendRecvHandler$7;

    const-string v13, "FILE_NOT_FOUND"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/idm/network/IDMNetworkSendRecvHandler$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/idm/network/IDMNetworkSendRecvHandler;->FILE_NOT_FOUND:Lcom/idm/network/IDMNetworkSendRecvHandler;

    new-instance v13, Lcom/idm/network/IDMNetworkSendRecvHandler$8;

    const-string v15, "RETRY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/idm/network/IDMNetworkSendRecvHandler$8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/idm/network/IDMNetworkSendRecvHandler;->RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/idm/network/IDMNetworkSendRecvHandler;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/idm/network/IDMNetworkSendRecvHandler;->$VALUES:[Lcom/idm/network/IDMNetworkSendRecvHandler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/idm/network/IDMNetworkSendRecvHandler$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/network/IDMNetworkSendRecvHandler;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/idm/agent/IDMAgentMessageHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/network/IDMNetworkSendRecvHandler;->idmPauseFinishDL(Lcom/idm/agent/IDMAgentMessageHandler;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/idm/agent/IDMAgentMessageHandler;Lcom/idm/providers/mo/IDMMoDatabaseManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/network/IDMNetworkSendRecvHandler;->idmCancelFinishDM(Lcom/idm/agent/IDMAgentMessageHandler;Lcom/idm/providers/mo/IDMMoDatabaseManager;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/idm/agent/IDMAgentMessageHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/network/IDMNetworkSendRecvHandler;->idmCancelFinishDL(Lcom/idm/agent/IDMAgentMessageHandler;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/idm/agent/IDMAgentMessageHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/network/IDMNetworkSendRecvHandler;->idmRequestRetryDL(Lcom/idm/agent/IDMAgentMessageHandler;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/idm/agent/IDMAgentMessageHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/network/IDMNetworkSendRecvHandler;->idmMemoryFullReportContinueSession(Lcom/idm/agent/IDMAgentMessageHandler;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/idm/agent/IDMAgentMessageHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/network/IDMNetworkSendRecvHandler;->idmReceiveOverSizeReportContinueSession(Lcom/idm/agent/IDMAgentMessageHandler;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/idm/agent/IDMAgentMessageHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/network/IDMNetworkSendRecvHandler;->idmFileNotFoundReportContinueSession(Lcom/idm/agent/IDMAgentMessageHandler;)V

    return-void
.end method

.method private static idmCancelFinishDL(Lcom/idm/agent/IDMAgentMessageHandler;)V
    .locals 2

    const-string v0, "idmCancelFinishDL"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/idm/network/IDMNetworkUserAction;->setUserCancel(Z)V

    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_USERCANCEL_FINISH:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    invoke-virtual {p0, v0}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;)V

    return-void
.end method

.method private static idmCancelFinishDM(Lcom/idm/agent/IDMAgentMessageHandler;Lcom/idm/providers/mo/IDMMoDatabaseManager;)V
    .locals 2

    const-string v0, "idmCancelFinishDM"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/idm/network/IDMNetworkUserAction;->setUserCancel(Z)V

    invoke-virtual {p1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoDatabaseClose()V

    sget-object p1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_USERCANCEL_FINISH:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {p0, p1}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;)V

    return-void
.end method

.method private static idmFileNotFoundReportContinueSession(Lcom/idm/agent/IDMAgentMessageHandler;)V
    .locals 1

    const-string v0, "idmFileNotFoundReportContinueSession"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_FILE_NOT_FOUND:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    invoke-virtual {p0, v0}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;)V

    return-void
.end method

.method private static idmMemoryFullReportContinueSession(Lcom/idm/agent/IDMAgentMessageHandler;)V
    .locals 1

    const-string v0, "idmMemoryFullReportContinueSession"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_MEMORY_FULL_REPORT:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    invoke-virtual {p0, v0}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;)V

    return-void
.end method

.method private static idmPauseFinishDL(Lcom/idm/agent/IDMAgentMessageHandler;)V
    .locals 2

    const-string v0, "idmPauseFinishDL"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/idm/network/IDMNetworkUserAction;->setUserPause(Z)V

    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_TASK_EVENT_DL_PAUSE_DOWNLOAD_FINISH:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    invoke-virtual {p0, v0}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;)V

    return-void
.end method

.method private static idmReceiveOverSizeReportContinueSession(Lcom/idm/agent/IDMAgentMessageHandler;)V
    .locals 1

    const-string v0, "idmReceiveOverSizeReportContinueSession"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_RECEIVE_OVERSIZE_REPORT:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    invoke-virtual {p0, v0}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;)V

    return-void
.end method

.method private static idmRequestRetryDL(Lcom/idm/agent/IDMAgentMessageHandler;)V
    .locals 2

    const-string v0, "idmRequestRetryDL"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/idm/network/IDMNetworkUserAction;->setRequestRetry(Z)V

    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;->IDM_DL_TASK_EVENT_REQUEST_RETRY:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DL_TASK_EVENT;

    invoke-virtual {p0, v0}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/network/IDMNetworkSendRecvHandler;
    .locals 1

    const-class v0, Lcom/idm/network/IDMNetworkSendRecvHandler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/network/IDMNetworkSendRecvHandler;

    return-object p0
.end method

.method public static values()[Lcom/idm/network/IDMNetworkSendRecvHandler;
    .locals 1

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->$VALUES:[Lcom/idm/network/IDMNetworkSendRecvHandler;

    invoke-virtual {v0}, [Lcom/idm/network/IDMNetworkSendRecvHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/network/IDMNetworkSendRecvHandler;

    return-object v0
.end method


# virtual methods
.method public idmSendRecvDLHandling(Lcom/idm/agent/IDMAgentMessageHandler;Lcom/idm/agent/dl/IDMDlAbortInfo;)V
    .locals 0

    return-void
.end method

.method public idmSendRecvDMHandling(Lcom/idm/agent/IDMAgentMessageHandler;Lcom/idm/providers/mo/IDMMoDatabaseManager;)V
    .locals 0

    return-void
.end method
