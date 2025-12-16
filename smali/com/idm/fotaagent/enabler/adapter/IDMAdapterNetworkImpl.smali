.class public Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;
.super Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;
.source "SourceFile"


# static fields
.field private static final CONNECTION_TIMEOUT_IN_MILLIS:I = 0xea60

.field private static final DEFAULT_MANUFACTURER:Ljava/lang/String; = "samsung"

.field private static final DEFAULT_MODEL_NAME:Ljava/lang/String; = "GT-I9100"

.field public static final DL_MAX_RETRY_COUNT:I = 0xf

.field public static final DL_TOTAL_RETRY_COUNT:I = 0x1

.field public static final DM_MAX_RETRY_COUNT:I = 0x5

.field public static final FOTA_UID:I = 0xb58

.field static final HTTP_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HTTP_CONNECTION:Ljava/lang/String; = "Connection"

.field private static final HTTP_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field static final HTTP_HEADER_DL_ACCEPT:Ljava/lang/String; = "application/vnd.oma.dd+xml"

.field private static final HTTP_HEADER_DL_CONTENT_TYPE:Ljava/lang/String; = "application/vnd.oma.dd+xml"

.field static final HTTP_HEADER_DM_ACCEPT:Ljava/lang/String; = "application/vnd.syncml.dm+wbxml"

.field private static final HTTP_MIME_DM_WBXML_TYPES:Ljava/lang/String; = "application/vnd.syncml.dm+wbxml"

.field static final HTTP_NETWORK_BEARER:Ljava/lang/String; = "X-Sec-Download-Network-Bearer"

.field private static final HTTP_SERVICE_TYPE_B2B:Ljava/lang/String; = "B2B"

.field private static final HTTP_SERVICE_TYPE_B2C:Ljava/lang/String; = "B2C"

.field public static final HTTP_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final HTTP_X_SERVICE_TYPE:Ljava/lang/String; = "x-service-type"

.field private static final RECEIVE_TIMEOUT_IN_MILLIS:I = 0xea60


# instance fields
.field private final appId:I

.field private isProxy:Z

.field private proxyIp:Ljava/lang/String;

.field private proxyPort:I

.field private final taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->taskId:Ljava/lang/String;

    iput p2, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->appId:I

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->initializeNetworkInfo()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->lambda$idmMakeHttpHeader$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->lambda$idmMakeHttpHeader$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->lambda$makeHttpUserAgent$2(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private initializeNetworkInfo()V
    .locals 3

    iget v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->appId:I

    if-nez v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/16 v1, 0xf

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSetNetworkRetryCount(II)V

    iget v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->appId:I

    const v1, 0xea60

    invoke-virtual {p0, v0, v1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSetConnectNetworkTimeOut(II)V

    iget v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->appId:I

    invoke-virtual {p0, v0, v1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSetRecvNetworkTimeOut(II)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->idmSetIsProxy(Z)V

    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->idmSetProxyIp(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->getPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->idmSetProxyPort(I)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$idmMakeHttpHeader$0(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$idmMakeHttpHeader$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "B2B"

    return-object p0
.end method

.method private static synthetic lambda$makeHttpUserAgent$2(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public idmCustomApnClose()V
    .locals 0

    :try_start_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;->get()Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public idmCustomApnOpen()Z
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->idmGetIsCustomApn()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;->get()Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;->open()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return v0
.end method

.method public idmGetIsCustomApn()Z
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getDataSimSlotId(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/wssyncmldm/Flavor$Apn;->usesConfiguredApn(I)Z

    move-result p0

    return p0
.end method

.method public idmGetIsProxy()Z
    .locals 0

    iget-boolean p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->isProxy:Z

    return p0
.end method

.method public idmGetIsSSLCheck()Z
    .locals 1

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->isSslCheckEnabled()Z

    move-result p0

    return p0
.end method

.method public idmGetObjectUrlAddNetworkInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/utils/GeneralUtils;->appendExtraParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmGetProxyIp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->proxyIp:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetProxyPort()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->proxyPort:I

    return p0
.end method

.method public idmMakeHttpHeader(ILjava/net/HttpURLConnection;Ljava/lang/String;I)V
    .locals 7

    new-instance v0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;-><init>()V

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->taskId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result v2

    const-string v3, "Cache-Control"

    const-string v4, "no-store, private"

    invoke-virtual {p0, v3, v4}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSetHttpHeadersMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {p0, v3, v4}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSetHttpHeadersMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "User-Agent"

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->makeHttpUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSetHttpHeadersMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Accept-Language"

    const-string v4, "en"

    invoke-virtual {p0, v3, v4}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSetHttpHeadersMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Accept-Charset"

    const-string v4, "utf-8"

    invoke-virtual {p0, v3, v4}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSetHttpHeadersMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "Accept"

    if-nez p1, :cond_0

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->getCorpId()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/idm/adapter/filesystem/a;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/idm/adapter/filesystem/a;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LG2/b;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, LG2/b;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "B2C"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "x-service-type"

    invoke-virtual {p0, v1, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSetHttpHeadersMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {p0, v4, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSetHttpHeadersMap(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSetHttpHeadersMap(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_4

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GET"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;->idmGetUsingBearer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "X-Sec-Download-Network-Bearer"

    invoke-virtual {p0, v5, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSetHttpHeadersMap(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0xa

    if-eq v2, v0, :cond_3

    const/16 v0, 0x23

    if-eq v2, v0, :cond_3

    const/16 v0, 0xe6

    if-ne v2, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDownloadType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSetHttpHeadersMap(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "application/vnd.oma.dd+xml"

    invoke-virtual {p0, v4, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSetHttpHeadersMap(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmSetHttpHeadersMap(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmMakeHttpHeader(ILjava/net/HttpURLConnection;Ljava/lang/String;I)V

    return-void
.end method

.method public idmSetIsCustomApn()V
    .locals 0

    return-void
.end method

.method public idmSetIsProxy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->isProxy:Z

    return-void
.end method

.method public idmSetProxyIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->proxyIp:Ljava/lang/String;

    return-void
.end method

.method public idmSetProxyPort(I)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->proxyPort:I

    return-void
.end method

.method public idmSocketTrafficStats()V
    .locals 0

    const/16 p0, 0xb58

    invoke-static {p0}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    return-void
.end method

.method public makeHttpUserAgent()Ljava/lang/String;
    .locals 3

    new-instance p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;-><init>()V

    invoke-virtual {p0}, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->idmGetDeviceManufacturer()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "samsung"

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->getModelName()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/idm/adapter/filesystem/a;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/idm/adapter/filesystem/a;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " SyncML DM Client"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
