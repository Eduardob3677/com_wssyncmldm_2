.class public final LB3/c;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LB3/c;->d:I

    iput-object p1, p0, LB3/c;->e:Ljava/lang/Object;

    iput-object p3, p0, LB3/c;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    iget v1, v0, LB3/c;->d:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lu3/S;

    iget-object v2, v0, LB3/c;->e:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Lu3/S;

    iget-object v3, v10, Lu3/S;->G:Lg4/o;

    iget-object v2, v0, LB3/c;->f:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lu3/k;

    move-object v2, v5

    check-cast v2, LK3/c;

    invoke-virtual {v2}, LK3/c;->t()Ls3/h;

    move-result-object v7

    iget-object v0, v0, LB3/c;->f:Ljava/lang/Object;

    check-cast v0, Lu3/k;

    check-cast v0, Lu3/v;

    invoke-virtual {v0}, Lu3/v;->k0()I

    move-result v8

    const-string v2, "underlyingConstructorDescriptor.kind"

    invoke-static {v8, v2}, LB/f;->E(ILjava/lang/String;)V

    iget-object v11, v10, Lu3/S;->H:Lf4/t;

    move-object v2, v11

    check-cast v2, Lu3/p;

    invoke-virtual {v2}, Lu3/p;->m()Lr3/N;

    move-result-object v9

    const-string v2, "typeAliasDescriptor.source"

    invoke-static {v2, v9}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v10, Lu3/S;->H:Lf4/t;

    move-object v2, v1

    move-object v6, v10

    invoke-direct/range {v2 .. v9}, Lu3/S;-><init>(Lg4/o;Lf4/t;Lu3/k;Lu3/P;Ls3/h;ILr3/N;)V

    sget-object v2, Lu3/S;->J:Lu3/Q;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Lf4/t;->Q0()Lr3/e;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v11}, Lf4/t;->R0()Lh4/z;

    move-result-object v2

    invoke-static {v2}, Lh4/V;->d(Lh4/v;)Lh4/V;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    move-object v1, v3

    goto :goto_2

    :cond_1
    iget-object v4, v0, Lu3/v;->l:Lu3/w;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Lu3/w;->R0(Lh4/V;)Lu3/w;

    move-result-object v3

    :cond_2
    move-object v4, v3

    invoke-virtual {v0}, Lu3/v;->v0()Ljava/util/List;

    move-result-object v0

    const-string v3, "underlyingConstructorDes\u2026contextReceiverParameters"

    invoke-static {v3, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu3/w;

    invoke-virtual {v3, v2}, Lu3/w;->R0(Lh4/V;)Lu3/w;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v11}, Lf4/t;->s()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v10}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v7

    iget-object v8, v10, Lu3/v;->i:Lh4/v;

    invoke-static {v8}, Ld3/i;->b(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v9, 0x1

    iget-object v10, v11, Lf4/t;->g:LA3/p;

    move-object v2, v1

    invoke-virtual/range {v2 .. v10}, Lu3/v;->V0(Lu3/w;Lu3/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lh4/v;ILA3/p;)V

    :goto_2
    return-object v1

    :pswitch_0
    iget-object v1, v0, LB3/c;->e:Ljava/lang/Object;

    check-cast v1, LE3/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LE3/j;

    iget-object v3, v1, LE3/j;->m:LD3/e;

    iget-object v4, v3, LD3/e;->d:Ljava/lang/Object;

    check-cast v4, LD3/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, LD3/a;

    move-object v5, v15

    iget-object v6, v4, LD3/a;->u:Li4/k;

    move-object/from16 v25, v6

    iget-object v6, v4, LD3/a;->v:LA3/v;

    move-object/from16 v26, v6

    iget-object v6, v4, LD3/a;->a:Lg4/o;

    iget-object v7, v4, LD3/a;->b:Lc1/w;

    iget-object v8, v4, LD3/a;->c:Le/v;

    iget-object v9, v4, LD3/a;->d:LJ3/f;

    iget-object v10, v4, LD3/a;->e:LB3/j;

    iget-object v11, v4, LD3/a;->f:Ld4/k;

    iget-object v12, v4, LD3/a;->h:LB3/j;

    iget-object v13, v4, LD3/a;->i:Le4/d;

    iget-object v14, v4, LD3/a;->j:Lw3/d;

    move-object/from16 v16, v15

    iget-object v15, v4, LD3/a;->k:Ls2/c;

    move-object/from16 v28, v2

    move-object/from16 v2, v16

    iget-object v0, v4, LD3/a;->l:LJ3/g;

    move-object/from16 v16, v0

    iget-object v0, v4, LD3/a;->m:Lr3/O;

    move-object/from16 v17, v0

    iget-object v0, v4, LD3/a;->n:Lz3/a;

    move-object/from16 v18, v0

    iget-object v0, v4, LD3/a;->o:Lr3/x;

    move-object/from16 v19, v0

    iget-object v0, v4, LD3/a;->p:Lo3/l;

    move-object/from16 v20, v0

    iget-object v0, v4, LD3/a;->q:LA3/c;

    move-object/from16 v21, v0

    iget-object v0, v4, LD3/a;->r:Ls2/c;

    move-object/from16 v22, v0

    iget-object v0, v4, LD3/a;->s:LA3/n;

    move-object/from16 v23, v0

    iget-object v0, v4, LD3/a;->t:LD3/b;

    move-object/from16 v24, v0

    iget-object v0, v4, LD3/a;->w:LJ3/g;

    move-object/from16 v27, v0

    invoke-direct/range {v5 .. v27}, LD3/a;-><init>(Lg4/o;Lc1/w;Le/v;LJ3/f;LB3/j;Ld4/k;LB3/j;Le4/d;Lw3/d;Ls2/c;LJ3/g;Lr3/O;Lz3/a;Lr3/x;Lo3/l;LA3/c;Ls2/c;LA3/n;LD3/b;Li4/k;LA3/v;LJ3/g;)V

    new-instance v0, LD3/e;

    iget-object v4, v3, LD3/e;->e:Ljava/lang/Object;

    check-cast v4, LD3/g;

    iget-object v3, v3, LD3/e;->f:Ljava/lang/Object;

    check-cast v3, LQ2/c;

    invoke-direct {v0, v2, v4, v3}, LD3/e;-><init>(LD3/a;LD3/g;LQ2/c;)V

    invoke-virtual {v1}, Lu3/l;->l()Lr3/j;

    move-result-object v2

    const-string v3, "containingDeclaration"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v1, LE3/j;->k:Lx3/o;

    move-object/from16 v3, p0

    iget-object v3, v3, LB3/c;->f:Ljava/lang/Object;

    check-cast v3, Lr3/e;

    move-object/from16 v4, v28

    invoke-direct {v4, v0, v2, v1, v3}, LE3/j;-><init>(LD3/e;Lr3/j;Lx3/o;Lr3/e;)V

    return-object v4

    :pswitch_1
    move-object v3, v0

    iget-object v0, v3, LB3/c;->e:Ljava/lang/Object;

    check-cast v0, Lq3/n;

    invoke-virtual {v0}, Lq3/n;->g()Lq3/h;

    move-result-object v1

    iget-object v1, v1, Lq3/h;->a:Lr3/x;

    sget-object v2, Lq3/g;->d:Lq3/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lq3/g;->h:LQ3/b;

    new-instance v4, Lcom/google/firebase/messaging/p;

    invoke-virtual {v0}, Lq3/n;->g()Lq3/h;

    move-result-object v0

    iget-object v0, v0, Lq3/h;->a:Lr3/x;

    iget-object v3, v3, LB3/c;->f:Ljava/lang/Object;

    check-cast v3, Lg4/o;

    invoke-direct {v4, v3, v0}, Lcom/google/firebase/messaging/p;-><init>(Lg4/o;Lr3/x;)V

    invoke-static {v1, v2, v4}, Lo4/a;->g(Lr3/x;LQ3/b;Lcom/google/firebase/messaging/p;)Lr3/e;

    move-result-object v0

    invoke-interface {v0}, Lr3/e;->q()Lh4/z;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object v3, v0

    new-instance v0, Lq3/n;

    iget-object v1, v3, LB3/c;->e:Ljava/lang/Object;

    check-cast v1, Lq3/j;

    invoke-virtual {v1}, Lo3/i;->k()Lu3/C;

    move-result-object v2

    const-string v4, "builtInsModule"

    invoke-static {v4, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, LB3/k;

    const/16 v5, 0x1a

    invoke-direct {v4, v5, v1}, LB3/k;-><init>(ILjava/lang/Object;)V

    iget-object v1, v3, LB3/c;->f:Ljava/lang/Object;

    check-cast v1, Lg4/o;

    invoke-direct {v0, v2, v1, v4}, Lq3/n;-><init>(Lu3/C;Lg4/o;LB3/k;)V

    return-object v0

    :pswitch_3
    move-object v3, v0

    new-instance v0, Lu3/m;

    iget-object v1, v3, LB3/c;->e:Ljava/lang/Object;

    check-cast v1, Lq3/g;

    iget-object v2, v1, Lq3/g;->b:Lc3/b;

    iget-object v1, v1, Lq3/g;->a:Lr3/x;

    invoke-interface {v2, v1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lr3/j;

    sget-object v7, Lq3/g;->g:LQ3/f;

    invoke-interface {v1}, Lr3/x;->g()Lo3/i;

    move-result-object v1

    invoke-virtual {v1}, Lo3/i;->e()Lh4/z;

    move-result-object v1

    invoke-static {v1}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iget-object v1, v3, LB3/c;->f:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Lg4/o;

    const/4 v8, 0x4

    const/4 v9, 0x2

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lu3/m;-><init>(Lr3/j;LQ3/f;IILjava/util/List;Lg4/o;)V

    new-instance v1, Lq3/a;

    const-string v2, "storageManager"

    iget-object v3, v3, LB3/c;->f:Ljava/lang/Object;

    check-cast v3, Lg4/o;

    invoke-static {v2, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v1, v3, v0}, La4/h;-><init>(Lg4/o;Lr3/e;)V

    sget-object v2, LR2/w;->c:LR2/w;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lu3/m;->u0(La4/o;Ljava/util/Set;Lu3/k;)V

    return-object v0

    :pswitch_4
    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v3, LB3/c;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, LB3/c;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    sget-object v8, Lm3/c;->d:Lm3/c;

    const-string v7, ")"

    const/16 v9, 0x30

    const-string v6, "("

    move-object v5, v0

    invoke-static/range {v4 .. v9}, LR2/m;->R0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    move-object v3, v0

    iget-object v0, v3, LB3/c;->e:Ljava/lang/Object;

    check-cast v0, Ll3/l0;

    iget-object v1, v0, Ll3/l0;->a:Lh4/v;

    invoke-virtual {v1}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, LR2/u;->c:LR2/u;

    goto/16 :goto_6

    :cond_4
    new-instance v2, Ll3/k0;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v0}, Ll3/k0;-><init>(ILl3/l0;)V

    const/4 v4, 0x2

    invoke-static {v4, v2}, Lf1/a;->U(ILc3/a;)LQ2/c;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    const/4 v9, 0x0

    if-ltz v6, :cond_a

    check-cast v7, Lh4/N;

    invoke-virtual {v7}, Lh4/N;->c()Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v6, Li3/r;->c:Li3/r;

    goto :goto_5

    :cond_5
    new-instance v10, Ll3/l0;

    invoke-virtual {v7}, Lh4/N;->b()Lh4/v;

    move-result-object v11

    const-string v12, "typeProjection.type"

    invoke-static {v12, v11}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v12, v3, LB3/c;->f:Ljava/lang/Object;

    check-cast v12, Lc3/a;

    if-nez v12, :cond_6

    goto :goto_4

    :cond_6
    new-instance v9, Ld4/n;

    invoke-direct {v9, v0, v6, v2}, Ld4/n;-><init>(Ll3/l0;ILQ2/c;)V

    :goto_4
    invoke-direct {v10, v11, v9}, Ll3/l0;-><init>(Lh4/v;Lc3/a;)V

    invoke-virtual {v7}, Lh4/N;->a()I

    move-result v6

    invoke-static {v6}, Lk/Q0;->f(I)I

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    if-eq v6, v7, :cond_8

    if-ne v6, v4, :cond_7

    new-instance v6, Li3/r;

    const/4 v7, 0x3

    invoke-direct {v6, v7, v10}, Li3/r;-><init>(ILl3/l0;)V

    goto :goto_5

    :cond_7
    new-instance v0, LA0/c;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    new-instance v6, Li3/r;

    invoke-direct {v6, v4, v10}, Li3/r;-><init>(ILl3/l0;)V

    goto :goto_5

    :cond_9
    new-instance v6, Li3/r;

    invoke-direct {v6, v7, v10}, Li3/r;-><init>(ILl3/l0;)V

    :goto_5
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v8

    goto :goto_3

    :cond_a
    invoke-static {}, LR2/n;->B0()V

    throw v9

    :cond_b
    move-object v0, v5

    :goto_6
    return-object v0

    :pswitch_6
    move-object v3, v0

    iget-object v0, v3, LB3/c;->e:Ljava/lang/Object;

    check-cast v0, Ll3/E;

    iget-object v1, v0, Ll3/E;->d:Ll3/C;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "name"

    iget-object v3, v3, LB3/c;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Ll3/E;->e:Ljava/lang/String;

    const-string v2, "signature"

    invoke-static {v2, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "<init>"

    invoke-static {v3, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Ll3/C;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    :goto_7
    move-object v4, v2

    goto :goto_8

    :cond_c
    invoke-static {v3}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Ll3/C;->e(LQ3/f;)Ljava/util/Collection;

    move-result-object v2

    goto :goto_7

    :goto_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lr3/s;

    invoke-static {v7}, Ll3/u0;->c(Lr3/s;)Ll3/r0;

    move-result-object v7

    invoke-virtual {v7}, Ll3/r0;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_10

    sget-object v8, Ll3/b;->i:Ll3/b;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "\n"

    const/16 v9, 0x1e

    invoke-static/range {v4 .. v9}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, LQ2/d;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Function \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' (JVM signature: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") not resolved in "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    const-string v0, " no members found"

    goto :goto_a

    :cond_f
    const-string v0, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {v4, v0, v1}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw v4

    :cond_10
    invoke-static {v2}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/s;

    return-object v0

    :pswitch_7
    move-object v3, v0

    iget-object v0, v3, LB3/c;->e:Ljava/lang/Object;

    check-cast v0, Li4/i;

    iget-object v0, v0, Li4/i;->e:LQ2/c;

    invoke-interface {v0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_11

    sget-object v0, LR2/u;->c:LR2/u;

    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/Z;

    iget-object v4, v3, LB3/c;->f:Ljava/lang/Object;

    check-cast v4, Li4/f;

    invoke-virtual {v2, v4}, Lh4/Z;->O0(Li4/f;)Lh4/Z;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_12
    return-object v1

    :pswitch_8
    move-object v3, v0

    iget-object v0, v3, LB3/c;->f:Ljava/lang/Object;

    check-cast v0, Lh4/x;

    iget-object v0, v0, Lh4/x;->e:Lc3/a;

    invoke-interface {v0}, Lc3/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk4/c;

    iget-object v1, v3, LB3/c;->e:Ljava/lang/Object;

    check-cast v1, Li4/f;

    invoke-virtual {v1, v0}, Li4/f;->a(Lk4/c;)Lh4/v;

    move-result-object v0

    return-object v0

    :pswitch_9
    move-object v3, v0

    iget-object v0, v3, LB3/c;->e:Ljava/lang/Object;

    check-cast v0, Lf4/i;

    iget-object v1, v0, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v1, Ld4/i;

    iget-object v1, v1, Ld4/i;->e:Ld4/a;

    iget-object v2, v3, LB3/c;->f:Ljava/lang/Object;

    check-cast v2, LL3/t;

    iget-object v0, v0, Lf4/i;->x:Ld4/s;

    invoke-interface {v1, v0, v2}, Ld4/c;->y(Ld4/s;LL3/t;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_a
    move-object v3, v0

    iget-object v0, v3, LB3/c;->e:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    iget-object v0, v0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v1, Ld4/i;

    iget-object v1, v1, Ld4/i;->e:Ld4/a;

    iget-object v2, v3, LB3/c;->f:Ljava/lang/Object;

    check-cast v2, LL3/Q;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v0, LN3/f;

    invoke-interface {v1, v2, v0}, Ld4/c;->j0(LL3/Q;LN3/f;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_b
    move-object v3, v0

    iget-object v0, v3, LB3/c;->e:Ljava/lang/Object;

    check-cast v0, LD3/e;

    iget-object v0, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->b:Lc1/w;

    iget-object v1, v3, LB3/c;->f:Ljava/lang/Object;

    check-cast v1, LE3/x;

    iget-object v1, v1, LE3/x;->o:LE3/s;

    iget-object v1, v1, Lu3/E;->g:LQ3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "packageFqName"

    invoke-static {v0, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :pswitch_c
    move-object v3, v0

    new-instance v0, LE3/s;

    iget-object v1, v3, LB3/c;->e:Ljava/lang/Object;

    check-cast v1, LD3/d;

    iget-object v1, v1, LD3/d;->a:LD3/e;

    iget-object v2, v3, LB3/c;->f:Ljava/lang/Object;

    check-cast v2, Lx3/y;

    invoke-direct {v0, v1, v2}, LE3/s;-><init>(LD3/e;Lx3/y;)V

    return-object v0

    :pswitch_d
    move-object v3, v0

    const-string v0, "<this>"

    iget-object v1, v3, LB3/c;->e:Ljava/lang/Object;

    check-cast v1, LD3/e;

    invoke-static {v0, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "additionalAnnotations"

    iget-object v2, v3, LB3/c;->f:Ljava/lang/Object;

    check-cast v2, Ls3/h;

    invoke-static {v0, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->q:LA3/c;

    iget-object v1, v1, LD3/e;->g:Ljava/lang/Object;

    check-cast v1, LQ2/c;

    invoke-interface {v1}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LA3/w;

    invoke-virtual {v0, v1, v2}, LA3/c;->b(LA3/w;Ljava/lang/Iterable;)LA3/w;

    move-result-object v0

    return-object v0

    :pswitch_e
    move-object v3, v0

    iget-object v0, v3, LB3/c;->f:Ljava/lang/Object;

    check-cast v0, Lr3/f;

    invoke-interface {v0}, Ls3/a;->t()Ls3/h;

    move-result-object v0

    const-string v1, "<this>"

    iget-object v2, v3, LB3/c;->e:Ljava/lang/Object;

    check-cast v2, LD3/e;

    invoke-static {v1, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "additionalAnnotations"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v2, LD3/e;->d:Ljava/lang/Object;

    check-cast v1, LD3/a;

    iget-object v1, v1, LD3/a;->q:LA3/c;

    iget-object v2, v2, LD3/e;->g:Ljava/lang/Object;

    check-cast v2, LQ2/c;

    invoke-interface {v2}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA3/w;

    invoke-virtual {v1, v2, v0}, LA3/c;->b(LA3/w;Ljava/lang/Iterable;)LA3/w;

    move-result-object v0

    return-object v0

    :pswitch_f
    move-object v3, v0

    iget-object v0, v3, LB3/c;->e:Ljava/lang/Object;

    check-cast v0, LD3/e;

    iget-object v0, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->o:Lr3/x;

    invoke-interface {v0}, Lr3/x;->g()Lo3/i;

    move-result-object v0

    iget-object v1, v3, LB3/c;->f:Ljava/lang/Object;

    check-cast v1, LB3/d;

    iget-object v1, v1, LB3/d;->a:LQ3/c;

    invoke-virtual {v0, v1}, Lo3/i;->i(LQ3/c;)Lr3/e;

    move-result-object v0

    invoke-interface {v0}, Lr3/e;->q()Lh4/z;

    move-result-object v0

    const-string v1, "c.module.builtIns.getBui\u2026qName(fqName).defaultType"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
