.class public abstract Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithTwoButtons;
.super Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithTwoButtons"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getButtonBindingModel()Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;
.end method

.method public inflateViews()Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;
    .locals 2

    invoke-super {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->inflateViews()Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithTwoButtons;->getButtonBindingModel()Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->withButtons(Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;)Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->inflater:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->inflater:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->access$000(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->BUTTONS:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    invoke-virtual {v0, p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->inflateAndTryBinding(Le/n;Landroid/view/View;)V

    return-void
.end method
