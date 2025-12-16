.class public Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper$CampaignMessagePeekFailedException;,
        Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper$EmptyCampaignQueueException;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final repository:Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->context:Landroid/content/Context;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->repository:Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->lambda$peek$0(Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$peek$0(Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->parse(Landroid/content/Context;Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deleteCurrentMessage()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->repository:Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->remove()Ljava/util/Optional;

    return-void
.end method

.method public getAllMessages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->repository:Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->peekAll()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->parse(Landroid/content/Context;Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public peek()Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->repository:Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->peek()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/c;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/d;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper$EmptyCampaignQueueException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper$CampaignMessagePeekFailedException;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper$CampaignMessagePeekFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->deleteCurrentMessage()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->peek()Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    move-result-object p0

    return-object p0
.end method

.method public showCampaignDialog()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->peek()Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    move-result-object v0
    :try_end_0
    .catch Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper$CampaignMessagePeekFailedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->context:Landroid/content/Context;

    const-class v3, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.wssyncmldm:CampaignMessageBundle"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method
