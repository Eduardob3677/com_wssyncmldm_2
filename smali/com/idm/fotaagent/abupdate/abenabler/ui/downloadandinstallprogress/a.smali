.class public final synthetic Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener$ButtonAction;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;I)V
    .locals 0

    iput p2, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/a;->c:I

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/a;->d:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/a;->c:I

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/a;->d:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;->download()V

    return-void

    :pswitch_0
    invoke-interface {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;->tryPause()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
