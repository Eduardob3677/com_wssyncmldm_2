.class public final synthetic Lcom/idm/fotaagent/enabler/ui/installconfirm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener$ButtonAction;
.implements Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$OnFirstNetReadyChangedListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;I)V
    .locals 0

    iput p2, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/a;->c:I

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/a;->d:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/a;->c:I

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/a;->d:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;->installNow()V

    return-void

    :pswitch_0
    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;->scheduleInstall()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public update()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/a;->d:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->a(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;)V

    return-void
.end method
