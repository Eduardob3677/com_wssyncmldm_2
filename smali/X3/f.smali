.class public abstract LX3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "value"

    invoke-static {v0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    return-void
.end method

.method public static final a(Lu3/V;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, LX3/a;->c:LX3/a;

    sget-object v1, LX3/c;->l:LX3/c;

    invoke-static {p0, v0, v1}, Lq4/k;->h(Ljava/util/List;Lq4/a;Lc3/b;)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "ifAny(\n        listOf(th\u2026eclaresDefaultValue\n    )"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b(Lr3/c;Lc3/b;)Lr3/c;
    .locals 3

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LQ2/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LQ2/a;-><init>(I)V

    invoke-static {p0}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v1, LX3/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LX3/b;-><init>(Z)V

    new-instance v2, LX3/d;

    invoke-direct {v2, v0, p1}, LX3/d;-><init>(LQ2/a;Lc3/b;)V

    invoke-static {p0, v1, v2}, Lq4/k;->f(Ljava/util/List;Lq4/a;Lq4/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr3/c;

    return-object p0
.end method

.method public static final c(Lr3/j;)LQ3/c;
    .locals 2

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LX3/f;->h(Lr3/j;)LQ3/e;

    move-result-object p0

    invoke-virtual {p0}, LQ3/e;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, LQ3/e;->g()LQ3/c;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static final d(Ls3/b;)Lr3/e;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ls3/b;->e()Lh4/v;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object p0

    instance-of v0, p0, Lr3/e;

    if-eqz v0, :cond_0

    check-cast p0, Lr3/e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final e(Lr3/j;)Lo3/i;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LX3/f;->j(Lr3/j;)Lr3/x;

    move-result-object p0

    invoke-interface {p0}, Lr3/x;->g()Lo3/i;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lr3/g;)LQ3/b;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lr3/C;

    if-eqz v2, :cond_0

    new-instance v0, LQ3/b;

    check-cast v1, Lr3/C;

    check-cast v1, Lu3/E;

    invoke-interface {p0}, Lr3/j;->getName()LQ3/f;

    move-result-object p0

    iget-object v1, v1, Lu3/E;->g:LQ3/c;

    invoke-direct {v0, v1, p0}, LQ3/b;-><init>(LQ3/c;LQ3/f;)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lr3/h;

    if-eqz v2, :cond_1

    check-cast v1, Lr3/g;

    invoke-static {v1}, LX3/f;->f(Lr3/g;)LQ3/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lr3/j;->getName()LQ3/f;

    move-result-object p0

    invoke-virtual {v1, p0}, LQ3/b;->d(LQ3/f;)LQ3/b;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final g(Lr3/j;)LQ3/c;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LT3/e;->h(Lr3/j;)LQ3/c;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LT3/e;->i(Lr3/j;)LQ3/e;

    move-result-object p0

    invoke-virtual {p0}, LQ3/e;->g()LQ3/c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x4

    invoke-static {p0}, LT3/e;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final h(Lr3/j;)LQ3/e;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LT3/e;->g(Lr3/j;)LQ3/e;

    move-result-object p0

    const-string v0, "getFqName(this)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final i(Lr3/x;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Li4/g;->a:LI2/a;

    invoke-interface {p0, v0}, Lr3/x;->U(LI2/a;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    return-void
.end method

.method public static final j(Lr3/j;)Lr3/x;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LT3/e;->d(Lr3/j;)Lr3/x;

    move-result-object p0

    const-string v0, "getContainingModule(this)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final k(Lr3/c;)Lr3/c;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p0, Lr3/J;

    if-eqz v0, :cond_0

    check-cast p0, Lr3/J;

    check-cast p0, Lu3/I;

    invoke-virtual {p0}, Lu3/I;->Q0()Lr3/K;

    move-result-object p0

    const-string v0, "correspondingProperty"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method
