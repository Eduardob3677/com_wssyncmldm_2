.class public final synthetic Lcom/idm/fotaagent/enabler/fumo/policy/checkers/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/ActionForException;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/ActionForException;I)V
    .locals 0

    iput p2, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/a;->c:I

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/a;->d:Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/ActionForException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/a;->c:I

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/a;->d:Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/ActionForException;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallSuspended;

    check-cast p1, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallSuspendedByPolicyException;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallSuspended;->a(Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallSuspended;Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallSuspendedByPolicyException;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallFailed;

    check-cast p1, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallFailedByPolicyException;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallFailed;->reportAndShowUiIfNeeded(Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallFailedByPolicyException;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$DownloadNotAllowed;

    check-cast p1, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/DownloadNotAllowedByPolicyException;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$DownloadNotAllowed;->reportAndShowUiIfNeeded(Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/DownloadNotAllowedByPolicyException;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
