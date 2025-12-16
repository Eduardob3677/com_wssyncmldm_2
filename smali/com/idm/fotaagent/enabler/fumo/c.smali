.class public final synthetic Lcom/idm/fotaagent/enabler/fumo/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->b()Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler$AbnormalExecCommandException;

    move-result-object p0

    return-object p0
.end method
