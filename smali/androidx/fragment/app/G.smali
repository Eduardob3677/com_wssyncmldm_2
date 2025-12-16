.class public abstract Landroidx/fragment/app/G;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"

# interfaces
.implements Ly/d;


# static fields
.field static final LIFECYCLE_TAG:Ljava/lang/String; = "android:support:lifecycle"


# instance fields
.field mCreated:Z

.field final mFragmentLifecycleRegistry:Landroidx/lifecycle/y;

.field final mFragments:Landroidx/fragment/app/K;

.field mResumed:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    new-instance v0, Landroidx/fragment/app/F;

    invoke-direct {v0, p0}, Landroidx/fragment/app/F;-><init>(Landroidx/fragment/app/G;)V

    new-instance v1, Landroidx/fragment/app/K;

    invoke-direct {v1, v0}, Landroidx/fragment/app/K;-><init>(Landroidx/fragment/app/F;)V

    iput-object v1, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    new-instance v0, Landroidx/lifecycle/y;

    invoke-direct {v0, p0}, Landroidx/lifecycle/y;-><init>(Landroidx/lifecycle/w;)V

    iput-object v0, p0, Landroidx/fragment/app/G;->mFragmentLifecycleRegistry:Landroidx/lifecycle/y;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/G;->mStopped:Z

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Lx0/d;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/C;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroidx/fragment/app/C;-><init>(ILjava/lang/Object;)V

    const-string v2, "android:support:lifecycle"

    invoke-virtual {v0, v2, v1}, Lx0/d;->c(Ljava/lang/String;Lx0/c;)V

    new-instance v0, Landroidx/fragment/app/D;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/D;-><init>(Landroidx/fragment/app/G;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnConfigurationChangedListener(LI/a;)V

    new-instance v0, Landroidx/fragment/app/D;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/D;-><init>(Landroidx/fragment/app/G;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnNewIntentListener(LI/a;)V

    new-instance v0, Landroidx/fragment/app/E;

    invoke-direct {v0, p0}, Landroidx/fragment/app/E;-><init>(Landroidx/fragment/app/G;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(La/b;)V

    return-void
.end method

.method public static i(Landroidx/fragment/app/Z;)Z
    .locals 5

    iget-object p0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v2

    invoke-static {v2}, Landroidx/fragment/app/G;->i(Landroidx/fragment/app/Z;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_2
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/s0;

    sget-object v3, Landroidx/lifecycle/q;->f:Landroidx/lifecycle/q;

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/fragment/app/s0;->b()V

    iget-object v2, v2, Landroidx/fragment/app/s0;->f:Landroidx/lifecycle/y;

    iget-object v2, v2, Landroidx/lifecycle/y;->c:Landroidx/lifecycle/q;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/s0;

    iget-object v0, v0, Landroidx/fragment/app/s0;->f:Landroidx/lifecycle/y;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->g()V

    move v0, v4

    :cond_3
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/y;

    iget-object v2, v2, Landroidx/lifecycle/y;->c:Landroidx/lifecycle/q;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/y;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->g()V

    move v0, v4

    goto :goto_0

    :cond_4
    return v0
.end method


# virtual methods
.method public final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    iget-object p0, p0, Landroidx/fragment/app/K;->a:Landroidx/fragment/app/L;

    iget-object p0, p0, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/a0;

    iget-object p0, p0, Landroidx/fragment/app/Z;->f:Landroidx/fragment/app/N;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/N;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ly/h;->shouldDumpInternalState([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/G;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/G;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/G;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lc0/a;->a(Landroidx/lifecycle/w;)Lc0/c;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lc0/c;->b(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    iget-object p0, p0, Landroidx/fragment/app/K;->a:Landroidx/fragment/app/L;

    iget-object p0, p0, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/a0;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/Z;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/Z;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    iget-object p0, p0, Landroidx/fragment/app/K;->a:Landroidx/fragment/app/L;

    iget-object p0, p0, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/a0;

    return-object p0
.end method

.method public getSupportLoaderManager()Lc0/a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lc0/a;->a(Landroidx/lifecycle/w;)Lc0/c;

    move-result-object p0

    return-object p0
.end method

.method public markFragmentsCreated()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/G;->getSupportFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    invoke-static {v0}, Landroidx/fragment/app/G;->i(Landroidx/fragment/app/Z;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    invoke-virtual {v0}, Landroidx/fragment/app/K;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/G;->getSupportFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, LR2/m;->P0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mDisposableHandle:Lt4/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lt4/a;->a()V

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/G;->mFragmentLifecycleRegistry:Landroidx/lifecycle/y;

    sget-object v0, Landroidx/lifecycle/p;->ON_CREATE:Landroidx/lifecycle/p;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/p;)V

    iget-object p0, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    iget-object p0, p0, Landroidx/fragment/app/K;->a:Landroidx/fragment/app/L;

    iget-object p0, p0, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/a0;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/Z;->E:Z

    iput-boolean p1, p0, Landroidx/fragment/app/Z;->F:Z

    iget-object v0, p0, Landroidx/fragment/app/Z;->L:Landroidx/fragment/app/c0;

    iput-boolean p1, v0, Landroidx/fragment/app/c0;->f:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Z;->t(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/G;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/G;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    iget-object v0, v0, Landroidx/fragment/app/K;->a:Landroidx/fragment/app/L;

    iget-object v0, v0, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/a0;

    invoke-virtual {v0}, Landroidx/fragment/app/Z;->k()V

    iget-object p0, p0, Landroidx/fragment/app/G;->mFragmentLifecycleRegistry:Landroidx/lifecycle/y;

    sget-object v0, Landroidx/lifecycle/p;->ON_DESTROY:Landroidx/lifecycle/p;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/p;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    iget-object p0, p0, Landroidx/fragment/app/K;->a:Landroidx/fragment/app/L;

    iget-object p0, p0, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/a0;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Z;->i(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/G;->mResumed:Z

    iget-object v0, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    iget-object v0, v0, Landroidx/fragment/app/K;->a:Landroidx/fragment/app/L;

    iget-object v0, v0, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/a0;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Z;->t(I)V

    iget-object p0, p0, Landroidx/fragment/app/G;->mFragmentLifecycleRegistry:Landroidx/lifecycle/y;

    sget-object v0, Landroidx/lifecycle/p;->ON_PAUSE:Landroidx/lifecycle/p;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/p;)V

    return-void
.end method

.method public onPostResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/G;->onResumeFragments()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    invoke-virtual {v0}, Landroidx/fragment/app/K;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/G;->mResumed:Z

    iget-object v1, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    invoke-virtual {v1}, Landroidx/fragment/app/K;->a()V

    iget-object p0, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    iget-object p0, p0, Landroidx/fragment/app/K;->a:Landroidx/fragment/app/L;

    iget-object p0, p0, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/a0;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Z;->x(Z)Z

    return-void
.end method

.method public onResumeFragments()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/G;->mFragmentLifecycleRegistry:Landroidx/lifecycle/y;

    sget-object v1, Landroidx/lifecycle/p;->ON_RESUME:Landroidx/lifecycle/p;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/p;)V

    iget-object p0, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    iget-object p0, p0, Landroidx/fragment/app/K;->a:Landroidx/fragment/app/L;

    iget-object p0, p0, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/a0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Z;->E:Z

    iput-boolean v0, p0, Landroidx/fragment/app/Z;->F:Z

    iget-object v1, p0, Landroidx/fragment/app/Z;->L:Landroidx/fragment/app/c0;

    iput-boolean v0, v1, Landroidx/fragment/app/c0;->f:Z

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Z;->t(I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/G;->mStopped:Z

    iget-boolean v1, p0, Landroidx/fragment/app/G;->mCreated:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Landroidx/fragment/app/G;->mCreated:Z

    iget-object v1, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    iget-object v1, v1, Landroidx/fragment/app/K;->a:Landroidx/fragment/app/L;

    iget-object v1, v1, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/a0;

    iput-boolean v0, v1, Landroidx/fragment/app/Z;->E:Z

    iput-boolean v0, v1, Landroidx/fragment/app/Z;->F:Z

    iget-object v3, v1, Landroidx/fragment/app/Z;->L:Landroidx/fragment/app/c0;

    iput-boolean v0, v3, Landroidx/fragment/app/c0;->f:Z

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Z;->t(I)V

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    invoke-virtual {v1}, Landroidx/fragment/app/K;->a()V

    iget-object v1, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    iget-object v1, v1, Landroidx/fragment/app/K;->a:Landroidx/fragment/app/L;

    iget-object v1, v1, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/a0;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Z;->x(Z)Z

    iget-object v1, p0, Landroidx/fragment/app/G;->mFragmentLifecycleRegistry:Landroidx/lifecycle/y;

    sget-object v2, Landroidx/lifecycle/p;->ON_START:Landroidx/lifecycle/p;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/p;)V

    iget-object p0, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    iget-object p0, p0, Landroidx/fragment/app/K;->a:Landroidx/fragment/app/L;

    iget-object p0, p0, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/a0;

    iput-boolean v0, p0, Landroidx/fragment/app/Z;->E:Z

    iput-boolean v0, p0, Landroidx/fragment/app/Z;->F:Z

    iget-object v1, p0, Landroidx/fragment/app/Z;->L:Landroidx/fragment/app/c0;

    iput-boolean v0, v1, Landroidx/fragment/app/c0;->f:Z

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Z;->t(I)V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->a()V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/G;->mStopped:Z

    invoke-virtual {p0}, Landroidx/fragment/app/G;->markFragmentsCreated()V

    iget-object v1, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    iget-object v1, v1, Landroidx/fragment/app/K;->a:Landroidx/fragment/app/L;

    iget-object v1, v1, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/a0;

    iput-boolean v0, v1, Landroidx/fragment/app/Z;->F:Z

    iget-object v2, v1, Landroidx/fragment/app/Z;->L:Landroidx/fragment/app/c0;

    iput-boolean v0, v2, Landroidx/fragment/app/c0;->f:Z

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Z;->t(I)V

    iget-object p0, p0, Landroidx/fragment/app/G;->mFragmentLifecycleRegistry:Landroidx/lifecycle/y;

    sget-object v0, Landroidx/lifecycle/p;->ON_STOP:Landroidx/lifecycle/p;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/p;)V

    return-void
.end method

.method public setEnterSharedElementCallback(Ly/B;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ly/a;->c(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(Ly/B;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ly/a;->d(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/G;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p2, v0, p4}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    move v3, p3

    if-ne v3, v0, :cond_0

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p8}, Landroidx/fragment/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    invoke-static {p0}, Ly/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->invalidateMenu()V

    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    invoke-static {p0}, Ly/a;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    invoke-static {p0}, Ly/a;->e(Landroid/app/Activity;)V

    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
