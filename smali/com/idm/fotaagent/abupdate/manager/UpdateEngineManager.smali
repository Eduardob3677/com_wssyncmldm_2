.class public Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DOWNLOAD_RETRY:Ljava/lang/String; = "DOWNLOAD_RETRY"

.field public static final FILE_HASH:Ljava/lang/String; = "FILE_HASH"

.field public static final FILE_SIZE:Ljava/lang/String; = "FILE_SIZE"

.field private static final HTTP_EXTRAS:Ljava/lang/String; = "HTTP_EXTRAS"

.field public static final METADATA_FILE_SIZE:Ljava/lang/String; = "METADATA_FILE_SIZE"

.field public static final METADATA_HASH:Ljava/lang/String; = "METADATA_HASH"

.field public static final METADATA_SIZE:Ljava/lang/String; = "METADATA_SIZE"

.field private static final NETWORK_ID:Ljava/lang/String; = "NETWORK_ID"

.field public static final OFFSET:Ljava/lang/String; = "OFFSET"

.field private static final PROXY_URL:Ljava/lang/String; = "NETWORK_PROXY"

.field private static final SWITCH_SLOT_ON_REBOOT:Ljava/lang/String; = "SWITCH_SLOT_ON_REBOOT"

.field private static final USER_AGENT:Ljava/lang/String; = "USER_AGENT"


# instance fields
.field private callback:Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;

.field private final handler:Landroid/os/Handler;

.field private final updateEngine:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;

    invoke-direct {v0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;-><init>()V

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->updateEngine:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method private bind(Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;)V
    .locals 3

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->unbind()V

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->updateEngine:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->bind(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngineCallback;Landroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Try binding again."

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->updateEngine:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->bind(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngineCallback;Landroid/os/Handler;)Z

    move-result v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bind result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->callback:Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;

    :cond_1
    return-void
.end method

.method private getFormattedProperties(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "request properties : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getHttpExtras()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Cache-Control"

    const-string v2, "no-store,private"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getObjectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->getDefaultPort()I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v2

    :goto_0
    const-string v3, "Host"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->getFormattedProperties(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPayloadProperties(J)[Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FILE_HASH="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getFileHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FILE_SIZE="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getFileSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "METADATA_HASH="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getMetadataHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "METADATA_SIZE="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getMetadataSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "DOWNLOAD_RETRY=0"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->getPort()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NETWORK_PROXY="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "SWITCH_SLOT_ON_REBOOT=0"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "NETWORK_ID="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "USER_AGENT="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p2, v0, v2}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->makeHttpUserAgent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->getTaskId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isTriggeredBySideload()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "HTTP_EXTRAS="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->getHttpExtras()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private getTaskId()Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSessionId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private unbind()V
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->updateEngine:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->unbind()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unbind result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->callback:Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;

    :cond_0
    return-void
.end method


# virtual methods
.method public allocateSpaceForPayload(Ljava/lang/String;)J
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->updateEngine:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->getPayloadProperties(J)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->allocateSpace(Ljava/lang/String;[Ljava/lang/String;)Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;->getFreeSpaceRequired()J

    move-result-wide p0

    return-wide p0
.end method

.method public applyPayload(J)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "networkId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    :try_start_0
    new-instance v2, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getObjectUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isTriggeredBySideload()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v3}, Lcom/idm/fotaagent/utils/GeneralUtils;->appendExtraParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->updateEngine:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getOffset()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getFileSize()J

    move-result-wide v6

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->getPayloadProperties(J)[Ljava/lang/String;

    move-result-object p0

    move-object v1, v3

    move-wide v2, v4

    move-wide v4, v6

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getInstance()Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->registerTemperatureChangeReceiverIfNeeded()V

    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getInstance()Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;

    move-result-object p0

    const-class p1, Lcom/idm/fotaagent/receiver/dynamic/LowBatteryReceiver;

    sget-object p2, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->NOT_SPECIFY_FOR_SYSTEM:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->register(Ljava/lang/Class;Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;)Z

    return-void

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public bind()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/abupdate/manager/callbacks/UpdateCallback;

    invoke-direct {v0}, Lcom/idm/fotaagent/abupdate/manager/callbacks/UpdateCallback;-><init>()V

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->bind(Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;)V

    return-void
.end method

.method public bindForSlotSwitch(Ljava/util/concurrent/CompletableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/idm/fotaagent/abupdate/manager/callbacks/SlotSwitchCallback;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/abupdate/manager/callbacks/SlotSwitchCallback;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->bind(Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->updateEngine:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->cancel()V

    return-void
.end method

.method public cleanupSuccessfulUpdate()I
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->updateEngine:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->cleanupAppliedPayload()I

    move-result p0

    return p0
.end method

.method public executeCallbackIfPossible(Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->callback:Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;->setResultCode(I)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->updateEngine:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->updateEngine:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->resetStatus()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->updateEngine:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->resetStatus()V

    throw v0
.end method

.method public resetShouldSwitchSlotOnReboot()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->updateEngine:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->resetShouldSwitchSlotOnReboot()V

    return-void
.end method

.method public setShouldSwitchSlotOnReboot(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->updateEngine:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->setShouldSwitchSlotOnReboot(Ljava/lang/String;)V

    return-void
.end method
