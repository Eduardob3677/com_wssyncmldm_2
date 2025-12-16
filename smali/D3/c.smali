.class public final LD3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/h;


# instance fields
.field public final c:LD3/e;

.field public final d:LH3/b;

.field public final e:Z

.field public final f:Lg4/j;


# direct methods
.method public constructor <init>(LD3/e;LH3/b;Z)V
    .locals 1

    const-string v0, "c"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "annotationOwner"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD3/c;->c:LD3/e;

    iput-object p2, p0, LD3/c;->d:LH3/b;

    iput-boolean p3, p0, LD3/c;->e:Z

    iget-object p1, p1, LD3/e;->d:Ljava/lang/Object;

    check-cast p1, LD3/a;

    iget-object p1, p1, LD3/a;->a:Lg4/o;

    new-instance p2, LA3/d;

    const/4 p3, 0x2

    invoke-direct {p2, p3, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    check-cast p1, Lg4/l;

    invoke-virtual {p1, p2}, Lg4/l;->c(Lc3/b;)Lg4/j;

    move-result-object p1

    iput-object p1, p0, LD3/c;->f:Lg4/j;

    return-void
.end method


# virtual methods
.method public final b(LQ3/c;)Z
    .locals 0

    invoke-static {p0, p1}, Lo4/a;->n(Ls3/h;LQ3/c;)Z

    move-result p0

    return p0
.end method

.method public final f(LQ3/c;)Ls3/b;
    .locals 3

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LD3/c;->d:LH3/b;

    invoke-interface {v0, p1}, LH3/b;->v(LQ3/c;)Lx3/e;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, LD3/c;->f:Lg4/j;

    invoke-virtual {v2, v1}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls3/b;

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, LB3/e;->a:LQ3/f;

    iget-object p0, p0, LD3/c;->c:LD3/e;

    invoke-static {p1, v0, p0}, LB3/e;->a(LQ3/c;LH3/b;LD3/e;)LC3/h;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, LD3/c;->d:LH3/b;

    invoke-interface {p0}, LH3/b;->t()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, LD3/c;->d:LH3/b;

    invoke-interface {v1}, LH3/b;->t()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, LR2/m;->G0(Ljava/lang/Iterable;)LR2/l;

    move-result-object v2

    iget-object v3, p0, LD3/c;->f:Lg4/j;

    invoke-static {v2, v3}, Lr4/m;->l(Lr4/k;Lc3/b;)Lr4/r;

    move-result-object v2

    sget-object v3, LB3/e;->a:LQ3/f;

    sget-object v3, Lo3/m;->m:LQ3/c;

    iget-object p0, p0, LD3/c;->c:LD3/e;

    invoke-static {v3, v1, p0}, LB3/e;->a(LQ3/c;LH3/b;LD3/e;)LC3/h;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LR2/i;->h0([Ljava/lang/Object;)Lr4/k;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Lr4/k;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v1}, LR2/i;->h0([Ljava/lang/Object;)Lr4/k;

    move-result-object p0

    invoke-static {p0}, Lr4/m;->j(Lr4/k;)Lr4/h;

    move-result-object p0

    sget-object v1, Lr4/o;->g:Lr4/o;

    new-instance v2, Lr4/f;

    invoke-direct {v2, p0, v0, v1}, Lr4/f;-><init>(Lr4/k;ZLc3/b;)V

    new-instance p0, Lr4/e;

    invoke-direct {p0, v2}, Lr4/e;-><init>(Lr4/f;)V

    return-object p0
.end method
