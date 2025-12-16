.class public Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient$Registration;
.super Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Registration"
.end annotation


# static fields
.field static final URL_PUSH_REGISTRATION:Ljava/lang/String; = "/device/fumo/ippushregister"


# instance fields
.field private final pushInfo:Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;)V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/PushStrategyFactory$Registration;

    invoke-direct {v0}, Lcom/idm/fotaagent/restapi/restclient/push/PushStrategyFactory$Registration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/restapi/restclient/strategies/StrategyFactory;)V

    iput-object p2, p0, Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient$Registration;->pushInfo:Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;

    return-void
.end method


# virtual methods
.method public generateBody()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/restapi/request/FOTABody$ForPush;

    invoke-direct {v0}, Lcom/idm/fotaagent/restapi/request/FOTABody$ForPush;-><init>()V

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient$Registration;->pushInfo:Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/restapi/request/FOTABody;->generate(Lcom/idm/fotaagent/restapi/request/DeviceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;->POST:Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getHostUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/device/fumo/ippushregister"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
