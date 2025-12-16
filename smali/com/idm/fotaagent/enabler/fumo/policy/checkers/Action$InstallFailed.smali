.class public Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallFailed;
.super Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$Install;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/ActionForException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallFailed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$Install;",
        "Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/ActionForException<",
        "Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallFailedByPolicyException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$Install;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public act()Ljava/util/function/Consumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallFailedByPolicyException;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/a;-><init>(Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/ActionForException;I)V

    return-object v0
.end method

.method public getExceptionClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallFailedByPolicyException;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallFailedByPolicyException;

    return-object p0
.end method

.method public reportAndShowUiIfNeeded(Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallFailedByPolicyException;)V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/utils/UpdateResultUtils;

    invoke-direct {v0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;-><init>()V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallFailedByPolicyException;->getDmResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/utils/UpdateResultUtils;->setUpdateResultCode(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$Install;->taskId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x50

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallFailedByPolicyException;->getDmResultCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$Install;->removeNotificationAndShowPolicyDialogIfNeeded()V

    return-void
.end method
