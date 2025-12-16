.class public abstract LJ/m0;
.super LJ/l0;
.source "SourceFile"


# direct methods
.method public constructor <init>(LJ/q0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LJ/l0;-><init>(LJ/q0;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public i(IIII)LJ/q0;
    .locals 0

    iget-object p0, p0, LJ/j0;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, LJ/q0;->f(Landroid/view/WindowInsets;Landroid/view/View;)LJ/q0;

    move-result-object p0

    return-object p0
.end method
