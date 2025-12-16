.class public Lcom/wssyncmldm/databinding/AdminActionBindingImpl;
.super Lcom/wssyncmldm/databinding/AdminActionBinding;
.source "SourceFile"

# interfaces
.implements Lcom/wssyncmldm/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/q;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback3:Landroid/view/View$OnClickListener;

.field private final mCallback4:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroidx/appcompat/widget/AppCompatButton;

.field private final mboundView2:Landroidx/appcompat/widget/AppCompatButton;


# direct methods
.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/v;->mapBindings(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/q;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wssyncmldm/databinding/AdminActionBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mDirtyFlags:J

    aget-object p1, p3, v0

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    aget-object v1, p3, p1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v1, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mboundView1:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object p3, p3, v1

    check-cast p3, Landroidx/appcompat/widget/AppCompatButton;

    iput-object p3, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mboundView2:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroidx/databinding/v;->setRootTag(Landroid/view/View;)V

    new-instance p2, Lcom/wssyncmldm/generated/callback/OnClickListener;

    invoke-direct {p2, p0, p1}, Lcom/wssyncmldm/generated/callback/OnClickListener;-><init>(Lcom/wssyncmldm/generated/callback/OnClickListener$Listener;I)V

    iput-object p2, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mCallback3:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/wssyncmldm/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Lcom/wssyncmldm/generated/callback/OnClickListener;-><init>(Lcom/wssyncmldm/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mCallback4:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/wssyncmldm/databinding/AdminActionBinding;->mActions:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;->rightAction:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->doAction()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/wssyncmldm/databinding/AdminActionBinding;->mActions:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;->leftAction:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->doAction()V

    :cond_2
    :goto_0
    return-void
.end method

.method public executeBindings()V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/wssyncmldm/databinding/AdminActionBinding;->mActions:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;

    const-wide/16 v5, 0x3

    and-long v7, v0, v5

    cmp-long v7, v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v7, :cond_5

    if-eqz v4, :cond_0

    iget-object v8, v4, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;->rightButtonName:Ljava/lang/String;

    iget-object v4, v4, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;->leftButtonName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v8

    :goto_0
    if-nez v8, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    move v10, v9

    :goto_1
    if-eqz v7, :cond_3

    if-eqz v10, :cond_2

    const-wide/16 v11, 0x8

    :goto_2
    or-long/2addr v0, v11

    goto :goto_3

    :cond_2
    const-wide/16 v11, 0x4

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v10, :cond_4

    const/16 v9, 0x8

    :cond_4
    move-object v13, v8

    move-object v8, v4

    move-object v4, v13

    goto :goto_4

    :cond_5
    move-object v4, v8

    :goto_4
    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mboundView1:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v5, v8}, Li3/x;->c1(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mboundView2:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v5, v4}, Li3/x;->c1(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mboundView2:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mboundView1:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mCallback3:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mboundView2:Landroidx/appcompat/widget/AppCompatButton;

    iget-object p0, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mCallback4:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
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
    iget-wide v0, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mDirtyFlags:J

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
    iput-wide v0, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mDirtyFlags:J

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

.method public setActions(Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;)V
    .locals 4

    iput-object p1, p0, Lcom/wssyncmldm/databinding/AdminActionBinding;->mActions:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

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

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;

    invoke-virtual {p0, p2}, Lcom/wssyncmldm/databinding/AdminActionBindingImpl;->setActions(Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
