.class public final LJ/d0;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "SourceFile"


# instance fields
.field public final a:LB1/j;

.field public b:Ljava/util/List;

.field public c:Ljava/util/ArrayList;

.field public final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(LB1/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LJ/d0;->d:Ljava/util/HashMap;

    iput-object p1, p0, LJ/d0;->a:LB1/j;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/WindowInsetsAnimation;)LJ/e0;
    .locals 7

    iget-object p0, p0, LJ/d0;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ/e0;

    if-nez v0, :cond_0

    new-instance v0, LJ/e0;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ls2/c;

    new-instance v6, Landroid/view/WindowInsetsAnimation;

    invoke-direct {v6, v4, v1, v2, v3}, Landroid/view/WindowInsetsAnimation;-><init>(ILandroid/view/animation/Interpolator;J)V

    invoke-direct {v5, v6}, Ls2/c;-><init>(Landroid/view/WindowInsetsAnimation;)V

    iput-object v5, v0, LJ/e0;->a:Ls2/c;

    new-instance v1, Ls2/c;

    invoke-direct {v1, p1}, Ls2/c;-><init>(Landroid/view/WindowInsetsAnimation;)V

    iput-object v1, v0, LJ/e0;->a:Ls2/c;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 2

    invoke-virtual {p0, p1}, LJ/d0;->a(Landroid/view/WindowInsetsAnimation;)LJ/e0;

    move-result-object v0

    iget-object v1, p0, LJ/d0;->a:LB1/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LJ/e0;->a:Ls2/c;

    iget-object v0, v0, Ls2/c;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, v1, LB1/j;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object p0, p0, LJ/d0;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 1

    invoke-virtual {p0, p1}, LJ/d0;->a(Landroid/view/WindowInsetsAnimation;)LJ/e0;

    move-result-object p1

    iget-object p0, p0, LJ/d0;->a:LB1/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LJ/e0;->a:Ls2/c;

    iget-object p1, p1, Ls2/c;->c:Ljava/lang/Object;

    check-cast p1, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, LB1/j;->c:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, LB1/j;->d:Ljava/lang/Object;

    check-cast v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x1

    aget p1, v0, p1

    iput p1, p0, LB1/j;->a:I

    :cond_0
    return-void
.end method

.method public final onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 4

    iget-object v0, p0, LJ/d0;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LJ/d0;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LJ/d0;->b:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p0, v1}, LJ/d0;->a(Landroid/view/WindowInsetsAnimation;)LJ/e0;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/WindowInsetsAnimation;->getFraction()F

    move-result v1

    iget-object v3, v2, LJ/e0;->a:Ls2/c;

    invoke-virtual {v3, v1}, Ls2/c;->o(F)V

    iget-object v1, p0, LJ/d0;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    invoke-static {p1, p2}, LJ/q0;->f(Landroid/view/WindowInsets;Landroid/view/View;)LJ/q0;

    move-result-object p1

    iget-object p2, p0, LJ/d0;->b:Ljava/util/List;

    iget-object p0, p0, LJ/d0;->a:LB1/j;

    invoke-virtual {p0, p1, p2}, LB1/j;->k(LJ/q0;Ljava/util/List;)V

    invoke-virtual {p1}, LJ/q0;->e()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 3

    invoke-virtual {p0, p1}, LJ/d0;->a(Landroid/view/WindowInsetsAnimation;)LJ/e0;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/WindowInsetsAnimation$Bounds;->getLowerBound()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, LB/c;->c(Landroid/graphics/Insets;)LB/c;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/WindowInsetsAnimation$Bounds;->getUpperBound()Landroid/graphics/Insets;

    move-result-object p2

    invoke-static {p2}, LB/c;->c(Landroid/graphics/Insets;)LB/c;

    move-result-object p2

    iget-object p0, p0, LJ/d0;->a:LB1/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LJ/e0;->a:Ls2/c;

    iget-object p1, p1, Ls2/c;->c:Ljava/lang/Object;

    check-cast p1, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, LB1/j;->c:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    iget-object v1, p0, LB1/j;->d:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, LB1/j;->a:I

    sub-int/2addr v2, v1

    iput v2, p0, LB1/j;->b:I

    int-to-float p0, v2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    new-instance p0, Landroid/view/WindowInsetsAnimation$Bounds;

    invoke-virtual {v0}, LB/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p2}, LB/c;->d()Landroid/graphics/Insets;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/view/WindowInsetsAnimation$Bounds;-><init>(Landroid/graphics/Insets;Landroid/graphics/Insets;)V

    return-object p0
.end method
