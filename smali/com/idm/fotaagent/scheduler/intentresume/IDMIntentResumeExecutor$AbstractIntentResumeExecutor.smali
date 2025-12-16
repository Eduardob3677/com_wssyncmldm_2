.class public abstract Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor$AbstractIntentResumeExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractIntentResumeExecutor"
.end annotation


# instance fields
.field final context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor$AbstractIntentResumeExecutor;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract doResume(Ljava/lang/String;)V
.end method

.method public resumeIfPossible()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/service/actioninfo/IDMActionInfo;

    if-nez v0, :cond_0

    const-string p0, "actionInfo is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor$AbstractIntentResumeExecutor;->doResume(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
