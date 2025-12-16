.class Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity$ActionsArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionsArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity;


# direct methods
.method private constructor <init>(Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity;",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0d0008

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity$ActionsArrayAdapter;->activity:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity;Ljava/util/List;Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity$ActionsArrayAdapter;-><init>(Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity$ActionsArrayAdapter;->activity:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0008

    const/4 v1, 0x0

    invoke-static {p2, v0, p3, v1}, Landroidx/databinding/g;->c(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/v;

    move-result-object p2

    check-cast p2, Lcom/wssyncmldm/databinding/AdminActionBinding;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity$ActionsArrayAdapter;->activity:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity;

    invoke-virtual {p2, p0}, Landroidx/databinding/v;->setLifecycleOwner(Landroidx/lifecycle/w;)V

    invoke-virtual {p2}, Landroidx/databinding/v;->getRoot()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    invoke-static {p2}, Landroidx/databinding/v;->getBinding(Landroid/view/View;)Landroidx/databinding/v;

    move-result-object p0

    check-cast p0, Lcom/wssyncmldm/databinding/AdminActionBinding;

    move-object v2, p2

    move-object p2, p0

    move-object p0, v2

    :goto_0
    invoke-virtual {p2, p1}, Lcom/wssyncmldm/databinding/AdminActionBinding;->setActions(Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;)V

    return-object p0
.end method
