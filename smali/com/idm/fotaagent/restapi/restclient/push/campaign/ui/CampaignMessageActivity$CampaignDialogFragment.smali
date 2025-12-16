.class public Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;
.super Landroidx/fragment/app/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CampaignDialogFragment"
.end annotation


# instance fields
.field allowsToFinish:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/r;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;->allowsToFinish:Z

    return-void
.end method

.method private allowsToFinish(Landroid/app/Activity;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic g(Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;Le/j;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;->lambda$onCreateDialog$0(Le/j;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;)V

    return-void
.end method

.method public static synthetic h(Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;Le/j;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;->lambda$onCreateDialog$1(Le/j;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;)V

    return-void
.end method

.method private lambda$onCreateDialog$0(Le/j;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;)V
    .locals 2

    invoke-virtual {p2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;->title()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/ButtonOnClickListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;->action()Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;

    move-result-object p2

    invoke-direct {v1, p0, p2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/ButtonOnClickListener;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;)V

    iget-object p0, p1, Le/j;->a:Le/g;

    iput-object v0, p0, Le/g;->g:Ljava/lang/CharSequence;

    iput-object v1, p0, Le/g;->h:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private lambda$onCreateDialog$1(Le/j;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;)V
    .locals 2

    invoke-virtual {p2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;->title()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/ButtonOnClickListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;->action()Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;

    move-result-object p2

    invoke-direct {v1, p0, p2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/ButtonOnClickListener;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;)V

    iget-object p0, p1, Le/j;->a:Le/g;

    iput-object v0, p0, Le/g;->k:Ljava/lang/CharSequence;

    iput-object v1, p0, Le/g;->l:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static newInstance(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;

    invoke-direct {v0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.wssyncmldm:CampaignMessageBundle"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.wssyncmldm:CampaignMessageBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    new-instance v0, Le/j;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    move-result-object v1

    invoke-direct {v0, v1}, Le/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d001f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const v3, 0x7f0d000f

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v1, v0, Le/j;->a:Le/g;

    iput-object v2, v1, Le/g;->q:Landroid/view/View;

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->dialogTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Le/g;->d:Ljava/lang/CharSequence;

    const v3, 0x7f0a007b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->dialogContent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->positiveButton()Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/a;

    invoke-direct {v3, p0, v0, v4}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/a;-><init>(Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;Le/j;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->neutralButton()Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/a;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v0, v4}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/a;-><init>(Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;Le/j;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->okButton()Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;->title()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/ButtonOnClickListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->okButton()Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;->action()Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;

    move-result-object p1

    invoke-direct {v3, p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/ButtonOnClickListener;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;)V

    iput-object v2, v1, Le/g;->i:Ljava/lang/CharSequence;

    iput-object v3, v1, Le/g;->j:Landroid/content/DialogInterface$OnClickListener;

    :cond_0
    invoke-virtual {v0}, Le/j;->a()Le/k;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/r;->dismissAllowingStateLoss()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    move-result-object p1

    iget-boolean v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;->allowsToFinish:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;->allowsToFinish(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
