.class public Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionActivity;
.super Le/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionActivity$FeatureAttributeAdapter;
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
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/G;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel;

    invoke-direct {p1}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel;-><init>()V

    const-class v0, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;

    const-class v1, Lcom/samsung/android/fotaagent/common/feature/FloatingFeature;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel;->loadFeatureEntriesFrom([Ljava/lang/Class;)V

    const v0, 0x7f0d0022

    invoke-static {p0, v0}, Landroidx/databinding/g;->d(Landroid/app/Activity;I)Landroidx/databinding/v;

    move-result-object v0

    check-cast v0, Lcom/wssyncmldm/databinding/FeatureListBinding;

    iget-object v1, v0, Lcom/wssyncmldm/databinding/FeatureListBinding;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionActivity$FeatureAttributeAdapter;

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel;->getFeatureEntries()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionActivity$FeatureAttributeAdapter;-><init>(Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionActivity;Ljava/util/List;Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, p0}, Landroidx/databinding/v;->setLifecycleOwner(Landroidx/lifecycle/w;)V

    return-void
.end method
