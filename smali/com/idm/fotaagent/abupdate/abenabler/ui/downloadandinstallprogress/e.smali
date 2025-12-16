.class public final synthetic Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;

.field public final synthetic e:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;I)V
    .locals 0

    iput p3, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/e;->c:I

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/e;->d:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;

    iput-object p2, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/e;->e:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/e;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/e;->d:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/e;->e:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    invoke-static {v0, p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->b(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/e;->d:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/e;->e:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    invoke-static {v0, p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->a(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
