.class public Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonBindingModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;


# instance fields
.field private final downloadConfirmButtonViewModel:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonBindingModel;->downloadConfirmButtonViewModel:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0d000e

    return p0
.end method

.method public getVariableId()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getViewModel()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonBindingModel;->downloadConfirmButtonViewModel:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;

    return-object p0
.end method
