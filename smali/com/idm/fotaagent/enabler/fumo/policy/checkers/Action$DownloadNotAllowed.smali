.class public Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$DownloadNotAllowed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/ActionForException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadNotAllowed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/ActionForException<",
        "Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/DownloadNotAllowedByPolicyException;",
        ">;"
    }
.end annotation


# instance fields
.field private final taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$DownloadNotAllowed;->taskId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public act()Ljava/util/function/Consumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/DownloadNotAllowedByPolicyException;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/a;-><init>(Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/ActionForException;I)V

    return-object v0
.end method

.method public getExceptionClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/DownloadNotAllowedByPolicyException;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/DownloadNotAllowedByPolicyException;

    return-object p0
.end method

.method public reportAndShowUiIfNeeded(Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/DownloadNotAllowedByPolicyException;)V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$DownloadNotAllowed;->taskId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x23

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/DownloadNotAllowedByPolicyException;->getDlResultCode()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(II)V

    new-instance p1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$DownloadNotAllowed;->taskId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getUiMode()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    sget-object p1, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_BLOCKED_DEVICE_BY_POLICY:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V

    :cond_0
    return-void
.end method
