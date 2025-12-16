.class public Lcom/idm/agent/dm/IDMDmAgent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/syncml/Constants;
.implements Lcom/idm/agent/dm/IDMDmInterface;
.implements Lcom/idm/core/push/IDMPushInterface;
.implements Lcom/idm/adapter/callback/IDMCallbackStatusInterface;
.implements Lcom/idm/network/IDMNetworkInterface;
.implements Lcom/idm/agent/dl/IDMDlInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;
    }
.end annotation


# instance fields
.field private actionCount:I

.field private actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

.field private appSvcNodeInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private authRetryCount:I

.field private cachedCommandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Command;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lcom/idm/adapter/callback/IDMCallback;

.field private clientAuthState:I

.field private cmdID:I

.field private final commandAdapter:Lcom/idm/agent/dm/IDMDmCommandInterface;

.field private commandHandler:Lcom/idm/agent/dm/IDMDmCommandHandler;

.field private context:Landroid/content/Context;

.field private final continueProcessAdapter:Lcom/idm/agent/dm/IDMDmContinueProcess;

.field private final deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

.field private final dmAuthAdapter:Lcom/idm/agent/dm/IDMDmAuthValidInterface;

.field private final dmConnectAdapter:Lcom/idm/agent/dm/IDMDmConnectInterface;

.field private dmStatus:I

.field private execCommand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/idm/agent/dm/IDMDmExecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private httpDmConnType:I

.field private httpRetryCount:I

.field private messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

.field private moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

.field private msgID:I

.field private final networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

.field private networkTimer:Lcom/idm/network/IDMNetworkTimer;

.field private processedCommandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Command;",
            ">;"
        }
    .end annotation
.end field

.field private recvMaxMsgSize:Ljava/lang/String;

.field private recvSyncml:Lcom/idm/core/syncml/SyncML;

.field private request:Ljava/net/HttpURLConnection;

.field private respUri:Ljava/lang/String;

.field private sendFinishInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private serverAuthState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/adapter/handler/AdaptersHolder;Lcom/idm/adapter/callback/IDMCallback;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->dmStatus:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->processedCommandList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->cachedCommandList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->clientAuthState:I

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->httpRetryCount:I

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->execCommand:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->appSvcNodeInfo:Ljava/util/ArrayList;

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->httpDmConnType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvMaxMsgSize:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->sendFinishInfo:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p3}, Lcom/idm/adapter/handler/AdaptersHolder;->getDeviceInfoAdapter()Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

    invoke-virtual {p3}, Lcom/idm/adapter/handler/AdaptersHolder;->getNetworkAdapter()Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {p3}, Lcom/idm/adapter/handler/AdaptersHolder;->getCommandAdapter()Lcom/idm/agent/dm/IDMDmCommandInterface;

    move-result-object v5

    iput-object v5, p0, Lcom/idm/agent/dm/IDMDmAgent;->commandAdapter:Lcom/idm/agent/dm/IDMDmCommandInterface;

    invoke-virtual {p3}, Lcom/idm/adapter/handler/AdaptersHolder;->getContinueProcessAdapter()Lcom/idm/agent/dm/IDMDmContinueProcess;

    move-result-object v9

    iput-object v9, p0, Lcom/idm/agent/dm/IDMDmAgent;->continueProcessAdapter:Lcom/idm/agent/dm/IDMDmContinueProcess;

    iput-object p4, p0, Lcom/idm/agent/dm/IDMDmAgent;->callback:Lcom/idm/adapter/callback/IDMCallback;

    invoke-virtual {p3}, Lcom/idm/adapter/handler/AdaptersHolder;->getDmConnectAdapter()Lcom/idm/agent/dm/IDMDmConnectInterface;

    move-result-object p4

    iput-object p4, p0, Lcom/idm/agent/dm/IDMDmAgent;->dmConnectAdapter:Lcom/idm/agent/dm/IDMDmConnectInterface;

    invoke-static {p1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object v8

    iput-object v8, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    new-instance p4, Lcom/idm/agent/dm/IDMDmCommandHandler;

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->processedCommandList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/idm/agent/dm/IDMDmAgent;->execCommand:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/idm/agent/dm/IDMDmAgent;->appSvcNodeInfo:Ljava/util/ArrayList;

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/idm/agent/dm/IDMDmCommandHandler;-><init>(Landroid/content/Context;Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/util/ArrayList;Lcom/idm/agent/dm/IDMDmCommandInterface;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/idm/providers/mo/IDMMoDatabaseManager;Lcom/idm/agent/dm/IDMDmContinueProcess;)V

    iput-object p4, p0, Lcom/idm/agent/dm/IDMDmAgent;->commandHandler:Lcom/idm/agent/dm/IDMDmCommandHandler;

    invoke-virtual {p3}, Lcom/idm/adapter/handler/AdaptersHolder;->getDmAuthAdapter()Lcom/idm/agent/dm/IDMDmAuthValidInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->dmAuthAdapter:Lcom/idm/agent/dm/IDMDmAuthValidInterface;

    return-void
.end method

.method private idmAddHttpHeader(ILjava/net/HttpURLConnection;[B)V
    .locals 8

    const-string v0, ""

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v2}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "/AAuthType"

    invoke-virtual {v1, v3, v4, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/AAuthName"

    invoke-virtual {v2, v3, v5, v4}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v5, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v5}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/AAuthSecret"

    invoke-virtual {v4, v3, v6, v5}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v6, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v6}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/AAuthData"

    invoke-virtual {v5, v3, v7, v6}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "syncml:auth-MAC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "AUTH_TYPE_HMAC"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-direct {p0, v2, v4, v3, p3}, Lcom/idm/agent/dm/IDMDmAgent;->idmMakeHttpHeaderHMAC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p3, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/idm/agent/dm/IDMDmAgent;->idmCheckGenericAlertReportState(I)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {p3}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmInitHttpHeadersMap()V

    :cond_1
    iget-object p3, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    iget p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->httpDmConnType:I

    invoke-virtual {p3, p1, p2, v0, p0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmMakeHttpHeader(ILjava/net/HttpURLConnection;Ljava/lang/String;I)V

    return-void
.end method

.method private idmCheckAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "b64"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : not support format"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "savedAuthType : "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "authType : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->dmAuthAdapter:Lcom/idm/agent/dm/IDMDmAuthValidInterface;

    invoke-interface {p0, p2, p3}, Lcom/idm/agent/dm/IDMDmAuthValidInterface;->idmCheckValidServerDigest(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "syncml:auth-basic"

    invoke-virtual {p6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x3

    if-nez p0, :cond_5

    const-string p0, "syncml:auth-md5"

    invoke-virtual {p6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, " : not support auth-type"

    invoke-virtual {p6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return v1

    :cond_3
    new-instance p0, Lcom/idm/core/security/IDMSecurityImpl;

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurityImpl;-><init>()V

    invoke-virtual {p0, p2, p3, p4}, Lcom/idm/core/security/IDMSecurityImpl;->idmSecurityMakeAuthMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return p1

    :cond_4
    return v1

    :cond_5
    new-instance p0, Lcom/idm/core/security/IDMSecurityImpl;

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurityImpl;-><init>()V

    invoke-virtual {p0, p2, p3}, Lcom/idm/core/security/IDMSecurityImpl;->idmSecurityMakeAuthBasic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    return p1

    :cond_6
    return v1

    :cond_7
    :goto_0
    const-string p0, "parameter is invalild"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return v1
.end method

.method private idmCheckClientAuth()V
    .locals 8

    const-string v0, "idmCheckClientAuth"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->clientAuthState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmGetHeaderStatus()Lcom/idm/core/syncml/Status;

    move-result-object v0

    const-string v4, "idmCheckClientAuth : data is null"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/idm/core/syncml/Status;->getData()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v4}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const-string v5, ""

    :cond_1
    const-string v4, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "212"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v3, "401"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->clientAuthState:I

    goto :goto_0

    :cond_3
    const-string v3, "407"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->clientAuthState:I

    goto :goto_0

    :cond_4
    iput v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->clientAuthState:I

    :goto_0
    if-eqz v0, :cond_9

    :try_start_0
    invoke-virtual {v0}, Lcom/idm/core/syncml/Status;->getChal()Lcom/idm/core/syncml/Chal;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/idm/core/syncml/Chal;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/idm/core/syncml/Chal;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/core/syncml/Meta;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "syncml:auth-basic"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "/AAuthType"

    if-eqz v4, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v5, v4, v3}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_5
    const-string v4, "syncml:auth-md5"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "/AAuthData"

    const-string v7, "nextNonce : "

    if-eqz v4, :cond_6

    :try_start_2
    invoke-virtual {v0}, Lcom/idm/core/syncml/Meta;->getNextNonce()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v7, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v7}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2, v5, v7, v3}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v6, v4, v0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v4, "syncml:auth-MAC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/idm/core/syncml/Meta;->getNextNonce()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v7, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v7}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2, v5, v7, v3}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v6, v4, v0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not support AuthType"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_1
    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    :goto_2
    iput v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->clientAuthState:I

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->dmAuthAdapter:Lcom/idm/agent/dm/IDMDmAuthValidInterface;

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/AAuthName"

    invoke-virtual {v3, v2, v5, v4}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v6, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v6}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v5, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v5}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/AAuthSecret"

    invoke-virtual {v4, v2, v6, v5}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Lcom/idm/agent/dm/IDMDmAuthValidInterface;->idmCheckValidClientDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clientAuthState : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->clientAuthState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void
.end method

.method private idmCheckGenericAlertReportState(I)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "idmCheckGenericAlertReportState : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetReportUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "idmGetReportUrl : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v2}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetReportUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetReportUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/DownloadAndUpdate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0xf1

    const/16 v3, 0xf0

    const/16 v4, 0x64

    const/16 v5, 0x50

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    return v6

    :cond_2
    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetReportUrl()Ljava/lang/String;

    move-result-object v0

    const-string v7, "/Download"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x14

    if-eq p1, p0, :cond_3

    const/16 p0, 0x28

    if-eq p1, p0, :cond_3

    goto :goto_0

    :cond_3
    return v6

    :cond_4
    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetReportUrl()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/Update"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_5

    goto :goto_0

    :cond_5
    return v6

    :cond_6
    :goto_0
    return v1
