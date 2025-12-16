.class public Lcom/idm/fotaagent/enabler/fumo/InstallReporter;
.super Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/fumo/InstallReporter$InstallTypeCallback;
    }
.end annotation


# static fields
.field private static final INSTALL_TYPE_INSTALL:Ljava/lang/String; = "I"


# instance fields
.field private final future:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final installTypeUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/InstallReporter;->future:Ljava/util/concurrent/CompletableFuture;

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getInstallTypeUri()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/InstallReporter;->installTypeUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildRestRequest(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;)Lcom/idm/agent/restclient/RestRequest;
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/InstallReporter;->installTypeUri:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&installType=I"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->D(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetInstallTypeUri(Ljava/lang/String;)V

    new-instance p0, Lcom/idm/agent/restclient/RestRequest$Builder;

    sget-object p2, Lcom/idm/agent/restclient/RestRequest$MethodType;->REST_METHOD_GET:Lcom/idm/agent/restclient/RestRequest$MethodType;

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetInstallTypeUri()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/idm/agent/restclient/RestRequest$Builder;-><init>(Lcom/idm/agent/restclient/RestRequest$MethodType;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/agent/restclient/RestRequest$Builder;->build()Lcom/idm/agent/restclient/RestRequest;

    move-result-object p0

    return-object p0
.end method

.method public checkUri(Lcom/idm/service/actioninfo/IDMActionInfo;)V
    .locals 0

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/InstallReporter;->installTypeUri:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/InstallReporter;->installTypeUri:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->D(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "installTypeUri is empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finish(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/InstallReporter;->future:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCallback()Lcom/idm/adapter/callback/IDMCallback;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/InstallReporter$InstallTypeCallback;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/InstallReporter;->future:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/InstallReporter$InstallTypeCallback;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    return-object v0
.end method
