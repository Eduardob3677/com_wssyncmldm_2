.class public Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallSuspended;
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
    name = "InstallSuspended"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$Install;",
        "Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/ActionForException<",
        "Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallSuspendedByPolicyException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$Install;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallSuspended;Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallSuspendedByPolicyException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallSuspended;->lambda$act$0(Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallSuspendedByPolicyException;)V

    return-void
.end method

.method private synthetic lambda$act$0(Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallSuspendedByPolicyException;)V
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallSuspended;->setAlarmAndShowUiIfNeeded()V

    return-void
.end method


# virtual methods
.method public act()Ljava/util/function/Consumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallSuspendedByPolicyException;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/a;-><init>(Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/ActionForException;I)V

    return-object v0
.end method

.method public getExceptionClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallSuspendedByPolicyException;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallSuspendedByPolicyException;

    return-object p0
.end method

.method public setAlarmAndShowUiIfNeeded()V
    .locals 5

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/SystemPolicy;->getInstallStartMinute(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/SystemPolicy;->getInstallEndMinute(Landroid/content/Context;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/idm/fotaagent/utils/EpochTime;->getNextRandomlyBetween(II)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    new-instance v2, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$PolicyWindowed;

    invoke-direct {v2}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$PolicyWindowed;-><init>()V

    sget-object v3, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;->BY_POLICY:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;

    iget-object v4, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$Install;->taskId:Ljava/lang/String;

    invoke-static {v2, v0, v1, v3, v4}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->set(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;JLcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$Install;->removeNotificationAndShowPolicyDialogIfNeeded()V

    return-void
.end method
