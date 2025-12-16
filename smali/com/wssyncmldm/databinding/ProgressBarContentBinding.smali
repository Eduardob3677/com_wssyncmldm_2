.class public abstract Lcom/wssyncmldm/databinding/ProgressBarContentBinding;
.super Landroidx/databinding/v;
.source "SourceFile"


# instance fields
.field protected mProgressBarContentViewModel:Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarContentViewModel;

.field public final progressBar:Landroidx/appcompat/widget/SeslProgressBar;

.field public final tvPercent:Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;

.field public final tvRemainTime:Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/SeslProgressBar;Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/v;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;->progressBar:Landroidx/appcompat/widget/SeslProgressBar;

    iput-object p5, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;->tvPercent:Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;

    iput-object p6, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;->tvRemainTime:Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/wssyncmldm/databinding/ProgressBarContentBinding;
    .locals 1

    sget-object v0, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/wssyncmldm/databinding/ProgressBarContentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/wssyncmldm/databinding/ProgressBarContentBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d006e

    invoke-static {p1, p0, v0}, Landroidx/databinding/v;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/v;

    move-result-object p0

    check-cast p0, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/wssyncmldm/databinding/ProgressBarContentBinding;
    .locals 1

    sget-object v0, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/wssyncmldm/databinding/ProgressBarContentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/wssyncmldm/databinding/ProgressBarContentBinding;
    .locals 1

    sget-object v0, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/wssyncmldm/databinding/ProgressBarContentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/wssyncmldm/databinding/ProgressBarContentBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d006e

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/v;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/v;

    move-result-object p0

    check-cast p0, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/wssyncmldm/databinding/ProgressBarContentBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0d006e

    invoke-static {p0, v2, v0, v1, p1}, Landroidx/databinding/v;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/v;

    move-result-object p0

    check-cast p0, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;

    return-object p0
.end method


# virtual methods
.method public getProgressBarContentViewModel()Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarContentViewModel;
    .locals 0

    iget-object p0, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;->mProgressBarContentViewModel:Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarContentViewModel;

    return-object p0
.end method

.method public abstract setProgressBarContentViewModel(Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarContentViewModel;)V
.end method
