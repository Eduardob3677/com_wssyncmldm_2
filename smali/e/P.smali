.class public final Le/P;
.super Li/b;
.source "SourceFile"

# interfaces
.implements Lj/g;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lj/i;

.field public g:Li/a;

.field public h:Ljava/lang/ref/WeakReference;

.field public final synthetic i:Le/Q;


# direct methods
.method public constructor <init>(Le/Q;Landroid/content/Context;Le/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/P;->i:Le/Q;

    iput-object p2, p0, Le/P;->e:Landroid/content/Context;

    iput-object p3, p0, Le/P;->g:Li/a;

    new-instance p1, Lj/i;

    invoke-direct {p1, p2}, Lj/i;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    iput p2, p1, Lj/i;->l:I

    iput-object p1, p0, Le/P;->f:Lj/i;

    iput-object p0, p1, Lj/i;->e:Lj/g;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Le/P;->i:Le/Q;

    iget-object v1, v0, Le/Q;->i:Le/P;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Le/Q;->p:Z

    if-eqz v1, :cond_1

    iput-object p0, v0, Le/Q;->j:Le/P;

    iget-object v1, p0, Le/P;->g:Li/a;

    iput-object v1, v0, Le/Q;->k:Li/a;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Le/P;->g:Li/a;

    invoke-interface {v1, p0}, Li/a;->n(Li/b;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Le/P;->g:Li/a;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Le/Q;->r(Z)V

    iget-object p0, v0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    :cond_2
    iget-object p0, v0, Le/Q;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v2, v0, Le/Q;->u:Z

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iput-object v1, v0, Le/Q;->i:Le/P;

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Le/P;->h:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final c(Lj/i;)V
    .locals 0

    iget-object p1, p0, Le/P;->g:Li/a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Le/P;->i()V

    iget-object p0, p0, Le/P;->i:Le/Q;

    iget-object p0, p0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->f:Lk/k;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lk/k;->l()Z

    :cond_1
    return-void
.end method

.method public final d(Lj/i;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Le/P;->g:Li/a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Li/a;->c(Li/b;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()Lj/i;
    .locals 0

    iget-object p0, p0, Le/P;->f:Lj/i;

    return-object p0
.end method

.method public final f()Landroid/view/MenuInflater;
    .locals 1

    new-instance v0, Li/j;

    iget-object p0, p0, Le/P;->e:Landroid/content/Context;

    invoke-direct {v0, p0}, Li/j;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Le/P;->i:Le/Q;

    iget-object p0, p0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Le/P;->i:Le/Q;

    iget-object p0, p0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Le/P;->i:Le/Q;

    iget-object v0, v0, Le/Q;->i:Le/P;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/P;->f:Lj/i;

    invoke-virtual {v0}, Lj/i;->w()V

    :try_start_0
    iget-object v1, p0, Le/P;->g:Li/a;

    invoke-interface {v1, p0, v0}, Li/a;->l(Li/b;Lj/i;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lj/i;->v()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lj/i;->v()V

    throw p0
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Le/P;->i:Le/Q;

    iget-object p0, p0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->u:Z

    return p0
.end method

.method public final k(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Le/P;->i:Le/Q;

    iget-object v0, v0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/P;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Le/P;->i:Le/Q;

    iget-object v0, v0, Le/Q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/P;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Le/P;->i:Le/Q;

    iget-object p0, p0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(I)V
    .locals 1

    iget-object v0, p0, Le/P;->i:Le/Q;

    iget-object v0, v0, Le/Q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/P;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Le/P;->i:Le/Q;

    iget-object p0, p0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final p(Z)V
    .locals 0

    iput-boolean p1, p0, Li/b;->d:Z

    iget-object p0, p0, Le/P;->i:Le/Q;

    iget-object p0, p0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method
