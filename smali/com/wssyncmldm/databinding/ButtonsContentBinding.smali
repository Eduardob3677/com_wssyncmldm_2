.class public abstract Lcom/wssyncmldm/databinding/ButtonsContentBinding;
.super Landroidx/databinding/v;
.source "SourceFile"


# instance fields
.field public final btHighEmphasis:Lcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;

.field public final btMediumEmphasis:Lcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;

.field public final buttonsContent:Landroid/widget/LinearLayout;

.field public final layoutMediumEmphasis:Landroid/widget/LinearLayout;

.field protected mButtonContentViewModel:Lcom/idm/fotaagent/enabler/ui/common/viewmodel/ButtonsContentViewModel;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;Lcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/v;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->btHighEmphasis:Lcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;

    iput-object p5, p0, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->btMediumEmphasis:Lcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;

    iput-object p6, p0, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->buttonsContent:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->layoutMediumEmphasis:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/wssyncmldm/databinding/ButtonsContentBinding;
    .locals 1

    sget-object v0, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/wssyncmldm/databinding/ButtonsContentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/wssyncmldm/databinding/ButtonsContentBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d000e

    invoke-static {p1, p0, v0}, Landroidx/databinding/v;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/v;

    move-result-object p0

    check-cast p0, Lcom/wssyncmldm/databinding/ButtonsContentBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/wssyncmldm/databinding/ButtonsContentBinding;
    .locals 1

    sget-object v0, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/wssyncmldm/databinding/ButtonsContentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/wssyncmldm/databinding/ButtonsContentBinding;
    .locals 1

    sget-object v0, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/wssyncmldm/databinding/ButtonsContentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/wssyncmldm/databinding/ButtonsContentBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d000e

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/v;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/v;

    move-result-object p0

    check-cast p0, Lcom/wssyncmldm/databinding/ButtonsContentBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/wssyncmldm/databinding/ButtonsContentBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0d000e

    invoke-static {p0, v2, v0, v1, p1}, Landroidx/databinding/v;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/v;

    move-result-object p0

    check-cast p0, Lcom/wssyncmldm/databinding/ButtonsContentBinding;

    return-object p0
.end method


# virtual methods
.method public getButtonContentViewModel()Lcom/idm/fotaagent/enabler/ui/common/viewmodel/ButtonsContentViewModel;
    .locals 0

    iget-object p0, p0, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->mButtonContentViewModel:Lcom/idm/fotaagent/enabler/ui/common/viewmodel/ButtonsContentViewModel;

    return-object p0
.end method

.method public abstract setButtonContentViewModel(Lcom/idm/fotaagent/enabler/ui/common/viewmodel/ButtonsContentViewModel;)V
.end method
