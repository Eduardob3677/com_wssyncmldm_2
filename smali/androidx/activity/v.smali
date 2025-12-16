.class public final Landroidx/activity/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:LR2/h;

.field public c:Landroidx/fragment/app/Q;

.field public final d:Landroid/window/OnBackInvokedCallback;

.field public e:Landroid/window/OnBackInvokedDispatcher;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/v;->a:Ljava/lang/Runnable;

    new-instance p1, LR2/h;

    invoke-direct {p1}, LR2/e;-><init>()V

    sget-object v0, LR2/h;->f:[Ljava/lang/Object;

    iput-object v0, p1, LR2/h;->d:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/activity/v;->b:LR2/h;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p1, v0, :cond_0

    sget-object p1, Landroidx/activity/s;->a:Landroidx/activity/s;

    new-instance v0, Landroidx/activity/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/activity/n;-><init>(Landroidx/activity/v;I)V

    new-instance v1, Landroidx/activity/n;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/activity/n;-><init>(Landroidx/activity/v;I)V

    new-instance v2, Landroidx/activity/o;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/activity/o;-><init>(Landroidx/activity/v;I)V

    new-instance v3, Landroidx/activity/o;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Landroidx/activity/o;-><init>(Landroidx/activity/v;I)V

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/activity/s;->a(Lc3/b;Lc3/b;Lc3/a;Lc3/a;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/activity/q;->a:Landroidx/activity/q;

    new-instance v0, Landroidx/activity/o;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/activity/o;-><init>(Landroidx/activity/v;I)V

    invoke-virtual {p1, v0}, Landroidx/activity/q;->a(Lc3/a;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/activity/v;->d:Landroid/window/OnBackInvokedCallback;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/w;Landroidx/fragment/app/Q;)V
    .locals 9

    const-string v0, "onBackPressedCallback"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Landroidx/lifecycle/w;->getLifecycle()Landroidx/lifecycle/r;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/y;

    iget-object v0, v0, Landroidx/lifecycle/y;->c:Landroidx/lifecycle/q;

    sget-object v1, Landroidx/lifecycle/q;->c:Landroidx/lifecycle/q;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/v;Landroidx/lifecycle/r;Landroidx/fragment/app/Q;)V

    iget-object p1, p2, Landroidx/fragment/app/Q;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/activity/v;->d()V

    new-instance p1, Landroidx/activity/u;

    const-class v4, Landroidx/activity/v;

    const-string v5, "updateEnabledCallbacks"

    const/4 v2, 0x0

    const-string v6, "updateEnabledCallbacks()V"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v8}, Landroidx/activity/u;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object p1, p2, Landroidx/fragment/app/Q;->c:Lc3/a;

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Landroidx/activity/v;->b:LR2/h;

    invoke-virtual {v0}, LR2/h;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/fragment/app/Q;

    iget-boolean v3, v3, Landroidx/fragment/app/Q;->a:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Landroidx/fragment/app/Q;

    iput-object v2, p0, Landroidx/activity/v;->c:Landroidx/fragment/app/Q;

    if-eqz v1, :cond_3

    const/4 p0, 0x1

    iget-object v0, v1, Landroidx/fragment/app/Q;->d:Landroidx/fragment/app/Z;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Z;->x(Z)Z

    iget-object p0, v0, Landroidx/fragment/app/Z;->h:Landroidx/fragment/app/Q;

    iget-boolean p0, p0, Landroidx/fragment/app/Q;->a:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Z;->L()Z

    goto :goto_1

    :cond_2
    iget-object p0, v0, Landroidx/fragment/app/Z;->g:Landroidx/activity/v;

    invoke-virtual {p0}, Landroidx/activity/v;->b()V

    :goto_1
    return-void

    :cond_3
    iget-object p0, p0, Landroidx/activity/v;->a:Ljava/lang/Runnable;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method public final c(Z)V
    .locals 5

    iget-object v0, p0, Landroidx/activity/v;->e:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/activity/v;->d:Landroid/window/OnBackInvokedCallback;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    sget-object v3, Landroidx/activity/q;->a:Landroidx/activity/q;

    if-eqz p1, :cond_0

    iget-boolean v4, p0, Landroidx/activity/v;->f:Z

    if-nez v4, :cond_0

    invoke-virtual {v3, v0, v2, v1}, Landroidx/activity/q;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/activity/v;->f:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/activity/v;->f:Z

    if-eqz p1, :cond_1

    invoke-virtual {v3, v0, v1}, Landroidx/activity/q;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/activity/v;->f:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 4

    iget-boolean v0, p0, Landroidx/activity/v;->g:Z

    iget-object v1, p0, Landroidx/activity/v;->b:LR2/h;

    instance-of v2, v1, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, LR2/h;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Q;

    iget-boolean v2, v2, Landroidx/fragment/app/Q;->a:Z

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :cond_2
    :goto_0
    iput-boolean v3, p0, Landroidx/activity/v;->g:Z

    if-eq v3, v0, :cond_3

    invoke-virtual {p0, v3}, Landroidx/activity/v;->c(Z)V

    :cond_3
    return-void
.end method
