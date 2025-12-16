.class public final synthetic Lcom/idm/fotaagent/enabler/ui/installconfirm/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/c;->c:I

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/c;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/c;->c:I

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/c;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->b(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->b(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