.end method

.method private idmCheckRetry(ILcom/idm/agent/dm/IDMDmAbortInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v2}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->idmIsAvailableFOTAWithRoamingNetwork(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0, p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetNetworkRetryCount(I)I

    move-result v0

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->httpRetryCount:I

    :cond_0
    invoke-virtual {p2}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmGetErrorCode()I

    move-result v0

    const/16 v1, 0x1f9

    if-ne v0, v1, :cond_1

    const-string v0, "Network Header Fail do not retry"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0, p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetNetworkRetryCount(I)I

    move-result v0

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->httpRetryCount:I

    invoke-virtual {p2, v0}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetRetryCount(I)V

    :cond_1
    iget v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->httpRetryCount:I

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v1, p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetNetworkRetryCount(I)I

    move-result p1

    if-ge v0, p1, :cond_2

    iget p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->httpRetryCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->httpRetryCount:I

    invoke-virtual {p2, p1}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetRetryCount(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "httpRetryCount : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->httpRetryCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmGetErrorCode()I

    move-result p1

    const-wide/16 v0, 0x3e8

    packed-switch p1, :pswitch_data_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "errorCode : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p2, "IDM_ABORT_NETWORK_RECEIVE_FAIL"

    invoke-static {p2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v2, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_RECEIVEFAIL:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {p2, v2, p1, v0, v1}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessageDelayed(Ljava/lang/Enum;IJ)V

    goto :goto_0

    :pswitch_1
    const-string p2, "IDM_ABORT_NETWORK_SEND_FAIL"

    invoke-static {p2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v2, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_SENDFAIL:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {p2, v2, p1, v0, v1}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessageDelayed(Ljava/lang/Enum;IJ)V

    goto :goto_0

    :pswitch_2
    const-string p2, "IDM_ABORT_NETWORK_CONNECT_FAIL"

    invoke-static {p2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v2, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_CONNECTFAIL:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {p2, v2, p1, v0, v1}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessageDelayed(Ljava/lang/Enum;IJ)V

    :goto_0
    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoDatabaseClose()V

    goto :goto_1

    :cond_2
    const-string p1, "httpRetryCount Exceeded"

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_ABORT:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {p1, v0, p2}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->httpRetryCount:I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private idmCheckServerAuth()V
    .locals 12

    const-string v0, "idmCheckServerAuth"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "/AAuthType"

    invoke-virtual {v0, v2, v3, v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/AAuthName"

    invoke-virtual {v0, v2, v3, v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/AAuthSecret"

    invoke-virtual {v0, v2, v3, v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/AAuthData"

    invoke-virtual {v0, v2, v3, v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "syncml:auth-MAC"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncHdr;->getCred()Lcom/idm/core/syncml/Cred;

    move-result-object v0

    if-eqz v0, :cond_3

    iput v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncHdr;->getCred()Lcom/idm/core/syncml/Cred;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/idm/core/syncml/Cred;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/idm/core/syncml/Cred;->getData()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/idm/core/syncml/Meta;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/idm/core/syncml/Meta;->getType()Ljava/lang/String;

    move-result-object v10

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/idm/agent/dm/IDMDmAgent;->idmCheckAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    return-void

    :cond_1
    const-string v0, "idmCheckServerAuth : meta is null"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iput v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    return-void

    :cond_2
    const-string v0, "idmCheckServerAuth : cred is null"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iput v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    return-void

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "serverAuthState : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void
.end method

.method private idmCheckServerAuthHMAC(Ljava/lang/String;[B)V
    .locals 7

    const-string v0, "idmCheckServerAuthHMAC"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "/AAuthType"

    invoke-virtual {v0, v2, v3, v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/AAuthName"

    invoke-virtual {v1, v2, v4, v3}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/AAuthSecret"

    invoke-virtual {v3, v2, v5, v4}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v5, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v5}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/AAuthData"

    invoke-virtual {v4, v2, v6, v5}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "syncml:auth-MAC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v0, "username=\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mac="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/idm/core/security/IDMSecurityImpl;

    invoke-direct {v0}, Lcom/idm/core/security/IDMSecurityImpl;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v1, v3, v4, p2}, Lcom/idm/core/security/IDMSecurityImpl;->idmSecurityMakeAuthHMAC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    iput p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    iput v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    :cond_2
    :goto_1
    return-void
.end method

.method private idmCopyResultObject(Lcom/idm/core/syncml/Results;)Lcom/idm/core/syncml/Results;
    .locals 13

    new-instance p0, Lcom/idm/core/syncml/Results;

    invoke-direct {p0}, Lcom/idm/core/syncml/Results;-><init>()V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getSourceRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/core/syncml/ResponseCommand;->setSourceRef(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idm/core/syncml/Item;

    new-instance v3, Lcom/idm/core/syncml/Item;

    invoke-direct {v3}, Lcom/idm/core/syncml/Item;-><init>()V

    invoke-virtual {v2}, Lcom/idm/core/syncml/Item;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Item;->setData(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/idm/core/syncml/Item;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v12, Lcom/idm/core/syncml/Meta;

    invoke-virtual {v4}, Lcom/idm/core/syncml/Meta;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/idm/core/syncml/Meta;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/idm/core/syncml/Meta;->getSize()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/idm/core/syncml/Meta;->getNextNonce()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/idm/core/syncml/Meta;->getMaxMsgSize()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/idm/core/syncml/Meta;->getMaxObjSize()Ljava/lang/String;

    move-result-object v11

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/idm/core/syncml/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Lcom/idm/core/syncml/Item;->setMeta(Lcom/idm/core/syncml/Meta;)V

    :cond_0
    invoke-virtual {v2}, Lcom/idm/core/syncml/Item;->getSource()Lcom/idm/core/syncml/Source;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Lcom/idm/core/syncml/Source;

    invoke-virtual {v4}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/idm/core/syncml/Location;->getLocName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/idm/core/syncml/Source;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/idm/core/syncml/Item;->setSource(Lcom/idm/core/syncml/Source;)V

    :cond_1
    invoke-virtual {v2}, Lcom/idm/core/syncml/Item;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v5, Lcom/idm/core/syncml/Target;

    invoke-virtual {v4}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/idm/core/syncml/Location;->getLocName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/idm/core/syncml/Target;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/idm/core/syncml/Item;->setTarget(Lcom/idm/core/syncml/Target;)V

    :cond_2
    invoke-virtual {v2}, Lcom/idm/core/syncml/Item;->isMoreData()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/idm/core/syncml/Item;->setMoreData(Z)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/idm/core/syncml/ItemCommand;->setItemList(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v8, Lcom/idm/core/syncml/Meta;

    invoke-virtual {v0}, Lcom/idm/core/syncml/Meta;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/idm/core/syncml/Meta;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/idm/core/syncml/Meta;->getSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/idm/core/syncml/Meta;->getNextNonce()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/idm/core/syncml/Meta;->getMaxMsgSize()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/idm/core/syncml/Meta;->getMaxObjSize()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/idm/core/syncml/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/idm/core/syncml/Command;->setMeta(Lcom/idm/core/syncml/Meta;)V

    :cond_4
    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getMsgRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/core/syncml/ResponseCommand;->setMsgRef(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getCmdRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/core/syncml/ResponseCommand;->setCmdRef(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getTargetRef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/syncml/ResponseCommand;->setTargetRef(Ljava/lang/String;)V

    return-object p0
.end method

.method private idmDeleteDMSessionLog()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-direct {v0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;-><init>()V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmGetDMSessionLogPathWithoutExtension()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".wbxml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmFileDelete(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmGetDMSessionLogPathWithoutExtension()Ljava/lang/String;

    move-result-object p0

    const-string v1, ".xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

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

.method private idmEncodeSyncml(Lcom/idm/core/syncml/SyncML;)[B
    .locals 2

    const-string v0, "idmEncodeSyncml"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlParser;

    invoke-direct {v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlParser;->idmSyncmlWbxmlEncoder(Lcom/idm/core/syncml/SyncML;)[B

    move-result-object p1

    invoke-static {}, Lcom/idm/adapter/logmanager/IDMDebug;->idmGetLogFileSaveState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".wbxml"

    invoke-direct {p0, p1, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmWriteDMSessionLog([BLjava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/idm/adapter/logmanager/IDMDebug;->idmGetDumpLogState()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1, v0}, Lcom/idm/adapter/logmanager/IDMDebug;->DUMP([BI)V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "idmEncodeSyncml size : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    array-length v0, p1

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-object p1
.end method

.method private idmGetCmdID()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->cmdID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->cmdID:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private idmGetDMSessionLogPathWithoutExtension()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dmsession"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private idmGetHeaderStatus()Lcom/idm/core/syncml/Status;
    .locals 3

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p0}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/core/syncml/Command;

    instance-of v1, v0, Lcom/idm/core/syncml/Status;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/idm/core/syncml/Status;

    invoke-virtual {v0}, Lcom/idm/core/syncml/Status;->getCmd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyncHdr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private idmGetMsgID()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->msgID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->msgID:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private idmInitDMSessionLog()V
    .locals 3

    new-instance v0, Lcom/idm/tool/sharedpreference/IDMSharedPreference;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/tool/sharedpreference/IDMSharedPreference;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/idm/tool/sharedpreference/IDMSharedPreference;->getLogFileSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmDeleteDMSessionLog()V

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/tool/sharedpreference/IDMSharedPreference;->setLogFileSessionID(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private idmMakeAlert(Ljava/lang/String;)Lcom/idm/core/syncml/Alert;
    .locals 1

    new-instance v0, Lcom/idm/core/syncml/Alert;

    invoke-direct {v0}, Lcom/idm/core/syncml/Alert;-><init>()V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmGetCmdID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/idm/core/syncml/Alert;->setData(Ljava/lang/String;)V

    return-object v0
.end method

.method private idmMakeCommandAuthStatus()Lcom/idm/core/syncml/Status;
    .locals 12

    new-instance v0, Lcom/idm/core/syncml/Status;

    invoke-direct {v0}, Lcom/idm/core/syncml/Status;-><init>()V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmGetCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v1}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/core/syncml/SyncHdr;->getMsgID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/ResponseCommand;->setMsgRef(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/ResponseCommand;->setCmdRef(Ljava/lang/String;)V

    const-string v1, "SyncHdr"

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/Status;->setCmd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v1}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/core/syncml/SyncHdr;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/ResponseCommand;->setTargetRef(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v1}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/core/syncml/SyncHdr;->getSource()Lcom/idm/core/syncml/Source;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/ResponseCommand;->setSourceRef(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v2}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "/AAuthType"

    invoke-virtual {v1, v3, v4, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v2}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/AAuthData"

    invoke-virtual {v1, v3, v4, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "idmMakeHeaderStatus serverAuthState : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    new-instance p0, Lcom/idm/core/syncml/Chal;

    invoke-direct {p0}, Lcom/idm/core/syncml/Chal;-><init>()V

    new-instance v1, Lcom/idm/core/syncml/Meta;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v6, "b64"

    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/idm/core/syncml/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/idm/core/syncml/Chal;->setMeta(Lcom/idm/core/syncml/Meta;)V

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Status;->setChal(Lcom/idm/core/syncml/Chal;)V

    const-string p0, "407"

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Status;->setData(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p0, v3, :cond_1

    new-instance p0, Lcom/idm/core/syncml/Chal;

    invoke-direct {p0}, Lcom/idm/core/syncml/Chal;-><init>()V

    new-instance v1, Lcom/idm/core/syncml/Meta;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v6, "b64"

    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/idm/core/syncml/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/idm/core/syncml/Chal;->setMeta(Lcom/idm/core/syncml/Meta;)V

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Status;->setChal(Lcom/idm/core/syncml/Chal;)V

    const-string p0, "401"

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Status;->setData(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    const-string p0, "syncml:auth-MAC"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/idm/core/syncml/Chal;

    invoke-direct {p0}, Lcom/idm/core/syncml/Chal;-><init>()V

    new-instance v1, Lcom/idm/core/syncml/Meta;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v6, "b64"

    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/idm/core/syncml/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/idm/core/syncml/Chal;->setMeta(Lcom/idm/core/syncml/Meta;)V

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Status;->setChal(Lcom/idm/core/syncml/Chal;)V

    const-string p0, "200"

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Status;->setData(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "212"

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Status;->setData(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method private idmMakeCred()Lcom/idm/core/syncml/Cred;
    .locals 8

    new-instance v0, Lcom/idm/core/syncml/Cred;

    invoke-direct {v0}, Lcom/idm/core/syncml/Cred;-><init>()V

    new-instance v1, Lcom/idm/core/syncml/Meta;

    invoke-direct {v1}, Lcom/idm/core/syncml/Meta;-><init>()V

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-string v5, "/AAuthType"

    invoke-virtual {v2, v4, v5, v3}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v5, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v5}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/AAuthName"

    invoke-virtual {v3, v4, v6, v5}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v6, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v6}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/AAuthSecret"

    invoke-virtual {v5, v4, v7, v6}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object p0

    const-string v7, "/AAuthData"

    invoke-virtual {v6, v4, v7, p0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "syncml:auth-basic"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance p0, Lcom/idm/core/security/IDMSecurityImpl;

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurityImpl;-><init>()V

    invoke-virtual {p0, v3, v5}, Lcom/idm/core/security/IDMSecurityImpl;->idmSecurityMakeAuthBasic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Cred;->setData(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "syncml:auth-md5"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/idm/core/security/IDMSecurityImpl;

    invoke-direct {v4}, Lcom/idm/core/security/IDMSecurityImpl;-><init>()V

    invoke-virtual {v4, v3, v5, p0}, Lcom/idm/core/security/IDMSecurityImpl;->idmSecurityMakeAuthMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Cred;->setData(Ljava/lang/String;)V

    :goto_0
    const-string p0, "b64"

    invoke-virtual {v1, p0}, Lcom/idm/core/syncml/Meta;->setFormat(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/idm/core/syncml/Meta;->setType(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/Cred;->setMeta(Lcom/idm/core/syncml/Meta;)V

    return-object v0

    :cond_1
    const-string p0, "syncml:auth-MAC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string p0, "AUTH_TYPE_HMAC"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not support"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-object v0
.end method

.method private idmMakeDeviceInfoReplace()Lcom/idm/core/syncml/Replace;
    .locals 9

    new-instance v0, Lcom/idm/core/syncml/Replace;

    invoke-direct {v0}, Lcom/idm/core/syncml/Replace;-><init>()V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmGetCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetDBAdapter()Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "./DevInfo/DevId"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "./DevInfo/Man"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "./DevInfo/Mod"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "./DevInfo/DmV"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "./DevInfo/Lang"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

    invoke-virtual {v4}, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->idmGetExtendDevInfo()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v5}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoIsExistNode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/idm/core/syncml/Item;

    invoke-direct {v5}, Lcom/idm/core/syncml/Item;-><init>()V

    new-instance v6, Lcom/idm/core/syncml/Source;

    invoke-direct {v6, v4}, Lcom/idm/core/syncml/Source;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/idm/core/syncml/Item;->setSource(Lcom/idm/core/syncml/Source;)V

    :try_start_0
    iget-object v6, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v6}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v4}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v4, "nodeInfo is null"

    invoke-static {v4}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/idm/agent/dm/IDMDmAgent;->commandAdapter:Lcom/idm/agent/dm/IDMDmCommandInterface;

    iget-object v8, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-interface {v7, v8, v4}, Lcom/idm/agent/dm/IDMDmCommandInterface;->idmProcessGet(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "N/A"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetValue()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {v5, v4}, Lcom/idm/core/syncml/Item;->setData(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :goto_1
    invoke-static {v4}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private idmMakeGenericAlert(I)Lcom/idm/core/syncml/Alert;
    .locals 4

    new-instance v0, Lcom/idm/core/syncml/Alert;

    invoke-direct {v0}, Lcom/idm/core/syncml/Alert;-><init>()V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmGetCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    const-string v1, "1226"

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/Alert;->setData(Ljava/lang/String;)V

    new-instance v1, Lcom/idm/core/syncml/Item;

    invoke-direct {v1}, Lcom/idm/core/syncml/Item;-><init>()V

    new-instance v2, Lcom/idm/core/syncml/Source;

    invoke-direct {v2}, Lcom/idm/core/syncml/Source;-><init>()V

    new-instance v3, Lcom/idm/core/syncml/Meta;

    invoke-direct {v3}, Lcom/idm/core/syncml/Meta;-><init>()V

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAlertCommandNode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/idm/core/syncml/Location;->setLocURI(Ljava/lang/String;)V

    const-string p0, "chr"

    invoke-virtual {v3, p0}, Lcom/idm/core/syncml/Meta;->setFormat(Ljava/lang/String;)V

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string p0, "org.openmobilealliance.dm.firmwareupdate.userrequest"

    invoke-virtual {v3, p0}, Lcom/idm/core/syncml/Meta;->setType(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    if-ne p1, p0, :cond_1

    const-string p0, "org.openmobilealliance.dm.firmwareupdate.devicerequest"

    invoke-virtual {v3, p0}, Lcom/idm/core/syncml/Meta;->setType(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Lcom/idm/core/syncml/Item;->setSource(Lcom/idm/core/syncml/Source;)V

    invoke-virtual {v1, v3}, Lcom/idm/core/syncml/Item;->setMeta(Lcom/idm/core/syncml/Meta;)V

    const-string p0, "0"

    invoke-virtual {v1, p0}, Lcom/idm/core/syncml/Item;->setData(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private idmMakeGenericAlertReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/idm/core/syncml/Alert;
    .locals 3

    new-instance v0, Lcom/idm/core/syncml/Alert;

    invoke-direct {v0}, Lcom/idm/core/syncml/Alert;-><init>()V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmGetCmdID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0, p2}, Lcom/idm/core/syncml/Alert;->setCorrelator(Ljava/lang/String;)V

    :cond_0
    const-string p0, "1226"

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Alert;->setData(Ljava/lang/String;)V

    new-instance p0, Lcom/idm/core/syncml/Item;

    invoke-direct {p0}, Lcom/idm/core/syncml/Item;-><init>()V

    new-instance p2, Lcom/idm/core/syncml/Source;

    invoke-direct {p2}, Lcom/idm/core/syncml/Source;-><init>()V

    new-instance v1, Lcom/idm/core/syncml/Meta;

    invoke-direct {v1}, Lcom/idm/core/syncml/Meta;-><init>()V

    invoke-virtual {p2, p1}, Lcom/idm/core/syncml/Location;->setLocURI(Ljava/lang/String;)V

    const-string v2, "chr"

    invoke-virtual {v1, v2}, Lcom/idm/core/syncml/Meta;->setFormat(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "/DownloadAndUpdate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "org.openmobilealliance.dm.firmwareupdate.downloadandupdate"

    invoke-virtual {v1, p1}, Lcom/idm/core/syncml/Meta;->setType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "/Download"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "org.openmobilealliance.dm.firmwareupdate.download"

    invoke-virtual {v1, p1}, Lcom/idm/core/syncml/Meta;->setType(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "/Update"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "org.openmobilealliance.dm.firmwareupdate.update"

    invoke-virtual {v1, p1}, Lcom/idm/core/syncml/Meta;->setType(Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Lcom/idm/core/syncml/Item;->setSource(Lcom/idm/core/syncml/Source;)V

    invoke-virtual {p0, v1}, Lcom/idm/core/syncml/Item;->setMeta(Lcom/idm/core/syncml/Meta;)V

    invoke-virtual {p0, p3}, Lcom/idm/core/syncml/Item;->setData(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private idmMakeHeaderStatus()Lcom/idm/core/syncml/Status;
    .locals 12

    new-instance v0, Lcom/idm/core/syncml/Status;

    invoke-direct {v0}, Lcom/idm/core/syncml/Status;-><init>()V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmGetCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v1}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/core/syncml/SyncHdr;->getMsgID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/ResponseCommand;->setMsgRef(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/ResponseCommand;->setCmdRef(Ljava/lang/String;)V

    const-string v1, "SyncHdr"

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/Status;->setCmd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v1}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/core/syncml/SyncHdr;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/ResponseCommand;->setTargetRef(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v1}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/core/syncml/SyncHdr;->getSource()Lcom/idm/core/syncml/Source;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/ResponseCommand;->setSourceRef(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v2}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "/AAuthType"

    invoke-virtual {v1, v3, v4, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v2}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/AAuthData"

    invoke-virtual {v1, v3, v4, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "idmMakeHeaderStatus serverAuthState : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    new-instance p0, Lcom/idm/core/syncml/Chal;

    invoke-direct {p0}, Lcom/idm/core/syncml/Chal;-><init>()V

    new-instance v1, Lcom/idm/core/syncml/Meta;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v6, "b64"

    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/idm/core/syncml/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/idm/core/syncml/Chal;->setMeta(Lcom/idm/core/syncml/Meta;)V

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Status;->setChal(Lcom/idm/core/syncml/Chal;)V

    const-string p0, "407"

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Status;->setData(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p0, v3, :cond_1

    new-instance p0, Lcom/idm/core/syncml/Chal;

    invoke-direct {p0}, Lcom/idm/core/syncml/Chal;-><init>()V

    new-instance v1, Lcom/idm/core/syncml/Meta;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v6, "b64"

    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/idm/core/syncml/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/idm/core/syncml/Chal;->setMeta(Lcom/idm/core/syncml/Meta;)V

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Status;->setChal(Lcom/idm/core/syncml/Chal;)V

    const-string p0, "401"

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Status;->setData(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    const-string p0, "syncml:auth-MAC"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/idm/core/syncml/Chal;

    invoke-direct {p0}, Lcom/idm/core/syncml/Chal;-><init>()V

    new-instance v1, Lcom/idm/core/syncml/Meta;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v6, "b64"

    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/idm/core/syncml/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/idm/core/syncml/Chal;->setMeta(Lcom/idm/core/syncml/Meta;)V

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Status;->setChal(Lcom/idm/core/syncml/Chal;)V

    const-string p0, "200"

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Status;->setData(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "212"

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/Status;->setData(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method private idmMakeHttpHeaderHMAC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "algorithm=MD5, username=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    const-string v3, "/AAuthName"

    invoke-virtual {v1, v2, v3, p0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/idm/core/security/IDMSecurityImpl;

    invoke-direct {v1}, Lcom/idm/core/security/IDMSecurityImpl;-><init>()V

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/idm/core/security/IDMSecurityImpl;->idmSecurityMakeAuthHMAC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\", mac="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private idmMakeResponseCommand(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Command;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "idmMakeResponseCommand"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->processedCommandList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idm/core/syncml/Command;

    instance-of v3, v2, Lcom/idm/core/syncml/Status;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/idm/core/syncml/Status;

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmGetCmdID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "213"

    invoke-virtual {v2}, Lcom/idm/core/syncml/Status;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Status 213 : Not Final !!!!"

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->processedCommandList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idm/core/syncml/Command;

    instance-of v3, v2, Lcom/idm/core/syncml/Results;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/idm/core/syncml/Results;

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmGetCmdID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->processedCommandList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v1
.end method

.method private idmMakeSessionID()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    new-instance v1, Ljava/util/Random;

    int-to-long v2, p0

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/16 p0, 0x64

    invoke-virtual {v1, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%x%x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Make sessionID : "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-object p0
.end method

.method private idmMakeSyncBody()Lcom/idm/core/syncml/SyncBody;
    .locals 7

    const-string v0, "idmMakeSyncBody"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/core/syncml/SyncBody;

    invoke-direct {v0}, Lcom/idm/core/syncml/SyncBody;-><init>()V

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->dmStatus:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    const-string v2, "dmState : IDM_STATE_INIT"

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmMakeHeaderStatus()Lcom/idm/core/syncml/Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v1}, Lcom/idm/agent/dm/IDMDmAgent;->idmMakeResponseCommand(Ljava/util/ArrayList;)Z

    move-result v2

    iget-object v5, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v5}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetInitType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const-string v5, "1200"

    invoke-direct {p0, v5}, Lcom/idm/agent/dm/IDMDmAgent;->idmMakeAlert(Ljava/lang/String;)Lcom/idm/core/syncml/Alert;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v5, "1201"

    invoke-direct {p0, v5}, Lcom/idm/agent/dm/IDMDmAgent;->idmMakeAlert(Ljava/lang/String;)Lcom/idm/core/syncml/Alert;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmMakeDeviceInfoReplace()Lcom/idm/core/syncml/Replace;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v5}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/idm/agent/dm/IDMDmAgent;->idmCheckGenericAlertReportState(I)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v5}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetInitType()I

    move-result v5

    if-eq v5, v4, :cond_2

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetInitType()I

    move-result v4

    if-ne v4, v3, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAlertCommandNode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetInitType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/idm/agent/dm/IDMDmAgent;->idmMakeGenericAlert(I)Lcom/idm/core/syncml/Alert;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v3, "AlertCommandNode is empty"

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetReportUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCorrelator()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v5}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDmResultCode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/idm/agent/dm/IDMDmAgent;->idmMakeGenericAlertReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/idm/core/syncml/Alert;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    move v4, v2

    goto :goto_2

    :cond_6
    if-ne v2, v3, :cond_7

    const-string v2, "dmState : IDM_STATE_MANAGEMENT_PROCESSING"

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmMakeHeaderStatus()Lcom/idm/core/syncml/Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/idm/agent/dm/IDMDmAgent;->idmMakeResponseCommand(Ljava/util/ArrayList;)Z

    move-result v4

    :cond_7
    :goto_2
    if-nez v4, :cond_8

    const-string v2, "1222"

    invoke-direct {p0, v2}, Lcom/idm/agent/dm/IDMDmAgent;->idmMakeAlert(Ljava/lang/String;)Lcom/idm/core/syncml/Alert;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v0, v4}, Lcom/idm/core/syncml/SyncBody;->setFinalMsg(Z)V

    return-object v0
.end method

.method private idmMakeSyncHeader()Lcom/idm/core/syncml/SyncHdr;
    .locals 8

    const-string v0, "idmMakeSyncHeader"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/core/syncml/SyncHdr;

    invoke-direct {v0}, Lcom/idm/core/syncml/SyncHdr;-><init>()V

    invoke-direct {p0, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmSetVerDTD(Lcom/idm/core/syncml/SyncHdr;)V

    invoke-direct {p0, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmSetVerProto(Lcom/idm/core/syncml/SyncHdr;)V

    invoke-direct {p0, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmSetSessionID(Lcom/idm/core/syncml/SyncHdr;)V

    invoke-direct {p0, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmSetMsgID(Lcom/idm/core/syncml/SyncHdr;)V

    new-instance v1, Lcom/idm/core/syncml/Target;

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->respUri:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccServerUriInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/idm/core/syncml/Target;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/SyncHdr;->setTarget(Lcom/idm/core/syncml/Target;)V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->idmGetDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->idmGetClientName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceID : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clientName : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    new-instance v3, Lcom/idm/core/syncml/Source;

    invoke-direct {v3, v1, v2}, Lcom/idm/core/syncml/Source;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/idm/core/syncml/SyncHdr;->setSource(Lcom/idm/core/syncml/Source;)V

    iget v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->clientAuthState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v2}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "/AAuthType"

    invoke-virtual {v1, v3, v4, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "syncml:auth-MAC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmMakeCred()Lcom/idm/core/syncml/Cred;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/SyncHdr;->setCred(Lcom/idm/core/syncml/Cred;)V

    :cond_1
    new-instance p0, Lcom/idm/core/syncml/Meta;

    const/16 v1, 0x2800

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v1, 0x100000

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/idm/core/syncml/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/idm/core/syncml/SyncHdr;->setMeta(Lcom/idm/core/syncml/Meta;)V

    return-object v0
.end method

.method private idmMakeSyncml()Lcom/idm/core/syncml/SyncML;
    .locals 2

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmResetCmdID()V

    new-instance v0, Lcom/idm/core/syncml/SyncML;

    invoke-direct {v0}, Lcom/idm/core/syncml/SyncML;-><init>()V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmMakeSyncHeader()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/SyncML;->setSyncHdr(Lcom/idm/core/syncml/SyncHdr;)V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmMakeSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/SyncML;->setSyncBody(Lcom/idm/core/syncml/SyncBody;)V

    const-string v1, "============= idmMakeSyncml ================"

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncML;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmProcessMultipleMessage(Lcom/idm/core/syncml/SyncML;)V

    return-object v0
.end method

.method private idmProcessCommand()V
    .locals 5

    const-string v0, "idmProcessCommand"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->processedCommandList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->cachedCommandList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/core/syncml/SyncBody;->isFinalMsg()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->processedCommandList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->cachedCommandList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->cachedCommandList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->commandHandler:Lcom/idm/agent/dm/IDMDmCommandHandler;

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v3}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/idm/core/syncml/SyncHdr;->getMsgID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmSetRecvMsgID(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncHdr;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncHdr;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/core/syncml/Meta;->getMaxObjSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->commandHandler:Lcom/idm/agent/dm/IDMDmCommandHandler;

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v3}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/idm/core/syncml/SyncHdr;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/idm/core/syncml/Meta;->getMaxObjSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmSetRecvMaxObjSize(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idm/core/syncml/Command;

    instance-of v3, v2, Lcom/idm/core/syncml/Get;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->commandHandler:Lcom/idm/agent/dm/IDMDmCommandHandler;

    check-cast v2, Lcom/idm/core/syncml/Get;

    iget v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    invoke-virtual {v3, v2, v4, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessGet(Lcom/idm/core/syncml/Get;II)V

    iget v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    goto :goto_0

    :cond_4
    instance-of v3, v2, Lcom/idm/core/syncml/Replace;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->commandHandler:Lcom/idm/agent/dm/IDMDmCommandHandler;

    check-cast v2, Lcom/idm/core/syncml/Replace;

    iget v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    invoke-virtual {v3, v2, v4, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessReplace(Lcom/idm/core/syncml/Replace;II)V

    iget v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    goto :goto_0

    :cond_5
    instance-of v3, v2, Lcom/idm/core/syncml/Exec;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->commandHandler:Lcom/idm/agent/dm/IDMDmCommandHandler;

    check-cast v2, Lcom/idm/core/syncml/Exec;

    iget v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    invoke-virtual {v3, v2, v4, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessExec(Lcom/idm/core/syncml/Exec;II)V

    iget v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    goto :goto_0

    :cond_6
    instance-of v3, v2, Lcom/idm/core/syncml/Add;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->commandHandler:Lcom/idm/agent/dm/IDMDmCommandHandler;

    check-cast v2, Lcom/idm/core/syncml/Add;

    iget v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    invoke-virtual {v3, v2, v4, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessAdd(Lcom/idm/core/syncml/Add;II)V

    iget v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    goto :goto_0

    :cond_7
    instance-of v3, v2, Lcom/idm/core/syncml/Alert;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->commandHandler:Lcom/idm/agent/dm/IDMDmCommandHandler;

    check-cast v2, Lcom/idm/core/syncml/Alert;

    iget v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    invoke-virtual {v3, v2, v4, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessAlert(Lcom/idm/core/syncml/Alert;II)V

    iget v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    goto :goto_0

    :cond_8
    instance-of v3, v2, Lcom/idm/core/syncml/Delete;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->commandHandler:Lcom/idm/agent/dm/IDMDmCommandHandler;

    check-cast v2, Lcom/idm/core/syncml/Delete;

    iget v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    invoke-virtual {v3, v2, v4, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessDelete(Lcom/idm/core/syncml/Delete;II)V

    iget v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    goto/16 :goto_0

    :cond_9
    instance-of v3, v2, Lcom/idm/core/syncml/Copy;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->commandHandler:Lcom/idm/agent/dm/IDMDmCommandHandler;

    check-cast v2, Lcom/idm/core/syncml/Copy;

    iget v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    invoke-virtual {v3, v2, v4, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessCopy(Lcom/idm/core/syncml/Copy;II)V

    iget v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    goto/16 :goto_0

    :cond_a
    instance-of v3, v2, Lcom/idm/core/syncml/Sequence;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->commandHandler:Lcom/idm/agent/dm/IDMDmCommandHandler;

    check-cast v2, Lcom/idm/core/syncml/Sequence;

    iget v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    invoke-virtual {v3, v2, v4, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessSequence(Lcom/idm/core/syncml/Sequence;II)V

    iget v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    goto/16 :goto_0

    :cond_b
    instance-of v3, v2, Lcom/idm/core/syncml/Atomic;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->commandHandler:Lcom/idm/agent/dm/IDMDmCommandHandler;

    check-cast v2, Lcom/idm/core/syncml/Atomic;

    iget v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    invoke-virtual {v3, v2, v4, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessAtomic(Lcom/idm/core/syncml/Atomic;II)V

    iget v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    goto/16 :goto_0

    :cond_c
    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->commandHandler:Lcom/idm/agent/dm/IDMDmCommandHandler;

    const-string v0, "SyncBody"

    invoke-virtual {p0, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmUicAlertResultClear(Ljava/lang/String;)V

    return-void
.end method

.method private idmProcessMultipleMessage(Lcom/idm/core/syncml/SyncML;)V
    .locals 16

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object v2

    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->cachedCommandList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Lcom/idm/core/syncml/SyncmlCalculator;

    const-string v0, "application/vnd.syncml.dm+wbxml"

    invoke-direct {v3, v0}, Lcom/idm/core/syncml/SyncmlCalculator;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2800

    :try_start_0
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncHdr;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncHdr;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/core/syncml/Meta;->getMaxMsgSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncHdr;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/core/syncml/Meta;->getMaxMsgSize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->recvMaxMsgSize:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->recvMaxMsgSize:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->recvMaxMsgSize:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object/from16 v5, p1

    goto :goto_3

    :goto_2
    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :goto_3
    invoke-virtual {v3, v5}, Lcom/idm/core/syncml/SyncmlCalculator;->getSyncmlSize(Lcom/idm/core/syncml/SyncML;)I

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v0, v4, :cond_8

    invoke-virtual {v2, v6}, Lcom/idm/core/syncml/SyncBody;->setFinalMsg(Z)V

    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_4
    if-ltz v7, :cond_a

    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/idm/core/syncml/Command;

    invoke-virtual {v3, v8}, Lcom/idm/core/syncml/SyncmlCalculator;->getSyncmlCommandSize(Lcom/idm/core/syncml/Command;)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "commandSize : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", msgSize :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", maxMsgSize :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    sub-int v8, v0, v8

    if-le v8, v4, :cond_3

    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->cachedCommandList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/idm/core/syncml/Command;

    invoke-virtual {v0, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    move v0, v8

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/idm/core/syncml/Results;

    const-string v10, "break"

    const-string v11, ", maxMsgSize : "

    const-string v12, "msgSize : "

    if-eqz v9, :cond_7

    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v9

    add-int/lit8 v13, v7, -0x1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/idm/core/syncml/Results;

    if-eqz v9, :cond_4

    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->cachedCommandList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/idm/core/syncml/Command;

    invoke-virtual {v0, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    if-gt v8, v4, :cond_2

    invoke-static {v10}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_4
    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/idm/core/syncml/Results;

    invoke-virtual {v9}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/idm/core/syncml/Item;

    invoke-virtual {v13}, Lcom/idm/core/syncml/Item;->getData()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v0, v15

    sub-int v0, v4, v0

    add-int/lit8 v0, v0, -0x32

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v5, "msgRemainSize : "

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    if-lez v0, :cond_6

    invoke-virtual {v14, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/idm/core/syncml/Item;->setData(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Lcom/idm/core/syncml/Item;->setMoreData(Z)V

    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v7, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/idm/core/syncml/Command;

    invoke-virtual {v3, v5}, Lcom/idm/core/syncml/SyncmlCalculator;->getSyncmlCommandSize(Lcom/idm/core/syncml/Command;)I

    move-result v5

    add-int/2addr v8, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Lcom/idm/agent/dm/IDMDmAgent;->idmCopyResultObject(Lcom/idm/core/syncml/Results;)Lcom/idm/core/syncml/Results;

    move-result-object v5

    invoke-virtual {v5}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/idm/core/syncml/Item;

    invoke-virtual {v9}, Lcom/idm/core/syncml/Item;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v13

    invoke-virtual {v13}, Lcom/idm/core/syncml/Meta;->getSize()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v9}, Lcom/idm/core/syncml/Item;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v13

    const-string v15, ""

    invoke-virtual {v13, v15}, Lcom/idm/core/syncml/Meta;->setSize(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/idm/core/syncml/Item;->setData(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->cachedCommandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_6
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->cachedCommandList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/idm/core/syncml/Command;

    invoke-virtual {v0, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_7
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->cachedCommandList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/idm/core/syncml/Command;

    invoke-virtual {v0, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    if-gt v8, v4, :cond_2

    invoke-static {v10}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto :goto_8

    :goto_6
    add-int/lit8 v7, v7, -0x1

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_7
    if-ltz v0, :cond_a

    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/idm/core/syncml/Results;

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Results;

    invoke-virtual {v1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Item;

    invoke-virtual {v1}, Lcom/idm/core/syncml/Item;->isMoreData()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1, v6}, Lcom/idm/core/syncml/Item;->setMoreData(Z)V

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_a
    :goto_8
    return-void
.end method

.method private idmRecvPackage(ILjava/net/HttpURLConnection;Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;Lcom/idm/agent/dm/IDMDmAbortInfo;)Lcom/idm/network/IDMNetworkSendRecvState;
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "HttpHeader Fail"

    const-string v5, "Http Error ResCode : "

    const-string v6, " : not support Content-Type !!!"

    const-string v7, "idmRecvPackage for DM"

    invoke-static {v7}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    sget-object v7, Lcom/idm/network/IDMNetworkSendRecvHandler;->SUCCESS:Lcom/idm/network/IDMNetworkSendRecvHandler;

    new-instance v8, Lcom/idm/network/IDMNetworkHttpHeaderInfo;

    invoke-direct {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;-><init>()V

    const/16 v9, 0x1f7

    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_0
    new-instance v15, Lcom/idm/network/IDMNetworkHttpAdapter;

    invoke-direct {v15}, Lcom/idm/network/IDMNetworkHttpAdapter;-><init>()V

    new-instance v14, Lcom/idm/network/IDMNetworkTimer;

    sget-object v16, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;->IDM_NETWORK_TIMER_MODE_RECEIVE:Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    iget-object v13, v1, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v13, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetConnectNetworkTimeOut(I)I

    move-result v17

    iget-object v13, v1, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v13, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetExtraTime(I)I

    move-result v0

    iget-object v13, v1, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    move-object/from16 v18, v13

    move-object v13, v14

    move-object v10, v14

    move-object/from16 v14, v16

    move-object/from16 p1, v15

    move/from16 v15, v17

    move/from16 v16, v0

    move-object/from16 v17, p1

    invoke-direct/range {v13 .. v18}, Lcom/idm/network/IDMNetworkTimer;-><init>(Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;IILcom/idm/network/IDMNetworkHttpAdapter;Ljava/net/HttpURLConnection;)V

    iput-object v10, v1, Lcom/idm/agent/dm/IDMDmAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;
    :try_end_0
    .catch Lcom/idm/exception/http/IDMExceptionHttpHeader; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/idm/exception/dm/IDMExceptionDmParsing; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/idm/exception/http/IDMExceptionHttpReceive; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    move-object/from16 v13, p2

    :try_start_1
    invoke-virtual {v0, v13, v8, v10}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmRecvHttpUrlConnection(Ljava/net/HttpURLConnection;Lcom/idm/network/IDMNetworkHttpHeaderInfo;Lcom/idm/network/IDMNetworkTimer;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetContentType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetMacData()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmCheckServerAuthHMAC(Ljava/lang/String;[B)V

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetConnectionType()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetConnectionType()Ljava/lang/String;

    move-result-object v14

    const-string v15, "close"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    iput v12, v1, Lcom/idm/agent/dm/IDMDmAgent;->httpDmConnType:I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_9

    :catch_2
    move-exception v0

    goto/16 :goto_a

    :catch_3
    move-exception v0

    goto/16 :goto_b

    :cond_0
    const/4 v14, 0x1

    iput v14, v1, Lcom/idm/agent/dm/IDMDmAgent;->httpDmConnType:I
    :try_end_1
    .catch Lcom/idm/exception/http/IDMExceptionHttpHeader; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/idm/exception/dm/IDMExceptionDmParsing; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/idm/exception/http/IDMExceptionHttpReceive; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const-string v10, ""

    :goto_0
    if-nez v10, :cond_2

    :try_start_2
    const-string v0, "contentType is null..."

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    :goto_1
    move-object v4, v11

    const/16 v10, 0x1f9

    goto :goto_3

    :cond_2
    const-string v14, "application/vnd.syncml.dm+xml"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {}, Lcom/idm/adapter/logmanager/IDMDebug;->idmGetLogFileSaveState()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, ".xml"

    invoke-direct {v1, v0, v6}, Lcom/idm/agent/dm/IDMDmAgent;->idmWriteDMSessionLog([BLjava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/idm/adapter/logmanager/IDMDebug;->idmGetDumpLogState()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v0, v12}, Lcom/idm/adapter/logmanager/IDMDebug;->DUMP([BI)V

    :cond_4
    new-instance v6, Lcom/idm/core/xml/IDMXmlSyncmlParser;

    invoke-direct {v6}, Lcom/idm/core/xml/IDMXmlSyncmlParser;-><init>()V

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v6, v10}, Lcom/idm/core/xml/IDMXmlSyncmlParser;->idmSyncmlXmlDecoder(Ljava/io/InputStream;)Lcom/idm/core/syncml/SyncML;

    move-result-object v0

    :goto_2
    move-object v4, v0

    move v10, v12

    goto :goto_3

    :cond_5
    const-string v14, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-static {}, Lcom/idm/adapter/logmanager/IDMDebug;->idmGetLogFileSaveState()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, ".wbxml"

    invoke-direct {v1, v0, v6}, Lcom/idm/agent/dm/IDMDmAgent;->idmWriteDMSessionLog([BLjava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/idm/adapter/logmanager/IDMDebug;->idmGetDumpLogState()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v0, v12}, Lcom/idm/adapter/logmanager/IDMDebug;->DUMP([BI)V

    :cond_7
    new-instance v6, Lcom/idm/core/wbxml/IDMWbxmlSyncmlParser;

    invoke-direct {v6}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlParser;-><init>()V

    invoke-virtual {v6, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlParser;->idmSyncmlWbxmlDecoder([B)Lcom/idm/core/syncml/SyncML;

    move-result-object v0

    goto :goto_2

    :cond_8
    invoke-virtual {v10, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/idm/exception/http/IDMExceptionHttpHeader; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/idm/exception/dm/IDMExceptionDmParsing; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/idm/exception/http/IDMExceptionHttpReceive; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    iput-object v11, v1, Lcom/idm/agent/dm/IDMDmAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    :cond_9
    :try_start_3
    invoke-virtual {v2, v4}, Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;->idmSetSyncMLData(Lcom/idm/core/syncml/SyncML;)V

    invoke-virtual {v3, v10}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetErrorCode(I)V

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetResponseCode()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetResponseCode(I)V

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/network/IDMNetworkUserAction;->getUserCancel()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v7, Lcom/idm/network/IDMNetworkSendRecvHandler;->USER_CANCEL:Lcom/idm/network/IDMNetworkSendRecvHandler;

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :cond_a
    if-lez v10, :cond_c

    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/idm/agent/dm/IDMDmAbortInfo;->setResponseHttpHeader(Ljava/util/Map;)V

    new-instance v0, Lcom/idm/network/IDMNetworkHttpAdapter;

    invoke-direct {v0}, Lcom/idm/network/IDMNetworkHttpAdapter;-><init>()V

    iget-object v2, v1, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmDisconnectHttpUrlConnection(Ljava/net/HttpURLConnection;)V

    iput-object v11, v1, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    :cond_b
    sget-object v7, Lcom/idm/network/IDMNetworkSendRecvHandler;->RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_c
    :goto_4
    move-object v11, v4

    goto/16 :goto_c

    :goto_5
    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v13, p2

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v13, p2

    goto :goto_9

    :catch_7
    move-exception v0

    move-object/from16 v13, p2

    goto/16 :goto_a

    :catch_8
    move-exception v0

    move-object/from16 v13, p2

    goto/16 :goto_b

    :goto_6
    :try_start_4
    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    iput-object v11, v1, Lcom/idm/agent/dm/IDMDmAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    :cond_d
    :try_start_5
    invoke-virtual {v2, v11}, Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;->idmSetSyncMLData(Lcom/idm/core/syncml/SyncML;)V

    invoke-virtual {v3, v9}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetErrorCode(I)V

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetResponseCode()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetResponseCode(I)V

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/network/IDMNetworkUserAction;->getUserCancel()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->USER_CANCEL:Lcom/idm/network/IDMNetworkSendRecvHandler;

    :goto_7
    move-object v7, v0

    goto/16 :goto_c

    :catch_9
    move-exception v0

    goto :goto_8

    :cond_e
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_f

    invoke-virtual/range {p2 .. p2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/idm/agent/dm/IDMDmAbortInfo;->setResponseHttpHeader(Ljava/util/Map;)V

    new-instance v0, Lcom/idm/network/IDMNetworkHttpAdapter;

    invoke-direct {v0}, Lcom/idm/network/IDMNetworkHttpAdapter;-><init>()V

    iget-object v2, v1, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmDisconnectHttpUrlConnection(Ljava/net/HttpURLConnection;)V

    iput-object v11, v1, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    :cond_f
    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_7

    :goto_8
    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :goto_9
    :try_start_6
    const-string v4, "HttpHeader Receive Fail"

    invoke-static {v4}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    iput-object v11, v1, Lcom/idm/agent/dm/IDMDmAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    :cond_10
    :try_start_7
    invoke-virtual {v2, v11}, Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;->idmSetSyncMLData(Lcom/idm/core/syncml/SyncML;)V

    invoke-virtual {v3, v9}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetErrorCode(I)V

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetResponseCode()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetResponseCode(I)V

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/network/IDMNetworkUserAction;->getUserCancel()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->USER_CANCEL:Lcom/idm/network/IDMNetworkSendRecvHandler;

    goto :goto_7

    :cond_11
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_12

    invoke-virtual/range {p2 .. p2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/idm/agent/dm/IDMDmAbortInfo;->setResponseHttpHeader(Ljava/util/Map;)V

    new-instance v0, Lcom/idm/network/IDMNetworkHttpAdapter;

    invoke-direct {v0}, Lcom/idm/network/IDMNetworkHttpAdapter;-><init>()V

    iget-object v2, v1, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmDisconnectHttpUrlConnection(Ljava/net/HttpURLConnection;)V

    iput-object v11, v1, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    :cond_12
    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_7

    :goto_a
    :try_start_8
    const-string v5, "Syncml Parsing error"

    invoke-static {v5}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    iput-object v11, v1, Lcom/idm/agent/dm/IDMDmAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    :cond_13
    :try_start_9
    invoke-virtual {v2, v11}, Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;->idmSetSyncMLData(Lcom/idm/core/syncml/SyncML;)V

    const/16 v2, 0x1f9

    invoke-virtual {v3, v2}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetErrorCode(I)V

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetResponseCode()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetResponseCode(I)V

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/network/IDMNetworkUserAction;->getUserCancel()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->USER_CANCEL:Lcom/idm/network/IDMNetworkSendRecvHandler;

    goto/16 :goto_7

    :cond_14
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_15

    invoke-virtual/range {p2 .. p2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/idm/agent/dm/IDMDmAbortInfo;->setResponseHttpHeader(Ljava/util/Map;)V

    new-instance v0, Lcom/idm/network/IDMNetworkHttpAdapter;

    invoke-direct {v0}, Lcom/idm/network/IDMNetworkHttpAdapter;-><init>()V

    iget-object v2, v1, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmDisconnectHttpUrlConnection(Ljava/net/HttpURLConnection;)V

    iput-object v11, v1, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    :cond_15
    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_7

    :goto_b
    :try_start_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetResponseCode()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    iput-object v11, v1, Lcom/idm/agent/dm/IDMDmAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    :cond_16
    :try_start_b
    invoke-virtual {v2, v11}, Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;->idmSetSyncMLData(Lcom/idm/core/syncml/SyncML;)V

    const/16 v2, 0x1f9

    invoke-virtual {v3, v2}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetErrorCode(I)V

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetResponseCode()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetResponseCode(I)V

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/network/IDMNetworkUserAction;->getUserCancel()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->USER_CANCEL:Lcom/idm/network/IDMNetworkSendRecvHandler;

    goto/16 :goto_7

    :cond_17
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_18

    invoke-virtual/range {p2 .. p2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/idm/agent/dm/IDMDmAbortInfo;->setResponseHttpHeader(Ljava/util/Map;)V

    new-instance v0, Lcom/idm/network/IDMNetworkHttpAdapter;

    invoke-direct {v0}, Lcom/idm/network/IDMNetworkHttpAdapter;-><init>()V

    iget-object v2, v1, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmDisconnectHttpUrlConnection(Ljava/net/HttpURLConnection;)V

    iput-object v11, v1, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    :cond_18
    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto/16 :goto_7

    :goto_c
    const-string v0, "============== idmRecvPackage ============="

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    if-eqz v11, :cond_19

    invoke-virtual {v11}, Lcom/idm/core/syncml/SyncML;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    :cond_19
    return-object v7

    :goto_d
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    iput-object v11, v1, Lcom/idm/agent/dm/IDMDmAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    :cond_1a
    :try_start_c
    invoke-virtual {v2, v11}, Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;->idmSetSyncMLData(Lcom/idm/core/syncml/SyncML;)V

    invoke-virtual {v3, v12}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetErrorCode(I)V

    invoke-virtual {v8}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmGetResponseCode()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetResponseCode(I)V

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/network/IDMNetworkUserAction;->getUserCancel()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_e

    :cond_1b
    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->SUCCESS:Lcom/idm/network/IDMNetworkSendRecvHandler;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_e
    throw v4
.end method

.method private idmResetCmdID()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->cmdID:I

    return-void
.end method

.method private idmSendPackage(ILjava/lang/String;[BLcom/idm/agent/dm/IDMDmAbortInfo;)Lcom/idm/network/IDMNetworkSendRecvState;
    .locals 8

    const-string v0, "idmSendPackage for DM"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->SUCCESS:Lcom/idm/network/IDMNetworkSendRecvHandler;

    new-instance v7, Lcom/idm/network/IDMNetworkHttpAdapter;

    invoke-direct {v7}, Lcom/idm/network/IDMNetworkHttpAdapter;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v1, p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetConnectNetworkTimeOut(I)I

    move-result v3

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v1, p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetRecvNetworkTimeOut(I)I

    move-result v4

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v1, p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetNetworkTrustInfo(I)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    iget-object v6, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    move-object v1, v7

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmCreateHttpUrlConnection(Ljava/lang/String;IILjavax/net/ssl/SSLSocketFactory;Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;)Ljava/net/HttpURLConnection;

    move-result-object p2

    iput-object p2, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v7, p2, v1}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmSetRequestMethod(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    iget-object p2, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {p2, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    iget-object p2, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/agent/dm/IDMDmAgent;->idmAddHttpHeader(ILjava/net/HttpURLConnection;[B)V

    iget-object p2, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v7, p2}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmDisplayHttpHeaderRequestCode(Ljava/net/HttpURLConnection;)V

    const-string p2, "HTTP Send Header"

    invoke-static {p2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance p2, Lcom/idm/network/IDMNetworkTimer;

    sget-object v2, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;->IDM_NETWORK_TIMER_MODE_CONNECT:Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v1, p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetConnectNetworkTimeOut(I)I

    move-result v3

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v1, p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetExtraTime(I)I

    move-result v4

    iget-object v6, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    move-object v1, p2

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/idm/network/IDMNetworkTimer;-><init>(Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;IILcom/idm/network/IDMNetworkHttpAdapter;Ljava/net/HttpURLConnection;)V

    iput-object p2, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v7, p1, p3, p2}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmSendHttpUrlConnection(Ljava/net/HttpURLConnection;[BLcom/idm/network/IDMNetworkTimer;)V
    :try_end_0
    .catch Lcom/idm/exception/http/IDMExceptionHttpSend; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/idm/exception/http/IDMExceptionHttpNetwork; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/idm/exception/http/IDMExceptionHttpConnect; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/16 p1, 0x1f5

    goto :goto_2

    :goto_1
    const-string p2, "HttpNetwork Send Fail"

    invoke-static {p2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/idm/agent/dm/IDMDmAbortInfo;->setExceptionMessage(Ljava/lang/String;)V

    const/16 p1, 0x1f6

    :goto_2
    iget-object p2, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    iput-object p3, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkTimer:Lcom/idm/network/IDMNetworkTimer;

    :cond_0
    if-lez p1, :cond_2

    iget-object p2, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_1

    invoke-virtual {v7, p2}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmDisconnectHttpUrlConnection(Ljava/net/HttpURLConnection;)V

    iput-object p3, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    :cond_1
    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;

    :cond_2
    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/network/IDMNetworkUserAction;->getUserCancel()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->USER_CANCEL:Lcom/idm/network/IDMNetworkSendRecvHandler;

    :cond_3
    invoke-virtual {p4, p1}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetErrorCode(I)V

    return-object v0
.end method

.method private idmSetMsgID(Lcom/idm/core/syncml/SyncHdr;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmGetMsgID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/SyncHdr;->setMsgID(Ljava/lang/String;)V

    return-void
.end method

.method private idmSetSessionID(Lcom/idm/core/syncml/SyncHdr;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/SyncHdr;->setSessionID(Ljava/lang/String;)V

    return-void
.end method

.method private idmSetVerDTD(Lcom/idm/core/syncml/SyncHdr;)V
    .locals 0

    const-string p0, "1.2"

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/SyncHdr;->setVerDTD(Ljava/lang/String;)V

    return-void
.end method

.method private idmSetVerProto(Lcom/idm/core/syncml/SyncHdr;)V
    .locals 0

    const-string p0, "DM/1.2"

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/SyncHdr;->setVerProto(Ljava/lang/String;)V

    return-void
.end method

.method private idmWriteDMSessionLog([BLjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "data is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmGetDMSessionLogPathWithoutExtension()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-direct {v0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmAppendFileWrite(Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public idmCancelDM()V
    .locals 2

    const-string v0, "idmCancelDM"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/idm/network/IDMNetworkUserAction;->setUserCancel(Z)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetIsCustomApn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmCustomApnClose()V

    :cond_0
    new-instance v0, Lcom/idm/network/IDMNetworkHttpAdapter;

    invoke-direct {v0}, Lcom/idm/network/IDMNetworkHttpAdapter;-><init>()V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmDisconnectHttpUrlConnection(Ljava/net/HttpURLConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    :cond_1
    invoke-static {}, Lcom/idm/adapter/common/IDMDeviceLockControl;->getInstance()Lcom/idm/adapter/common/IDMDeviceLockControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/adapter/common/IDMDeviceLockControl;->idmLockRelease()V

    return-void
.end method

.method public idmFinishDM()V
    .locals 2

    const-string v0, "idmFinishDM"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoDatabaseClose()V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetIsCustomApn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmCustomApnClose()V

    :cond_0
    new-instance v0, Lcom/idm/network/IDMNetworkHttpAdapter;

    invoke-direct {v0}, Lcom/idm/network/IDMNetworkHttpAdapter;-><init>()V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmDisconnectHttpUrlConnection(Ljava/net/HttpURLConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    :cond_1
    invoke-static {}, Lcom/idm/network/IDMNetworkUserAction;->getInstance()Lcom/idm/network/IDMNetworkUserAction;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/idm/network/IDMNetworkUserAction;->setUserPause(Z)V

    invoke-static {}, Lcom/idm/adapter/common/IDMDeviceLockControl;->getInstance()Lcom/idm/adapter/common/IDMDeviceLockControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/adapter/common/IDMDeviceLockControl;->idmLockRelease()V

    return-void
.end method

.method public idmInitStatus()V
    .locals 1

    const-string v0, "idmInitStatus"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->httpDmConnType:I

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->dmStatus:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->msgID:I

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->cmdID:I

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->clientAuthState:I

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->authRetryCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->respUri:Ljava/lang/String;

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->processedCommandList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->execCommand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->appSvcNodeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->sendFinishInfo:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public idmProcessDM()V
    .locals 7

    const-string v0, "idmProcessDM"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "recvSyncml is null"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_ABORT:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {p0, v0, v1}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "SyncHdr is null"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_ABORT:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {p0, v0, v1}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "SyncBody is null"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_ABORT:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {p0, v0, v1}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncHdr;->getRespURI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->respUri:Ljava/lang/String;

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncBody;->isFinalMsg()Z

    move-result v0

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->respUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "respUri : "

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->respUri:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmCheckServerAuth()V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmCheckClientAuth()V

    iget v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->clientAuthState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    iget v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    if-ne v2, v4, :cond_4

    iput v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->dmStatus:I

    :cond_4
    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmProcessCommand()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "isFinal : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "actionCount : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget v2, p0, Lcom/idm/agent/dm/IDMDmAgent;->clientAuthState:I

    const-string v5, "Auth OK !!!!!!!!"

    if-ne v2, v4, :cond_9

    iget v6, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    if-ne v6, v4, :cond_9

    iget v6, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionCount:I

    if-nez v6, :cond_9

    if-eqz v0, :cond_9

    invoke-static {v5}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "execCommand.size() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->execCommand:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applicationNodeInfo.size() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->appSvcNodeInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetReportUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Report URL is Exist"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->sendFinishInfo:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetReportUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->appSvcNodeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->sendFinishInfo:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->appSvcNodeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->execCommand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->continueProcessAdapter:Lcom/idm/agent/dm/IDMDmContinueProcess;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/agent/dm/IDMDmContinueProcess;->idmIsContinueProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->sendFinishInfo:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->execCommand:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_FINISHANDEXECUTE:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->sendFinishInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmCheckGenericAlertReportState(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_FINISH:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->sendFinishInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_FINISH:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->sendFinishInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_9
    if-ne v2, v4, :cond_a

    iget v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->serverAuthState:I

    if-ne v0, v4, :cond_a

    invoke-static {v5}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    iget v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->authRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->authRetryCount:I

    const/4 v2, 0x4

    if-lt v0, v2, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Auth Fail !!!!!!! authRetryCount : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->authRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_ABORT:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    const/16 v1, 0x76d

    invoke-virtual {p0, v0, v1}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;I)V

    return-void

    :cond_b
    :goto_1
    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmMakeSyncml()Lcom/idm/core/syncml/SyncML;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmEncodeSyncml(Lcom/idm/core/syncml/SyncML;)[B

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "sendData is null"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_ABORT:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {p0, v0, v1}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;I)V

    return-void

    :cond_c
    new-instance v2, Lcom/idm/agent/dm/IDMDmAbortInfo;

    invoke-direct {v2}, Lcom/idm/agent/dm/IDMDmAbortInfo;-><init>()V

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->dmConnectAdapter:Lcom/idm/agent/dm/IDMDmConnectInterface;

    iget-object v5, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v5}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/idm/agent/dm/IDMDmConnectInterface;->idmDMProcessBlockForNetwork(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x1f5

    if-eqz v4, :cond_d

    invoke-virtual {v2, v5}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetErrorCode(I)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/idm/agent/dm/IDMDmAgent;->idmCheckRetry(ILcom/idm/agent/dm/IDMDmAbortInfo;)V

    return-void

    :cond_d
    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v4}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetIsCustomApn()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v4}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmCustomApnOpen()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmCustomApnClose()V

    invoke-virtual {v2, v5}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetErrorCode(I)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/idm/agent/dm/IDMDmAgent;->idmCheckRetry(ILcom/idm/agent/dm/IDMDmAbortInfo;)V

    return-void

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->respUri:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->respUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccServerUriInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_f
    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->respUri:Ljava/lang/String;

    :goto_2
    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v4

    invoke-direct {p0, v4, v3, v0, v2}, Lcom/idm/agent/dm/IDMDmAgent;->idmSendPackage(ILjava/lang/String;[BLcom/idm/agent/dm/IDMDmAbortInfo;)Lcom/idm/network/IDMNetworkSendRecvState;

    move-result-object v0

    sget-object v3, Lcom/idm/network/IDMNetworkSendRecvHandler;->SUCCESS:Lcom/idm/network/IDMNetworkSendRecvHandler;

    if-ne v0, v3, :cond_13

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_13

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    new-instance v0, Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;

    invoke-direct {v0}, Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;-><init>()V

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v4

    iget-object v5, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v4, v5, v0, v2}, Lcom/idm/agent/dm/IDMDmAgent;->idmRecvPackage(ILjava/net/HttpURLConnection;Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;Lcom/idm/agent/dm/IDMDmAbortInfo;)Lcom/idm/network/IDMNetworkSendRecvState;

    move-result-object v4

    if-ne v4, v3, :cond_11

    invoke-virtual {v0}, Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;->idmGetSyncMLData()Lcom/idm/core/syncml/SyncML;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    if-nez v0, :cond_10

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_ABORT:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {p0, v0, v2}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;Ljava/lang/Object;)V

    goto :goto_3

    :cond_10
    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_CONTINUE:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {p0, v0, v1}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;I)V

    goto :goto_3

    :cond_11
    sget-object v0, Lcom/idm/network/IDMNetworkSendRecvHandler;->RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;

    if-ne v4, v0, :cond_12

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/idm/agent/dm/IDMDmAgent;->idmCheckRetry(ILcom/idm/agent/dm/IDMDmAbortInfo;)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-interface {v4, v0, p0}, Lcom/idm/network/IDMNetworkSendRecvState;->idmSendRecvDMHandling(Lcom/idm/agent/IDMAgentMessageHandler;Lcom/idm/providers/mo/IDMMoDatabaseManager;)V

    return-void

    :cond_13
    sget-object v1, Lcom/idm/network/IDMNetworkSendRecvHandler;->RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/idm/agent/dm/IDMDmAgent;->idmCheckRetry(ILcom/idm/agent/dm/IDMDmAbortInfo;)V

    goto :goto_3

    :cond_14
    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-interface {v0, v1, p0}, Lcom/idm/network/IDMNetworkSendRecvState;->idmSendRecvDMHandling(Lcom/idm/agent/IDMAgentMessageHandler;Lcom/idm/providers/mo/IDMMoDatabaseManager;)V

    :goto_3
    return-void
.end method

.method public idmSetCallbackProgress(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->callback:Lcom/idm/adapter/callback/IDMCallback;

    invoke-interface {p0, p1, p2}, Lcom/idm/adapter/callback/IDMCallback;->idmOnProgress(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    return-void
.end method

.method public idmSetCallbackStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->callback:Lcom/idm/adapter/callback/IDMCallback;

    invoke-interface {p0, p1, p2}, Lcom/idm/adapter/callback/IDMCallback;->idmOnStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    return-void
.end method

.method public idmSetDmActionInfo(Lcom/idm/service/actioninfo/IDMActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    return-void
.end method

.method public idmStartDM(Landroid/os/Handler;)V
    .locals 5

    const-string v0, "idmStartDM"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoDatabaseOpen()V

    invoke-static {}, Lcom/idm/adapter/common/IDMDeviceLockControl;->getInstance()Lcom/idm/adapter/common/IDMDeviceLockControl;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/idm/adapter/common/IDMDeviceLockControl;->idmLockAcquire(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    if-nez v0, :cond_0

    const-string p0, "actionInfo is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance p0, Lcom/idm/agent/IDMAgentMessageHandler;

    invoke-direct {p0, p1}, Lcom/idm/agent/IDMAgentMessageHandler;-><init>(Landroid/os/Handler;)V

    sget-object p1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_ABORT:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {p0, p1, v2}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmInitDMSessionLog()V

    new-instance v0, Lcom/idm/agent/IDMAgentMessageHandler;

    invoke-direct {v0, p1}, Lcom/idm/agent/IDMAgentMessageHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "actionInfo.idmGetInitType() : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetInitType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmAgent;->idmMakeSyncml()Lcom/idm/core/syncml/SyncML;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/agent/dm/IDMDmAgent;->idmEncodeSyncml(Lcom/idm/core/syncml/SyncML;)[B

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "sendData is null"

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object p1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_ABORT:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {p0, p1, v2}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;I)V

    return-void

    :cond_1
    new-instance v0, Lcom/idm/agent/dm/IDMDmAbortInfo;

    invoke-direct {v0}, Lcom/idm/agent/dm/IDMDmAbortInfo;-><init>()V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->dmConnectAdapter:Lcom/idm/agent/dm/IDMDmConnectInterface;

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/idm/agent/dm/IDMDmConnectInterface;->idmDMProcessBlockForNetwork(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x1f5

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetErrorCode(I)V

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmCheckRetry(ILcom/idm/agent/dm/IDMDmAbortInfo;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetIsCustomApn()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmCustomApnOpen()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmCustomApnClose()V

    invoke-virtual {v0, v3}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetErrorCode(I)V

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmCheckRetry(ILcom/idm/agent/dm/IDMDmAbortInfo;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSocketTrafficStats()V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccServerUriInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Uri : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v3

    invoke-direct {p0, v3, v1, p1, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmSendPackage(ILjava/lang/String;[BLcom/idm/agent/dm/IDMDmAbortInfo;)Lcom/idm/network/IDMNetworkSendRecvState;

    move-result-object p1

    sget-object v1, Lcom/idm/network/IDMNetworkSendRecvHandler;->SUCCESS:Lcom/idm/network/IDMNetworkSendRecvHandler;

    if-ne p1, v1, :cond_7

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_7

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    new-instance p1, Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;

    invoke-direct {p1}, Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;-><init>()V

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v3

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmAgent;->request:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v3, v4, p1, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmRecvPackage(ILjava/net/HttpURLConnection;Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;Lcom/idm/agent/dm/IDMDmAbortInfo;)Lcom/idm/network/IDMNetworkSendRecvState;

    move-result-object v3

    if-ne v3, v1, :cond_5

    const-string v1, "idmRecvPackage Success"

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;->idmGetSyncMLData()Lcom/idm/core/syncml/SyncML;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->recvSyncml:Lcom/idm/core/syncml/SyncML;

    if-nez p1, :cond_4

    const/16 p1, 0x1f9

    invoke-virtual {v0, p1}, Lcom/idm/agent/dm/IDMDmAbortInfo;->idmSetErrorCode(I)V

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object p1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_ABORT:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {p0, p1, v0}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    sget-object p1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_CONTINUE:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {p0, p1, v2}, Lcom/idm/agent/IDMAgentMessageHandler;->idmSendMessage(Ljava/lang/Enum;I)V

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/idm/network/IDMNetworkSendRecvHandler;->RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;

    if-ne v3, p1, :cond_6

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmCheckRetry(ILcom/idm/agent/dm/IDMDmAbortInfo;)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-interface {v3, p1, p0}, Lcom/idm/network/IDMNetworkSendRecvState;->idmSendRecvDMHandling(Lcom/idm/agent/IDMAgentMessageHandler;Lcom/idm/providers/mo/IDMMoDatabaseManager;)V

    return-void

    :cond_7
    sget-object v1, Lcom/idm/network/IDMNetworkSendRecvHandler;->RETRY:Lcom/idm/network/IDMNetworkSendRecvHandler;

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmAgent;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/idm/agent/dm/IDMDmAgent;->idmCheckRetry(ILcom/idm/agent/dm/IDMDmAbortInfo;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmAgent;->messageHandler:Lcom/idm/agent/IDMAgentMessageHandler;

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-interface {p1, v0, p0}, Lcom/idm/network/IDMNetworkSendRecvState;->idmSendRecvDMHandling(Lcom/idm/agent/IDMAgentMessageHandler;Lcom/idm/providers/mo/IDMMoDatabaseManager;)V

    :goto_0
    return-void
.end method
