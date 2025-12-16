.class public abstract Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;
.super Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithButtons"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;,
        Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithProgressBar;
    }
.end annotation


# instance fields
.field protected btHighEmphasis:Landroid/widget/Button;

.field protected btMediumEmphasis:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;-><init>()V

    return-void
.end method

.method private setButtonLayout()V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->inflater:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->access$000(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->BUTTONS:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    invoke-virtual {v1, p0, v0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->inflateAndTryBinding(Le/n;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getButtonLayoutId()I
    .locals 0

    const p0, 0x7f0d000e

    return p0
.end method

.method public inflateViews()Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;
    .locals 2

    invoke-super {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->inflateViews()Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->getButtonLayoutId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->withButtons(I)Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->inflater:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->btMediumEmphasis:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->btHighEmphasis:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->setButtonLayout()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->setButtonViews()V

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->setButtons(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->setListeners()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->setButtonViews()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->setListeners()V

    return-void
.end method

.method public setButtonViews()V
    .locals 1

    const v0, 0x7f0a0075

    invoke-virtual {p0, v0}, Le/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->btMediumEmphasis:Landroid/widget/Button;

    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Le/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->btHighEmphasis:Landroid/widget/Button;

    return-void
.end method

.method public final setButtons(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->btMediumEmphasis:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->goneIfEmptyOrSet(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->btHighEmphasis:Landroid/widget/Button;

    invoke-static {p0, p2}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->goneIfEmptyOrSet(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHighEmphasisButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->btHighEmphasis:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->btHighEmphasis:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public abstract setListeners()V
.end method
