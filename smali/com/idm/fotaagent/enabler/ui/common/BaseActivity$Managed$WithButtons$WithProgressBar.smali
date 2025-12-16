.class public abstract Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithProgressBar;
.super Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithProgressBar"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;-><init>()V

    return-void
.end method


# virtual methods
.method public inflateViews()Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;
    .locals 2

    invoke-super {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->inflateViews()Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarBindingModel;

    invoke-direct {v1}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarBindingModel;-><init>()V

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->withProgressViewModel(Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;)Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->inflater:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    return-object v0
.end method
