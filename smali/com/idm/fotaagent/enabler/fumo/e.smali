.class public final synthetic Lcom/idm/fotaagent/enabler/fumo/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/e;->a:Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/e;->a:Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->install()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
