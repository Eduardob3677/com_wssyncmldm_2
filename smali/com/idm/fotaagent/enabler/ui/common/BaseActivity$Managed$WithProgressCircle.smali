.class public abstract Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithProgressCircle;
.super Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithProgressCircle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;-><init>()V

    return-void
.end method

.method private setHeightOfProgressContainerToMatchParent()V
    .locals 2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->inflater:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->access$000(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a01b6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public inflateViews()Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;-><init>(Le/n;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->withActionBar(I)Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    move-result-object v0

    const v1, 0x7f0d0070

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->withProgressContent(I)Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->inflater:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithProgressCircle;->setHeightOfProgressContainerToMatchParent()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->inflater:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0197

    invoke-virtual {p0, p1}, Le/n;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
