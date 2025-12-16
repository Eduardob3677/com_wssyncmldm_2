.class public final synthetic Lcom/idm/fotaagent/enabler/fumo/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/a;->a:Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/a;->a:Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    check-cast p1, Lcom/idm/agent/dm/IDMDmExecInfo;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->c(Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;Lcom/idm/agent/dm/IDMDmExecInfo;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
