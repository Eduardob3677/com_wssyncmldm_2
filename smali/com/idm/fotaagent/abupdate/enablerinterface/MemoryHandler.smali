.class public interface abstract Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createInstance(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;)Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getMemoryHandler(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;)Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract check()V
.end method
