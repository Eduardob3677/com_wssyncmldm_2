.class public Lcom/idm/fotaagent/restapi/restclient/push/message/spp/SppReceiver;
.super Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "2f233f9093de9dbc"

.field private static final SERVICE_DATA_DELETED_ACTION:Ljava/lang/String; = "com.sec.spp.ServiceDataDeletedAction"

.field private static final SPP_PACKAGENAME:Ljava/lang/String; = "com.sec.spp.push"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public handle()V
    .locals 4

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getAction()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Receive broadcast message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->D(Ljava/lang/Object;)V

    const-string v2, "com.sec.spp.ServiceDataDeletedAction"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.sec.spp.push"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/PushRegistrationRepository;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PushRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PushRegistrationRepository;->isRegistered()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "re-register SPP"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->startPushRegistration(Landroid/content/Context;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "2f233f9093de9dbc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "SPP message received"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string p0, "msg"

    invoke-virtual {v1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "Push message should not be empty"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->SPP:Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method
