.class public Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarBindingModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0d006e

    return p0
.end method

.method public getVariableId()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getViewModel()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarContentViewModel;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarContentViewModel;-><init>()V

    return-object p0
.end method
