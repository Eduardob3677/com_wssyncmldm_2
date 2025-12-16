.class public final Le/Q;
.super Le/a;
.source "SourceFile"

# interfaces
.implements Lk/d;


# static fields
.field public static final y:Landroid/view/animation/AccelerateInterpolator;

.field public static final z:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public d:Landroidx/appcompat/widget/ActionBarContainer;

.field public e:Lk/e0;

.field public f:Landroidx/appcompat/widget/ActionBarContextView;

.field public final g:Landroid/view/View;

.field public h:Z

.field public i:Le/P;

.field public j:Le/P;

.field public k:Li/a;

.field public l:Z

.field public final m:Ljava/util/ArrayList;

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Li/l;

.field public t:Z

.field public u:Z

.field public final v:Le/O;

.field public final w:Le/O;

.field public final x:Lc1/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Le/Q;->y:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Le/Q;->z:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/Q;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Le/Q;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/Q;->o:Z

    iput-boolean v0, p0, Le/Q;->r:Z

    new-instance v0, Le/O;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/O;-><init>(Le/Q;I)V

    iput-object v0, p0, Le/Q;->v:Le/O;

    new-instance v0, Le/O;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Le/O;-><init>(Le/Q;I)V

    iput-object v0, p0, Le/Q;->w:Le/O;

    new-instance v0, Lc1/w;

    invoke-direct {v0, p0}, Lc1/w;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/Q;->x:Lc1/w;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/Q;->s(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Le/Q;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/Q;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Le/Q;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/Q;->o:Z

    iput-boolean v0, p0, Le/Q;->r:Z

    new-instance v0, Le/O;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/O;-><init>(Le/Q;I)V

    iput-object v0, p0, Le/Q;->v:Le/O;

    new-instance v0, Le/O;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Le/O;-><init>(Le/Q;I)V

    iput-object v0, p0, Le/Q;->w:Le/O;

    new-instance v0, Lc1/w;

    invoke-direct {v0, p0}, Lc1/w;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/Q;->x:Lc1/w;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/Q;->s(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object p0, p0, Le/Q;->e:Lk/e0;

    if-eqz p0, :cond_2

    move-object v0, p0

    check-cast v0, Lk/I1;

    iget-object v0, v0, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->O:Lk/D1;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lk/D1;->d:Lj/k;

    if-eqz v0, :cond_2

    check-cast p0, Lk/I1;

    iget-object p0, p0, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->O:Lk/D1;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lk/D1;->d:Lj/k;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lj/k;->collapseActionView()Z

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Z)V
    .locals 1

    iget-boolean v0, p0, Le/Q;->l:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Le/Q;->l:Z

    iget-object p0, p0, Le/Q;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Le/Q;->e:Lk/e0;

    check-cast p0, Lk/I1;

    iget p0, p0, Lk/I1;->b:I

    return p0
.end method

.method public final e()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Le/Q;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Le/Q;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f04000b

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Le/Q;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Le/Q;->b:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/Q;->a:Landroid/content/Context;

    iput-object v0, p0, Le/Q;->b:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object p0, p0, Le/Q;->b:Landroid/content/Context;

    return-object p0
.end method

.method public final g()V
    .locals 0

    invoke-virtual {p0}, Le/Q;->t()V

    return-void
.end method

.method public final i(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object p0, p0, Le/Q;->i:Le/P;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Le/P;->f:Lj/i;

    if-eqz p0, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-virtual {p0, v2}, Lj/i;->setQwertyMode(Z)V

    invoke-virtual {p0, p1, p2, v0}, Lj/i;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public final l(Z)V
    .locals 1

    iget-boolean v0, p0, Le/Q;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Le/Q;->m(Z)V

    :cond_0
    return-void
.end method

.method public final m(Z)V
    .locals 4

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Le/Q;->e:Lk/e0;

    check-cast v1, Lk/I1;

    iget v2, v1, Lk/I1;->b:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Le/Q;->h:Z

    and-int/lit8 p0, p1, 0x4

    and-int/lit8 p1, v2, -0x5

    or-int/2addr p0, p1

    invoke-virtual {v1, p0}, Lk/I1;->a(I)V

    return-void
.end method

.method public final n(Z)V
    .locals 0

    iput-boolean p1, p0, Le/Q;->t:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Le/Q;->s:Li/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li/l;->a()V

    :cond_0
    return-void
.end method

.method public final o(I)V
    .locals 1

    iget-object v0, p0, Le/Q;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Le/Q;->e:Lk/e0;

    check-cast p0, Lk/I1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/I1;->g:Z

    iput-object p1, p0, Lk/I1;->h:Ljava/lang/CharSequence;

    iget v0, p0, Lk/I1;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Lk/I1;->g:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, LJ/Q;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final p(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object p0, p0, Le/Q;->e:Lk/e0;

    check-cast p0, Lk/I1;

    iget-boolean v0, p0, Lk/I1;->g:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lk/I1;->h:Ljava/lang/CharSequence;

    iget v0, p0, Lk/I1;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Lk/I1;->g:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, LJ/Q;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final q(Le/v;)Li/b;
    .locals 2

    iget-object v0, p0, Le/Q;->i:Le/P;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/P;->a()V

    :cond_0
    iget-object v0, p0, Le/Q;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    new-instance v0, Le/P;

    iget-object v1, p0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Le/P;-><init>(Le/Q;Landroid/content/Context;Le/v;)V

    iget-object p1, v0, Le/P;->f:Lj/i;

    invoke-virtual {p1}, Lj/i;->w()V

    :try_start_0
    iget-object v1, v0, Le/P;->g:Li/a;

    invoke-interface {v1, v0, p1}, Li/a;->f(Li/b;Lj/i;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lj/i;->v()V

    if-eqz v1, :cond_1

    iput-object v0, p0, Le/Q;->i:Le/P;

    invoke-virtual {v0}, Le/P;->i()V

    iget-object p1, p0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->c(Li/b;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Le/Q;->r(Z)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lj/i;->v()V

    throw p0
.end method

.method public final r(Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Le/Q;->q:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Le/Q;->q:Z

    iget-object v2, p0, Le/Q;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Le/Q;->u(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Le/Q;->q:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Le/Q;->q:Z

    iget-object v1, p0, Le/Q;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_2
    invoke-virtual {p0, v0}, Le/Q;->u(Z)V

    :cond_3
    :goto_0
    iget-object v1, p0, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    sget-object v2, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-eqz v1, :cond_7

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x64

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/Q;->e:Lk/e0;

    check-cast p1, Lk/I1;

    iget-object v1, p1, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, LJ/Q;->a(Landroid/view/View;)LJ/a0;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LJ/a0;->a(F)V

    invoke-virtual {v1, v6, v7}, LJ/a0;->c(J)V

    new-instance v2, Li/k;

    invoke-direct {v2, p1, v3}, Li/k;-><init>(Lk/I1;I)V

    invoke-virtual {v1, v2}, LJ/a0;->d(LJ/b0;)V

    iget-object p0, p0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v0, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->j(IJ)LJ/a0;

    move-result-object p0

    goto :goto_1

    :cond_4
    iget-object p1, p0, Le/Q;->e:Lk/e0;

    check-cast p1, Lk/I1;

    iget-object v1, p1, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, LJ/Q;->a(Landroid/view/View;)LJ/a0;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, LJ/a0;->a(F)V

    invoke-virtual {v1, v4, v5}, LJ/a0;->c(J)V

    new-instance v3, Li/k;

    invoke-direct {v3, p1, v0}, Li/k;-><init>(Lk/I1;I)V

    invoke-virtual {v1, v3}, LJ/a0;->d(LJ/b0;)V

    iget-object p0, p0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v2, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->j(IJ)LJ/a0;

    move-result-object p0

    move-object v8, v1

    move-object v1, p0

    move-object p0, v8

    :goto_1
    new-instance p1, Li/l;

    invoke-direct {p1}, Li/l;-><init>()V

    iget-object v0, p1, Li/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, LJ/a0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v1

    goto :goto_2

    :cond_5
    const-wide/16 v1, 0x0

    :goto_2
    iget-object v3, p0, LJ/a0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Li/l;->b()V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p0, Le/Q;->e:Lk/e0;

    check-cast p1, Lk/I1;

    iget-object p1, p1, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Le/Q;->e:Lk/e0;

    check-cast p1, Lk/I1;

    iget-object p1, p1, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final s(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a00b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Le/Q;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lk/d;)V

    :cond_0
    const v0, 0x7f0a0037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lk/e0;

    if-eqz v1, :cond_1

    check-cast v0, Lk/e0;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_7

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Lk/e0;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Le/Q;->e:Lk/e0;

    const v0, 0x7f0a003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    const v0, 0x7f0a0039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Le/Q;->e:Lk/e0;

    if-eqz v0, :cond_6

    iget-object v1, p0, Le/Q;->f:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    check-cast v0, Lk/I1;

    iget-object p1, v0, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/Q;->a:Landroid/content/Context;

    iget-object p1, p0, Le/Q;->e:Lk/e0;

    move-object v0, p1

    check-cast v0, Lk/I1;

    iget v0, v0, Lk/I1;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Le/Q;->h:Z

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Le/Q;->t()V

    iget-object p1, p0, Le/Q;->a:Landroid/content/Context;

    sget-object v0, Lc/a;->a:[I

    const v2, 0x7f040006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v0, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/Q;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Le/Q;->u:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_5

    int-to-float v0, v0

    iget-object p0, p0, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    sget-object v1, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v0}, LJ/I;->s(Landroid/view/View;F)V

    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-class p1, Le/Q;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, " can only be used with a compatible window decor layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_8
    const-string p1, "null"

    :goto_2
    const-string v0, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Le/Q;->e:Lk/e0;

    check-cast v0, Lk/I1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lk/G0;)V

    iget-object v0, p0, Le/Q;->e:Lk/e0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Le/Q;->e:Lk/e0;

    check-cast v0, Lk/I1;

    iget-object v0, v0, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    iget-object p0, p0, Le/Q;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public final u(Z)V
    .locals 11

    iget-boolean v0, p0, Le/Q;->p:Z

    iget-boolean v1, p0, Le/Q;->q:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    iget-object v1, p0, Le/Q;->g:Landroid/view/View;

    const-wide/16 v4, 0xfa

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Le/Q;->x:Lc1/w;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Le/Q;->r:Z

    if-nez v0, :cond_1a

    iput-boolean v2, p0, Le/Q;->r:Z

    iget-object v0, p0, Le/Q;->s:Li/l;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Li/l;->a()V

    :cond_2
    iget-object v0, p0, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Le/Q;->n:I

    iget-object v9, p0, Le/Q;->w:Le/O;

    const/4 v10, 0x0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Le/Q;->t:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_c

    :cond_3
    iget-object v0, p0, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_4

    filled-new-array {v3, v3}, [I

    move-result-object p1

    iget-object v3, p0, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_4
    iget-object p1, p0, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance p1, Li/l;

    invoke-direct {p1}, Li/l;-><init>()V

    iget-object v2, p0, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, LJ/Q;->a(Landroid/view/View;)LJ/a0;

    move-result-object v2

    invoke-virtual {v2, v10}, LJ/a0;->e(F)V

    iget-object v3, v2, LJ/a0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_6

    if-eqz v8, :cond_5

    new-instance v6, LJ/Z;

    invoke-direct {v6, v8, v3}, LJ/Z;-><init>(Lc1/w;Landroid/view/View;)V

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_6
    iget-boolean v3, p1, Li/l;->e:Z

    iget-object v6, p1, Li/l;->a:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean v2, p0, Le/Q;->o:Z

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {v1}, LJ/Q;->a(Landroid/view/View;)LJ/a0;

    move-result-object v0

    invoke-virtual {v0, v10}, LJ/a0;->e(F)V

    iget-boolean v1, p1, Li/l;->e:Z

    if-nez v1, :cond_8

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v0, Le/Q;->z:Landroid/view/animation/DecelerateInterpolator;

    iget-boolean v1, p1, Li/l;->e:Z

    if-nez v1, :cond_9

    iput-object v0, p1, Li/l;->c:Landroid/view/animation/Interpolator;

    :cond_9
    if-nez v1, :cond_a

    iput-wide v4, p1, Li/l;->b:J

    :cond_a
    if-nez v1, :cond_b

    iput-object v9, p1, Li/l;->d:LJ/b0;

    :cond_b
    iput-object p1, p0, Le/Q;->s:Li/l;

    invoke-virtual {p1}, Li/l;->b()V

    goto :goto_1

    :cond_c
    iget-object p1, p0, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p1, p0, Le/Q;->o:Z

    if-eqz p1, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {v1, v10}, Landroid/view/View;->setTranslationY(F)V

    :cond_d
    invoke-virtual {v9}, Le/O;->c()V

    :goto_1
    iget-object p0, p0, Le/Q;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_1a

    sget-object p1, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, LJ/G;->c(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_e
    iget-boolean v0, p0, Le/Q;->r:Z

    if-eqz v0, :cond_1a

    iput-boolean v3, p0, Le/Q;->r:Z

    iget-object v0, p0, Le/Q;->s:Li/l;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Li/l;->a()V

    :cond_f
    iget v0, p0, Le/Q;->n:I

    iget-object v9, p0, Le/Q;->v:Le/O;

    if-nez v0, :cond_19

    iget-boolean v0, p0, Le/Q;->t:Z

    if-nez v0, :cond_10

    if-eqz p1, :cond_19

    :cond_10
    iget-object v0, p0, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Li/l;

    invoke-direct {v0}, Li/l;-><init>()V

    iget-object v7, p0, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    if-eqz p1, :cond_11

    filled-new-array {v3, v3}, [I

    move-result-object p1

    iget-object v3, p0, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v7, p1

    :cond_11
    iget-object p1, p0, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, LJ/Q;->a(Landroid/view/View;)LJ/a0;

    move-result-object p1

    invoke-virtual {p1, v7}, LJ/a0;->e(F)V

    iget-object v2, p1, LJ/a0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_13

    if-eqz v8, :cond_12

    new-instance v6, LJ/Z;

    invoke-direct {v6, v8, v2}, LJ/Z;-><init>(Lc1/w;Landroid/view/View;)V

    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_13
    iget-boolean v2, v0, Li/l;->e:Z

    iget-object v3, v0, Li/l;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_14

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-boolean p1, p0, Le/Q;->o:Z

    if-eqz p1, :cond_15

    if-eqz v1, :cond_15

    invoke-static {v1}, LJ/Q;->a(Landroid/view/View;)LJ/a0;

    move-result-object p1

    invoke-virtual {p1, v7}, LJ/a0;->e(F)V

    iget-boolean v1, v0, Li/l;->e:Z

    if-nez v1, :cond_15

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    sget-object p1, Le/Q;->y:Landroid/view/animation/AccelerateInterpolator;

    iget-boolean v1, v0, Li/l;->e:Z

    if-nez v1, :cond_16

    iput-object p1, v0, Li/l;->c:Landroid/view/animation/Interpolator;

    :cond_16
    if-nez v1, :cond_17

    iput-wide v4, v0, Li/l;->b:J

    :cond_17
    if-nez v1, :cond_18

    iput-object v9, v0, Li/l;->d:LJ/b0;

    :cond_18
    iput-object v0, p0, Le/Q;->s:Li/l;

    invoke-virtual {v0}, Li/l;->b()V

    goto :goto_2

    :cond_19
    invoke-virtual {v9}, Le/O;->c()V

    :cond_1a
    :goto_2
    return-void
.end method
