.class public Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;
.super Lcom/wssyncmldm/databinding/FeatureEntryBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroidx/databinding/q;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mFeatureEntryToggleDescriptionVisibilityAndroidViewViewOnClickListener:Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$OnClickListenerImpl;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView2:Landroidx/appcompat/widget/AppCompatSpinner;

.field private mboundView2androidSelectedItemPositionAttrChanged:Landroidx/databinding/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0111

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/v;->mapBindings(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/q;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/wssyncmldm/databinding/FeatureEntryBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/AppCompatTextView;)V

    new-instance p1, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$1;

    invoke-direct {p1, p0}, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$1;-><init>(Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;)V

    iput-object p1, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mboundView2androidSelectedItemPositionAttrChanged:Landroidx/databinding/h;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mDirtyFlags:J

    iget-object p1, p0, Lcom/wssyncmldm/databinding/FeatureEntryBinding;->description:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    aget-object p1, p3, p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p1, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mboundView2:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/wssyncmldm/databinding/FeatureEntryBinding;->name:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroidx/databinding/v;->setRootTag(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->invalidateAll()V

    return-void
.end method

.method public static synthetic access$000(Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;)Landroidx/appcompat/widget/AppCompatSpinner;
    .locals 0

    iget-object p0, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mboundView2:Landroidx/appcompat/widget/AppCompatSpinner;

    return-object p0
.end method

.method private onChangeFeatureEntryDescriptionVisibility(Landroidx/lifecycle/C;I)Z
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
    iget-wide p1, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mDirtyFlags:J

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

.method private onChangeFeatureEntrySelectedValueIndex(Landroidx/lifecycle/F;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/F;",
            "I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mDirtyFlags:J

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
    .locals 21

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/wssyncmldm/databinding/FeatureEntryBinding;->mFeatureEntry:Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;

    const-wide/16 v6, 0xf

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0xe

    const-wide/16 v9, 0xd

    const-wide/16 v11, 0xc

    const/4 v13, 0x0

    if-eqz v6, :cond_8

    and-long v15, v2, v11

    cmp-long v6, v15, v4

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    iget-object v6, v0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;->name:Ljava/lang/String;

    iget-object v15, v1, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mFeatureEntryToggleDescriptionVisibilityAndroidViewViewOnClickListener:Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$OnClickListenerImpl;

    if-nez v15, :cond_0

    new-instance v15, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$OnClickListenerImpl;

    invoke-direct {v15}, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v15, v1, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mFeatureEntryToggleDescriptionVisibilityAndroidViewViewOnClickListener:Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$OnClickListenerImpl;

    :cond_0
    invoke-virtual {v15, v0}, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$OnClickListenerImpl;->setValue(Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;)Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$OnClickListenerImpl;

    move-result-object v15

    iget-object v14, v0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;->description:Ljava/lang/String;

    iget-object v11, v0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;->candidateValues:Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    and-long v19, v2, v9

    cmp-long v12, v19, v4

    if-eqz v12, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;->getSelectedValueIndex()Landroidx/lifecycle/F;

    move-result-object v12

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v1, v13, v12}, Landroidx/databinding/v;->updateLiveDataRegistration(ILandroidx/lifecycle/C;)Z

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    invoke-static {v12}, Landroidx/databinding/v;->safeUnbox(Ljava/lang/Integer;)I

    move-result v12

    goto :goto_3

    :cond_4
    move v12, v13

    :goto_3
    and-long v19, v2, v7

    cmp-long v19, v19, v4

    if-eqz v19, :cond_7

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;->getDescriptionVisibility()Landroidx/lifecycle/C;

    move-result-object v0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    const/4 v13, 0x1

    invoke-virtual {v1, v13, v0}, Landroidx/databinding/v;->updateLiveDataRegistration(ILandroidx/lifecycle/C;)Z

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Landroidx/databinding/v;->safeUnbox(Ljava/lang/Integer;)I

    move-result v13

    :cond_7
    const-wide/16 v17, 0xc

    goto :goto_6

    :cond_8
    move-wide/from16 v17, v11

    move v12, v13

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_6
    and-long v17, v2, v17

    cmp-long v0, v17, v4

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/wssyncmldm/databinding/FeatureEntryBinding;->description:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v14}, Li3/x;->c1(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/wssyncmldm/databinding/FeatureEntryBinding;->description:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mboundView2:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v0, v11}, LZ0/j;->c0(Landroid/widget/Spinner;Ljava/util/List;)V

    iget-object v0, v1, Lcom/wssyncmldm/databinding/FeatureEntryBinding;->name:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v6}, Li3/x;->c1(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/wssyncmldm/databinding/FeatureEntryBinding;->name:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    and-long v6, v2, v7

    cmp-long v0, v6, v4

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/wssyncmldm/databinding/FeatureEntryBinding;->description:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    and-long v6, v2, v9

    cmp-long v0, v6, v4

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mboundView2:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    if-eq v6, v12, :cond_b

    invoke-virtual {v0, v12}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_b
    const-wide/16 v6, 0x8

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mboundView2:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, v1, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mboundView2androidSelectedItemPositionAttrChanged:Landroidx/databinding/h;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lf1/a;->k0(Landroid/widget/Spinner;LT/a;Landroidx/databinding/h;)V

    :cond_c
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
    iget-wide v0, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mDirtyFlags:J

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
    iput-wide v0, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mDirtyFlags:J

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

    invoke-direct {p0, p2, p3}, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->onChangeFeatureEntryDescriptionVisibility(Landroidx/lifecycle/C;I)Z

    move-result p0

    return p0

    :cond_1
    check-cast p2, Landroidx/lifecycle/F;

    invoke-direct {p0, p2, p3}, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->onChangeFeatureEntrySelectedValueIndex(Landroidx/lifecycle/F;I)Z

    move-result p0

    return p0
.end method

.method public setFeatureEntry(Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;)V
    .locals 4

    iput-object p1, p0, Lcom/wssyncmldm/databinding/FeatureEntryBinding;->mFeatureEntry:Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x4

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

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;

    invoke-virtual {p0, p2}, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->setFeatureEntry(Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
