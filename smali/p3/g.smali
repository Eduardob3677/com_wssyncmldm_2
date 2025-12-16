.class public final Lp3/g;
.super Lu3/N;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lr3/j;Lp3/g;IZ)V
    .locals 7

    sget-object v3, Ls3/g;->a:Ls3/f;

    sget-object v4, Ln4/s;->g:LQ3/f;

    sget-object v6, Lr3/N;->a:Lr3/M;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lu3/N;-><init>(Lr3/j;Lu3/N;Ls3/h;LQ3/f;ILr3/N;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lu3/v;->o:Z

    iput-boolean p4, p0, Lu3/v;->x:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lu3/v;->y:Z

    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final S0(ILQ3/f;Lr3/j;Lr3/s;Lr3/N;Ls3/h;)Lu3/v;
    .locals 0

    const-string p2, "newOwner"

    invoke-static {p2, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "kind"

    invoke-static {p1, p2}, LB/f;->x(ILjava/lang/String;)V

    const-string p2, "annotations"

    invoke-static {p2, p6}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lp3/g;

    check-cast p4, Lp3/g;

    iget-boolean p0, p0, Lu3/v;->x:Z

    invoke-direct {p2, p3, p4, p1, p0}, Lp3/g;-><init>(Lr3/j;Lp3/g;IZ)V

    return-object p2
.end method

.method public final T0(Lu3/u;)Lu3/v;
    .locals 8

    const-string v0, "configuration"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lu3/v;->T0(Lu3/u;)Lu3/v;

    move-result-object p0

    check-cast p0, Lp3/g;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lu3/v;->w0()Ljava/util/List;

    move-result-object p1

    const-string v0, "substituted.valueParameters"

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu3/V;

    check-cast v1, Lu3/W;

    invoke-virtual {v1}, Lu3/W;->e()Lh4/v;

    move-result-object v1

    const-string v2, "it.type"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lo3/f;->f(Lh4/v;)LQ3/f;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lu3/v;->w0()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu3/V;

    check-cast v1, Lu3/W;

    invoke-virtual {v1}, Lu3/W;->e()Lh4/v;

    move-result-object v1

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lo3/f;->f(Lh4/v;)LQ3/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lu3/v;->w0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    const/4 v1, 0x1

    const-string v2, "valueParameters"

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v3}, LR2/m;->l1(Ljava/util/List;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LQ2/e;

    iget-object v5, v4, LQ2/e;->c:Ljava/lang/Object;

    check-cast v5, LQ3/f;

    iget-object v4, v4, LQ2/e;->d:Ljava/lang/Object;

    check-cast v4, Lu3/V;

    check-cast v4, Lu3/o;

    invoke-virtual {v4}, Lu3/o;->getName()LQ3/f;

    move-result-object v4

    invoke-static {v5, v4}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_6
    invoke-virtual {p0}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v3}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu3/V;

    move-object v5, v4

    check-cast v5, Lu3/o;

    invoke-virtual {v5}, Lu3/o;->getName()LQ3/f;

    move-result-object v5

    const-string v6, "it.name"

    invoke-static {v6, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget v6, v4, Lu3/V;->h:I

    sub-int v7, v6, p1

    if-ltz v7, :cond_7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LQ3/f;

    if-eqz v7, :cond_7

    move-object v5, v7

    :cond_7
    invoke-virtual {v4, p0, v5, v6}, Lu3/V;->Q0(Lp3/g;LQ3/f;I)Lu3/V;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    sget-object p1, Lh4/V;->b:Lh4/V;

    invoke-virtual {p0, p1}, Lu3/v;->W0(Lh4/V;)Lu3/u;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    :cond_9
    move v1, v4

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ3/f;

    if-nez v3, :cond_b

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lu3/u;->x:Ljava/lang/Boolean;

    iput-object v2, p1, Lu3/u;->i:Ljava/util/List;

    invoke-virtual {p0}, Lu3/N;->c1()Lu3/N;

    move-result-object v0

    iput-object v0, p1, Lu3/u;->g:Lr3/s;

    invoke-super {p0, p1}, Lu3/v;->T0(Lu3/u;)Lu3/v;

    move-result-object p0

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    :cond_c
    :goto_3
    return-object p0
.end method

.method public final j()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
