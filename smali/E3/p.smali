.class public final LE3/p;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LE3/q;LD3/e;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LE3/p;->d:I

    iput-object p1, p0, LE3/p;->e:Ljava/lang/Object;

    iput-object p2, p0, LE3/p;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LE3/p;->d:I

    iput-object p1, p0, LE3/p;->f:Ljava/lang/Object;

    iput-object p3, p0, LE3/p;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x24

    const/16 v3, 0x2e

    const-string v4, "classId.packageFqName"

    const-string v5, "<this>"

    const-string v6, "name"

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, v0, LE3/p;->e:Ljava/lang/Object;

    iget-object v10, v0, LE3/p;->f:Ljava/lang/Object;

    iget v0, v0, LE3/p;->d:I

    packed-switch v0, :pswitch_data_0

    move-object v13, v1

    check-cast v13, LQ3/f;

    invoke-static {v6, v13}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v10, Lcom/google/firebase/messaging/p;

    iget-object v0, v10, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL3/t;

    if-eqz v0, :cond_0

    move-object v12, v9

    check-cast v12, Lf4/i;

    iget-object v1, v12, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v1, Ld4/i;

    iget-object v11, v1, Ld4/i;->a:Lg4/o;

    iget-object v1, v10, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    move-object v14, v1

    check-cast v14, Lg4/i;

    new-instance v15, Lf4/a;

    iget-object v1, v12, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v1, Ld4/i;

    iget-object v1, v1, Ld4/i;->a:Lg4/o;

    new-instance v2, LB3/c;

    const/4 v3, 0x6

    invoke-direct {v2, v12, v3, v0}, LB3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v15, v1, v2}, Lf4/a;-><init>(Lg4/o;Lc3/a;)V

    sget-object v16, Lr3/N;->a:Lr3/M;

    invoke-static/range {v11 .. v16}, Lu3/s;->u0(Lg4/o;Lr3/e;LQ3/f;Lg4/i;Ls3/h;Lr3/N;)Lu3/s;

    move-result-object v7

    :cond_0
    return-object v7

    :pswitch_0
    check-cast v9, Lc3/b;

    invoke-interface {v9, v1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v10, Landroidx/lifecycle/E;

    invoke-virtual {v10, v0}, Landroidx/lifecycle/F;->k(Ljava/lang/Object;)V

    sget-object v0, LQ2/k;->a:LQ2/k;

    return-object v0

    :pswitch_1
    const-string v0, "$this$extractNullability"

    invoke-static {v0, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v9, LI3/a;

    iget-object v0, v9, LI3/a;->a:Lk4/c;

    check-cast v10, LI3/p;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ls3/b;

    instance-of v2, v1, LC3/h;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, LC3/h;

    :cond_1
    instance-of v2, v1, LE3/f;

    iget-object v3, v10, LI3/p;->d:Ljava/lang/Object;

    check-cast v3, LD3/e;

    if-eqz v2, :cond_2

    iget-object v2, v3, LD3/e;->d:Ljava/lang/Object;

    check-cast v2, LD3/a;

    iget-object v2, v2, LD3/a;->t:LD3/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v1

    check-cast v2, LE3/f;

    iget-boolean v2, v2, LE3/f;->g:Z

    if-nez v2, :cond_7

    sget-object v2, LA3/a;->h:LA3/a;

    iget-object v4, v10, LI3/p;->e:Ljava/lang/Object;

    check-cast v4, LA3/a;

    if-eq v4, v2, :cond_7

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    check-cast v0, Lh4/v;

    sget-object v4, Lo3/i;->e:LQ3/f;

    invoke-virtual {v0}, Lh4/v;->J0()Lh4/J;

    move-result-object v0

    invoke-interface {v0}, Lh4/J;->i()Lr3/g;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lo3/i;->r(Lr3/g;)Lo3/k;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v3, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->q:LA3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lo3/m;->t:LQ3/c;

    invoke-static {v1, v0}, LA3/c;->c(Ljava/lang/Object;LQ3/c;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v0, v2}, LA3/c;->a(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Ls3/n;->d:Ljava/util/HashMap;

    const-string v4, "TYPE"

    invoke-static {v1, v4}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v3, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->t:LD3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_6
    :goto_0
    move v8, v2

    :cond_7
    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    check-cast v10, LI3/q;

    if-eqz v10, :cond_8

    iget-object v1, v10, LI3/q;->a:Ljava/util/Map;

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LI3/e;

    if-nez v1, :cond_a

    :cond_8
    if-ltz v0, :cond_9

    check-cast v9, [LI3/e;

    invoke-static {v5, v9}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v1, v9

    sub-int/2addr v1, v8

    if-gt v0, v1, :cond_9

    aget-object v1, v9, v0

    goto :goto_2

    :cond_9
    sget-object v1, LI3/e;->e:LI3/e;

    :cond_a
    :goto_2
    return-object v1

    :pswitch_3
    move-object v0, v1

    check-cast v0, LE3/t;

    const-string v1, "request"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, LQ3/b;

    check-cast v10, LE3/x;

    iget-object v6, v10, LE3/x;->o:LE3/s;

    iget-object v6, v6, Lu3/E;->g:LQ3/c;

    iget-object v11, v0, LE3/t;->a:LQ3/f;

    invoke-direct {v1, v6, v11}, LQ3/b;-><init>(LQ3/c;LQ3/f;)V

    check-cast v9, LD3/e;

    iget-object v6, v10, LE3/C;->b:LD3/e;

    iget-object v0, v0, LE3/t;->b:Lx3/o;

    if-eqz v0, :cond_c

    iget-object v11, v9, LD3/e;->d:Ljava/lang/Object;

    check-cast v11, LD3/a;

    iget-object v11, v11, LD3/a;->c:Le/v;

    iget-object v12, v6, LD3/e;->d:Ljava/lang/Object;

    check-cast v12, LD3/a;

    iget-object v12, v12, LD3/a;->d:LJ3/f;

    invoke-virtual {v12}, LJ3/f;->c()Ld4/i;

    move-result-object v12

    iget-object v12, v12, Ld4/i;->c:Ld4/j;

    invoke-static {v5, v12}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, LP3/f;->g:LP3/f;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "jvmMetadataVersion"

    invoke-static {v12, v5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lx3/o;->b()LQ3/c;

    move-result-object v5

    invoke-virtual {v5}, LQ3/c;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v11, v11, Le/v;->c:Ljava/lang/Object;

    check-cast v11, Ljava/lang/ClassLoader;

    invoke-static {v11, v5}, Lo4/a;->r(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-static {v5}, Lp/a;->f(Ljava/lang/Class;)Lw3/b;

    move-result-object v5

    if-eqz v5, :cond_b

    new-instance v11, Ls2/c;

    invoke-direct {v11, v5}, Ls2/c;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    move-object v11, v7

    goto :goto_3

    :cond_c
    iget-object v11, v9, LD3/e;->d:Ljava/lang/Object;

    check-cast v11, LD3/a;

    iget-object v11, v11, LD3/a;->c:Le/v;

    iget-object v12, v6, LD3/e;->d:Ljava/lang/Object;

    check-cast v12, LD3/a;

    iget-object v12, v12, LD3/a;->d:LJ3/f;

    invoke-virtual {v12}, LJ3/f;->c()Ld4/i;

    move-result-object v12

    iget-object v12, v12, Ld4/i;->c:Ld4/j;

    invoke-static {v5, v12}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, LP3/f;->g:LP3/f;

    invoke-virtual {v11, v1, v5}, Le/v;->m(LQ3/b;LP3/f;)Ls2/c;

    move-result-object v11

    :goto_3
    if-eqz v11, :cond_d

    iget-object v5, v11, Ls2/c;->c:Ljava/lang/Object;

    check-cast v5, Lw3/b;

    goto :goto_4

    :cond_d
    move-object v5, v7

    :goto_4
    if-eqz v5, :cond_e

    iget-object v11, v5, Lw3/b;->a:Ljava/lang/Class;

    invoke-static {v11}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v11

    goto :goto_5

    :cond_e
    move-object v11, v7

    :goto_5
    if-eqz v11, :cond_f

    iget-object v12, v11, LQ3/b;->b:LQ3/c;

    invoke-virtual {v12}, LQ3/c;->e()LQ3/c;

    move-result-object v12

    invoke-virtual {v12}, LQ3/c;->d()Z

    move-result v12

    xor-int/2addr v8, v12

    if-nez v8, :cond_1b

    iget-boolean v8, v11, LQ3/b;->c:Z

    if-eqz v8, :cond_f

    goto/16 :goto_b

    :cond_f
    sget-object v8, LE3/v;->b:LE3/v;

    if-nez v5, :cond_10

    goto :goto_7

    :cond_10
    iget-object v11, v5, Lw3/b;->b:LK3/b;

    iget-object v11, v11, LK3/b;->d:Ljava/lang/Object;

    check-cast v11, LK3/a;

    sget-object v12, LK3/a;->f:LK3/a;

    if-ne v11, v12, :cond_12

    iget-object v6, v6, LD3/e;->d:Ljava/lang/Object;

    check-cast v6, LD3/a;

    iget-object v6, v6, LD3/a;->d:LJ3/f;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v5}, LJ3/f;->f(Lw3/b;)Ld4/d;

    move-result-object v11

    if-nez v11, :cond_11

    move-object v5, v7

    goto :goto_6

    :cond_11
    invoke-virtual {v6}, LJ3/f;->c()Ld4/i;

    move-result-object v6

    iget-object v5, v5, Lw3/b;->a:Ljava/lang/Class;

    invoke-static {v5}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v5

    iget-object v6, v6, Ld4/i;->t:Ld4/g;

    invoke-virtual {v6, v5, v11}, Ld4/g;->a(LQ3/b;Ld4/d;)Lr3/e;

    move-result-object v5

    :goto_6
    if-eqz v5, :cond_13

    new-instance v8, LE3/u;

    invoke-direct {v8, v5}, LE3/u;-><init>(Lr3/e;)V

    goto :goto_7

    :cond_12
    sget-object v8, LE3/w;->b:LE3/w;

    :cond_13
    :goto_7
    instance-of v5, v8, LE3/u;

    if-eqz v5, :cond_14

    check-cast v8, LE3/u;

    iget-object v7, v8, LE3/u;->b:Lr3/e;

    goto/16 :goto_b

    :cond_14
    instance-of v5, v8, LE3/w;

    if-eqz v5, :cond_15

    goto/16 :goto_b

    :cond_15
    instance-of v5, v8, LE3/v;

    if-eqz v5, :cond_1c

    if-nez v0, :cond_18

    iget-object v0, v9, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->b:Lc1/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, LQ3/b;->h()LQ3/c;

    move-result-object v5

    invoke-static {v4, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, LQ3/b;->i()LQ3/c;

    move-result-object v1

    invoke-virtual {v1}, LQ3/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v2}, Ls4/h;->q(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, LQ3/c;->d()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_8

    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LQ3/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_8
    iget-object v0, v0, Lc1/w;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lo4/a;->r(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v1, Lx3/o;

    invoke-direct {v1, v0}, Lx3/o;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    goto :goto_9

    :cond_17
    move-object v0, v7

    :cond_18
    :goto_9
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lx3/o;->b()LQ3/c;

    move-result-object v1

    goto :goto_a

    :cond_19
    move-object v1, v7

    :goto_a
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, LQ3/c;->d()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v1}, LQ3/c;->e()LQ3/c;

    move-result-object v1

    iget-object v2, v10, LE3/x;->o:LE3/s;

    iget-object v3, v2, Lu3/E;->g:LQ3/c;

    invoke-static {v1, v3}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_b

    :cond_1a
    new-instance v1, LE3/j;

    invoke-direct {v1, v9, v2, v0, v7}, LE3/j;-><init>(LD3/e;Lr3/j;Lx3/o;Lr3/e;)V

    iget-object v0, v9, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->s:LA3/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v7, v1

    :cond_1b
    :goto_b
    return-object v7

    :cond_1c
    new-instance v0, LA0/c;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_4
    move-object v0, v1

    check-cast v0, LQ3/f;

    invoke-static {v6, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v9, LE3/q;

    iget-object v1, v9, LE3/q;->r:Lg4/i;

    invoke-virtual {v1}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    check-cast v10, LD3/e;

    iget-object v5, v9, LE3/q;->n:Lr3/e;

    if-eqz v1, :cond_1f

    iget-object v1, v10, LD3/e;->d:Ljava/lang/Object;

    check-cast v1, LD3/a;

    iget-object v1, v1, LD3/a;->b:Lc1/w;

    invoke-static {v5}, LX3/f;->f(Lr3/g;)LQ3/b;

    move-result-object v6

    invoke-static {v6}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, LQ3/b;->d(LQ3/f;)LQ3/b;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, LQ3/b;->h()LQ3/c;

    move-result-object v6

    invoke-static {v4, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, LQ3/b;->i()LQ3/c;

    move-result-object v0

    invoke-virtual {v0}, LQ3/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v2}, Ls4/h;->q(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, LQ3/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_c

    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, LQ3/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    iget-object v1, v1, Lc1/w;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ClassLoader;

    invoke-static {v1, v0}, Lo4/a;->r(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1e

    new-instance v1, Lx3/o;

    invoke-direct {v1, v0}, Lx3/o;-><init>(Ljava/lang/Class;)V

    goto :goto_d

    :cond_1e
    move-object v1, v7

    :goto_d
    if-eqz v1, :cond_23

    new-instance v0, LE3/j;

    invoke-direct {v0, v10, v5, v1, v7}, LE3/j;-><init>(LD3/e;Lr3/j;Lx3/o;Lr3/e;)V

    iget-object v1, v10, LD3/e;->d:Ljava/lang/Object;

    check-cast v1, LD3/a;

    iget-object v1, v1, LD3/a;->s:LA3/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v7, v0

    goto/16 :goto_e

    :cond_1f
    iget-object v1, v9, LE3/q;->s:Lg4/i;

    invoke-virtual {v1}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v1, LS2/b;

    const/16 v2, 0xa

    new-array v12, v2, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, LS2/b;-><init>([Ljava/lang/Object;IIZLS2/b;LS2/b;)V

    iget-object v2, v10, LD3/e;->d:Ljava/lang/Object;

    check-cast v2, LD3/a;

    iget-object v2, v2, LD3/a;->x:LY3/e;

    check-cast v2, LY3/a;

    invoke-virtual {v2, v10, v5, v0, v1}, LY3/a;->c(LD3/e;Lr3/e;LQ3/f;LS2/b;)V

    iget-object v0, v1, LS2/b;->g:LS2/b;

    if-nez v0, :cond_21

    invoke-virtual {v1}, LS2/b;->p()V

    iput-boolean v8, v1, LS2/b;->f:Z

    invoke-virtual {v1}, LR2/e;->l()I

    move-result v0

    if-eqz v0, :cond_23

    if-ne v0, v8, :cond_20

    invoke-static {v1}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lr3/e;

    goto :goto_e

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Multiple classes with same name are generated: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_22
    iget-object v1, v9, LE3/q;->t:Lg4/i;

    invoke-virtual {v1}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx3/u;

    if-eqz v1, :cond_23

    iget-object v2, v10, LD3/e;->d:Ljava/lang/Object;

    check-cast v2, LD3/a;

    iget-object v2, v2, LD3/a;->a:Lg4/o;

    new-instance v3, LE3/o;

    const/4 v4, 0x2

    invoke-direct {v3, v9, v4}, LE3/o;-><init>(LE3/q;I)V

    check-cast v2, Lg4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lg4/i;

    invoke-direct {v4, v2, v3}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iget-object v2, v10, LD3/e;->d:Ljava/lang/Object;

    check-cast v2, LD3/a;

    iget-object v3, v2, LD3/a;->a:Lg4/o;

    invoke-static {v10, v1}, LW1/a;->g0(LD3/e;LH3/b;)LD3/c;

    move-result-object v5

    iget-object v2, v2, LD3/a;->j:Lw3/d;

    invoke-virtual {v2, v1}, Lw3/d;->c(LH3/c;)Lw3/f;

    move-result-object v6

    iget-object v2, v9, LE3/q;->n:Lr3/e;

    move-object v1, v3

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lu3/s;->u0(Lg4/o;Lr3/e;LQ3/f;Lg4/i;Ls3/h;Lr3/N;)Lu3/s;

    move-result-object v7

    :cond_23
    :goto_e
    return-object v7

    :pswitch_5
    move-object v0, v1

    check-cast v0, LQ3/f;

    const-string v1, "accessorName"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v10, Lu3/N;

    invoke-virtual {v10}, Lu3/o;->getName()LQ3/f;

    move-result-object v1

    invoke-static {v1, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {v10}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_24
    check-cast v9, LE3/q;

    invoke-static {v9, v0}, LE3/q;->v(LE3/q;LQ3/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v9, v0}, LE3/q;->w(LE3/q;LQ3/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_f
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
