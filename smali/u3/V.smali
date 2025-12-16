.class public Lu3/V;
.super Lu3/W;
.source "SourceFile"

# interfaces
.implements Lr3/I;
.implements Lr3/U;


# instance fields
.field public final h:I

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Lh4/v;

.field public final m:Lu3/V;


# direct methods
.method public constructor <init>(Lr3/b;Lu3/V;ILs3/h;LQ3/f;Lh4/v;ZZZLh4/v;Lr3/N;)V
    .locals 7

    move-object v6, p0

    const-string v0, "containingDeclaration"

    move-object v1, p1

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "annotations"

    move-object v2, p4

    invoke-static {v0, p4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "name"

    move-object v3, p5

    invoke-static {v0, p5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "outType"

    move-object v4, p6

    invoke-static {v0, p6}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "source"

    move-object/from16 v5, p11

    invoke-static {v0, v5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lu3/W;-><init>(Lr3/j;Ls3/h;LQ3/f;Lh4/v;Lr3/N;)V

    move v0, p3

    iput v0, v6, Lu3/V;->h:I

    move v0, p7

    iput-boolean v0, v6, Lu3/V;->i:Z

    move v0, p8

    iput-boolean v0, v6, Lu3/V;->j:Z

    move/from16 v0, p9

    iput-boolean v0, v6, Lu3/V;->k:Z

    move-object/from16 v0, p10

    iput-object v0, v6, Lu3/V;->l:Lh4/v;

    if-nez p2, :cond_0

    move-object v0, v6

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, v6, Lu3/V;->m:Lu3/V;

    return-void
.end method


# virtual methods
.method public final F0(Lr3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lr3/l;->P(Lu3/V;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic P0()Lr3/k;
    .locals 0

    invoke-virtual {p0}, Lu3/V;->T0()Lu3/V;

    move-result-object p0

    return-object p0
.end method

.method public Q0(Lp3/g;LQ3/f;I)Lu3/V;
    .locals 13

    move-object v0, p0

    new-instance v12, Lu3/V;

    invoke-virtual {p0}, LK3/c;->t()Ls3/h;

    move-result-object v4

    const-string v1, "annotations"

    invoke-static {v1, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lu3/W;->e()Lh4/v;

    move-result-object v6

    const-string v1, "type"

    invoke-static {v1, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lu3/V;->R0()Z

    move-result v7

    sget-object v11, Lr3/N;->a:Lr3/M;

    iget-boolean v9, v0, Lu3/V;->k:Z

    iget-object v10, v0, Lu3/V;->l:Lh4/v;

    const/4 v2, 0x0

    iget-boolean v8, v0, Lu3/V;->j:Z

    move-object v0, v12

    move-object v1, p1

    move/from16 v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v11}, Lu3/V;-><init>(Lr3/b;Lu3/V;ILs3/h;LQ3/f;Lh4/v;ZZZLh4/v;Lr3/N;)V

    return-object v12
.end method

.method public final R0()Z
    .locals 1

    iget-boolean v0, p0, Lu3/V;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu3/V;->S0()Lr3/b;

    move-result-object p0

    check-cast p0, Lr3/c;

    invoke-interface {p0}, Lr3/c;->k0()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final S0()Lr3/b;
    .locals 1

    invoke-super {p0}, Lu3/p;->l()Lr3/j;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor"

    invoke-static {v0, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lr3/b;

    return-object p0
.end method

.method public final T()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final T0()Lu3/V;
    .locals 1

    iget-object v0, p0, Lu3/V;->m:Lu3/V;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lu3/V;->T0()Lu3/V;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic a()Lr3/b;
    .locals 0

    invoke-virtual {p0}, Lu3/V;->T0()Lu3/V;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()Lr3/j;
    .locals 0

    invoke-virtual {p0}, Lu3/V;->T0()Lu3/V;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lh4/V;)Lr3/k;
    .locals 1

    const-string v0, "substitutor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p1, Lh4/V;->a:Lh4/S;

    invoke-virtual {p1}, Lh4/S;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final c()LA3/p;
    .locals 1

    sget-object p0, Lr3/n;->f:LA3/p;

    const-string v0, "LOCAL"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final bridge synthetic g0()LV3/g;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic l()Lr3/j;
    .locals 0

    invoke-virtual {p0}, Lu3/V;->S0()Lr3/b;

    move-result-object p0

    return-object p0
.end method

.method public final p()Ljava/util/Collection;
    .locals 4

    invoke-virtual {p0}, Lu3/V;->S0()Lr3/b;

    move-result-object v0

    invoke-interface {v0}, Lr3/b;->p()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "containingDeclaration.overriddenDescriptors"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/b;

    invoke-interface {v2}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lu3/V;->h:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu3/V;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
