.class public final Lf4/t;
.super Lu3/p;
.source "SourceFile"

# interfaces
.implements Lf4/k;
.implements Lr3/h;


# instance fields
.field public final g:LA3/p;

.field public h:Ljava/util/List;

.field public final i:Lu3/e;

.field public final j:Lg4/o;

.field public final k:LL3/T;

.field public final l:LN3/f;

.field public final m:Ls2/c;

.field public final n:LN3/g;

.field public final o:Lf4/j;

.field public p:Lh4/z;

.field public q:Lh4/z;

.field public r:Ljava/util/List;

.field public s:Lh4/z;


# direct methods
.method public constructor <init>(Lg4/o;Lr3/j;Ls3/h;LQ3/f;LA3/p;LL3/T;LN3/f;Ls2/c;LN3/g;Lf4/j;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "containingDeclaration"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "visibility"

    invoke-static {v0, p5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "proto"

    invoke-static {v0, p6}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, p7}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeTable"

    invoke-static {v0, p8}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v0, p9}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lr3/N;->a:Lr3/M;

    invoke-direct {p0, p2, p3, p4, v0}, Lu3/p;-><init>(Lr3/j;Ls3/h;LQ3/f;Lr3/N;)V

    iput-object p5, p0, Lf4/t;->g:LA3/p;

    new-instance p2, Lu3/e;

    invoke-direct {p2, p0}, Lu3/e;-><init>(Lf4/t;)V

    iput-object p2, p0, Lf4/t;->i:Lu3/e;

    iput-object p1, p0, Lf4/t;->j:Lg4/o;

    iput-object p6, p0, Lf4/t;->k:LL3/T;

    iput-object p7, p0, Lf4/t;->l:LN3/f;

    iput-object p8, p0, Lf4/t;->m:Ls2/c;

    iput-object p9, p0, Lf4/t;->n:LN3/g;

    iput-object p10, p0, Lf4/t;->o:Lf4/j;

    return-void
.end method


