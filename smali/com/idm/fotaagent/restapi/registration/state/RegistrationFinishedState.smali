.class Lcom/idm/fotaagent/restapi/registration/state/RegistrationFinishedState;
.super Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0xb3350d9594de841L


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/restapi/registration/context/Registration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;-><init>(Lcom/idm/fotaagent/restapi/registration/context/Registration;)V

    return-void
.end method


# virtual methods
.method public onEntry()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->isCompleted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationFinishedState;->onExecute()V

    goto :goto_0

    :cond_0
    const-string p0, "Registration not completed"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onExecute()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->registration:Lcom/idm/fotaagent/restapi/registration/context/Registration;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->end()V

    return-void
.end method
