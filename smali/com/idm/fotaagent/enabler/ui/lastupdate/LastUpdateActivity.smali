.class public Lcom/idm/fotaagent/enabler/ui/lastupdate/LastUpdateActivity;
.super Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/lastupdate/LastUpdateContract$View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getMainContentLayoutId()I
    .locals 0

    const p0, 0x7f0d002d

    return p0
.end method

.method public final getTitleId()I
    .locals 0

    const p0, 0x7f13005e

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->tvMainBody:Landroid/widget/TextView;

    const v0, 0x7f060203

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/lastupdate/LastUpdatePresenter;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/ui/lastupdate/LastUpdatePresenter;-><init>(Lcom/idm/fotaagent/enabler/ui/lastupdate/LastUpdateContract$View;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/lastupdate/LastUpdatePresenter;->onCreate()V

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$Last;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$Last;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Last;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Last;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->setSubContent([Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;)V

    return-void
.end method
