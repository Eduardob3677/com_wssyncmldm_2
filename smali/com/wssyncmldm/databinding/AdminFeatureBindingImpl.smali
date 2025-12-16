.class public Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;
.super Lcom/wssyncmldm/databinding/AdminFeatureBinding;
.source "SourceFile"

# interfaces
.implements Lcom/wssyncmldm/generated/callback/OnItemSelected$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/q;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback1:LT/a;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroidx/appcompat/widget/AppCompatTextView;

.field private final mboundView2:Landroidx/appcompat/widget/AppCompatSpinner;

.field private mboundView2androidSelectedItemPositionAttrChanged:Landroidx/databinding/h;


# direct methods
.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/v;->mapBindings(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/q;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wssyncmldm/databinding/AdminFeatureBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    new-instance p1, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl$1;

    invoke-direct {p1, p0}, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl$1;-><init>(Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;)V

    iput-object p1, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mboundView2androidSelectedItemPositionAttrChanged:Landroidx/databinding/h;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mDirtyFlags:J

    aget-object p1, p3, v0

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    aget-object v1, p3, p1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v1, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mboundView1:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object p3, p3, v1

    check-cast p3, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p3, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mboundView2:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroidx/databinding/v;->setRootTag(Landroid/view/View;)V

    new-instance p2, Lcom/wssyncmldm/generated/callback/OnItemSelected;

    invoke-direct {p2, p0, p1}, Lcom/wssyncmldm/generated/callback/OnItemSelected;-><init>(Lcom/wssyncmldm/generated/callback/OnItemSelected$Listener;I)V

    iput-object p2, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mCallback1:LT/a;

    invoke-virtual {p0}, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->invalidateAll()V

    return-void
.end method

.method public static synthetic access$000(Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;)Landroidx/appcompat/widget/AppCompatSpinner;
    .locals 0

    iget-object p0, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mboundView2:Landroidx/appcompat/widget/AppCompatSpinner;

    return-object p0
.end method


# virtual methods
.method public final _internalCallbackOnItemSelected(ILandroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lcom/wssyncmldm/databinding/AdminFeatureBinding;->mFeature:Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p4}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->onItemSelected(I)V

    :cond_0
    return-void
.end method

.method public executeBindings()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/wssyncmldm/databinding/AdminFeatureBinding;->mFeature:Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;

    const-wide/16 v5, 0x3

    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->getName()Ljava/lang/String;

    move-result-object v6

    iget v7, v4, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->selectedPosition:I

    iget-object v4, v4, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->candidates:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v6

    :goto_0
    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mboundView1:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v5, v6}, Li3/x;->c1(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mboundView2:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v5, v4}, LZ0/j;->c0(Landroid/widget/Spinner;Ljava/util/List;)V

    iget-object v4, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mboundView2:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v5

    if-eq v5, v7, :cond_1

    invoke-virtual {v4, v7}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_1
    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mboundView2:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mCallback1:LT/a;

    iget-object p0, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mboundView2androidSelectedItemPositionAttrChanged:Landroidx/databinding/h;

    invoke-static {v0, v1, p0}, Lf1/a;->k0(Landroid/widget/Spinner;LT/a;Landroidx/databinding/h;)V

    :cond_2
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
    iget-wide v0, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mDirtyFlags:J

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
    iput-wide v0, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mDirtyFlags:J

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

.method public setFeature(Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;)V
    .locals 4

    iput-object p1, p0, Lcom/wssyncmldm/databinding/AdminFeatureBinding;->mFeature:Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

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

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;

    invoke-virtual {p0, p2}, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->setFeature(Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
