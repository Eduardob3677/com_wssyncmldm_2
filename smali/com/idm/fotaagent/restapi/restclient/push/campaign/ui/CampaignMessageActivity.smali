.class public Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity;
.super Landroidx/fragment/app/G;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;
    }
.end annotation


# static fields
.field public static final KEY_BUNDLE:Ljava/lang/String; = "com.wssyncmldm:CampaignMessageBundle"

.field private static final TAG_DIALOG:Ljava/lang/String; = "CampaignDialog"


# instance fields
.field private dialogFragment:Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/G;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/G;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.wssyncmldm:CampaignMessageBundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    if-nez p1, :cond_0

    const-string p1, "campaignMessage is null"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/G;->getSupportFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    const-string v1, "CampaignDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Z;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;->newInstance(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity;->dialogFragment:Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/r;->show(Landroidx/fragment/app/Z;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    check-cast v2, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;

    iput-object v2, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity;->dialogFragment:Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;

    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "com.wssyncmldm:CampaignMessageBundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    if-nez v0, :cond_0

    const-string p1, "campaignMessage is null"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v1, "replace dialogFragment"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity;->dialogFragment:Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;

    invoke-static {v0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;->newInstance(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity;->dialogFragment:Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/G;->getSupportFragmentManager()Landroidx/fragment/app/Z;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/Z;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->g(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity;->dialogFragment:Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;

    const/4 p1, 0x0

    const-string v2, "CampaignDialog"

    const/4 v3, 0x1

    invoke-virtual {v0, p1, p0, v2, v3}, Landroidx/fragment/app/a;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Landroidx/fragment/app/a;->e(Z)I

    iput-boolean p1, v1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;->allowsToFinish:Z

    return-void
.end method
