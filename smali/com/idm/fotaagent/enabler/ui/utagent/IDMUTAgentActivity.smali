.class public Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentActivity;
.super Le/n;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FRAGMENT_FOR_UTAGENT_ACTIVITY"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/n;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Le/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/G;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Le/n;->getSupportActionBar()Le/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f1300c5

    invoke-virtual {p1, v0}, Le/a;->o(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/G;->getSupportFragmentManager()Landroidx/fragment/app/Z;

    move-result-object p1

    const-string v0, "FRAGMENT_FOR_UTAGENT_ACTIVITY"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Z;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentFragment;

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/Z;)V

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentFragment;

    invoke-direct {p1}, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentFragment;-><init>()V

    const v2, 0x1020002

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v0, v3}, Landroidx/fragment/app/a;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/a;->e(Z)I

    move-object v1, p1

    :goto_0
    new-instance p1, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentRepository;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentRepository;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v1, v0}, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;-><init>(Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$View;Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentSource;)V

    return-void
.end method
