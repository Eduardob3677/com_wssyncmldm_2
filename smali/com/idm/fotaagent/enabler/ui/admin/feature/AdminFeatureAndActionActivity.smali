.class public Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity;
.super Le/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity$FeatureArrayAdapter;,
        Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity$ActionsArrayAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/n;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/G;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v0, "Your activity/fragment is not yet attached to Application. You can\'t request ViewModel before onCreate call."

    if-eqz p1, :cond_3

    sget-object v1, Landroidx/lifecycle/a0;->g:Landroidx/lifecycle/a0;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/lifecycle/a0;

    invoke-direct {v1, p1}, Landroidx/lifecycle/a0;-><init>(Landroid/app/Application;)V

    sput-object v1, Landroidx/lifecycle/a0;->g:Landroidx/lifecycle/a0;

    :cond_0
    sget-object p1, Landroidx/lifecycle/a0;->g:Landroidx/lifecycle/a0;

    invoke-static {p1}, Ld3/i;->b(Ljava/lang/Object;)V

    new-instance v1, LJ/r0;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/c0;

    move-result-object v2

    invoke-direct {v1, v2, p1}, LJ/r0;-><init>(Landroidx/lifecycle/c0;Landroidx/lifecycle/b0;)V

    const-class p1, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureViewModel;

    invoke-virtual {v1, p1}, LJ/r0;->d(Ljava/lang/Class;)Landroidx/lifecycle/Y;

    move-result-object p1

    check-cast p1, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureViewModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v0, Landroidx/lifecycle/a0;->g:Landroidx/lifecycle/a0;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/lifecycle/a0;

    invoke-direct {v0, v1}, Landroidx/lifecycle/a0;-><init>(Landroid/app/Application;)V

    sput-object v0, Landroidx/lifecycle/a0;->g:Landroidx/lifecycle/a0;

    :cond_1
    sget-object v0, Landroidx/lifecycle/a0;->g:Landroidx/lifecycle/a0;

    invoke-static {v0}, Ld3/i;->b(Ljava/lang/Object;)V

    new-instance v1, LJ/r0;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/c0;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LJ/r0;-><init>(Landroidx/lifecycle/c0;Landroidx/lifecycle/b0;)V

    const-class v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel;

    invoke-virtual {v1, v0}, LJ/r0;->d(Ljava/lang/Class;)Landroidx/lifecycle/Y;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel;

    const v1, 0x7f0d000a

    invoke-static {p0, v1}, Landroidx/databinding/g;->d(Landroid/app/Activity;I)Landroidx/databinding/v;

    move-result-object v1

    check-cast v1, Lcom/wssyncmldm/databinding/AdminFeatureActionActivityBinding;

    iget-object v2, v1, Lcom/wssyncmldm/databinding/AdminFeatureActionActivityBinding;->listFeatures:Landroid/widget/ListView;

    new-instance v3, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity$FeatureArrayAdapter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureViewModel;->getFeatureList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity$FeatureArrayAdapter;-><init>(Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity;Ljava/util/List;Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, v1, Lcom/wssyncmldm/databinding/AdminFeatureActionActivityBinding;->listActions:Landroid/widget/ListView;

    new-instance v2, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity$ActionsArrayAdapter;

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel;->getActionsList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, p0, v0, v4}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity$ActionsArrayAdapter;-><init>(Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity;Ljava/util/List;Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity$1;)V

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1, p0}, Landroidx/databinding/v;->setLifecycleOwner(Landroidx/lifecycle/w;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
