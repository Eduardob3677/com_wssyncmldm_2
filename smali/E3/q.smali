.class public final LE3/q;
.super LE3/C;
.source "SourceFile"


# instance fields
.field public final n:Lr3/e;

.field public final o:Lx3/o;

.field public final p:Z

.field public final q:Lg4/i;

.field public final r:Lg4/i;

.field public final s:Lg4/i;

.field public final t:Lg4/i;

.field public final u:Lg4/j;


# direct methods
.method public constructor <init>(LD3/e;Lr3/e;Lx3/o;ZLE3/q;)V
    .locals 1

    const-string v0, "c"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ownerDescriptor"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "jClass"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p5}, LE3/C;-><init>(LD3/e;LE3/C;)V

    iput-object p2, p0, LE3/q;->n:Lr3/e;

    iput-object p3, p0, LE3/q;->o:Lx3/o;

    iput-boolean p4, p0, LE3/q;->p:Z

    iget-object p2, p1, LD3/e;->d:Ljava/lang/Object;

    check-cast p2, LD3/a;

    iget-object p3, p2, LD3/a;->a:Lg4/o;

    new-instance p4, LE3/n;

    invoke-direct {p4, p0, p1}, LE3/n;-><init>(LE3/q;LD3/e;)V

    check-cast p3, Lg4/l;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p5, Lg4/i;

    invoke-direct {p5, p3, p4}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object p5, p0, LE3/q;->q:Lg4/i;

    new-instance p3, LE3/o;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p4}, LE3/o;-><init>(LE3/q;I)V

    iget-object p2, p2, LD3/a;->a:Lg4/o;

    move-object p4, p2

    check-cast p4, Lg4/l;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p5, Lg4/i;

    invoke-direct {p5, p4, p3}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object p5, p0, LE3/q;->r:Lg4/i;

    new-instance p3, LE3/n;

    invoke-direct {p3, p1, p0}, LE3/n;-><init>(LD3/e;LE3/q;)V

    move-object p4, p2

    check-cast p4, Lg4/l;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p5, Lg4/i;

    invoke-direct {p5, p4, p3}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object p5, p0, LE3/q;->s:Lg4/i;

    new-instance p3, LE3/o;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, LE3/o;-><init>(LE3/q;I)V

    move-object p4, p2

    check-cast p4, Lg4/l;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p5, Lg4/i;

    invoke-direct {p5, p4, p3}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object p5, p0, LE3/q;->t:Lg4/i;

    new-instance p3, LE3/p;

    invoke-direct {p3, p0, p1}, LE3/p;-><init>(LE3/q;LD3/e;)V

    check-cast p2, Lg4/l;

    invoke-virtual {p2, p3}, Lg4/l;->c(Lc3/b;)Lg4/j;

    move-result-object p1

    iput-object p1, p0, LE3/q;->u:Lg4/j;

    return-void
.end method

