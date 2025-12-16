.class public abstract Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;
.super Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithTwoProgressBars"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;
    }
.end annotation


# instance fields
.field private final downloadAndInstall:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;

.field private final verify:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;-><init>()V

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;-><init>(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$1;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;->downloadAndInstall:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;-><init>(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$1;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;->verify:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;

    return-void
.end method

.method private initializeProgressViews()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;->downloadAndInstall:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;

    const v1, 0x7f0a00c8

    invoke-virtual {p0, v1}, Le/n;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f13002f

    invoke-static {v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->access$200(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;->verify:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;

    const v1, 0x7f0a02b1

    invoke-virtual {p0, v1}, Le/n;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v1, 0x7f1300ba

    invoke-static {v0, p0, v1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->access$200(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$setProgressView$0(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;)V
    .locals 0

    invoke-static {p2, p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->access$400(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;Landroid/content/Context;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;)V

    return-void
.end method

.method public static synthetic n(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;->lambda$setProgressView$0(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;)V

    return-void
.end method


# virtual methods
.method public clearProgressViews()V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;->downloadAndInstall:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;

    const v1, 0x7f13002f

    invoke-static {v0, v1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->access$300(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;I)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;->verify:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;

    const v0, 0x7f1300ba

    invoke-static {p0, v0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->access$300(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;I)V

    return-void
.end method

.method public getProgressViewFrom(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$1;->$SwitchMap$com$idm$fotaagent$abupdate$updateengine$UpdateStatus$InstallationStep:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "unexpected status : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;->verify:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;->downloadAndInstall:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;

    return-object p0
.end method

.method public inflateViews()Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;
    .locals 2

    invoke-super {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->inflateViews()Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    move-result-object v0

    const v1, 0x7f0d00cd

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->withProgressContent(I)Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->inflater:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    return-object v0
.end method

.method public makeProgressBars(I)V
    .locals 2

    if-nez p1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f0a00c9

    invoke-virtual {p0, v1}, Le/n;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a02a8

    invoke-virtual {p0, v0}, Le/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0079

    invoke-virtual {p0, v0}, Le/n;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;->initializeProgressViews()V

    return-void
.end method

.method public setProgressView(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;->getProgressViewFrom(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/common/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/idm/fotaagent/enabler/ui/common/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
