.class public Lcom/idm/fotaagent/enabler/ui/noupdatable/NoUpdatableVersionActivity;
.super Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_KEY"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    const-string p1, "invalid string resource id, handle as STR_FOTA_LATEST_VERSION"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const p1, 0x7f130060

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->setMainTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->setMainBody(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Latest;

    invoke-direct {p1}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Latest;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->setSubContent([Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;)V

    return-void
.end method