.method public static C(Lu3/N;Lr3/s;Ljava/util/AbstractCollection;)Lu3/N;
    .locals 2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/N;

    invoke-static {p0, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lu3/v;->E:Lr3/s;

    if-nez v1, :cond_1

    invoke-static {v0, p1}, LE3/q;->F(Lr3/b;Lr3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lr3/s;->e0()Lr3/r;

    move-result-object p0

    invoke-interface {p0}, Lr3/r;->N()Lr3/r;

    move-result-object p0

    invoke-interface {p0}, Lr3/r;->j()Lr3/s;

    move-result-object p0

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    check-cast p0, Lu3/N;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static D(Lu3/N;)Lu3/N;
    .locals 5

    invoke-virtual {p0}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v0

    const-string v1, "valueParameters"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, LR2/m;->V0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/V;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    move-object v3, v0

    check-cast v3, Lu3/W;

    invoke-virtual {v3}, Lu3/W;->e()Lh4/v;

    move-result-object v3

    invoke-virtual {v3}, Lh4/v;->J0()Lh4/J;

    move-result-object v3

    invoke-interface {v3}, Lh4/J;->i()Lr3/g;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, LX3/f;->h(Lr3/j;)LQ3/e;

    move-result-object v3

    invoke-virtual {v3}, LQ3/e;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, LQ3/e;->g()LQ3/c;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    sget-object v4, Lo3/n;->f:LQ3/c;

    invoke-static {v3, v4}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    invoke-interface {p0}, Lr3/s;->e0()Lr3/r;

    move-result-object v2

    invoke-virtual {p0}, Lu3/v;->w0()Ljava/util/List;

    move-result-object p0

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LR2/m;->J0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v2, p0}, Lr3/r;->o(Ljava/util/List;)Lr3/r;

    move-result-object p0

    check-cast v0, Lu3/W;

    invoke-virtual {v0}, Lu3/W;->e()Lh4/v;

    move-result-object v0

    invoke-virtual {v0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/N;

    invoke-virtual {v0}, Lh4/N;->b()Lh4/v;

    move-result-object v0

    invoke-interface {p0, v0}, Lr3/r;->I(Lh4/v;)Lr3/r;

    move-result-object p0

    invoke-interface {p0}, Lr3/r;->j()Lr3/s;

    move-result-object p0

    check-cast p0, Lu3/N;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lu3/v;->x:Z

    :goto_3
    return-object p0

    :cond_5
    :goto_4
    return-object v2
.end method

.method public static F(Lr3/b;Lr3/b;)Z
    .locals 3

    sget-object v0, LT3/n;->d:LT3/n;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, LT3/n;->n(Lr3/b;Lr3/b;Z)LT3/m;

    move-result-object v0

    invoke-virtual {v0}, LT3/m;->c()I

    move-result v0

    const-string v2, "DEFAULT.isOverridableByW\u2026iptor, this, true).result"

    invoke-static {v0, v2}, LB/f;->E(ILjava/lang/String;)V

    if-ne v0, v1, :cond_0

    invoke-static {p1, p0}, LZ0/j;->H(Lr3/b;Lr3/b;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static G(Lu3/N;Lu3/N;)Z
    .locals 2

    sget v0, LA3/e;->m:I

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lu3/o;->getName()LQ3/f;

    move-result-object v0

    invoke-virtual {v0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removeAt"

    invoke-static {v0, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LW1/a;->o(Lr3/b;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, LA3/I;->h:LA3/F;

    iget-object v1, v1, LA3/F;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lu3/N;->c1()Lu3/N;

    move-result-object p1

    :cond_0
    const-string v0, "if (superDescriptor.isRe\u2026iginal else subDescriptor"

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, p0}, LE3/q;->F(Lr3/b;Lr3/b;)Z

    move-result p0

    return p0
.end method

.method public static H(Lr3/K;Ljava/lang/String;Lc3/b;)Lu3/N;
    .locals 4

    invoke-static {p1}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p1

    invoke-interface {p2, p1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lu3/N;

    invoke-virtual {p2}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Li4/d;->a:Li4/l;

    iget-object v2, p2, Lu3/v;->i:Lh4/v;

    if-nez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lr3/T;->e()Lh4/v;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Li4/l;->b(Lh4/v;Lh4/v;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_3

    move-object v0, p2

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    :cond_4
    return-object v0
.end method

.method public static J(Lr3/K;Lc3/b;)Lu3/N;
    .locals 5

    invoke-interface {p0}, Lr3/j;->getName()LQ3/f;

    move-result-object v0

    invoke-virtual {v0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, LA3/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/N;

    invoke-virtual {v0}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lu3/v;->i:Lh4/v;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v3, Lo3/i;->e:LQ3/f;

    sget-object v3, Lo3/m;->d:LQ3/e;

    invoke-static {v2, v3}, Lo3/i;->D(Lh4/v;LQ3/e;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Li4/d;->a:Li4/l;

    invoke-virtual {v0}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v3

    const-string v4, "descriptor.valueParameters"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu3/V;

    check-cast v3, Lu3/W;

    invoke-virtual {v3}, Lu3/W;->e()Lh4/v;

    move-result-object v3

    invoke-interface {p0}, Lr3/T;->e()Lh4/v;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Li4/l;->a(Lh4/v;Lh4/v;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v1, v0

    :cond_4
    :goto_0
    if-eqz v1, :cond_0

    :cond_5
    return-object v1
.end method

.method public static M(Lu3/N;Lr3/s;)Z
    .locals 4

    const/4 v0, 0x2

    invoke-static {p0, v0}, LW1/a;->n(Lr3/s;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lr3/s;->a()Lr3/s;

    move-result-object v2

    const-string v3, "builtinWithErasedParameters.original"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, v0}, LW1/a;->n(Lr3/s;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, LE3/q;->F(Lr3/b;Lr3/b;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final v(LE3/q;LQ3/f;)Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, LE3/C;->e:Lg4/i;

    invoke-virtual {v0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE3/c;

    invoke-interface {v0, p1}, LE3/c;->f(LQ3/f;)Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx3/x;

    invoke-virtual {p0, v1}, LE3/C;->t(Lx3/x;)LC3/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final w(LE3/q;LQ3/f;)Ljava/util/ArrayList;
    .locals 3

    invoke-virtual {p0, p1}, LE3/q;->K(LQ3/f;)Ljava/util/LinkedHashSet;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lu3/N;

    const-string v2, "<this>"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Li3/x;->R(Lr3/c;)Lr3/c;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, LA3/g;->a(Lr3/s;)Lr3/s;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public final A(Ljava/util/Set;Ljava/util/AbstractCollection;Lq4/h;Lc3/b;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr3/K;

    invoke-virtual {v0, v4, v2}, LE3/q;->E(Lr3/K;Lc3/b;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0, v4, v2}, LE3/q;->I(Lr3/K;Lc3/b;)Lu3/N;

    move-result-object v5

    invoke-static {v5}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-interface {v4}, Lr3/U;->T()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v4, v2}, LE3/q;->J(Lr3/K;Lc3/b;)Lu3/N;

    move-result-object v7

    invoke-static {v7}, Ld3/i;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lu3/v;->i()I

    invoke-virtual {v5}, Lu3/v;->i()I

    :cond_3
    new-instance v15, LC3/d;

    const-string v8, "ownerDescriptor"

    iget-object v9, v0, LE3/q;->n:Lr3/e;

    invoke-static {v8, v9}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v10, Ls3/g;->a:Ls3/f;

    invoke-virtual {v5}, Lu3/v;->i()I

    move-result v11

    invoke-virtual {v5}, Lu3/v;->c()LA3/p;

    move-result-object v12

    const/4 v14, 0x0

    if-eqz v7, :cond_4

    const/4 v8, 0x1

    move v13, v8

    goto :goto_1

    :cond_4
    move v13, v14

    :goto_1
    invoke-interface {v4}, Lr3/j;->getName()LQ3/f;

    move-result-object v16

    invoke-virtual {v5}, Lu3/p;->m()Lr3/N;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v8, v15

    move v6, v14

    move-object/from16 v14, v16

    move-object/from16 v22, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v20

    move/from16 v17, v21

    invoke-direct/range {v8 .. v19}, LC3/g;-><init>(Lr3/j;Ls3/h;ILA3/p;ZLQ3/f;Lr3/N;Lr3/K;IZLQ2/e;)V

    iget-object v9, v5, Lu3/v;->i:Lh4/v;

    invoke-static {v9}, Ld3/i;->b(Ljava/lang/Object;)V

    sget-object v13, LR2/u;->c:LR2/u;

    invoke-virtual/range {p0 .. p0}, LE3/q;->p()Lu3/w;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v8, v22

    move-object v10, v13

    invoke-virtual/range {v8 .. v13}, Lu3/K;->Y0(Lh4/v;Ljava/util/List;Lu3/w;Lu3/w;Ljava/util/List;)V

    invoke-virtual {v5}, LK3/c;->t()Ls3/h;

    move-result-object v8

    invoke-virtual {v5}, Lu3/p;->m()Lr3/N;

    move-result-object v9

    move-object/from16 v14, v22

    invoke-static {v14, v8, v6, v9}, LZ0/j;->F(Lr3/K;Ls3/h;ZLr3/N;)Lu3/L;

    move-result-object v6

    iput-object v5, v6, Lu3/I;->n:Lr3/s;

    invoke-virtual {v14}, Lu3/W;->e()Lh4/v;

    move-result-object v5

    invoke-virtual {v6, v5}, Lu3/L;->T0(Lh4/v;)V

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v5

    const-string v8, "setterMethod.valueParameters"

    invoke-static {v8, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5}, LR2/m;->O0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu3/V;

    if-eqz v5, :cond_5

    invoke-virtual {v7}, LK3/c;->t()Ls3/h;

    move-result-object v9

    check-cast v5, LK3/c;

    invoke-virtual {v5}, LK3/c;->t()Ls3/h;

    move-result-object v10

    invoke-virtual {v7}, Lu3/v;->c()LA3/p;

    move-result-object v12

    invoke-virtual {v7}, Lu3/p;->m()Lr3/N;

    move-result-object v13

    const/4 v11, 0x0

    move-object v8, v14

    invoke-static/range {v8 .. v13}, LZ0/j;->G(Lr3/K;Ls3/h;Ls3/h;ZLA3/p;Lr3/N;)Lu3/M;

    move-result-object v5

    iput-object v7, v5, Lu3/I;->n:Lr3/s;

    :goto_2
    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No parameter found for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    :goto_3
    invoke-virtual {v14, v6, v5, v7, v7}, Lu3/K;->V0(Lu3/L;Lu3/M;Lu3/t;Lu3/t;)V

    move-object v6, v14

    :goto_4
    move-object/from16 v5, p2

    if-eqz v6, :cond_0

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_7

    invoke-virtual {v1, v4}, Lq4/h;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public final B()Ljava/util/Collection;
    .locals 2

    iget-boolean v0, p0, LE3/q;->p:Z

    iget-object v1, p0, LE3/q;->n:Lr3/e;

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lr3/g;->H()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->j()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    iget-object p0, p0, LE3/C;->b:LD3/e;

    iget-object p0, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, LD3/a;

    iget-object p0, p0, LD3/a;->u:Li4/k;

    check-cast p0, Li4/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "classDescriptor"

    invoke-static {p0, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Lr3/g;->H()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->j()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "classDescriptor.typeConstructor.supertypes"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final E(Lr3/K;Lc3/b;)Z
    .locals 2

    invoke-static {p1}, Lf1/a;->S(Lr3/K;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, LE3/q;->I(Lr3/K;Lc3/b;)Lu3/N;

    move-result-object p0

    invoke-static {p1, p2}, LE3/q;->J(Lr3/K;Lc3/b;)Lu3/N;

    move-result-object p2

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Lr3/U;->T()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    return v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lu3/v;->i()I

    move-result p1

    invoke-virtual {p0}, Lu3/v;->i()I

    move-result p0

    if-ne p1, p0, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method public final I(Lr3/K;Lc3/b;)Lu3/N;
    .locals 4

    invoke-interface {p1}, Lr3/K;->r()Lu3/L;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Li3/x;->R(Lr3/c;)Lr3/c;

    move-result-object v0

    check-cast v0, Lu3/L;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Lo3/i;->z(Lr3/j;)Z

    invoke-static {v0}, LX3/f;->k(Lr3/c;)Lr3/c;

    move-result-object v2

    sget-object v3, LA3/f;->g:LA3/f;

    invoke-static {v2, v3}, LX3/f;->b(Lr3/c;Lc3/b;)Lr3/c;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, LA3/h;->a:Ljava/util/Map;

    invoke-static {v2}, LX3/f;->g(Lr3/j;)LQ3/c;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ3/f;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-object p0, p0, LE3/q;->n:Lr3/e;

    invoke-static {p0, v0}, Li3/x;->g0(Lr3/e;Lr3/c;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p1, v1, p2}, LE3/q;->H(Lr3/K;Ljava/lang/String;Lc3/b;)Lu3/N;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {p1}, Lr3/j;->getName()LQ3/f;

    move-result-object p0

    invoke-virtual {p0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name.asString()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LA3/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, LE3/q;->H(Lr3/K;Ljava/lang/String;Lc3/b;)Lu3/N;

    move-result-object p0

    return-object p0
.end method

.method public final K(LQ3/f;)Ljava/util/LinkedHashSet;
    .locals 3

    invoke-virtual {p0}, LE3/q;->B()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/v;

    invoke-virtual {v1}, Lh4/v;->q0()La4/o;

    move-result-object v1

    sget-object v2, Lz3/b;->g:Lz3/b;

    invoke-interface {v1, p1, v2}, La4/o;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final L(LQ3/f;)Ljava/util/Set;
    .locals 4

    invoke-virtual {p0}, LE3/q;->B()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/v;

    invoke-virtual {v1}, Lh4/v;->q0()La4/o;

    move-result-object v1

    sget-object v2, Lz3/b;->g:Lz3/b;

    invoke-interface {v1, p1, v2}, La4/o;->g(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr3/K;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {v0, v2}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, LR2/m;->j1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final N(Lu3/N;)Z
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Lu3/o;->getName()LQ3/f;

    move-result-object v1

    const-string v2, "function.name"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name.asString()"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, LA3/y;->a:LQ3/c;

    const-string v3, "get"

    invoke-static {v2, v3}, Ls4/h;->s(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "is"

    const-string v7, "set"

    if-nez v4, :cond_2

    invoke-static {v2, v6}, Ls4/h;->s(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, v7}, Ls4/h;->s(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    invoke-static {v1, v7, v5, v2}, Lf1/a;->b0(LQ3/f;Ljava/lang/String;Ljava/lang/String;I)LQ3/f;

    move-result-object v3

    invoke-static {v1, v7, v6, v2}, Lf1/a;->b0(LQ3/f;Ljava/lang/String;Ljava/lang/String;I)LQ3/f;

    move-result-object v1

    filled-new-array {v3, v1}, [LQ3/f;

    move-result-object v1

    invoke-static {v1}, LR2/i;->m0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v2, LA3/h;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_4

    sget-object v1, LR2/u;->c:LR2/u;

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v2, 0xc

    invoke-static {v1, v3, v5, v2}, Lf1/a;->b0(LQ3/f;Ljava/lang/String;Ljava/lang/String;I)LQ3/f;

    move-result-object v2

    if-nez v2, :cond_3

    const/16 v2, 0x8

    invoke-static {v1, v6, v5, v2}, Lf1/a;->b0(LQ3/f;Ljava/lang/String;Ljava/lang/String;I)LQ3/f;

    move-result-object v2

    :cond_3
    invoke-static {v2}, LR2/n;->z0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ3/f;

    invoke-virtual {p0, v2}, LE3/q;->L(LQ3/f;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr3/K;

    new-instance v4, LE3/p;

    invoke-direct {v4, p1, v0, p0}, LE3/p;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, LE3/q;->E(Lr3/K;Lc3/b;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Lr3/U;->T()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p1}, Lu3/o;->getName()LQ3/f;

    move-result-object v3

    invoke-virtual {v3}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "function.name.asString()"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3, v7}, Ls4/h;->s(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_9
    return v0

    :cond_a
    :goto_3
    sget-object v1, LA3/I;->a:LA3/n;

    invoke-virtual {p1}, Lu3/o;->getName()LQ3/f;

    move-result-object v1

    const-string v2, "name"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, LA3/I;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ3/f;

    if-nez v1, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p0, v1}, LE3/q;->K(LQ3/f;)Ljava/util/LinkedHashSet;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lu3/N;

    const-string v7, "<this>"

    invoke-static {v7, v6}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6}, Li3/x;->R(Lr3/c;)Lr3/c;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_e
    invoke-interface {p1}, Lr3/s;->e0()Lr3/r;

    move-result-object v3

    invoke-interface {v3, v1}, Lr3/r;->A(LQ3/f;)Lr3/r;

    invoke-interface {v3}, Lr3/r;->O()Lr3/r;

    invoke-interface {v3}, Lr3/r;->l()Lr3/r;

    invoke-interface {v3}, Lr3/r;->j()Lr3/s;

    move-result-object v1

    invoke-static {v1}, Ld3/i;->b(Ljava/lang/Object;)V

    check-cast v1, Lu3/N;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu3/N;

    invoke-static {v4, v1}, LE3/q;->G(Lu3/N;Lu3/N;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto/16 :goto_9

    :cond_11
    :goto_5
    sget v1, LA3/g;->m:I

    invoke-virtual {p1}, Lu3/o;->getName()LQ3/f;

    move-result-object v1

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, LA3/g;->b(LQ3/f;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {p1}, Lu3/o;->getName()LQ3/f;

    move-result-object v1

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, LE3/q;->K(LQ3/f;)Ljava/util/LinkedHashSet;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu3/N;

    invoke-static {v4}, LA3/g;->a(Lr3/s;)Lr3/s;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_7

    :cond_15
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr3/s;

    invoke-static {p1, v3}, LE3/q;->M(Lu3/N;Lr3/s;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_9

    :cond_17
    :goto_7
    invoke-static {p1}, LE3/q;->D(Lu3/N;)Lu3/N;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_8

    :cond_18
    invoke-virtual {p1}, Lu3/o;->getName()LQ3/f;

    move-result-object p1

    invoke-static {v2, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, LE3/q;->K(LQ3/f;)Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_8

    :cond_19
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu3/N;

    invoke-interface {p1}, Lr3/s;->h()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {v1, p1}, LE3/q;->F(Lr3/b;Lr3/b;)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_9

    :cond_1b
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public final O(LQ3/f;Lz3/b;)V
    .locals 0

    const-string p2, "name"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, LE3/C;->b:LD3/e;

    iget-object p1, p1, LD3/e;->d:Ljava/lang/Object;

    check-cast p1, LD3/a;

    iget-object p1, p1, LD3/a;->n:Lz3/a;

    const-string p2, "<this>"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "scopeOwner"

    iget-object p0, p0, LE3/q;->n:Lr3/e;

    invoke-static {p1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(LQ3/f;Lz3/b;)Lr3/g;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, LE3/q;->O(LQ3/f;Lz3/b;)V

    iget-object p2, p0, LE3/C;->c:LE3/C;

    check-cast p2, LE3/q;

    if-eqz p2, :cond_0

    iget-object p2, p2, LE3/q;->u:Lg4/j;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr3/e;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LE3/q;->u:Lg4/j;

    invoke-virtual {p0, p1}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lr3/g;

    :goto_0
    return-object p2
.end method

.method public final d(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, LE3/q;->O(LQ3/f;Lz3/b;)V

    invoke-super {p0, p1, p2}, LE3/C;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final g(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, LE3/q;->O(LQ3/f;Lz3/b;)V

    invoke-super {p0, p1, p2}, LE3/C;->g(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final h(La4/f;La4/l;)Ljava/util/Set;
    .locals 0

    const-string p2, "kindFilter"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, LE3/q;->r:Lg4/i;

    invoke-virtual {p1}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object p0, p0, LE3/q;->t:Lg4/i;

    invoke-virtual {p0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, p0}, LR2/B;->S(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0
.end method

.method public final i(La4/f;La4/l;)Ljava/util/Set;
    .locals 4

    const-string v0, "kindFilter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LE3/q;->n:Lr3/e;

    invoke-interface {v0}, Lr3/g;->H()Lh4/J;

    move-result-object v1

    invoke-interface {v1}, Lh4/J;->j()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh4/v;

    invoke-virtual {v3}, Lh4/v;->q0()La4/o;

    move-result-object v3

    invoke-interface {v3}, La4/o;->a()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, LE3/C;->e:Lg4/i;

    invoke-virtual {v1}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LE3/c;

    invoke-interface {v3}, LE3/c;->e()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE3/c;

    invoke-interface {v1}, LE3/c;->b()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, p2}, LE3/q;->h(La4/f;La4/l;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, LE3/C;->b:LD3/e;

    iget-object p1, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast p1, LD3/a;

    iget-object p1, p1, LD3/a;->x:LY3/e;

    check-cast p1, LY3/a;

    invoke-virtual {p1, p0, v0}, LY3/a;->e(LD3/e;Lr3/e;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method public final j(LQ3/f;Ljava/util/ArrayList;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "name"

    invoke-static {v3, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v0, LE3/q;->o:Lx3/o;

    invoke-virtual {v3}, Lx3/o;->e()Z

    move-result v3

    iget-object v4, v0, LE3/q;->n:Lr3/e;

    iget-object v5, v0, LE3/C;->b:LD3/e;

    if-eqz v3, :cond_3

    iget-object v3, v0, LE3/C;->e:Lg4/i;

    invoke-virtual {v3}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LE3/c;

    invoke-interface {v6, v1}, LE3/c;->a(LQ3/f;)Lx3/A;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lu3/N;

    invoke-virtual {v7}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v3}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LE3/c;

    invoke-interface {v3, v1}, LE3/c;->a(LQ3/f;)Lx3/A;

    move-result-object v3

    invoke-static {v3}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-static {v5, v3}, LW1/a;->g0(LD3/e;LH3/b;)LD3/c;

    move-result-object v6

    invoke-virtual {v3}, Lx3/w;->b()LQ3/f;

    move-result-object v7

    iget-object v8, v5, LD3/e;->d:Ljava/lang/Object;

    check-cast v8, LD3/a;

    iget-object v9, v8, LD3/a;->j:Lw3/d;

    invoke-virtual {v9, v3}, Lw3/d;->c(LH3/c;)Lw3/f;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v4, v6, v7, v9, v10}, LC3/f;->f1(Lr3/j;LD3/c;LQ3/f;Lw3/f;Z)LC3/f;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x2

    const/4 v15, 0x0

    invoke-static {v10, v15, v15, v7, v9}, LL2/b;->N(IZZLu3/j;I)LF3/a;

    move-result-object v7

    invoke-virtual {v3}, Lx3/A;->e()LH3/d;

    move-result-object v3

    iget-object v9, v5, LD3/e;->h:Ljava/lang/Object;

    check-cast v9, Lcom/google/firebase/messaging/p;

    invoke-virtual {v9, v3, v7}, Lcom/google/firebase/messaging/p;->K(LH3/d;LF3/a;)Lh4/v;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, LE3/q;->p()Lu3/w;

    move-result-object v13

    sget-object v16, LR2/u;->c:LR2/u;

    sget-object v19, Lr3/n;->e:LA3/p;

    const/16 v20, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x3

    move-object v11, v6

    move-object/from16 v14, v16

    move v0, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v11 .. v20}, LC3/f;->e1(Lu3/w;Lu3/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lh4/v;ILA3/p;LR2/v;)Lu3/N;

    invoke-virtual {v6, v0, v0}, LC3/f;->g1(ZZ)V

    iget-object v0, v8, LD3/a;->g:LB3/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    iget-object v0, v5, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->x:LY3/e;

    check-cast v0, LY3/a;

    invoke-virtual {v0, v5, v4, v1, v2}, LY3/a;->b(LD3/e;Lr3/e;LQ3/f;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final k()LE3/c;
    .locals 2

    new-instance v0, LE3/a;

    sget-object v1, LE3/k;->e:LE3/k;

    iget-object p0, p0, LE3/q;->o:Lx3/o;

    invoke-direct {v0, p0, v1}, LE3/a;-><init>(Lx3/o;Lc3/b;)V

    return-object v0
.end method

.method public final m(Ljava/util/LinkedHashSet;LQ3/f;)V
    .locals 14

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v0, "name"

    invoke-static {v0, v8}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, LE3/q;->K(LQ3/f;)Ljava/util/LinkedHashSet;

    move-result-object v11

    sget-object v0, LA3/I;->a:LA3/n;

    sget-object v0, LA3/I;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget v0, LA3/g;->m:I

    invoke-static/range {p2 .. p2}, LA3/g;->b(LQ3/f;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/s;

    invoke-interface {v1}, Lr3/s;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lu3/N;

    invoke-virtual {p0, v3}, LE3/q;->N(Lu3/N;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, v8, v0, v10}, LE3/q;->y(Ljava/util/LinkedHashSet;LQ3/f;Ljava/util/ArrayList;Z)V

    return-void

    :cond_5
    :goto_2
    new-instance v12, Lq4/h;

    invoke-direct {v12}, Lq4/h;-><init>()V

    sget-object v2, LR2/u;->c:LR2/u;

    sget-object v4, Ld4/k;->a:Ld4/j;

    iget-object v0, v6, LE3/C;->b:LD3/e;

    iget-object v0, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->u:Li4/k;

    check-cast v0, Li4/l;

    iget-object v5, v0, Li4/l;->d:LT3/n;

    iget-object v3, v6, LE3/q;->n:Lr3/e;

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-static/range {v0 .. v5}, Li3/x;->S0(LQ3/f;Ljava/util/AbstractCollection;Ljava/util/Collection;Lr3/e;Ld4/k;LT3/n;)Ljava/util/LinkedHashSet;

    move-result-object v13

    new-instance v5, LE3/l;

    invoke-direct {v5, v9, p0, v10}, LE3/l;-><init>(ILjava/lang/Object;I)V

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, p1

    move-object v3, v13

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, LE3/q;->z(LQ3/f;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/AbstractSet;Lc3/b;)V

    new-instance v5, LE3/l;

    invoke-direct {v5, v9, p0, v9}, LE3/l;-><init>(ILjava/lang/Object;I)V

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, p1

    move-object v3, v13

    move-object v4, v12

    invoke-virtual/range {v0 .. v5}, LE3/q;->z(LQ3/f;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/AbstractSet;Lc3/b;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lu3/N;

    invoke-virtual {p0, v3}, LE3/q;->N(Lu3/N;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {v0, v12}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v8, v0, v9}, LE3/q;->y(Ljava/util/LinkedHashSet;LQ3/f;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public final n(LQ3/f;Ljava/util/ArrayList;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    const-string v2, "name"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, LE3/q;->o:Lx3/o;

    iget-object v2, v2, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isAnnotation()Z

    move-result v2

    iget-object v3, v0, LE3/C;->b:LD3/e;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, LE3/C;->e:Lg4/i;

    invoke-virtual {v2}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LE3/c;

    invoke-interface {v2, v1}, LE3/c;->f(LQ3/f;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, LR2/m;->c1(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx3/x;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3, v2}, LW1/a;->g0(LD3/e;LH3/b;)LD3/c;

    move-result-object v8

    invoke-virtual {v2}, Lx3/w;->d()Lr3/f0;

    move-result-object v5

    invoke-static {v5}, LL2/b;->O(Lr3/f0;)LA3/p;

    move-result-object v9

    invoke-virtual {v2}, Lx3/w;->b()LQ3/f;

    move-result-object v11

    iget-object v5, v3, LD3/e;->d:Ljava/lang/Object;

    check-cast v5, LD3/a;

    iget-object v5, v5, LD3/a;->j:Lw3/d;

    invoke-virtual {v5, v2}, Lw3/d;->c(LH3/c;)Lw3/f;

    move-result-object v12

    iget-object v7, v0, LE3/q;->n:Lr3/e;

    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, LC3/g;->Z0(Lr3/j;LD3/c;LA3/p;ZLQ3/f;Lw3/f;Z)LC3/g;

    move-result-object v5

    sget-object v7, Ls3/g;->a:Ls3/f;

    invoke-static {v5, v7}, LZ0/j;->z(Lr3/K;Ls3/h;)Lu3/L;

    move-result-object v7

    invoke-virtual {v5, v7, v4, v4, v4}, Lu3/K;->V0(Lu3/L;Lu3/M;Lu3/t;Lu3/t;)V

    const-string v8, "<this>"

    invoke-static {v8, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v8, LD3/f;

    const/4 v9, 0x0

    invoke-direct {v8, v3, v5, v2, v9}, LD3/f;-><init>(LD3/e;Lr3/j;LH3/e;I)V

    new-instance v9, LD3/e;

    iget-object v10, v3, LD3/e;->d:Ljava/lang/Object;

    check-cast v10, LD3/a;

    iget-object v11, v3, LD3/e;->f:Ljava/lang/Object;

    check-cast v11, LQ2/c;

    invoke-direct {v9, v10, v8, v11}, LD3/e;-><init>(LD3/a;LD3/g;LQ2/c;)V

    invoke-static {v2, v9}, LE3/C;->l(Lx3/x;LD3/e;)Lh4/v;

    move-result-object v2

    sget-object v19, LR2/u;->c:LR2/u;

    invoke-virtual/range {p0 .. p0}, LE3/q;->p()Lu3/w;

    move-result-object v17

    const/16 v18, 0x0

    move-object v14, v5

    move-object v15, v2

    move-object/from16 v16, v19

    invoke-virtual/range {v14 .. v19}, Lu3/K;->Y0(Lh4/v;Ljava/util/List;Lu3/w;Lu3/w;Ljava/util/List;)V

    invoke-virtual {v7, v2}, Lu3/L;->T0(Lh4/v;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p1}, LE3/q;->L(LQ3/f;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    new-instance v5, Lq4/h;

    invoke-direct {v5}, Lq4/h;-><init>()V

    new-instance v7, Lq4/h;

    invoke-direct {v7}, Lq4/h;-><init>()V

    new-instance v8, LE3/m;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, LE3/m;-><init>(LE3/q;I)V

    invoke-virtual {v0, v2, v6, v5, v8}, LE3/q;->A(Ljava/util/Set;Ljava/util/AbstractCollection;Lq4/h;Lc3/b;)V

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v2}, LR2/m;->j1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    goto :goto_2

    :cond_3
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v5, v8

    :goto_2
    new-instance v8, LE3/m;

    const/4 v9, 0x1

    invoke-direct {v8, v0, v9}, LE3/m;-><init>(LE3/q;I)V

    invoke-virtual {v0, v5, v7, v4, v8}, LE3/q;->A(Ljava/util/Set;Ljava/util/AbstractCollection;Lq4/h;Lc3/b;)V

    invoke-static {v2, v7}, LR2/B;->S(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v2

    iget-object v3, v3, LD3/e;->d:Ljava/lang/Object;

    check-cast v3, LD3/a;

    iget-object v4, v3, LD3/a;->f:Ld4/k;

    iget-object v3, v3, LD3/a;->u:Li4/k;

    check-cast v3, Li4/l;

    iget-object v5, v3, Li4/l;->d:LT3/n;

    iget-object v3, v0, LE3/q;->n:Lr3/e;

    move-object/from16 v0, p1

    move-object v1, v2

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v5}, Li3/x;->S0(LQ3/f;Ljava/util/AbstractCollection;Ljava/util/Collection;Lr3/e;Ld4/k;LT3/n;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final o(La4/f;)Ljava/util/Set;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, LE3/q;->o:Lx3/o;

    iget-object p1, p1, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isAnnotation()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LE3/C;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/LinkedHashSet;

    iget-object v0, p0, LE3/C;->e:Lg4/i;

    invoke-virtual {v0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE3/c;

    invoke-interface {v0}, LE3/c;->d()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, LE3/q;->n:Lr3/e;

    invoke-interface {p0}, Lr3/g;->H()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->j()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/v;

    invoke-virtual {v0}, Lh4/v;->q0()La4/o;

    move-result-object v0

    invoke-interface {v0}, La4/o;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final p()Lu3/w;
    .locals 1

    iget-object p0, p0, LE3/q;->n:Lr3/e;

    if-eqz p0, :cond_0

    sget v0, LT3/e;->a:I

    invoke-interface {p0}, Lr3/e;->H0()Lu3/w;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, LT3/e;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final q()Lr3/j;
    .locals 0

    iget-object p0, p0, LE3/q;->n:Lr3/e;

    return-object p0
.end method

.method public final r(LC3/f;)Z
    .locals 1

    iget-object v0, p0, LE3/q;->o:Lx3/o;

    iget-object v0, v0, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, LE3/q;->N(Lu3/N;)Z

    move-result p0

    return p0
.end method

.method public final s(Lx3/x;Ljava/util/ArrayList;Lh4/v;Ljava/util/List;)LE3/y;
    .locals 1

    const-string v0, "method"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "valueParameters"

    invoke-static {p1, p4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, LE3/C;->b:LD3/e;

    iget-object p1, p1, LD3/e;->d:Ljava/lang/Object;

    check-cast p1, LD3/a;

    iget-object p1, p1, LD3/a;->e:LB3/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LE3/q;->n:Lr3/e;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, LE3/y;

    invoke-direct {p1, p3, p4, p2, p0}, LE3/y;-><init>(Lh4/v;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    return-object p1

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0}, LL2/b;->a(I)V

    throw p1

    :cond_1
    const/4 p0, 0x1

    invoke-static {p0}, LB3/j;->a(I)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lazy Java member scope for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LE3/q;->o:Lx3/o;

    invoke-virtual {p0}, Lx3/o;->b()LQ3/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(Ljava/util/ArrayList;LC3/b;ILx3/x;Lh4/v;Lh4/v;)V
    .locals 14

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    sget-object v4, Ls3/g;->a:Ls3/f;

    invoke-virtual/range {p4 .. p4}, Lx3/w;->b()LQ3/f;

    move-result-object v5

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lh4/X;->h(Lh4/v;Z)Lh4/Z;

    move-result-object v7

    iget-object v1, v0, Lx3/x;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lx3/d;->a:Ljava/util/List;

    const-class v9, Ljava/lang/Enum;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Lx3/t;

    check-cast v1, Ljava/lang/Enum;

    invoke-direct {v8, v3, v1}, Lx3/t;-><init>(LQ3/f;Ljava/lang/Enum;)V

    goto :goto_0

    :cond_0
    instance-of v8, v1, Ljava/lang/annotation/Annotation;

    if-eqz v8, :cond_1

    new-instance v8, Lx3/g;

    check-cast v1, Ljava/lang/annotation/Annotation;

    invoke-direct {v8, v3, v1}, Lx3/g;-><init>(LQ3/f;Ljava/lang/annotation/Annotation;)V

    goto :goto_0

    :cond_1
    instance-of v8, v1, [Ljava/lang/Object;

    if-eqz v8, :cond_2

    new-instance v8, Lx3/h;

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {v8, v3, v1}, Lx3/h;-><init>(LQ3/f;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v8, v1, Ljava/lang/Class;

    if-eqz v8, :cond_3

    new-instance v8, Lx3/p;

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v8, v3, v1}, Lx3/p;-><init>(LQ3/f;Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    new-instance v8, Lx3/v;

    invoke-direct {v8, v3, v1}, Lx3/v;-><init>(LQ3/f;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move-object v8, v3

    :goto_0
    if-eqz v8, :cond_5

    const/4 v1, 0x1

    move v8, v1

    goto :goto_1

    :cond_5
    move v8, v6

    :goto_1
    if-eqz v2, :cond_6

    invoke-static {v2, v6}, Lh4/X;->h(Lh4/v;Z)Lh4/Z;

    move-result-object v1

    move-object v10, v1

    move-object v1, p0

    goto :goto_2

    :cond_6
    move-object v1, p0

    move-object v10, v3

    :goto_2
    iget-object v1, v1, LE3/C;->b:LD3/e;

    iget-object v1, v1, LD3/e;->d:Ljava/lang/Object;

    check-cast v1, LD3/a;

    iget-object v1, v1, LD3/a;->j:Lw3/d;

    invoke-virtual {v1, v0}, Lw3/d;->c(LH3/c;)Lw3/f;

    move-result-object v11

    new-instance v12, Lu3/V;

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    move-object v0, v12

    move-object/from16 v1, p2

    move/from16 v3, p3

    move-object v6, v7

    move v7, v8

    move v8, v9

    move v9, v13

    invoke-direct/range {v0 .. v11}, Lu3/V;-><init>(Lr3/b;Lu3/V;ILs3/h;LQ3/f;Lh4/v;ZZZLh4/v;Lr3/N;)V

    move-object v0, p1

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    const/4 v0, 0x2

    invoke-static {v0}, Lh4/X;->a(I)V

    throw v3
.end method

.method public final y(Ljava/util/LinkedHashSet;LQ3/f;Ljava/util/ArrayList;Z)V
    .locals 7

    iget-object v0, p0, LE3/C;->b:LD3/e;

    iget-object v0, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v5, v0, LD3/a;->f:Ld4/k;

    iget-object v0, v0, LD3/a;->u:Li4/k;

    check-cast v0, Li4/l;

    iget-object v6, v0, Li4/l;->d:LT3/n;

    iget-object v4, p0, LE3/q;->n:Lr3/e;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Li3/x;->S0(LQ3/f;Ljava/util/AbstractCollection;Ljava/util/Collection;Lr3/e;Ld4/k;LT3/n;)Ljava/util/LinkedHashSet;

    move-result-object p0

    if-nez p4, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_0
    invoke-static {p1, p0}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lu3/N;

    invoke-static {p4}, Li3/x;->S(Lr3/c;)Lr3/c;

    move-result-object v0

    check-cast v0, Lu3/N;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p4, v0, p2}, LE3/q;->C(Lu3/N;Lr3/s;Ljava/util/AbstractCollection;)Lu3/N;

    move-result-object p4

    :goto_1
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :goto_2
    return-void
.end method

.method public final z(LQ3/f;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/AbstractSet;Lc3/b;)V
    .locals 8

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/N;

    invoke-static {v0}, Li3/x;->R(Lr3/c;)Lr3/c;

    move-result-object v1

    check-cast v1, Lu3/N;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-static {v1}, Li3/x;->N(Lr3/c;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-static {v3}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v3

    invoke-interface {p5, v3}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu3/N;

    invoke-interface {v4}, Lr3/s;->e0()Lr3/r;

    move-result-object v4

    invoke-interface {v4, p1}, Lr3/r;->A(LQ3/f;)Lr3/r;

    invoke-interface {v4}, Lr3/r;->O()Lr3/r;

    invoke-interface {v4}, Lr3/r;->l()Lr3/r;

    invoke-interface {v4}, Lr3/r;->j()Lr3/s;

    move-result-object v4

    invoke-static {v4}, Ld3/i;->b(Ljava/lang/Object;)V

    check-cast v4, Lu3/N;

    invoke-static {v1, v4}, LE3/q;->G(Lu3/N;Lu3/N;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4, v1, p2}, LE3/q;->C(Lu3/N;Lr3/s;Ljava/util/AbstractCollection;)Lu3/N;

    move-result-object v1

    :goto_1
    invoke-static {p4, v1}, Lq4/k;->b(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-static {v0}, LA3/g;->a(Lr3/s;)Lr3/s;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    move-object v1, v2

    goto/16 :goto_6

    :cond_4
    move-object v3, v1

    check-cast v3, Lu3/o;

    invoke-virtual {v3}, Lu3/o;->getName()LQ3/f;

    move-result-object v3

    const-string v4, "overridden.name"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p5, v3}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lu3/N;

    invoke-static {v5, v1}, LE3/q;->M(Lu3/N;Lr3/s;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_6
    move-object v4, v2

    :goto_2
    check-cast v4, Lu3/N;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lr3/s;->e0()Lr3/r;

    move-result-object v3

    invoke-interface {v1}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v5

    const-string v6, "overridden.valueParameters"

    invoke-static {v6, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lu3/V;

    check-cast v7, Lu3/W;

    invoke-virtual {v7}, Lu3/W;->e()Lh4/v;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v4

    const-string v5, "override.valueParameters"

    invoke-static {v5, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6, v4, v1}, Li3/x;->v(Ljava/util/ArrayList;Ljava/util/List;Lr3/b;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v3, v4}, Lr3/r;->o(Ljava/util/List;)Lr3/r;

    invoke-interface {v3}, Lr3/r;->O()Lr3/r;

    invoke-interface {v3}, Lr3/r;->l()Lr3/r;

    invoke-interface {v3}, Lr3/r;->D()Lr3/r;

    invoke-interface {v3}, Lr3/r;->j()Lr3/s;

    move-result-object v3

    check-cast v3, Lu3/N;

    goto :goto_4

    :cond_8
    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_3

    invoke-virtual {p0, v3}, LE3/q;->N(Lu3/N;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    move-object v3, v2

    :goto_5
    if-eqz v3, :cond_3

    invoke-static {v3, v1, p2}, LE3/q;->C(Lu3/N;Lr3/s;Ljava/util/AbstractCollection;)Lu3/N;

    move-result-object v1

    :goto_6
    invoke-static {p4, v1}, Lq4/k;->b(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-interface {v0}, Lr3/s;->h()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Lu3/o;->getName()LQ3/f;

    move-result-object v1

    const-string v3, "descriptor.name"

    invoke-static {v3, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p5, v1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu3/N;

    invoke-static {v3}, LE3/q;->D(Lu3/N;)Lu3/N;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-static {v3, v0}, LE3/q;->F(Lr3/b;Lr3/b;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_7

    :cond_c
    move-object v3, v2

    :goto_7
    if-eqz v3, :cond_b

    move-object v2, v3

    :cond_d
    :goto_8
    invoke-static {p4, v2}, Lq4/k;->b(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    return-void
.end method
