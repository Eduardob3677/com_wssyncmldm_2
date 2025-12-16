.class public Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/common/viewmodel/ButtonsContentViewModel;


# instance fields
.field private final model:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;->model:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;->lambda$mediumEmphasisButtonOnClickListener$0()V

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;->lambda$highEmphasisButtonOnClickListener$1()V

    return-void
.end method

.method private synthetic lambda$highEmphasisButtonOnClickListener$1()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;->model:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->cancelNetworkResume()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;->model:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->startDownload()V

    return-void
.end method

.method private synthetic lambda$mediumEmphasisButtonOnClickListener$0()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;->model:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->cancelNetworkResume()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;->model:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->cancelDownload()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->DOWNLOAD_CONFIRM:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finish(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;)V

    return-void
.end method


# virtual methods
.method public getHighEmphasisButtonTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;->model:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->getHighEmphasisButtonTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMediumEmphasisButtonTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;->model:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->getMediumEmphasisButtonTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public highEmphasisButtonOnClickListener()Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/a;-><init>(Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;I)V

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;-><init>(Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener$ButtonAction;)V

    return-object v0
.end method

.method public mediumEmphasisButtonOnClickListener()Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/a;-><init>(Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;I)V

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;-><init>(Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener$ButtonAction;)V

    return-object v0
.end method
