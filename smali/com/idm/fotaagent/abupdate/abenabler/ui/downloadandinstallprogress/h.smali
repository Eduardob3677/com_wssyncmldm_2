.class public final synthetic Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/PauseConfirmDialog$PauseListener;

    invoke-interface {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/PauseConfirmDialog$PauseListener;->pauseIfPossible()V

    return-void
.end method
