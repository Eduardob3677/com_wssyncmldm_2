.class public enum Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Container"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

.field public static final enum BUTTONS:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

.field public static final enum MAIN:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

.field public static final enum PROGRESS:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;


# instance fields
.field protected bindingModel:Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;

.field protected contentLayoutId:I

.field private final viewId:I


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->MAIN:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->PROGRESS:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->BUTTONS:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    filled-new-array {v0, v1, v2}, [Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    const/4 v1, 0x0

    const v2, 0x7f0a0131

    const-string v3, "MAIN"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->MAIN:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container$1;

    const/4 v1, 0x1

    const v2, 0x7f0a01b6

    const-string v3, "PROGRESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->PROGRESS:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    const/4 v1, 0x2

    const v2, 0x7f0a0078

    const-string v3, "BUTTONS"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->BUTTONS:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->$values()[Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->viewId:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILcom/idm/fotaagent/enabler/ui/common/BaseActivity$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;Le/n;Landroidx/databinding/v;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->lambda$tryDataBinding$0(Le/n;Landroidx/databinding/v;)V

    return-void
.end method

.method private synthetic lambda$tryDataBinding$0(Le/n;Landroidx/databinding/v;)V
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->getBindingModel()Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;->getVariableId()I

    move-result v0

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;->getViewModel()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroidx/databinding/v;->setVariable(ILjava/lang/Object;)Z

    invoke-virtual {p2, p1}, Landroidx/databinding/v;->setLifecycleOwner(Landroidx/lifecycle/w;)V

    :cond_0
    return-void
.end method

.method private tryDataBinding(Le/n;Ljava/util/Optional;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/n;",
            "Ljava/util/Optional<",
            "+",
            "Landroidx/databinding/v;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/common/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Lcom/idm/fotaagent/enabler/ui/common/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->$VALUES:[Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;

    return-object v0
.end method


# virtual methods
.method public getBindingModel()Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->bindingModel:Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;

    return-object p0
.end method

.method public getContentLayoutId()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->contentLayoutId:I

    return p0
.end method

.method public getViewId()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->viewId:I

    return p0
.end method

.method public inflate(Le/n;Landroid/view/View;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/n;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Optional<",
            "Landroidx/databinding/v;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->inflateLinearLayout(Le/n;Landroid/view/View;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public inflateAndTryBinding(Le/n;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->inflate(Le/n;Landroid/view/View;)Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->tryDataBinding(Le/n;Ljava/util/Optional;)V

    return-void
.end method

.method public inflateLinearLayout(Le/n;Landroid/view/View;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/n;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Optional<",
            "Landroidx/databinding/v;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->getBindingModel()Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;

    move-result-object v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->contentLayoutId:I

    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p1, p0, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->contentLayoutId:I

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, p0, p2, v0}, Landroidx/databinding/g;->c(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/v;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public inflateViewStub(Landroid/view/View;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Optional<",
            "Landroidx/databinding/v;",
            ">;"
        }
    .end annotation

    check-cast p1, Landroid/view/ViewStub;

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->contentLayoutId:I

    invoke-virtual {p1, p0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Landroidx/databinding/g;->a(Landroid/view/View;)Landroidx/databinding/v;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "This is not a DataBinding layout"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public setBindingModel(Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->bindingModel:Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;

    return-void
.end method

.method public setContentLayoutId(I)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->contentLayoutId:I

    return-void
.end method
