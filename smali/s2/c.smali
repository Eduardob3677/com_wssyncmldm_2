.class public final Ls2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF/e;
.implements LC1/a;
.implements LJ1/f;
.implements LN0/b;
.implements Lr3/l;
.implements Lu1/d;
.implements Landroidx/lifecycle/b0;
.implements Lc1/b;


# static fields
.field public static volatile d:Ls2/c;


# instance fields
.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ls2/c;->c:Ljava/lang/Object;

    return-void

    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Ls2/c;->c:Ljava/lang/Object;

    return-void

    :sswitch_1
    sget-object p1, LT0/a;->a:Le4/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2/c;->c:Ljava/lang/Object;

    return-void

    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ls2/c;->c:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_3
        0x9 -> :sswitch_2
        0xf -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(LL3/X;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LL3/X;->e:Ljava/util/List;

    iget v1, p1, LL3/X;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    iget p1, p1, LL3/X;->f:I

    const-string v1, "typeTable.typeList"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_2

    check-cast v4, LL3/Q;

    if-lt v3, p1, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, LL3/Q;->s(LL3/Q;)LL3/P;

    move-result-object v3

    iget v4, v3, LL3/P;->f:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, LL3/P;->f:I

    iput-boolean v2, v3, LL3/P;->h:Z

    invoke-virtual {v3}, LL3/P;->g()LL3/Q;

    move-result-object v4

    invoke-virtual {v4}, LL3/Q;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, LA0/c;

    invoke-direct {p0}, LA0/c;-><init>()V

    throw p0

    :cond_1
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    :cond_2
    invoke-static {}, LR2/n;->B0()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    move-object v0, v1

    :cond_4
    const-string p1, "run {\n        val origin\u2026 else originalTypes\n    }"

    invoke-static {p1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ls2/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LJ/z;

    invoke-direct {v0, p1}, LJ/z;-><init>(Landroid/view/View;)V

    iput-object p1, v0, LJ/z;->c:Landroid/view/View;

    iput-object v0, p0, Ls2/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsAnimation;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Ls2/c;-><init>(I)V

    iput-object p1, p0, Ls2/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ls2/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public J(Ljava/lang/Exception;)V
    .locals 7

    instance-of p1, p1, LW1/i;

    if-eqz p1, :cond_2

    sget-object p1, La2/c;->e:LA/d;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Failure to refresh token; scheduling refresh after failure"

    invoke-virtual {p1, v2, v1}, LA/d;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, LG/a;

    iget-object p0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast p0, La2/c;

    iget-wide v1, p0, La2/c;->b:J

    long-to-int v1, v1

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x78

    if-eq v1, v2, :cond_1

    const/16 v2, 0xf0

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1e0

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3c0

    if-eq v1, v2, :cond_0

    const-wide/16 v1, 0x1e

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x3c0

    goto :goto_0

    :cond_1
    iget-wide v1, p0, La2/c;->b:J

    add-long/2addr v1, v1

    :goto_0
    iput-wide v1, p0, La2/c;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, La2/c;->b:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v3, v1

    iput-wide v3, p0, La2/c;->a:J

    iget-wide v1, p0, La2/c;->a:J

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Scheduling refresh for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, LA/d;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, La2/c;->c:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    iget-object v0, p0, La2/c;->d:LG/a;

    iget-wide v1, p0, La2/c;->b:J

    mul-long/2addr v1, v5

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public K(Lr3/H;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, LS3/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lu3/y;

    const-string v0, "package"

    iget-object v1, p1, Lu3/y;->f:LQ3/c;

    invoke-virtual {p0, v1, v0, p2}, LS3/g;->T(LQ3/c;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, LS3/g;->a:LS3/k;

    invoke-virtual {v0}, LS3/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " in context of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iget-object p1, p1, Lu3/y;->e:Lu3/C;

    invoke-virtual {p0, p1, p2, v0}, LS3/g;->P(Lr3/j;Ljava/lang/StringBuilder;Z)V

    :cond_0
    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0
.end method

.method public P(Lu3/V;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, LS3/g;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, v0}, LS3/g;->f0(Lu3/V;ZLjava/lang/StringBuilder;Z)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0
.end method

.method public b(Lr3/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, LS3/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lr3/e;->L()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {p0}, LS3/g;->r()Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "companion object"

    if-nez v4, :cond_12

    invoke-virtual {p0, p2, p1, v5}, LS3/g;->z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V

    invoke-interface {p1}, Lr3/e;->s0()Ljava/util/List;

    move-result-object v4

    const-string v7, "klass.contextReceivers"

    invoke-static {v7, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, v4}, LS3/g;->C(Ljava/lang/StringBuilder;Ljava/util/List;)V

    if-nez v0, :cond_1

    invoke-interface {p1}, Lr3/e;->c()LA3/p;

    move-result-object v4

    const-string v7, "klass.visibility"

    invoke-static {v7, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v4, p2}, LS3/g;->h0(LA3/p;Ljava/lang/StringBuilder;)Z

    :cond_1
    invoke-interface {p1}, Lr3/e;->L()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    invoke-interface {p1}, Lr3/e;->i()I

    move-result v4

    if-eq v4, v2, :cond_4

    :cond_2
    invoke-interface {p1}, Lr3/e;->L()I

    move-result v4

    invoke-static {v4}, Lh0/c;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Lr3/e;->i()I

    move-result v4

    if-eq v4, v1, :cond_4

    :cond_3
    invoke-interface {p1}, Lr3/e;->i()I

    move-result v4

    const-string v8, "klass.modality"

    invoke-static {v4, v8}, LB/f;->E(ILjava/lang/String;)V

    invoke-static {p1}, LS3/g;->v(Lr3/w;)I

    move-result v8

    invoke-virtual {p0, v4, p2, v8}, LS3/g;->L(ILjava/lang/StringBuilder;I)V

    :cond_4
    invoke-virtual {p0, p1, p2}, LS3/g;->K(Lr3/w;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, LS3/g;->q()Ljava/util/Set;

    move-result-object v4

    sget-object v8, LS3/h;->j:LS3/h;

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Lr3/h;->z()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v1

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    const-string v8, "inner"

    invoke-virtual {p0, p2, v4, v8}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, LS3/g;->q()Ljava/util/Set;

    move-result-object v4

    sget-object v8, LS3/h;->l:LS3/h;

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Lr3/e;->D0()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v1

    goto :goto_2

    :cond_6
    move v4, v3

    :goto_2
    const-string v8, "data"

    invoke-virtual {p0, p2, v4, v8}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, LS3/g;->q()Ljava/util/Set;

    move-result-object v4

    sget-object v8, LS3/h;->m:LS3/h;

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Lr3/e;->j()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v1

    goto :goto_3

    :cond_7
    move v4, v3

    :goto_3
    const-string v8, "inline"

    invoke-virtual {p0, p2, v4, v8}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, LS3/g;->q()Ljava/util/Set;

    move-result-object v4

    sget-object v8, LS3/h;->s:LS3/h;

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Lr3/e;->v()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v1

    goto :goto_4

    :cond_8
    move v4, v3

    :goto_4
    const-string v8, "value"

    invoke-virtual {p0, p2, v4, v8}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, LS3/g;->q()Ljava/util/Set;

    move-result-object v4

    sget-object v8, LS3/h;->r:LS3/h;

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p1}, Lr3/e;->h0()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v1

    goto :goto_5

    :cond_9
    move v4, v3

    :goto_5
    const-string v8, "fun"

    invoke-virtual {p0, p2, v4, v8}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    instance-of v4, p1, Lf4/t;

    if-eqz v4, :cond_a

    const-string v2, "typealias"

    goto :goto_6

    :cond_a
    invoke-interface {p1}, Lr3/e;->N()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v2, v6

    goto :goto_6

    :cond_b
    invoke-interface {p1}, Lr3/e;->L()I

    move-result v4

    invoke-static {v4}, Lk/Q0;->f(I)I

    move-result v4

    if-eqz v4, :cond_11

    if-eq v4, v1, :cond_10

    if-eq v4, v7, :cond_f

    const/4 v7, 0x3

    if-eq v4, v7, :cond_e

    if-eq v4, v2, :cond_d

    const/4 v2, 0x5

    if-ne v4, v2, :cond_c

    const-string v2, "object"

    goto :goto_6

    :cond_c
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_d
    const-string v2, "annotation class"

    goto :goto_6

    :cond_e
    const-string v2, "enum entry"

    goto :goto_6

    :cond_f
    const-string v2, "enum class"

    goto :goto_6

    :cond_10
    const-string v2, "interface"

    goto :goto_6

    :cond_11
    const-string v2, "class"

    :goto_6
    invoke-virtual {p0, v2}, LS3/g;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-static {p1}, LT3/e;->m(Lr3/j;)Z

    move-result v2

    iget-object v4, p0, LS3/g;->a:LS3/k;

    if-nez v2, :cond_14

    invoke-virtual {p0}, LS3/g;->r()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {p2}, LS3/g;->X(Ljava/lang/StringBuilder;)V

    :cond_13
    invoke-virtual {p0, p1, p2, v1}, LS3/g;->P(Lr3/j;Ljava/lang/StringBuilder;Z)V

    goto :goto_7

    :cond_14
    iget-object v2, v4, LS3/k;->F:LS3/j;

    sget-object v7, LS3/k;->W:[Li3/o;

    const/16 v8, 0x1e

    aget-object v7, v7, v8

    invoke-virtual {v2, v7, v4}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0}, LS3/g;->r()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-static {p2}, LS3/g;->X(Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, Lr3/j;->l()Lr3/j;

    move-result-object v2

    if-eqz v2, :cond_16

    const-string v6, "of "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lr3/j;->getName()LQ3/f;

    move-result-object v2

    const-string v6, "containingDeclaration.name"

    invoke-static {v6, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v3}, LS3/g;->O(LQ3/f;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    invoke-virtual {p0}, LS3/g;->u()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-interface {p1}, Lr3/j;->getName()LQ3/f;

    move-result-object v2

    sget-object v6, LQ3/h;->b:LQ3/f;

    invoke-static {v2, v6}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    invoke-virtual {p0}, LS3/g;->r()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static {p2}, LS3/g;->X(Ljava/lang/StringBuilder;)V

    :cond_18
    invoke-interface {p1}, Lr3/j;->getName()LQ3/f;

    move-result-object v2

    const-string v6, "descriptor.name"

    invoke-static {v6, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v1}, LS3/g;->O(LQ3/f;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    :goto_7
    if-eqz v0, :cond_1a

    goto/16 :goto_9

    :cond_1a
    invoke-interface {p1}, Lr3/e;->s()Ljava/util/List;

    move-result-object v6

    const-string v0, "klass.declaredTypeParameters"

    invoke-static {v0, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, v6, v3}, LS3/g;->d0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    invoke-virtual {p0, p1, p2}, LS3/g;->A(Lr3/h;Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, Lr3/e;->L()I

    move-result v0

    invoke-static {v0}, Lh0/c;->a(I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, v4, LS3/k;->i:LS3/j;

    sget-object v2, LS3/k;->W:[Li3/o;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v4}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Lr3/e;->W()Lu3/k;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, v0, v5}, LS3/g;->z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V

    move-object v2, v0

    check-cast v2, Lu3/v;

    invoke-virtual {v2}, Lu3/v;->c()LA3/p;

    move-result-object v3

    const-string v5, "primaryConstructor.visibility"

    invoke-static {v5, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, p2}, LS3/g;->h0(LA3/p;Ljava/lang/StringBuilder;)Z

    const-string v3, "constructor"

    invoke-virtual {p0, v3}, LS3/g;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v2

    const-string v3, "primaryConstructor.valueParameters"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Lr3/b;->o0()Z

    move-result v0

    invoke-virtual {p0, p2, v2, v0}, LS3/g;->g0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    :cond_1b
    iget-object v0, v4, LS3/k;->w:LS3/j;

    sget-object v2, LS3/k;->W:[Li3/o;

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v4}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_8

    :cond_1c
    invoke-interface {p1}, Lr3/e;->q()Lh4/z;

    move-result-object v0

    invoke-static {v0}, Lo3/i;->E(Lh4/v;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_8

    :cond_1d
    invoke-interface {p1}, Lr3/g;->H()Lh4/J;

    move-result-object p1

    invoke-interface {p1}, Lh4/J;->j()Ljava/util/Collection;

    move-result-object v0

    const-string p1, "klass.typeConstructor.supertypes"

    invoke-static {p1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    if-ne p1, v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh4/v;

    invoke-static {p1}, Lo3/i;->x(Lh4/v;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_8

    :cond_1e
    invoke-static {p2}, LS3/g;->X(Ljava/lang/StringBuilder;)V

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, LS3/e;

    const/4 p1, 0x2

    invoke-direct {v4, p0, p1}, LS3/e;-><init>(LS3/g;I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x3c

    move-object v1, p2

    invoke-static/range {v0 .. v5}, LR2/m;->R0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)V

    :cond_1f
    :goto_8
    invoke-virtual {p0, p2, v6}, LS3/g;->i0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :goto_9
    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0
.end method

.method public c(Lu3/L;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "getter"

    invoke-virtual {p0, p1, p2, v0}, Ls2/c;->r(Lr3/J;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0
.end method

.method public d(LZ0/a;)V
    .locals 1

    iget v0, p1, LZ0/a;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, Lc1/k;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lc1/k;->u:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lc1/k;->g(Lc1/o;Ljava/util/Set;)V

    return-void

    :cond_1
    iget-object p0, p0, Lc1/k;->n:Lc1/w;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lc1/w;->c:Ljava/lang/Object;

    check-cast p0, La1/f;

    invoke-interface {p0, p1}, La1/f;->s(LZ0/a;)V

    :cond_2
    return-void
.end method

.method public e(Ljava/lang/Class;Lb0/c;)Landroidx/lifecycle/Y;
    .locals 6

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, [Lb0/d;

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p0, v2

    iget-object v5, v4, Lb0/d;->a:Ljava/lang/Class;

    invoke-static {v5, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v3, v4, Lb0/d;->b:Lc3/b;

    invoke-interface {v3, p2}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/lifecycle/Y;

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/lifecycle/Y;

    goto :goto_1

    :cond_0
    move-object v3, v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "No initializer set for given class "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f(LR3/e;)V
    .locals 4

    invoke-virtual {p1}, LR3/e;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, LR3/e;->size()I

    move-result v0

    sget-object v1, LR3/E;->j:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LR3/e;

    invoke-virtual {v3}, LR3/e;->size()I

    move-result v3

    if-lt v3, v2, :cond_1

    goto :goto_2

    :cond_1
    aget v0, v1, v0

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR3/e;

    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LR3/e;

    invoke-virtual {v2}, LR3/e;->size()I

    move-result v2

    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LR3/e;

    new-instance v3, LR3/E;

    invoke-direct {v3, v2, v1}, LR3/E;-><init>(LR3/e;LR3/e;)V

    move-object v1, v3

    goto :goto_0

    :cond_2
    new-instance v0, LR3/E;

    invoke-direct {v0, v1, p1}, LR3/E;-><init>(LR3/e;LR3/e;)V

    :goto_1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, LR3/E;->j:[I

    iget v1, v0, LR3/E;->d:I

    invoke-static {p1, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_3

    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    aget p1, p1, v1

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR3/e;

    invoke-virtual {v1}, LR3/e;->size()I

    move-result v1

    if-ge v1, p1, :cond_4

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR3/e;

    new-instance v1, LR3/E;

    invoke-direct {v1, p1, v0}, LR3/E;-><init>(LR3/e;LR3/e;)V

    move-object v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    instance-of v0, p1, LR3/E;

    if-eqz v0, :cond_7

    check-cast p1, LR3/E;

    iget-object v0, p1, LR3/E;->e:LR3/e;

    invoke-virtual {p0, v0}, Ls2/c;->f(LR3/e;)V

    iget-object p1, p1, LR3/E;->f:LR3/e;

    invoke-virtual {p0, p1}, Ls2/c;->f(LR3/e;)V

    :goto_3
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Has a new type of ByteString been created? Found "

    invoke-static {v0, v1, p1}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g(LC3/a;Ls3/a;ZLD3/e;LA3/a;LI3/q;ZLc3/b;)Lh4/v;
    .locals 7

    new-instance v6, LI3/p;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, LI3/p;-><init>(Ls3/a;ZLD3/e;LA3/a;Z)V

    invoke-interface {p8, p1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lh4/v;

    invoke-interface {p1}, Lr3/c;->p()Ljava/util/Collection;

    move-result-object p1

    const-string p3, "overriddenDescriptors"

    invoke-static {p3, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lr3/c;

    const-string p5, "it"

    invoke-static {p5, p4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p8, p4}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lh4/v;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, v6

    move-object p4, p6

    move p5, p7

    invoke-virtual/range {p0 .. p5}, Ls2/c;->i(LI3/p;Lh4/v;Ljava/util/List;LI3/q;Z)Lh4/v;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 15

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, LP2/a;

    invoke-interface {p0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LT0/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, LI0/c;->c:LI0/c;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    const-string v8, "Null flags"

    if-eqz v7, :cond_5

    const-wide/16 v2, 0x7530

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v9, 0x5265c00

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v11, LQ0/c;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object v2, v11

    move-wide v3, v4

    move-wide v5, v12

    invoke-direct/range {v2 .. v7}, LQ0/c;-><init>(JJLjava/util/Set;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LI0/c;->e:LI0/c;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_4

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v11, LQ0/c;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object v2, v11

    move-wide v3, v4

    move-wide v5, v12

    invoke-direct/range {v2 .. v7}, LQ0/c;-><init>(JJLjava/util/Set;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LI0/c;->d:LI0/c;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, LQ0/e;->c:LQ0/e;

    sget-object v5, LQ0/e;->d:LQ0/e;

    filled-new-array {v4, v5}, [LQ0/e;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v14

    if-eqz v14, :cond_2

    new-instance v4, LQ0/c;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object v9, v4

    invoke-direct/range {v9 .. v14}, LQ0/c;-><init>(JJLjava/util/Set;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {}, LI0/c;->values()[LI0/c;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v1, LQ0/b;

    invoke-direct {v1, p0, v0}, LQ0/b;-><init>(LT0/b;Ljava/util/Map;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not all priorities have been configured"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "missing required property: clock"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h(Lr3/K;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, LS3/g;

    invoke-static {p0, p1, p2}, LS3/g;->n(LS3/g;Lr3/K;Ljava/lang/StringBuilder;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0
.end method

.method public i(LI3/p;Lh4/v;Ljava/util/List;LI3/q;Z)Lh4/v;
    .locals 30

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    const-string v3, "<this>"

    invoke-static {v3, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, LI3/p;->j(Lk4/c;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-static/range {p3 .. p3}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk4/c;

    invoke-virtual {v0, v6}, LI3/p;->j(Lk4/c;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v5, v0, LI3/p;->d:Ljava/lang/Object;

    check-cast v5, LD3/e;

    iget-boolean v6, v0, LI3/p;->a:Z

    if-eqz v6, :cond_3

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lk4/c;

    const-string v9, "other"

    invoke-static {v9, v8}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v5, LD3/e;->d:Ljava/lang/Object;

    check-cast v9, LD3/a;

    iget-object v9, v9, LD3/a;->u:Li4/k;

    check-cast v8, Lh4/v;

    check-cast v9, Li4/l;

    invoke-virtual {v9, v1, v8}, Li4/l;->a(Lh4/v;Lh4/v;)Z

    move-result v8

    xor-int/2addr v8, v2

    if-eqz v8, :cond_2

    move v7, v2

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_2
    new-array v8, v7, [LI3/e;

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v7, :cond_51

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LI3/a;

    iget-object v12, v11, LI3/a;->a:Lk4/c;

    sget-object v13, LI3/h;->d:LI3/h;

    sget-object v14, LI3/h;->e:LI3/h;

    sget-object v15, Li4/e;->d:Li4/e;

    sget-object v9, LI3/f;->d:LI3/f;

    sget-object v2, LI3/f;->c:LI3/f;

    sget-object v1, LI3/h;->c:LI3/h;

    move-object/from16 v16, v3

    iget-object v3, v0, LI3/p;->c:Ljava/lang/Object;

    check-cast v3, Ls3/a;

    move/from16 v18, v7

    iget-object v7, v11, LI3/a;->c:Lr3/Q;

    if-nez v12, :cond_5

    if-eqz v7, :cond_4

    invoke-interface {v7}, Lr3/Q;->A()I

    move-result v12

    move-object/from16 v19, v8

    const-string v8, "this.variance"

    invoke-static {v12, v8}, LB/f;->E(ILjava/lang/String;)V

    invoke-static {v12}, Li3/x;->u(I)I

    move-result v8

    :goto_4
    const/4 v12, 0x1

    goto :goto_5

    :cond_4
    move-object/from16 v19, v8

    const/4 v8, 0x0

    goto :goto_4

    :goto_5
    if-ne v8, v12, :cond_6

    sget-object v7, LI3/e;->e:LI3/e;

    move-object/from16 v21, v2

    move-object/from16 v20, v3

    move-object/from16 v26, v5

    move/from16 v23, v6

    move-object/from16 v22, v9

    move/from16 v27, v10

    move-object/from16 v25, v15

    const/4 v10, 0x0

    goto/16 :goto_27

    :cond_5
    move-object/from16 v19, v8

    :cond_6
    if-nez v7, :cond_7

    const/4 v8, 0x1

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    :goto_6
    sget-object v12, LR2/u;->c:LR2/u;

    move-object/from16 v20, v12

    iget-object v12, v11, LI3/a;->a:Lk4/c;

    if-eqz v12, :cond_8

    move-object/from16 v21, v12

    check-cast v21, Lh4/v;

    invoke-virtual/range {v21 .. v21}, Lh4/v;->t()Ls3/h;

    move-result-object v21

    move-object/from16 v29, v21

    move-object/from16 v21, v2

    move-object/from16 v2, v29

    goto :goto_7

    :cond_8
    move-object/from16 v21, v2

    move-object/from16 v2, v20

    :goto_7
    if-eqz v12, :cond_9

    invoke-virtual {v15, v12}, Li4/e;->u0(Lk4/c;)Lh4/J;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-static {v12}, Li3/x;->c0(Lk4/f;)Lr3/Q;

    move-result-object v12

    move-object/from16 v22, v9

    goto :goto_8

    :cond_9
    move-object/from16 v22, v9

    const/4 v12, 0x0

    :goto_8
    sget-object v9, LA3/a;->h:LA3/a;

    move/from16 v23, v6

    iget-object v6, v0, LI3/p;->e:Ljava/lang/Object;

    check-cast v6, LA3/a;

    if-ne v6, v9, :cond_a

    const/4 v9, 0x1

    goto :goto_9

    :cond_a
    const/4 v9, 0x0

    :goto_9
    if-nez v8, :cond_b

    move-object/from16 v24, v6

    goto :goto_b

    :cond_b
    move-object/from16 v24, v6

    if-nez v9, :cond_c

    iget-object v6, v5, LD3/e;->d:Ljava/lang/Object;

    check-cast v6, LD3/a;

    iget-object v6, v6, LD3/a;->t:LD3/b;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_c
    if-eqz v3, :cond_d

    invoke-interface {v3}, Ls3/a;->t()Ls3/h;

    move-result-object v6

    if-eqz v6, :cond_d

    goto :goto_a

    :cond_d
    move-object/from16 v6, v20

    :goto_a
    invoke-static {v6, v2}, LR2/m;->W0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    :goto_b
    iget-object v6, v5, LD3/e;->d:Ljava/lang/Object;

    check-cast v6, LD3/a;

    iget-object v6, v6, LD3/a;->q:LA3/c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object/from16 v20, v3

    const/4 v3, 0x0

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v6

    invoke-static/range {v25 .. v25}, LA3/c;->d(Ljava/lang/Object;)LQ3/c;

    move-result-object v6

    move-object/from16 v25, v15

    sget-object v15, LA3/A;->o:Ljava/util/Set;

    invoke-interface {v15, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    move-object/from16 v6, v21

    goto :goto_d

    :cond_e
    sget-object v15, LA3/A;->p:Ljava/util/Set;

    invoke-interface {v15, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    move-object/from16 v6, v22

    :goto_d
    if-eqz v3, :cond_f

    if-eq v3, v6, :cond_f

    const/4 v3, 0x0

    goto :goto_e

    :cond_f
    move-object v3, v6

    :cond_10
    move-object/from16 v15, v25

    move-object/from16 v6, v26

    goto :goto_c

    :cond_11
    move-object/from16 v25, v15

    :goto_e
    iget-object v6, v5, LD3/e;->d:Ljava/lang/Object;

    check-cast v6, LD3/a;

    iget-object v6, v6, LD3/a;->q:LA3/c;

    new-instance v15, LE3/p;

    move-object/from16 v26, v5

    const/4 v5, 0x4

    invoke-direct {v15, v0, v5, v11}, LE3/p;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, LE3/p;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Boolean;

    move-object/from16 v28, v2

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v6, v0, v2}, LA3/c;->g(Ljava/lang/Object;Z)LI3/i;

    move-result-object v2

    if-eqz v2, :cond_12

    move-object/from16 v17, v6

    move/from16 v27, v10

    :goto_10
    const/4 v10, 0x0

    goto :goto_15

    :cond_12
    invoke-virtual {v6, v0}, LA3/c;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_13

    move-object/from16 v17, v6

    move/from16 v27, v10

    :goto_11
    const/4 v2, 0x0

    goto :goto_10

    :cond_13
    invoke-virtual {v6, v0}, LA3/c;->h(Ljava/lang/Object;)LA3/E;

    move-result-object v0

    if-eqz v0, :cond_14

    goto :goto_12

    :cond_14
    iget-object v0, v6, LA3/c;->a:LA3/v;

    iget-object v0, v0, LA3/v;->a:LA3/x;

    iget-object v0, v0, LA3/x;->a:LA3/E;

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v27, v10

    sget-object v10, LA3/E;->c:LA3/E;

    if-ne v0, v10, :cond_15

    move-object/from16 v17, v6

    goto :goto_11

    :cond_15
    invoke-virtual {v15, v2}, LE3/p;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v6, v2, v10}, LA3/c;->g(Ljava/lang/Object;Z)LI3/i;

    move-result-object v2

    if-eqz v2, :cond_17

    sget-object v10, LA3/E;->d:LA3/E;

    move-object/from16 v17, v6

    if-ne v0, v10, :cond_16

    const/4 v0, 0x1

    :goto_13
    const/4 v6, 0x1

    const/4 v10, 0x0

    goto :goto_14

    :cond_16
    const/4 v0, 0x0

    goto :goto_13

    :goto_14
    invoke-static {v2, v10, v0, v6}, LI3/i;->a(LI3/i;LI3/h;ZI)LI3/i;

    move-result-object v0

    move-object v2, v0

    goto :goto_15

    :cond_17
    move-object/from16 v17, v6

    const/4 v10, 0x0

    move-object v2, v10

    :goto_15
    if-nez v5, :cond_18

    goto :goto_16

    :cond_18
    if-eqz v2, :cond_1c

    invoke-static {v2, v5}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_17

    :cond_19
    iget-boolean v0, v5, LI3/i;->b:Z

    iget-boolean v6, v2, LI3/i;->b:Z

    if-eqz v6, :cond_1a

    if-nez v0, :cond_1a

    goto :goto_17

    :cond_1a
    if-nez v6, :cond_1b

    if-eqz v0, :cond_1b

    :goto_16
    move-object v5, v2

    goto :goto_17

    :cond_1b
    move-object v5, v10

    goto :goto_18

    :cond_1c
    :goto_17
    move-object/from16 v0, p1

    move-object/from16 v6, v17

    move/from16 v10, v27

    move-object/from16 v2, v28

    goto/16 :goto_f

    :cond_1d
    move/from16 v27, v10

    const/4 v10, 0x0

    :goto_18
    if-eqz v5, :cond_1f

    new-instance v7, LI3/e;

    iget-object v0, v5, LI3/i;->a:LI3/h;

    if-ne v0, v14, :cond_1e

    if-eqz v12, :cond_1e

    const/4 v2, 0x1

    goto :goto_19

    :cond_1e
    const/4 v2, 0x0

    :goto_19
    iget-boolean v5, v5, LI3/i;->b:Z

    invoke-direct {v7, v0, v3, v2, v5}, LI3/e;-><init>(LI3/h;LI3/f;ZZ)V

    goto/16 :goto_27

    :cond_1f
    if-nez v8, :cond_21

    if-eqz v9, :cond_20

    goto :goto_1a

    :cond_20
    sget-object v6, LA3/a;->g:LA3/a;

    goto :goto_1b

    :cond_21
    :goto_1a
    move-object/from16 v6, v24

    :goto_1b
    iget-object v0, v11, LI3/a;->b:LA3/w;

    if-eqz v0, :cond_22

    iget-object v0, v0, LA3/w;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA3/o;

    goto :goto_1c

    :cond_22
    move-object v0, v10

    :goto_1c
    if-eqz v12, :cond_23

    invoke-static {v12}, LI3/p;->c(Lr3/Q;)LI3/i;

    move-result-object v2

    goto :goto_1d

    :cond_23
    move-object v2, v10

    :goto_1d
    const/4 v5, 0x2

    if-eqz v2, :cond_24

    const/4 v6, 0x0

    invoke-static {v2, v14, v6, v5}, LI3/i;->a(LI3/i;LI3/h;ZI)LI3/i;

    move-result-object v8

    goto :goto_1e

    :cond_24
    if-eqz v0, :cond_25

    iget-object v8, v0, LA3/o;->a:LI3/i;

    goto :goto_1e

    :cond_25
    move-object v8, v10

    :goto_1e
    if-eqz v2, :cond_26

    iget-object v2, v2, LI3/i;->a:LI3/h;

    goto :goto_1f

    :cond_26
    move-object v2, v10

    :goto_1f
    if-eq v2, v14, :cond_28

    if-eqz v12, :cond_27

    if-eqz v0, :cond_27

    iget-boolean v0, v0, LA3/o;->c:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    goto :goto_20

    :cond_27
    const/4 v12, 0x0

    goto :goto_21

    :cond_28
    :goto_20
    const/4 v12, 0x1

    :goto_21
    if-eqz v7, :cond_29

    invoke-static {v7}, LI3/p;->c(Lr3/Q;)LI3/i;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v2, v0, LI3/i;->a:LI3/h;

    if-ne v2, v13, :cond_2a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v5}, LI3/i;->a(LI3/i;LI3/h;ZI)LI3/i;

    move-result-object v0

    goto :goto_22

    :cond_29
    move-object v0, v10

    :cond_2a
    :goto_22
    if-nez v0, :cond_2b

    goto :goto_24

    :cond_2b
    if-nez v8, :cond_2c

    :goto_23
    move-object v8, v0

    goto :goto_24

    :cond_2c
    iget-boolean v2, v8, LI3/i;->b:Z

    iget-boolean v5, v0, LI3/i;->b:Z

    if-eqz v5, :cond_2d

    if-nez v2, :cond_2d

    goto :goto_24

    :cond_2d
    if-nez v5, :cond_2e

    if-eqz v2, :cond_2e

    goto :goto_23

    :cond_2e
    iget-object v2, v0, LI3/i;->a:LI3/h;

    iget-object v5, v8, LI3/i;->a:LI3/h;

    invoke-virtual {v2, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-gez v6, :cond_2f

    goto :goto_24

    :cond_2f
    invoke-virtual {v2, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-lez v2, :cond_30

    goto :goto_23

    :cond_30
    :goto_24
    new-instance v7, LI3/e;

    if-eqz v8, :cond_31

    iget-object v0, v8, LI3/i;->a:LI3/h;

    goto :goto_25

    :cond_31
    move-object v0, v10

    :goto_25
    if-eqz v8, :cond_32

    iget-boolean v2, v8, LI3/i;->b:Z

    const/4 v5, 0x1

    if-ne v2, v5, :cond_32

    const/4 v2, 0x1

    goto :goto_26

    :cond_32
    const/4 v2, 0x0

    :goto_26
    invoke-direct {v7, v0, v3, v12, v2}, LI3/e;-><init>(LI3/h;LI3/f;ZZ)V

    :goto_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move/from16 v9, v27

    invoke-static {v9, v3}, LR2/m;->P0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LI3/a;

    if-eqz v3, :cond_3a

    iget-object v3, v3, LI3/a;->a:Lk4/c;

    if-eqz v3, :cond_3a

    invoke-static {v3}, LI3/p;->f(Lk4/c;)LI3/h;

    move-result-object v5

    if-nez v5, :cond_34

    move-object v6, v3

    check-cast v6, Lh4/v;

    invoke-static {v6}, Lh4/c;->e(Lh4/v;)Lh4/v;

    move-result-object v6

    if-eqz v6, :cond_33

    invoke-static {v6}, LI3/p;->f(Lk4/c;)LI3/h;

    move-result-object v6

    goto :goto_29

    :cond_33
    move-object v6, v10

    goto :goto_29

    :cond_34
    move-object v6, v5

    :goto_29
    sget-object v8, Lq3/d;->a:Ljava/lang/String;

    move-object/from16 v8, v25

    invoke-virtual {v8, v3}, Li4/e;->o(Lk4/c;)Lh4/z;

    move-result-object v11

    invoke-static {v11}, LI3/p;->e(Lh4/z;)LQ3/e;

    move-result-object v11

    sget-object v12, Lq3/d;->k:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_35

    move-object/from16 v11, v21

    goto :goto_2a

    :cond_35
    invoke-virtual {v8, v3}, Li4/e;->g(Lk4/c;)Lh4/z;

    move-result-object v11

    invoke-static {v11}, LI3/p;->e(Lh4/z;)LQ3/e;

    move-result-object v11

    sget-object v12, Lq3/d;->j:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_36

    move-object/from16 v11, v22

    goto :goto_2a

    :cond_36
    move-object v11, v10

    :goto_2a
    invoke-virtual {v8, v3}, Li4/e;->q0(Lk4/c;)Z

    move-result v12

    if-nez v12, :cond_38

    check-cast v3, Lh4/v;

    invoke-virtual {v3}, Lh4/v;->M0()Lh4/Z;

    move-result-object v3

    instance-of v3, v3, LI3/g;

    if-eqz v3, :cond_37

    goto :goto_2b

    :cond_37
    const/4 v12, 0x0

    goto :goto_2c

    :cond_38
    :goto_2b
    const/4 v12, 0x1

    :goto_2c
    new-instance v3, LI3/e;

    if-eq v6, v5, :cond_39

    const/4 v5, 0x1

    goto :goto_2d

    :cond_39
    const/4 v5, 0x0

    :goto_2d
    invoke-direct {v3, v6, v11, v12, v5}, LI3/e;-><init>(LI3/h;LI3/f;ZZ)V

    goto :goto_2e

    :cond_3a
    move-object/from16 v8, v25

    move-object v3, v10

    :goto_2e
    if-eqz v3, :cond_3b

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    move-object/from16 v25, v8

    move/from16 v27, v9

    goto/16 :goto_28

    :cond_3c
    move/from16 v9, v27

    if-nez v9, :cond_3d

    if-eqz v23, :cond_3d

    const/4 v12, 0x1

    goto :goto_2f

    :cond_3d
    const/4 v12, 0x0

    :goto_2f
    if-nez v9, :cond_3e

    move-object/from16 v3, v20

    instance-of v2, v3, Lu3/V;

    if-eqz v2, :cond_3e

    check-cast v3, Lu3/V;

    iget-object v2, v3, Lu3/V;->l:Lh4/v;

    if-eqz v2, :cond_3e

    const/4 v2, 0x1

    goto :goto_30

    :cond_3e
    const/4 v2, 0x0

    :goto_30
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3f
    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LI3/e;

    iget-boolean v8, v6, LI3/e;->d:Z

    if-eqz v8, :cond_40

    move-object v6, v10

    goto :goto_32

    :cond_40
    iget-object v6, v6, LI3/e;->a:LI3/h;

    :goto_32
    if-eqz v6, :cond_3f

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_41
    invoke-static {v3}, LR2/m;->j1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    iget-boolean v5, v7, LI3/e;->d:Z

    iget-object v6, v7, LI3/e;->a:LI3/h;

    if-eqz v5, :cond_42

    move-object v5, v10

    goto :goto_33

    :cond_42
    move-object v5, v6

    :goto_33
    if-ne v5, v1, :cond_43

    move-object v3, v1

    goto :goto_34

    :cond_43
    invoke-static {v3, v14, v13, v5, v12}, Li3/x;->Y0(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LI3/h;

    :goto_34
    if-nez v3, :cond_47

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_44
    :goto_35
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_45

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LI3/e;

    iget-object v11, v11, LI3/e;->a:LI3/h;

    if-eqz v11, :cond_44

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_45
    invoke-static {v5}, LR2/m;->j1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    if-ne v6, v1, :cond_46

    goto :goto_36

    :cond_46
    invoke-static {v5, v14, v13, v6, v12}, Li3/x;->Y0(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LI3/h;

    goto :goto_36

    :cond_47
    move-object v1, v3

    :goto_36
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_48
    :goto_37
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LI3/e;

    iget-object v8, v8, LI3/e;->b:LI3/f;

    if-eqz v8, :cond_48

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_49
    invoke-static {v5}, LR2/m;->j1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, v7, LI3/e;->b:LI3/f;

    move-object/from16 v11, v21

    move-object/from16 v8, v22

    invoke-static {v5, v8, v11, v6, v12}, Li3/x;->Y0(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LI3/f;

    if-eqz v1, :cond_4b

    if-nez p5, :cond_4b

    if-eqz v2, :cond_4a

    if-ne v1, v13, :cond_4a

    goto :goto_38

    :cond_4a
    move-object v10, v1

    :cond_4b
    :goto_38
    if-ne v10, v14, :cond_4f

    iget-boolean v2, v7, LI3/e;->c:Z

    if-nez v2, :cond_4e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4c

    goto :goto_39

    :cond_4c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LI3/e;

    iget-boolean v2, v2, LI3/e;->c:Z

    if-eqz v2, :cond_4d

    :cond_4e
    const/4 v12, 0x1

    goto :goto_3a

    :cond_4f
    :goto_39
    const/4 v12, 0x0

    :goto_3a
    if-eqz v10, :cond_50

    if-eq v3, v1, :cond_50

    const/4 v0, 0x1

    goto :goto_3b

    :cond_50
    const/4 v0, 0x0

    :goto_3b
    new-instance v1, LI3/e;

    invoke-direct {v1, v10, v5, v12, v0}, LI3/e;-><init>(LI3/h;LI3/f;ZZ)V

    aput-object v1, v19, v9

    const/4 v0, 0x1

    add-int/lit8 v10, v9, 0x1

    move-object/from16 v1, p2

    move v2, v0

    move-object/from16 v3, v16

    move/from16 v7, v18

    move-object/from16 v8, v19

    move/from16 v6, v23

    move-object/from16 v5, v26

    move-object/from16 v0, p1

    goto/16 :goto_3

    :cond_51
    move-object/from16 v19, v8

    new-instance v0, LE3/p;

    const/4 v1, 0x3

    move-object/from16 v2, p4

    move-object/from16 v3, v19

    invoke-direct {v0, v2, v1, v3}, LE3/p;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object/from16 v1, p0

    iget-object v1, v1, Ls2/c;->c:Ljava/lang/Object;

    check-cast v1, LI3/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Lh4/v;->M0()Lh4/Z;

    move-result-object v1

    move-object/from16 v2, p1

    iget-boolean v2, v2, LI3/p;->b:Z

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, LI3/d;->b(Lh4/Z;LE3/p;IZ)LB1/e;

    move-result-object v0

    iget-object v0, v0, LB1/e;->d:Ljava/lang/Object;

    check-cast v0, Lh4/v;

    return-object v0
.end method

.method public j(LD3/e;Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 24

    move-object/from16 v0, p1

    const-string v1, "c"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static/range {p2 .. p2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr3/c;

    instance-of v4, v3, LC3/a;

    if-nez v4, :cond_0

    goto/16 :goto_1e

    :cond_0
    move-object v4, v3

    check-cast v4, LC3/a;

    invoke-interface {v4}, Lr3/c;->k0()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_1

    invoke-interface {v4}, Lr3/c;->a()Lr3/c;

    move-result-object v5

    invoke-interface {v5}, Lr3/c;->p()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v5, v7, :cond_1

    goto/16 :goto_1e

    :cond_1
    invoke-static {v3}, Lo3/f;->k(Lr3/j;)Lr3/g;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v5, v3

    check-cast v5, LK3/c;

    invoke-virtual {v5}, LK3/c;->t()Ls3/h;

    move-result-object v5

    goto :goto_5

    :cond_2
    instance-of v8, v5, LE3/j;

    if-eqz v8, :cond_3

    check-cast v5, LE3/j;

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    iget-object v5, v5, LE3/j;->n:LQ2/h;

    invoke-virtual {v5}, LQ2/h;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v5}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lx3/e;

    new-instance v10, LE3/f;

    invoke-direct {v10, v0, v9, v7}, LE3/f;-><init>(LD3/e;Lx3/e;Z)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move-object v5, v3

    check-cast v5, LK3/c;

    invoke-virtual {v5}, LK3/c;->t()Ls3/h;

    move-result-object v5

    invoke-static {v5, v8}, LR2/m;->W0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v5, Ls3/g;->a:Ls3/f;

    goto :goto_5

    :cond_7
    new-instance v8, Ls3/i;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v5}, Ls3/i;-><init>(ILjava/lang/Object;)V

    move-object v5, v8

    goto :goto_5

    :cond_8
    :goto_4
    move-object v5, v3

    check-cast v5, LK3/c;

    invoke-virtual {v5}, LK3/c;->t()Ls3/h;

    move-result-object v5

    :goto_5
    invoke-static {v0, v5}, LL2/b;->f(LD3/e;Ls3/h;)LD3/e;

    move-result-object v12

    instance-of v5, v3, LC3/g;

    if-eqz v5, :cond_9

    move-object v5, v3

    check-cast v5, LC3/g;

    iget-object v5, v5, Lu3/K;->z:Lu3/L;

    if-eqz v5, :cond_9

    iget-boolean v8, v5, Lu3/I;->g:Z

    if-nez v8, :cond_9

    move-object v10, v5

    goto :goto_6

    :cond_9
    move-object v10, v3

    :goto_6
    invoke-interface {v4}, Lr3/b;->d0()Lu3/w;

    move-result-object v5

    sget-object v8, LA3/a;->e:LA3/a;

    if-eqz v5, :cond_d

    instance-of v5, v10, Lr3/s;

    if-eqz v5, :cond_a

    move-object v5, v10

    check-cast v5, Lr3/s;

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_b

    sget-object v9, LC3/f;->I:LC3/e;

    invoke-interface {v5, v9}, Lr3/b;->E(Lr3/a;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu3/V;

    move-object v15, v5

    goto :goto_8

    :cond_b
    const/4 v15, 0x0

    :goto_8
    sget-object v21, LI3/n;->f:LI3/n;

    move-object v14, v3

    check-cast v14, LC3/a;

    if-eqz v15, :cond_c

    move-object v5, v15

    check-cast v5, LK3/c;

    invoke-virtual {v5}, LK3/c;->t()Ls3/h;

    move-result-object v5

    invoke-static {v12, v5}, LL2/b;->f(LD3/e;Ls3/h;)LD3/e;

    move-result-object v5

    move-object/from16 v17, v5

    goto :goto_9

    :cond_c
    move-object/from16 v17, v12

    :goto_9
    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v18, v8

    invoke-virtual/range {v13 .. v21}, Ls2/c;->g(LC3/a;Ls3/a;ZLD3/e;LA3/a;LI3/q;ZLc3/b;)Lh4/v;

    move-result-object v5

    goto :goto_a

    :cond_d
    const/4 v5, 0x0

    :goto_a
    instance-of v9, v3, LC3/f;

    if-eqz v9, :cond_e

    move-object v9, v3

    check-cast v9, LC3/f;

    goto :goto_b

    :cond_e
    const/4 v9, 0x0

    :goto_b
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Lu3/p;->l()Lr3/j;

    move-result-object v11

    const-string v13, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v13, v11}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v11, Lr3/e;

    const/4 v13, 0x3

    invoke-static {v9, v13}, LW1/a;->n(Lr3/s;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, LL2/b;->K(Lr3/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f

    sget-object v11, LI3/l;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LI3/m;

    goto :goto_c

    :cond_f
    const/4 v9, 0x0

    :goto_c
    if-eqz v9, :cond_10

    iget-object v11, v9, LI3/m;->b:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    invoke-interface {v4}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    :cond_10
    iget-object v11, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v11, LD3/a;

    iget-object v11, v11, LD3/a;->v:LA3/v;

    const-string v13, "javaTypeEnhancementState"

    invoke-static {v13, v11}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v11, LA3/u;->l:LA3/u;

    sget-object v13, LA3/s;->a:LQ3/c;

    invoke-virtual {v11, v13}, LA3/u;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v13, LA3/E;->e:LA3/E;

    const/16 v22, 0x0

    if-ne v11, v13, :cond_11

    instance-of v11, v3, Lr3/s;

    if-eqz v11, :cond_12

    sget-object v11, LC3/f;->J:LC3/e;

    invoke-interface {v3, v11}, Lr3/b;->E(Lr3/a;)Ljava/lang/Object;

    move-result-object v11

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11, v13}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    move v11, v7

    goto :goto_d

    :cond_11
    iget-object v11, v12, LD3/e;->d:Ljava/lang/Object;

    check-cast v11, LD3/a;

    iget-object v11, v11, LD3/a;->t:LD3/b;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_12
    move/from16 v11, v22

    :goto_d
    invoke-interface {v10}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v13

    const-string v14, "annotationOwnerForMember.valueParameters"

    invoke-static {v14, v13}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v13}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v14

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_e
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lu3/V;

    if-eqz v9, :cond_13

    iget-object v13, v9, LI3/m;->b:Ljava/util/List;

    if-eqz v13, :cond_13

    iget v6, v14, Lu3/V;->h:I

    invoke-static {v6, v13}, LR2/m;->P0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LI3/q;

    move-object/from16 v19, v6

    goto :goto_f

    :cond_13
    const/16 v19, 0x0

    :goto_f
    new-instance v6, LA3/d;

    const/16 v13, 0x8

    invoke-direct {v6, v13, v14}, LA3/d;-><init>(ILjava/lang/Object;)V

    move-object/from16 v16, v3

    check-cast v16, LC3/a;

    if-eqz v14, :cond_14

    move-object v13, v14

    check-cast v13, LK3/c;

    invoke-virtual {v13}, LK3/c;->t()Ls3/h;

    move-result-object v13

    invoke-static {v12, v13}, LL2/b;->f(LD3/e;Ls3/h;)LD3/e;

    move-result-object v13

    move-object/from16 v17, v13

    goto :goto_10

    :cond_14
    move-object/from16 v17, v12

    :goto_10
    const/16 v18, 0x0

    move-object/from16 v13, p0

    move-object/from16 v20, v14

    move-object/from16 v14, v16

    move-object v7, v15

    move-object/from16 v15, v20

    move/from16 v16, v18

    move-object/from16 v18, v8

    move/from16 v20, v11

    move-object/from16 v21, v6

    invoke-virtual/range {v13 .. v21}, Ls2/c;->g(LC3/a;Ls3/a;ZLD3/e;LA3/a;LI3/q;ZLc3/b;)Lh4/v;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v7

    const/4 v7, 0x1

    goto :goto_e

    :cond_15
    move-object v7, v15

    instance-of v6, v3, Lr3/K;

    if-eqz v6, :cond_16

    move-object v6, v3

    check-cast v6, Lr3/K;

    goto :goto_11

    :cond_16
    const/4 v6, 0x0

    :goto_11
    if-eqz v6, :cond_17

    invoke-static {v6}, Lf1/a;->S(Lr3/K;)Z

    move-result v6

    const/4 v15, 0x1

    if-ne v6, v15, :cond_18

    sget-object v6, LA3/a;->f:LA3/a;

    :goto_12
    move-object v13, v6

    goto :goto_13

    :cond_17
    const/4 v15, 0x1

    :cond_18
    sget-object v6, LA3/a;->d:LA3/a;

    goto :goto_12

    :goto_13
    if-eqz v9, :cond_19

    iget-object v6, v9, LI3/m;->a:LI3/q;

    move-object v14, v6

    goto :goto_14

    :cond_19
    const/4 v14, 0x0

    :goto_14
    sget-object v16, LI3/n;->g:LI3/n;

    const/4 v11, 0x1

    move-object v9, v3

    check-cast v9, LC3/a;

    const/4 v6, 0x0

    move-object/from16 v8, p0

    move/from16 v17, v15

    move v15, v6

    invoke-virtual/range {v8 .. v16}, Ls2/c;->g(LC3/a;Ls3/a;ZLD3/e;LA3/a;LI3/q;ZLc3/b;)Lh4/v;

    move-result-object v6

    invoke-interface {v4}, Lr3/b;->n()Lh4/v;

    move-result-object v8

    invoke-static {v8}, Ld3/i;->b(Ljava/lang/Object;)V

    sget-object v9, LI3/n;->e:LI3/n;

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lh4/X;->d(Lh4/v;Lc3/b;Lq4/h;)Z

    move-result v8

    if-nez v8, :cond_1f

    invoke-interface {v4}, Lr3/b;->d0()Lu3/w;

    move-result-object v8

    if-eqz v8, :cond_1a

    invoke-virtual {v8}, Lu3/w;->e()Lh4/v;

    move-result-object v8

    if-eqz v8, :cond_1a

    invoke-static {v8, v9, v10}, Lh4/X;->d(Lh4/v;Lc3/b;Lq4/h;)Z

    move-result v8

    goto :goto_15

    :cond_1a
    move/from16 v8, v22

    :goto_15
    if-nez v8, :cond_1f

    invoke-interface {v4}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v8

    const-string v10, "valueParameters"

    invoke-static {v10, v8}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1c

    :cond_1b
    move/from16 v15, v22

    goto :goto_16

    :cond_1c
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lu3/V;

    check-cast v10, Lu3/W;

    invoke-virtual {v10}, Lu3/W;->e()Lh4/v;

    move-result-object v10

    const-string v11, "it.type"

    invoke-static {v11, v10}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Lh4/X;->d(Lh4/v;Lc3/b;Lq4/h;)Z

    move-result v10

    if-eqz v10, :cond_1d

    move/from16 v15, v17

    :goto_16
    if-eqz v15, :cond_1e

    goto :goto_17

    :cond_1e
    move/from16 v15, v22

    goto :goto_18

    :cond_1f
    :goto_17
    move/from16 v15, v17

    :goto_18
    if-eqz v15, :cond_20

    sget-object v8, LW3/a;->a:LC3/e;

    new-instance v9, LA3/i;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v10, LQ2/e;

    invoke-direct {v10, v8, v9}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    :cond_20
    const/4 v10, 0x0

    :goto_19
    if-nez v5, :cond_25

    if-nez v6, :cond_25

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_22

    :cond_21
    move/from16 v17, v22

    goto :goto_1b

    :cond_22
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_23
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lh4/v;

    if-eqz v9, :cond_24

    move/from16 v15, v17

    goto :goto_1a

    :cond_24
    move/from16 v15, v22

    :goto_1a
    if-eqz v15, :cond_23

    :goto_1b
    if-nez v17, :cond_25

    if-eqz v10, :cond_2c

    :cond_25
    if-nez v5, :cond_27

    invoke-interface {v4}, Lr3/b;->d0()Lu3/w;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Lu3/w;->e()Lh4/v;

    move-result-object v5

    goto :goto_1c

    :cond_26
    const/4 v5, 0x0

    :cond_27
    :goto_1c
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v7}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1d
    move/from16 v8, v22

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v22, v8, 0x1

    if-ltz v8, :cond_29

    check-cast v9, Lh4/v;

    if-nez v9, :cond_28

    invoke-interface {v4}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lu3/V;

    check-cast v8, Lu3/W;

    invoke-virtual {v8}, Lu3/W;->e()Lh4/v;

    move-result-object v9

    const-string v8, "valueParameters[index].type"

    invoke-static {v8, v9}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_28
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_29
    invoke-static {}, LR2/n;->B0()V

    const/4 v0, 0x0

    throw v0

    :cond_2a
    if-nez v6, :cond_2b

    invoke-interface {v4}, Lr3/b;->n()Lh4/v;

    move-result-object v6

    invoke-static {v6}, Ld3/i;->b(Ljava/lang/Object;)V

    :cond_2b
    invoke-interface {v4, v5, v3, v6, v10}, LC3/a;->G0(Lh4/v;Ljava/util/ArrayList;Lh4/v;LQ2/e;)LC3/a;

    move-result-object v3

    :cond_2c
    :goto_1e
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2d
    return-object v1
.end method

.method public k(Lu3/w;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/StringBuilder;

    const-string p0, "descriptor"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lu3/o;->getName()LQ3/f;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0
.end method

.method public l(I)LL3/Q;
    .locals 0

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LL3/Q;

    return-object p0
.end method

.method public m(Ljava/lang/Object;Lr3/x;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, LS3/g;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, LS3/g;->P(Lr3/j;Ljava/lang/StringBuilder;Z)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0
.end method

.method public n(Lx3/o;)Lr3/e;
    .locals 5

    invoke-virtual {p1}, Lx3/o;->b()LQ3/c;

    move-result-object v0

    iget-object v1, p1, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v4, Lx3/o;

    invoke-direct {v4, v2}, Lx3/o;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual {p0, v4}, Ls2/c;->n(Lx3/o;)Lr3/e;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lr3/e;->R()La4/o;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v3

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p1

    sget-object v0, Lz3/b;->j:Lz3/b;

    invoke-interface {p0, p1, v0}, La4/q;->c(LQ3/f;Lz3/b;)Lr3/g;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v3

    :goto_2
    instance-of p1, p0, Lr3/e;

    if-eqz p1, :cond_3

    move-object v3, p0

    check-cast v3, Lr3/e;

    :cond_3
    return-object v3

    :cond_4
    invoke-virtual {v0}, LQ3/c;->e()LQ3/c;

    move-result-object v0

    const-string v2, "fqName.parent()"

    invoke-static {v2, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, LD3/d;

    invoke-virtual {p0, v0}, LD3/d;->b(LQ3/c;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, LR2/m;->O0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LE3/s;

    if-eqz p0, :cond_5

    iget-object p0, p0, LE3/s;->l:LE3/d;

    iget-object p0, p0, LE3/d;->d:LE3/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LE3/x;->v(LQ3/f;Lx3/o;)Lr3/e;

    move-result-object v3

    :cond_5
    return-object v3
.end method

.method public o(F)V
    .locals 0

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p0, p1}, Landroid/view/WindowInsetsAnimation;->setFraction(F)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, LC0/t;

    invoke-virtual {p0}, LC0/t;->d()V

    return-void
.end method

.method public p(Lu3/M;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "setter"

    invoke-virtual {p0, p1, p2, v0}, Ls2/c;->r(Lr3/J;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0
.end method

.method public q(Lr3/s;Ljava/lang/StringBuilder;)V
    .locals 9

    const-string v0, "descriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, LS3/g;

    invoke-virtual {p0}, LS3/g;->r()Z

    move-result v0

    iget-object v1, p0, LS3/g;->a:LS3/k;

    const-string v2, "function.typeParameters"

    const/4 v3, 0x1

    if-nez v0, :cond_c

    iget-object v0, v1, LS3/k;->g:LS3/j;

    sget-object v4, LS3/k;->W:[Li3/o;

    const/4 v5, 0x5

    aget-object v5, v4, v5

    invoke-virtual {v0, v5, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, LS3/g;->z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V

    invoke-interface {p1}, Lr3/b;->v0()Ljava/util/List;

    move-result-object v0

    const-string v5, "function.contextReceiverParameters"

    invoke-static {v5, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, v0}, LS3/g;->C(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-interface {p1}, Lr3/w;->c()LA3/p;

    move-result-object v0

    const-string v5, "function.visibility"

    invoke-static {v5, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, LS3/g;->h0(LA3/p;Ljava/lang/StringBuilder;)Z

    invoke-virtual {p0, p1, p2}, LS3/g;->M(Lr3/c;Ljava/lang/StringBuilder;)V

    iget-object v0, v1, LS3/k;->R:LS3/j;

    const/16 v5, 0x2a

    aget-object v6, v4, v5

    invoke-virtual {v0, v6, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, LS3/g;->K(Lr3/w;Ljava/lang/StringBuilder;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, LS3/g;->S(Lr3/c;Ljava/lang/StringBuilder;)V

    iget-object v0, v1, LS3/k;->R:LS3/j;

    aget-object v4, v4, v5

    invoke-virtual {v0, v4, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v4, "suspend"

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lr3/s;->Q()Z

    move-result v0

    const/16 v5, 0x26

    const/4 v6, 0x0

    const-string v7, "functionDescriptor.overriddenDescriptors"

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lr3/c;->p()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v7, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr3/s;

    invoke-interface {v8}, Lr3/s;->Q()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v0, v1, LS3/k;->N:LS3/j;

    sget-object v8, LS3/k;->W:[Li3/o;

    aget-object v8, v8, v5

    invoke-virtual {v0, v8, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_0
    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v6

    :goto_1
    invoke-interface {p1}, Lr3/s;->y0()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {p1}, Lr3/c;->p()Ljava/util/Collection;

    move-result-object v8

    invoke-static {v7, v8}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr3/s;

    invoke-interface {v8}, Lr3/s;->y0()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v7, v1, LS3/k;->N:LS3/j;

    sget-object v8, LS3/k;->W:[Li3/o;

    aget-object v5, v8, v5

    invoke-virtual {v7, v5, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    :goto_2
    move v6, v3

    :cond_8
    invoke-interface {p1}, Lr3/s;->O()Z

    move-result v5

    const-string v7, "tailrec"

    invoke-virtual {p0, p2, v5, v7}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-interface {p1}, Lr3/s;->h()Z

    move-result v5

    invoke-virtual {p0, p2, v5, v4}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-interface {p1}, Lr3/s;->j()Z

    move-result v4

    const-string v5, "inline"

    invoke-virtual {p0, p2, v4, v5}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v4, "infix"

    invoke-virtual {p0, p2, v6, v4}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v4, "operator"

    invoke-virtual {p0, p2, v0, v4}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-interface {p1}, Lr3/s;->h()Z

    move-result v0

    invoke-virtual {p0, p2, v0, v4}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :goto_3
    invoke-virtual {p0, p1, p2}, LS3/g;->J(Lr3/c;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, LS3/g;->u()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Lr3/s;->I()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "/*isHiddenToOvercomeSignatureClash*/ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-interface {p1}, Lr3/s;->b0()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "/*isHiddenForResolutionEverywhereBesideSupercalls*/ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "fun"

    invoke-virtual {p0, v0}, LS3/g;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lr3/b;->u()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, v0, v3}, LS3/g;->d0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    invoke-virtual {p0, p2, p1}, LS3/g;->V(Ljava/lang/StringBuilder;Lr3/b;)V

    :cond_c
    invoke-virtual {p0, p1, p2, v3}, LS3/g;->P(Lr3/j;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p1}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v0

    const-string v3, "function.valueParameters"

    invoke-static {v3, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr3/b;->o0()Z

    move-result v3

    invoke-virtual {p0, p2, v0, v3}, LS3/g;->g0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    invoke-virtual {p0, p2, p1}, LS3/g;->W(Ljava/lang/StringBuilder;Lr3/b;)V

    invoke-interface {p1}, Lr3/b;->n()Lh4/v;

    move-result-object v0

    iget-object v3, v1, LS3/k;->l:LS3/j;

    sget-object v4, LS3/k;->W:[Li3/o;

    const/16 v5, 0xa

    aget-object v5, v4, v5

    invoke-virtual {v3, v5, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_f

    const/16 v3, 0x9

    aget-object v3, v4, v3

    iget-object v4, v1, LS3/k;->k:LS3/j;

    invoke-virtual {v4, v3, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_d

    if-eqz v0, :cond_d

    sget-object v1, Lo3/i;->e:LQ3/f;

    sget-object v1, Lo3/m;->d:LQ3/e;

    invoke-static {v0, v1}, Lo3/i;->D(Lh4/v;LQ3/e;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_d
    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_e

    const-string v0, "[NULL]"

    goto :goto_4

    :cond_e
    invoke-virtual {p0, v0}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-interface {p1}, Lr3/b;->u()Ljava/util/List;

    move-result-object p1

    invoke-static {v2, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, LS3/g;->i0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method public r(Lr3/J;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast v0, LS3/g;

    iget-object v1, v0, LS3/g;->a:LS3/k;

    iget-object v2, v1, LS3/k;->G:LS3/j;

    sget-object v3, LS3/k;->W:[Li3/o;

    const/16 v4, 0x1f

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LS3/p;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 p3, 0x1

    if-eq v1, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ls2/c;->q(Lr3/s;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, LS3/g;->K(Lr3/w;Ljava/lang/StringBuilder;)V

    const-string p0, " for "

    invoke-virtual {p3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lu3/I;

    invoke-virtual {p1}, Lu3/I;->Q0()Lr3/K;

    move-result-object p0

    const-string p1, "descriptor.correspondingProperty"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, p0, p2}, LS3/g;->n(LS3/g;Lr3/K;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public s(Lr3/C;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, LS3/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lu3/E;

    const-string v0, "package-fragment"

    iget-object v1, p1, Lu3/E;->g:LQ3/c;

    invoke-virtual {p0, v1, v0, p2}, LS3/g;->T(LQ3/c;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, LS3/g;->a:LS3/k;

    invoke-virtual {v0}, LS3/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lu3/E;->Q0()Lr3/x;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LS3/g;->P(Lr3/j;Ljava/lang/StringBuilder;Z)V

    :cond_0
    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0
.end method

.method public t(Lr3/Q;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, LS3/g;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LS3/g;->b0(Lr3/Q;Ljava/lang/StringBuilder;Z)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0
.end method

.method public bridge synthetic v(Lr3/s;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ls2/c;->q(Lr3/s;Ljava/lang/StringBuilder;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0
.end method

.method public w(Lf4/t;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, LS3/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, LS3/g;->z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V

    const-string v0, "typeAlias.visibility"

    iget-object v1, p1, Lf4/t;->g:LA3/p;

    invoke-static {v0, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p2}, LS3/g;->h0(LA3/p;Ljava/lang/StringBuilder;)Z

    invoke-virtual {p0, p1, p2}, LS3/g;->K(Lr3/w;Ljava/lang/StringBuilder;)V

    const-string v0, "typealias"

    invoke-virtual {p0, v0}, LS3/g;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LS3/g;->P(Lr3/j;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p1}, Lf4/t;->s()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, LS3/g;->d0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    invoke-virtual {p0, p1, p2}, LS3/g;->A(Lr3/h;Ljava/lang/StringBuilder;)V

    const-string v0, " = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lf4/t;->S0()Lh4/z;

    move-result-object p1

    invoke-virtual {p0, p1}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0
.end method

.method public x(Lr3/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/StringBuilder;

    const-string v2, "constructorDescriptor"

    invoke-static {v2, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v2, p0

    iget-object v2, v2, Ls2/c;->c:Ljava/lang/Object;

    check-cast v2, LS3/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, LS3/g;->z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V

    iget-object v3, v2, LS3/g;->a:LS3/k;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, LS3/k;->W:[Li3/o;

    const/16 v5, 0xd

    aget-object v5, v4, v5

    iget-object v6, v3, LS3/k;->o:LS3/j;

    invoke-virtual {v6, v5, v3}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_0

    invoke-interface/range {p1 .. p1}, Lr3/i;->Y()Lr3/e;

    move-result-object v5

    invoke-interface {v5}, Lr3/e;->i()I

    move-result v5

    const/4 v8, 0x2

    if-eq v5, v8, :cond_1

    :cond_0
    move-object v5, v0

    check-cast v5, Lu3/v;

    invoke-virtual {v5}, Lu3/v;->c()LA3/p;

    move-result-object v5

    const-string v8, "constructor.visibility"

    invoke-static {v8, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v5, v1}, LS3/g;->h0(LA3/p;Ljava/lang/StringBuilder;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    invoke-virtual {v2, v0, v1}, LS3/g;->J(Lr3/c;Ljava/lang/StringBuilder;)V

    const/16 v8, 0x27

    aget-object v8, v4, v8

    iget-object v9, v3, LS3/k;->O:LS3/j;

    invoke-virtual {v9, v8, v3}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface/range {p1 .. p1}, Lr3/i;->V()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v7

    :goto_2
    if-eqz v5, :cond_4

    const-string v8, "constructor"

    invoke-virtual {v2, v8}, LS3/g;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-interface/range {p1 .. p1}, Lr3/i;->l()Lr3/h;

    move-result-object v8

    const-string v9, "constructor.containingDeclaration"

    invoke-static {v9, v8}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v3, LS3/k;->z:LS3/j;

    const/16 v10, 0x18

    aget-object v11, v4, v10

    invoke-virtual {v9, v11, v3}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v5, :cond_5

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v2, v8, v1, v7}, LS3/g;->P(Lr3/j;Ljava/lang/StringBuilder;Z)V

    move-object v5, v0

    check-cast v5, Lu3/v;

    invoke-virtual {v5}, Lu3/v;->u()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v1, v5, v6}, LS3/g;->d0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    :cond_6
    move-object v5, v0

    check-cast v5, Lu3/v;

    invoke-virtual {v5}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v6

    const-string v9, "constructor.valueParameters"

    invoke-static {v9, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface/range {p1 .. p1}, Lr3/b;->o0()Z

    move-result v9

    invoke-virtual {v2, v1, v6, v9}, LS3/g;->g0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    const/16 v6, 0xf

    aget-object v4, v4, v6

    iget-object v6, v3, LS3/k;->q:LS3/j;

    invoke-virtual {v6, v4, v3}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {p1 .. p1}, Lr3/i;->V()Z

    move-result v0

    if-nez v0, :cond_9

    instance-of v0, v8, Lr3/e;

    if-eqz v0, :cond_9

    check-cast v8, Lr3/e;

    invoke-interface {v8}, Lr3/e;->W()Lu3/k;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Lu3/v;

    invoke-virtual {v0}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v0

    const-string v4, "primaryConstructor.valueParameters"

    invoke-static {v4, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lu3/V;

    invoke-virtual {v6}, Lu3/V;->R0()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v6, v6, Lu3/V;->l:Lh4/v;

    if-nez v6, :cond_7

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v7

    if-eqz v0, :cond_9

    const-string v0, " : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "this"

    invoke-virtual {v2, v0}, LS3/g;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, LS3/f;->e:LS3/f;

    const-string v14, ")"

    const/16 v16, 0x18

    const-string v12, ", "

    const-string v13, "("

    invoke-static/range {v11 .. v16}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v0, v3, LS3/k;->z:LS3/j;

    sget-object v4, LS3/k;->W:[Li3/o;

    aget-object v4, v4, v10

    invoke-virtual {v0, v4, v3}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v5}, Lu3/v;->u()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, LS3/g;->i0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_a
    sget-object v0, LQ2/k;->a:LQ2/k;

    return-object v0
.end method
