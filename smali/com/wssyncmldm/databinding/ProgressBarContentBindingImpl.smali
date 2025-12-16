.class public Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;
.super Lcom/wssyncmldm/databinding/ProgressBarContentBinding;
.source "SourceFile"


# static fields
.field private static final sIncludes:Landroidx/databinding/q;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/v;->mapBindings(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/q;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/SeslProgressBar;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;

    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/SeslProgressBar;Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;->progressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;->tvPercent:Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;->tvRemainTime:Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroidx/databinding/v;->setRootTag(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeProgressBarContentViewModelGetFormattedRemainingTime(Landroidx/lifecycle/C;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/C;",
            "I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onChangeProgressBarContentViewModelPercent(Landroidx/lifecycle/C;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/C;",
            "I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public executeBindings()V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;->mProgressBarContentViewModel:Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarContentViewModel;

    const-wide/16 v5, 0xf

    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    const-wide/16 v6, 0xe

    const-wide/16 v8, 0xd

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v5, :cond_6

    and-long v12, v0, v8

    cmp-long v5, v12, v2

    if-eqz v5, :cond_2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarContentViewModel;->getPercent()Landroidx/lifecycle/C;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v11

    :goto_0
    invoke-virtual {p0, v10, v5}, Landroidx/databinding/v;->updateLiveDataRegistration(ILandroidx/lifecycle/C;)Z

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    move-object v5, v11

    :goto_1
    invoke-static {v5}, Landroidx/databinding/v;->safeUnbox(Ljava/lang/Integer;)I

    move-result v10

    if-eqz v4, :cond_2

    invoke-virtual {v4, v10}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarContentViewModel;->getFormattedPercent(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v11

    :goto_2
    and-long v12, v0, v6

    cmp-long v12, v12, v2

    if-eqz v12, :cond_5

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarContentViewModel;->getFormattedRemainingTime()Landroidx/lifecycle/C;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v11

    :goto_3
    const/4 v12, 0x1

    invoke-virtual {p0, v12, v4}, Landroidx/databinding/v;->updateLiveDataRegistration(ILandroidx/lifecycle/C;)Z

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    :cond_4
    iget-object v4, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;->tvRemainTime:Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f130031

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :cond_5
    move-object v4, v11

    move-object v11, v5

    goto :goto_4

    :cond_6
    move-object v4, v11

    :goto_4
    and-long/2addr v8, v0

    cmp-long v5, v8, v2

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;->progressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v5, v10}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    iget-object v5, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;->tvPercent:Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;

    invoke-static {v5, v11}, Li3/x;->c1(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_7
    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;->tvRemainTime:Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;

    invoke-static {p0, v4}, Li3/x;->c1(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x8

    :try_start_0
    iput-wide v0, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/databinding/v;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onFieldChange(ILjava/lang/Object;I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p2, Landroidx/lifecycle/C;

    invoke-direct {p0, p2, p3}, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;->onChangeProgressBarContentViewModelGetFormattedRemainingTime(Landroidx/lifecycle/C;I)Z

    move-result p0

    return p0

    :cond_1
    check-cast p2, Landroidx/lifecycle/C;

    invoke-direct {p0, p2, p3}, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;->onChangeProgressBarContentViewModelPercent(Landroidx/lifecycle/C;I)Z

    move-result p0

    return p0
.end method

.method public setProgressBarContentViewModel(Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarContentViewModel;)V
    .locals 4

    iput-object p1, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBinding;->mProgressBarContentViewModel:Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarContentViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroidx/databinding/a;->notifyPropertyChanged(I)V

    invoke-super {p0}, Landroidx/databinding/v;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarContentViewModel;

    invoke-virtual {p0, p2}, Lcom/wssyncmldm/databinding/ProgressBarContentBindingImpl;->setProgressBarContentViewModel(Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarContentViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
