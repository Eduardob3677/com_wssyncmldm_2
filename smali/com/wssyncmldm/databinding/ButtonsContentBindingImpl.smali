.class public Lcom/wssyncmldm/databinding/ButtonsContentBindingImpl;
.super Lcom/wssyncmldm/databinding/ButtonsContentBinding;
.source "SourceFile"


# static fields
.field private static final sIncludes:Landroidx/databinding/q;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J


# direct methods
.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/wssyncmldm/databinding/ButtonsContentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/v;->mapBindings(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/q;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/wssyncmldm/databinding/ButtonsContentBindingImpl;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;

    const/4 v0, 0x0

    aget-object p3, p3, v0

    move-object v7, p3

    check-cast v7, Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/wssyncmldm/databinding/ButtonsContentBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;Lcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wssyncmldm/databinding/ButtonsContentBindingImpl;->mDirtyFlags:J

    iget-object p1, p0, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->btHighEmphasis:Lcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->btMediumEmphasis:Lcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->buttonsContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroidx/databinding/v;->setRootTag(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/wssyncmldm/databinding/ButtonsContentBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/wssyncmldm/databinding/ButtonsContentBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/wssyncmldm/databinding/ButtonsContentBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->mButtonContentViewModel:Lcom/idm/fotaagent/enabler/ui/common/viewmodel/ButtonsContentViewModel;

    const-wide/16 v6, 0x3

    and-long v8, v2, v6

    cmp-long v8, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v8, :cond_9

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/idm/fotaagent/enabler/ui/common/viewmodel/ButtonsContentViewModel;->mediumEmphasisButtonOnClickListener()Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;

    move-result-object v9

    invoke-interface {v0}, Lcom/idm/fotaagent/enabler/ui/common/viewmodel/ButtonsContentViewModel;->getMediumEmphasisButtonTitle()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0}, Lcom/idm/fotaagent/enabler/ui/common/viewmodel/ButtonsContentViewModel;->getHighEmphasisButtonTitle()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0}, Lcom/idm/fotaagent/enabler/ui/common/viewmodel/ButtonsContentViewModel;->highEmphasisButtonOnClickListener()Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;

    move-result-object v0

    move-object/from16 v17, v11

    move-object v11, v0

    move-object v0, v9

    move-object/from16 v9, v17

    goto :goto_0

    :cond_0
    move-object v0, v9

    move-object v11, v0

    move-object v12, v11

    :goto_0
    const/4 v13, 0x1

    if-nez v9, :cond_1

    move v14, v13

    goto :goto_1

    :cond_1
    move v14, v10

    :goto_1
    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    move v13, v10

    :goto_2
    if-eqz v8, :cond_4

    if-eqz v14, :cond_3

    const-wide/16 v15, 0x20

    :goto_3
    or-long/2addr v2, v15

    goto :goto_4

    :cond_3
    const-wide/16 v15, 0x10

    goto :goto_3

    :cond_4
    :goto_4
    and-long v15, v2, v6

    cmp-long v8, v15, v4

    if-eqz v8, :cond_6

    if-eqz v13, :cond_5

    const-wide/16 v15, 0x8

    :goto_5
    or-long/2addr v2, v15

    goto :goto_6

    :cond_5
    const-wide/16 v15, 0x4

    goto :goto_5

    :cond_6
    :goto_6
    const/16 v8, 0x8

    if-eqz v14, :cond_7

    move v14, v8

    goto :goto_7

    :cond_7
    move v14, v10

    :goto_7
    if-eqz v13, :cond_8

    move v10, v8

    :cond_8
    move-object v8, v9

    move-object v9, v11

    goto :goto_8

    :cond_9
    move-object v0, v9

    move-object v8, v0

    move-object v12, v8

    move v14, v10

    :goto_8
    and-long/2addr v2, v6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->btHighEmphasis:Lcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->btHighEmphasis:Lcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;

    invoke-static {v2, v12}, Li3/x;->c1(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->btHighEmphasis:Lcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->btMediumEmphasis:Lcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->btMediumEmphasis:Lcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;

    invoke-static {v0, v8}, Li3/x;->c1(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->btMediumEmphasis:Lcom/samsung/android/fotaagent/common/view/ButtonWithLimitedFontSizeAndWidth;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_a
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
    iget-wide v0, p0, Lcom/wssyncmldm/databinding/ButtonsContentBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x2

    :try_start_0
    iput-wide v0, p0, Lcom/wssyncmldm/databinding/ButtonsContentBindingImpl;->mDirtyFlags:J

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
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setButtonContentViewModel(Lcom/idm/fotaagent/enabler/ui/common/viewmodel/ButtonsContentViewModel;)V
    .locals 4

    iput-object p1, p0, Lcom/wssyncmldm/databinding/ButtonsContentBinding;->mButtonContentViewModel:Lcom/idm/fotaagent/enabler/ui/common/viewmodel/ButtonsContentViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/wssyncmldm/databinding/ButtonsContentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/wssyncmldm/databinding/ButtonsContentBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

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

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/idm/fotaagent/enabler/ui/common/viewmodel/ButtonsContentViewModel;

    invoke-virtual {p0, p2}, Lcom/wssyncmldm/databinding/ButtonsContentBindingImpl;->setButtonContentViewModel(Lcom/idm/fotaagent/enabler/ui/common/viewmodel/ButtonsContentViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
