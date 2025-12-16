.class Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inflater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;
    }
.end annotation


# static fields
.field private static final INVALID_RESOURCE_ID:I


# instance fields
.field private final activity:Le/n;

.field private final rootView:Landroid/view/View;

.field private titleId:I


# direct methods
.method public constructor <init>(Le/n;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->activity:Le/n;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d000b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->rootView:Landroid/view/View;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->values()[Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->setContentLayoutId(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->titleId:I

    return-void
.end method

.method public static synthetic access$000(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->rootView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public inflate()Landroid/view/View;
    .locals 6

    iget v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->titleId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->activity:Le/n;

    invoke-virtual {v0}, Le/n;->getSupportActionBar()Le/a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->titleId:I

    invoke-virtual {v0, v1}, Le/a;->o(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Le/a;->m(Z)V

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->values()[Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->getContentLayoutId()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->getViewId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->activity:Le/n;

    invoke-virtual {v3, v5, v4}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->inflateAndTryBinding(Le/n;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public varargs injectToSubContainer([Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;)V
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->rootView:Landroid/view/View;

    const v0, 0x7f0a025f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector;->inject(Landroid/view/ViewGroup;[Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;)V

    return-void
.end method

.method public withActionBar(I)Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->titleId:I

    return-object p0
.end method

.method public withButtons(I)Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->rootView:Landroid/view/View;

    const v1, 0x7f0a0078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->BUTTONS:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->setContentLayoutId(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->setBindingModel(Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;)V

    return-object p0
.end method

.method public withButtons(Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;)Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->rootView:Landroid/view/View;

    const v1, 0x7f0a0078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->BUTTONS:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->setBindingModel(Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;)V

    invoke-interface {p1}, Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;->getLayoutId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->setContentLayoutId(I)V

    return-object p0
.end method

.method public withMainContent(I)Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->MAIN:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->setContentLayoutId(I)V

    return-object p0
.end method

.method public withProgressContent(I)Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->PROGRESS:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->setContentLayoutId(I)V

    return-object p0
.end method

.method public withProgressViewModel(Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;)Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->PROGRESS:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->setBindingModel(Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;)V

    invoke-interface {p1}, Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;->getLayoutId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->setContentLayoutId(I)V

    return-object p0
.end method
