.class Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressView"
.end annotation


# instance fields
.field private progressbar:Landroidx/appcompat/widget/SeslProgressBar;

.field private tvPercent:Landroid/widget/TextView;

.field private tvProgressStep:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->lambda$setProgressView$1(Landroid/content/Context;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->initializeProgressView(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->clearProgressView(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;Landroid/content/Context;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->setProgressView(Landroid/content/Context;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;)V

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->lambda$setProgressView$0(Ljava/lang/Integer;)V

    return-void
.end method

.method private clearProgressView(I)V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->tvProgressStep:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->tvProgressStep:Landroid/widget/TextView;

    const v0, 0x7f1402ed

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->tvPercent:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->progressbar:Landroidx/appcompat/widget/SeslProgressBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    return-void
.end method

.method private initializeProgressView(Landroid/view/View;I)V
    .locals 1

    const v0, 0x7f0a01b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->progressbar:Landroidx/appcompat/widget/SeslProgressBar;

    const v0, 0x7f0a02a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->tvProgressStep:Landroid/widget/TextView;

    const v0, 0x7f0a02a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->tvPercent:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->tvProgressStep:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private synthetic lambda$setProgressView$0(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->tvProgressStep:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method private synthetic lambda$setProgressView$1(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->progressbar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->tvPercent:Landroid/widget/TextView;

    const v0, 0x7f130021

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setProgressView(Landroid/content/Context;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;)V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;->tvProgressStep:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;->getTitleStyle()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/common/b;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/enabler/ui/common/b;-><init>(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars$ProgressView;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p2}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;->getPercent()Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/common/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/idm/fotaagent/enabler/ui/common/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