# virtual methods
.method public final B0()LN3/f;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final D()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final F0(Lr3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lr3/l;->w(Lf4/t;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final H()Lh4/J;
    .locals 0

    iget-object p0, p0, Lf4/t;->i:Lu3/e;

    return-object p0
.end method

.method public final P0()Lr3/k;
    .locals 0

    return-object p0
.end method

.method public final Q0()Lr3/e;
    .locals 2

    invoke-virtual {p0}, Lf4/t;->R0()Lh4/z;

    move-result-object v0

    invoke-static {v0}, Lh4/c;->i(Lh4/v;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf4/t;->R0()Lh4/z;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object p0

    instance-of v0, p0, Lr3/e;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lr3/e;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final R0()Lh4/z;
    .locals 0

    iget-object p0, p0, Lf4/t;->q:Lh4/z;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "expandedType"

    invoke-static {p0}, Ld3/i;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final S0()Lh4/z;
    .locals 0

    iget-object p0, p0, Lf4/t;->p:Lh4/z;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "underlyingType"

    invoke-static {p0}, Ld3/i;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final T0(Ljava/util/List;Lh4/z;Lh4/z;)V
    .locals 31

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v2, "underlyingType"

    invoke-static {v2, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "expandedType"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v2, p1

    iput-object v2, v8, Lf4/t;->h:Ljava/util/List;

    iput-object v0, v8, Lf4/t;->p:Lh4/z;

    iput-object v1, v8, Lf4/t;->q:Lh4/z;

    invoke-static/range {p0 .. p0}, Lp0/a;->f(Lr3/h;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, Lf4/t;->r:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lf4/t;->Q0()Lr3/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lr3/e;->f0()La4/o;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v5, v0

    goto :goto_2

    :cond_1
    :goto_1
    sget-object v0, La4/n;->b:La4/n;

    goto :goto_0

    :goto_2
    new-instance v6, Lu3/d;

    invoke-direct {v6, v8, v10}, Lu3/d;-><init>(Lf4/t;I)V

    sget-object v0, Lh4/X;->a:Lj4/f;

    invoke-static/range {p0 .. p0}, Lj4/i;->f(Lr3/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lj4/h;->m:Lj4/h;

    invoke-virtual/range {p0 .. p0}, Lf4/t;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object v0

    goto :goto_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lf4/t;->H()Lh4/J;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object v0, v2

    check-cast v0, Lu3/e;

    invoke-virtual {v0}, Lu3/e;->k()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lh4/X;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sget-object v0, Lh4/G;->d:Le/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lh4/G;->e:Lh4/G;

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lh4/d;->t(Lh4/G;Lh4/J;Ljava/util/List;ZLa4/o;Lc3/b;)Lh4/z;

    move-result-object v0

    :goto_3
    iput-object v0, v8, Lf4/t;->s:Lh4/z;

    invoke-virtual/range {p0 .. p0}, Lf4/t;->Q0()Lr3/e;

    move-result-object v0

    sget-object v12, LR2/u;->c:LR2/u;

    if-nez v0, :cond_3

    goto/16 :goto_b

    :cond_3
    invoke-interface {v0}, Lr3/e;->k()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "classDescriptor.constructors"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/k;

    sget-object v1, Lu3/S;->J:Lu3/Q;

    const-string v2, "it"

    invoke-static {v2, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "storageManager"

    iget-object v2, v8, Lf4/t;->j:Lg4/o;

    invoke-static {v1, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lf4/t;->Q0()Lr3/e;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v15, 0x0

    goto :goto_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lf4/t;->R0()Lh4/z;

    move-result-object v1

    invoke-static {v1}, Lh4/V;->d(Lh4/v;)Lh4/V;

    move-result-object v1

    move-object v15, v1

    :goto_5
    if-nez v15, :cond_5

    :goto_6
    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_5
    invoke-virtual {v0, v15}, Lu3/k;->g1(Lh4/V;)Lu3/k;

    move-result-object v21

    if-nez v21, :cond_6

    goto :goto_6

    :cond_6
    new-instance v7, Lu3/S;

    move-object v1, v0

    check-cast v1, LK3/c;

    invoke-virtual {v1}, LK3/c;->t()Ls3/h;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Lu3/v;

    invoke-virtual {v6}, Lu3/v;->k0()I

    move-result v4

    const-string v0, "constructor.kind"

    invoke-static {v4, v0}, LB/f;->E(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lu3/p;->m()Lr3/N;

    move-result-object v3

    const-string v0, "typeAliasDescriptor.source"

    invoke-static {v0, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v2

    move-object/from16 v2, p0

    move-object/from16 v17, v3

    move-object/from16 v3, v21

    move/from16 v18, v4

    move-object/from16 v4, v16

    move-object/from16 p1, v6

    move/from16 v6, v18

    move-object/from16 p2, v7

    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lu3/S;-><init>(Lg4/o;Lf4/t;Lu3/k;Lu3/P;Ls3/h;ILr3/N;)V

    invoke-virtual/range {p1 .. p1}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_d

    const/16 v20, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v1, v15

    move-object/from16 v15, p2

    move-object/from16 v17, v1

    invoke-static/range {v15 .. v20}, Lu3/v;->U0(Lr3/s;Ljava/util/List;Lh4/V;ZZ[Z)Ljava/util/ArrayList;

    move-result-object v27

    if-nez v27, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v0, v21

    check-cast v0, Lu3/v;

    iget-object v0, v0, Lu3/v;->i:Lh4/v;

    invoke-virtual {v0}, Lh4/v;->M0()Lh4/Z;

    move-result-object v0

    invoke-static {v0}, Lh4/c;->k(Lh4/v;)Lh4/z;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lf4/t;->q()Lh4/z;

    move-result-object v2

    invoke-static {v0, v2}, Lh4/c;->z(Lh4/z;Lh4/z;)Lh4/z;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v2, v0, Lu3/v;->l:Lu3/w;

    sget-object v3, Ls3/g;->a:Ls3/f;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lu3/w;->e()Lh4/v;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lh4/V;->h(ILh4/v;)Lh4/v;

    move-result-object v2

    move-object/from16 v4, p2

    invoke-static {v4, v2, v3}, LZ0/j;->E(Lr3/b;Lh4/v;Ls3/h;)Lu3/w;

    move-result-object v2

    move-object/from16 v23, v2

    goto :goto_7

    :cond_8
    move-object/from16 v4, p2

    const/16 v23, 0x0

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lf4/t;->Q0()Lr3/e;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lu3/v;->v0()Ljava/util/List;

    move-result-object v0

    const-string v5, "constructor.contextReceiverParameters"

    invoke-static {v5, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v6, v10

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v15, v6, 0x1

    if-ltz v6, :cond_9

    check-cast v7, Lu3/w;

    invoke-virtual {v7}, Lu3/w;->e()Lh4/v;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lh4/V;->h(ILh4/v;)Lh4/v;

    move-result-object v10

    invoke-virtual {v7}, Lu3/w;->Q0()Lb4/d;

    move-result-object v7

    const-string v9, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.receivers.ImplicitContextReceiver"

    invoke-static {v9, v7}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v7, Lb4/a;

    invoke-virtual {v7}, Lb4/a;->O0()LQ3/f;

    move-result-object v7

    new-instance v9, Lu3/w;

    new-instance v11, Lb4/a;

    invoke-direct {v11, v2, v10, v7}, Lb4/a;-><init>(Lr3/e;Lh4/v;LQ3/f;)V

    sget-object v7, LQ3/g;->a:LQ2/a;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "_context_receiver_"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v6

    invoke-direct {v9, v2, v11, v3, v6}, Lu3/w;-><init>(Lr3/j;LK3/c;Ls3/h;LQ3/f;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v15

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto :goto_8

    :cond_9
    invoke-static {}, LR2/n;->B0()V

    const/4 v0, 0x0

    throw v0

    :cond_a
    move-object/from16 v25, v5

    goto :goto_9

    :cond_b
    move-object/from16 v25, v12

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lf4/t;->s()Ljava/util/List;

    move-result-object v26

    const/16 v24, 0x0

    iget-object v0, v8, Lf4/t;->g:LA3/p;

    const/16 v29, 0x1

    move-object/from16 v22, v4

    move-object/from16 v30, v0

    invoke-virtual/range {v22 .. v30}, Lu3/v;->V0(Lu3/w;Lu3/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lh4/v;ILA3/p;)V

    move-object v7, v4

    :goto_a
    if-eqz v7, :cond_c

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_d
    const/16 v0, 0x1c

    invoke-static {v0}, Lu3/v;->I0(I)V

    const/4 v0, 0x0

    throw v0

    :cond_e
    :goto_b
    return-void

    :cond_f
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {v1}, Lh4/X;->a(I)V

    throw v0
.end method

.method public final Z()Ls2/c;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final a()Lr3/g;
    .locals 0

    return-object p0
.end method

.method public final a()Lr3/j;
    .locals 0

    return-object p0
.end method

.method public final b(Lh4/V;)Lr3/k;
    .locals 12

    const-string v0, "substitutor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lh4/V;->a:Lh4/S;

    invoke-virtual {v0}, Lh4/S;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lf4/t;

    invoke-virtual {p0}, Lu3/p;->l()Lr3/j;

    move-result-object v3

    const-string v1, "containingDeclaration"

    invoke-static {v1, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, LK3/c;->t()Ls3/h;

    move-result-object v4

    const-string v1, "annotations"

    invoke-static {v1, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lu3/o;->getName()LQ3/f;

    move-result-object v5

    const-string v1, "name"

    invoke-static {v1, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, p0, Lf4/t;->l:LN3/f;

    iget-object v9, p0, Lf4/t;->m:Ls2/c;

    iget-object v2, p0, Lf4/t;->j:Lg4/o;

    iget-object v6, p0, Lf4/t;->g:LA3/p;

    iget-object v7, p0, Lf4/t;->k:LL3/T;

    iget-object v10, p0, Lf4/t;->n:LN3/g;

    iget-object v11, p0, Lf4/t;->o:Lf4/j;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lf4/t;-><init>(Lg4/o;Lr3/j;Ls3/h;LQ3/f;LA3/p;LL3/T;LN3/f;Ls2/c;LN3/g;Lf4/j;)V

    invoke-virtual {p0}, Lf4/t;->s()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lf4/t;->S0()Lh4/z;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lh4/V;->h(ILh4/v;)Lh4/v;

    move-result-object v2

    invoke-static {v2}, Lh4/c;->b(Lh4/v;)Lh4/z;

    move-result-object v2

    invoke-virtual {p0}, Lf4/t;->R0()Lh4/z;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lh4/V;->h(ILh4/v;)Lh4/v;

    move-result-object p0

    invoke-static {p0}, Lh4/c;->b(Lh4/v;)Lh4/z;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lf4/t;->T0(Ljava/util/List;Lh4/z;Lh4/z;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final c()LA3/p;
    .locals 0

    iget-object p0, p0, Lf4/t;->g:LA3/p;

    return-object p0
.end method

.method public final j0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final q()Lh4/z;
    .locals 0

    iget-object p0, p0, Lf4/t;->s:Lh4/z;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "defaultTypeImpl"

    invoke-static {p0}, Ld3/i;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final s()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lf4/t;->h:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "declaredTypeParametersImpl"

    invoke-static {p0}, Ld3/i;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "typealias "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu3/o;->getName()LQ3/f;

    move-result-object p0

    invoke-virtual {p0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x()Lf4/j;
    .locals 0

    iget-object p0, p0, Lf4/t;->o:Lf4/j;

    return-object p0
.end method

.method public final y()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final z()Z
    .locals 3

    invoke-virtual {p0}, Lf4/t;->S0()Lh4/z;

    move-result-object v0

    new-instance v1, Lu3/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lu3/d;-><init>(Lf4/t;I)V

    invoke-static {v0, v1}, Lh4/X;->c(Lh4/v;Lc3/b;)Z

    move-result p0

    return p0
.end method
