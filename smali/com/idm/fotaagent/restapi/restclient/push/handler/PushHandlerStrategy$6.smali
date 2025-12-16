.class final enum Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$6;
.super Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$1;)V

    return-void
.end method

.method private getPollingFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "versioninfo/Polling/filename"

    invoke-static {p1, p0}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPollingUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "versioninfo/url"

    invoke-static {p1, p0}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public process(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$6;->getPollingUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$6;->getPollingFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->setUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;

    move-result-object p1

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->access$300()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->setTarget(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
