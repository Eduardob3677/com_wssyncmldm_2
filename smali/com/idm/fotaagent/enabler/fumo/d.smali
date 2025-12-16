.class public final synthetic Lcom/idm/fotaagent/enabler/fumo/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/d;->c:Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/d;->c:Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->checkPolicyAndInstall()V

    return-void
.end method
