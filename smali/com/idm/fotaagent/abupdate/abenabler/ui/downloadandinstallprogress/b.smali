.class public final synthetic Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;I)V
    .locals 0

    iput p2, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/b;->c:I

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/b;->d:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/b;->c:I

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/b;->d:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;

    check-cast p1, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->b(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->g(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
