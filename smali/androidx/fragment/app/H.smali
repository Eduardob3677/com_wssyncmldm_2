.class public final Landroidx/fragment/app/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Cloneable;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    iput-object p1, p0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    iput-object p1, p0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Z;

    iget-object v0, v0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/H;->a(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Z;

    iget-object v1, v0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    iget-object v1, v1, Landroidx/fragment/app/L;->d:Landroid/content/Context;

    iget-object v0, v0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/H;->b(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    return-void
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Z;

    iget-object v0, v0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/H;->c(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    return-void
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Z;

    iget-object v0, v0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/H;->d(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    return-void
.end method

.method public e(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Z;

    iget-object v0, v0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/H;->e(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    return-void
.end method

.method public f(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Z;

    iget-object v0, v0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/H;->f(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    return-void
.end method

.method public g(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Z;

    iget-object v1, v0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    iget-object v1, v1, Landroidx/fragment/app/L;->d:Landroid/content/Context;

    iget-object v0, v0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/H;->g(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    return-void
.end method

.method public h(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Z;

    iget-object v0, v0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/H;->h(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    return-void
.end method

.method public i(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Z;

    iget-object v0, v0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/H;->i(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    return-void
.end method

.method public j(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Z;

    iget-object v0, v0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/H;->j(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    return-void
.end method

.method public k(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Z;

    iget-object v0, v0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/H;->k(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    return-void
.end method

.method public l(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Z;

    iget-object v0, v0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/H;->l(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    return-void
.end method

.method public m(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Z;

    iget-object v0, v0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/H;->m(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    return-void
.end method

.method public n(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Z;

    iget-object v0, v0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/H;->n(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    return-void
.end method
