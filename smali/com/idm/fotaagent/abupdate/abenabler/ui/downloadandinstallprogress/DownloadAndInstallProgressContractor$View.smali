.class public interface abstract Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract clearProgressViews()V
.end method

.method public abstract finish()V
.end method

.method public abstract getLifecycleOwner()Landroidx/lifecycle/w;
.end method

.method public abstract makeProgressBars(I)V
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract setButtons(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method public abstract setHighEmphasisButton(Z)V
.end method

.method public abstract setMainBody(Ljava/lang/CharSequence;)V
.end method

.method public abstract setMainTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setProgressView(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;)V
.end method

.method public abstract showPauseBlockToast()V
.end method

.method public abstract showPauseConfirmDialog()V
.end method
