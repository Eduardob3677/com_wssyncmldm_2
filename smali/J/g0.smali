.class public abstract LJ/g0;
.super LJ/i0;
.source "SourceFile"


# instance fields
.field public final b:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LJ/i0;-><init>()V

    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, LJ/g0;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(LJ/q0;)V
    .locals 1

    invoke-direct {p0, p1}, LJ/i0;-><init>(LJ/q0;)V

    invoke-virtual {p1}, LJ/q0;->e()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, LJ/g0;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()LJ/q0;
    .locals 2

    invoke-virtual {p0}, LJ/i0;->a()V

    iget-object p0, p0, LJ/g0;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, LJ/q0;->f(Landroid/view/WindowInsets;Landroid/view/View;)LJ/q0;

    move-result-object p0

    const/4 v0, 0x0

    iget-object v1, p0, LJ/q0;->a:LJ/o0;

    invoke-virtual {v1, v0}, LJ/o0;->l([LB/c;)V

    return-object p0
.end method

.method public c(LB/c;)V
    .locals 0

    iget-object p0, p0, LJ/g0;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LB/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public d(LB/c;)V
    .locals 0

    iget-object p0, p0, LJ/g0;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LB/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public e(LB/c;)V
    .locals 0

    iget-object p0, p0, LJ/g0;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LB/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public f(LB/c;)V
    .locals 0

    iget-object p0, p0, LJ/g0;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LB/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public g(LB/c;)V
    .locals 0

    iget-object p0, p0, LJ/g0;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LB/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
