.class public Lcom/idm/fotaagent/restapi/restclient/RestClientReceiver;
.super Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final KEY_INTENT_SERVICE_TYPE:Ljava/lang/String; = "restClientServiceType"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/restapi/restclient/RestClientReceiver;Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/RestClientReceiver;->lambda$handle$0(Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;)V

    return-void
.end method

.method private synthetic lambda$handle$0(Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;)V
    .locals 2

    const-class v0, Lcom/idm/fotaagent/restapi/restclient/RestClientReceiver;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->doAction(Landroid/content/Context;Landroid/content/Intent;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public handle()V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "restClientServiceType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    if-nez v0, :cond_0

    const-string p0, "restClientServiceType is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LA/o;

    const/16 v3, 0xd

    invoke-direct {v2, p0, v3, v0}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
