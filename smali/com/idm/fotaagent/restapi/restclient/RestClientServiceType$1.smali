.class final enum Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType$1;
.super Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;-><init>(Ljava/lang/String;IILcom/idm/fotaagent/restapi/restclient/RestClientServiceType$1;)V

    return-void
.end method


# virtual methods
.method public doAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " doAction"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;->start()V

    return-void
.end method
