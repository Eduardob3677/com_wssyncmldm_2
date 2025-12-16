.class Lcom/idm/fotaagent/InitExecutor$InitializationTask;
.super Lcom/idm/fotaagent/InitExecutor$ResetTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/InitExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializationTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/InitExecutor$ResetTask;-><init>(Lcom/idm/fotaagent/InitExecutor$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/InitExecutor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/InitExecutor$InitializationTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/InitExecutor$InitializationTask;->call()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->isDBTableCorrupt()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Database corrupted"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/InitExecutor$ResetTask;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/InitExecutor$ResetTask;->initialize()V

    const/4 p0, 0x0

    return-object p0
.end method
