.class public final Lj4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/K;


# instance fields
.field public final synthetic c:Lu3/K;


# direct methods
.method public constructor <init>()V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lj4/i;->a:Lj4/i;

    sget-object v1, Lj4/i;->c:Lj4/a;

    sget-object v3, Lr3/n;->e:LA3/p;

    const-string v0, "<Error property>"

    invoke-static {v0}, LQ3/f;->g(Ljava/lang/String;)LQ3/f;

    move-result-object v5

    sget-object v7, Lr3/N;->a:Lr3/M;

    const/4 v4, 0x1

    const/4 v2, 0x3

    const/4 v6, 0x1

    invoke-static/range {v1 .. v7}, Lu3/K;->S0(Lr3/j;ILA3/p;ZLQ3/f;ILr3/N;)Lu3/K;

    move-result-object v0

    sget-object v9, Lj4/i;->e:Lj4/f;

    sget-object v13, LR2/u;->c:LR2/u;

    const/4 v12, 0x0

    const/4 v11, 0x0

    move-object v8, v0

    move-object v10, v13

    invoke-virtual/range {v8 .. v13}, Lu3/K;->Y0(Lh4/v;Ljava/util/List;Lu3/w;Lu3/w;Ljava/util/List;)V

    iput-object v0, p0, Lj4/d;->c:Lu3/K;

    return-void
.end method


# virtual methods
.method public final C0()Z
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    iget-boolean p0, p0, Lu3/K;->p:Z

    return p0
.end method

.method public final D()Z
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/K;->D()Z

    move-result p0

    return p0
.end method

.method public final E(Lr3/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final F()Lu3/w;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    iget-object p0, p0, Lu3/K;->w:Lu3/w;

    return-object p0
.end method

.method public final F0(Lr3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0, p2}, Lr3/l;->h(Lr3/K;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final G()Z
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    iget-boolean p0, p0, Lu3/K;->u:Z

    return p0
.end method

.method public final M(Ljava/util/Collection;)V
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0, p1}, Lu3/K;->M(Ljava/util/Collection;)V

    return-void
.end method

.method public final P()Z
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    iget-boolean p0, p0, Lu3/K;->q:Z

    return p0
.end method

.method public final T()Z
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    iget-boolean p0, p0, Lu3/K;->h:Z

    return p0
.end method

.method public final a()Lr3/K;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/K;->a()Lr3/K;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lr3/b;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/K;->a()Lr3/K;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lr3/c;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/K;->a()Lr3/K;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lr3/j;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/K;->a()Lr3/K;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lh4/V;)Lr3/K;
    .locals 1

    const-string v0, "substitutor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0, p1}, Lu3/K;->b(Lh4/V;)Lr3/K;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic b(Lh4/V;)Lr3/k;
    .locals 0

    invoke-virtual {p0, p1}, Lj4/d;->b(Lh4/V;)Lr3/K;

    move-result-object p0

    return-object p0
.end method

.method public final c()LA3/p;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/K;->c()LA3/p;

    move-result-object p0

    return-object p0
.end method

.method public final d0()Lu3/w;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    iget-object p0, p0, Lu3/K;->x:Lu3/w;

    return-object p0
.end method

.method public final e()Lh4/v;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/W;->e()Lh4/v;

    move-result-object p0

    return-object p0
.end method

.method public final f()Lu3/M;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    iget-object p0, p0, Lu3/K;->A:Lu3/M;

    return-object p0
.end method

.method public final g0()LV3/g;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/K;->g0()LV3/g;

    move-result-object p0

    return-object p0
.end method

.method public final getName()LQ3/f;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/o;->getName()LQ3/f;

    move-result-object p0

    return-object p0
.end method

.method public final i()I
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/K;->i()I

    move-result p0

    return p0
.end method

.method public final i0()Lu3/t;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    iget-object p0, p0, Lu3/K;->C:Lu3/t;

    return-object p0
.end method

.method public final j0()Z
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    iget-boolean p0, p0, Lu3/K;->s:Z

    return p0
.end method

.method public final k0()I
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/K;->k0()I

    move-result p0

    return p0
.end method

.method public final l()Lr3/j;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/p;->l()Lr3/j;

    move-result-object p0

    return-object p0
.end method

.method public final m()Lr3/N;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/p;->m()Lr3/N;

    move-result-object p0

    return-object p0
.end method

.method public final n()Lh4/v;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/K;->n()Lh4/v;

    move-result-object p0

    return-object p0
.end method

.method public final o0()Z
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final p()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/K;->p()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final r()Lu3/L;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    iget-object p0, p0, Lu3/K;->z:Lu3/L;

    return-object p0
.end method

.method public final r0()Lu3/t;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    iget-object p0, p0, Lu3/K;->B:Lu3/t;

    return-object p0
.end method

.method public final t()Ls3/h;
    .locals 1

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, LK3/c;->t()Ls3/h;

    move-result-object p0

    const-string v0, "<get-annotations>(...)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final u()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/K;->u()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final v0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/K;->v0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final w()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/K;->w()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final w0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0}, Lu3/W;->w0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final x0(Lr3/j;ILA3/p;)Lr3/c;
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    invoke-virtual {p0, p1, p2, p3}, Lu3/K;->R0(Lr3/j;ILA3/p;)Lu3/K;

    move-result-object p0

    return-object p0
.end method

.method public final y()Z
    .locals 0

    iget-object p0, p0, Lj4/d;->c:Lu3/K;

    iget-boolean p0, p0, Lu3/K;->r:Z

    return p0
.end method
