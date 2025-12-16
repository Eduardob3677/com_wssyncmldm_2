.class public final Ll3/i0;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ll3/j0;


# direct methods
.method public synthetic constructor <init>(Ll3/j0;I)V
    .locals 0

    iput p2, p0, Ll3/i0;->d:I

    iput-object p1, p0, Ll3/i0;->e:Ll3/j0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ll3/i0;->e:Ll3/j0;

    const/4 v3, 0x2

    iget p0, p0, Ll3/i0;->d:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Ll3/u0;->a:LQ3/b;

    invoke-virtual {v2}, Ll3/j0;->p()Lr3/K;

    move-result-object p0

    invoke-static {p0}, Ll3/u0;->b(Lr3/K;)Ll3/r0;

    move-result-object p0

    instance-of v4, p0, Ll3/m;

    if-eqz v4, :cond_a

    check-cast p0, Ll3/m;

    sget-object v4, LP3/h;->a:LR3/i;

    iget-object v4, p0, Ll3/m;->e:LL3/G;

    iget-object v5, p0, Ll3/m;->g:LN3/f;

    iget-object v6, p0, Ll3/m;->h:Ls2/c;

    invoke-static {v4, v5, v6, v0}, LP3/h;->b(LL3/G;LN3/f;Ls2/c;Z)LP3/d;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object p0, p0, Ll3/m;->d:Lr3/K;

    const/4 v6, 0x0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lr3/c;->k0()I

    move-result v7

    if-ne v7, v3, :cond_1

    :cond_0
    move v0, v6

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {v3}, LT3/e;->m(Lr3/j;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Lr3/j;->l()Lr3/j;

    move-result-object v7

    invoke-static {v7, v0}, LT3/e;->o(Lr3/j;I)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x3

    invoke-static {v7, v8}, LT3/e;->o(Lr3/j;I)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    check-cast v3, Lr3/e;

    sget-object v7, Lo3/d;->a:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Li3/x;->t0(Lr3/e;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object v3

    invoke-static {v3}, LT3/e;->m(Lr3/j;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Lr3/K;->r0()Lu3/t;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, LK3/c;->t()Ls3/h;

    move-result-object v3

    sget-object v7, LA3/y;->a:LQ3/c;

    invoke-interface {v3, v7}, Ls3/h;->b(LQ3/c;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v0

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Ls3/a;->t()Ls3/h;

    move-result-object v3

    sget-object v7, LA3/y;->a:LQ3/c;

    invoke-interface {v3, v7}, Ls3/h;->b(LQ3/c;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_0

    :goto_1
    iget-object v2, v2, Ll3/j0;->d:Ll3/C;

    if-nez v0, :cond_7

    invoke-static {v4}, LP3/h;->d(LL3/G;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object p0

    instance-of v0, p0, Lr3/e;

    if-eqz v0, :cond_6

    check-cast p0, Lr3/e;

    invoke-static {p0}, Ll3/w0;->j(Lr3/e;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Ld3/c;->a()Ljava/lang/Class;

    move-result-object p0

    goto :goto_3

    :cond_7
    :goto_2
    invoke-interface {v2}, Ld3/c;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    :goto_3
    if-eqz p0, :cond_d

    :try_start_0
    iget-object v0, v5, LP3/d;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_8
    invoke-static {v0}, LW1/a;->a(I)V

    throw v1

    :cond_9
    invoke-static {v6}, LW1/a;->a(I)V

    throw v1

    :cond_a
    instance-of v0, p0, Ll3/k;

    if-eqz v0, :cond_b

    check-cast p0, Ll3/k;

    iget-object v1, p0, Ll3/k;->d:Ljava/lang/reflect/Field;

    goto :goto_4

    :cond_b
    instance-of v0, p0, Ll3/l;

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_c
    instance-of p0, p0, Ll3/n;

    if-eqz p0, :cond_e

    :catch_0
    :cond_d
    :goto_4
    return-object v1

    :cond_e
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_0
    iget-object p0, v2, Ll3/j0;->d:Ll3/C;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Ll3/j0;->e:Ljava/lang/String;

    const-string v5, "name"

    invoke-static {v5, v4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v2, Ll3/j0;->f:Ljava/lang/String;

    const-string v5, "signature"

    invoke-static {v5, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Ll3/C;->c:LQ2/a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, LQ2/a;->d:Ljava/lang/Object;

    check-cast v5, Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, "nativePattern.matcher(input)"

    invoke-static {v6, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_5

    :cond_f
    new-instance v1, Le/v;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v5, v1, Le/v;->c:Ljava/lang/Object;

    :goto_5
    if-eqz v1, :cond_12

    iget-object v2, v1, Le/v;->d:Ljava/lang/Object;

    check-cast v2, Ls4/a;

    if-nez v2, :cond_10

    new-instance v2, Ls4/a;

    invoke-direct {v2, v1}, Ls4/a;-><init>(Le/v;)V

    iput-object v2, v1, Le/v;->d:Ljava/lang/Object;

    :cond_10
    iget-object v1, v1, Le/v;->d:Ljava/lang/Object;

    check-cast v1, Ls4/a;

    invoke-static {v1}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ls4/a;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ll3/C;->f(I)Lr3/K;

    move-result-object v1

    if-eqz v1, :cond_11

    goto/16 :goto_9

    :cond_11
    new-instance v1, LQ2/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Local property #"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found in "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ld3/c;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v3}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_12
    invoke-static {v4}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v1

    invoke-virtual {p0, v1}, Ll3/C;->i(LQ3/f;)Ljava/util/Collection;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lr3/K;

    invoke-static {v7}, Ll3/u0;->b(Lr3/K;)Ll3/r0;

    move-result-object v7

    invoke-virtual {v7}, Ll3/r0;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_14
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v6, ") not resolved in "

    const-string v7, "\' (JVM signature: "

    const-string v8, "Property \'"

    if-nez v1, :cond_1a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v1, v0, :cond_19

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lr3/K;

    invoke-interface {v10}, Lr3/w;->c()LA3/p;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_15

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_16
    new-instance v5, LF0/b;

    const/4 v9, 0x6

    invoke-direct {v5, v9}, LF0/b;-><init>(I)V

    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v9, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v9}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v5, "properties\n             \u2026\n                }.values"

    invoke-static {v5, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, LR2/m;->T0(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v0, :cond_17

    invoke-static {v1}, LR2/m;->M0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lr3/K;

    goto :goto_9

    :cond_17
    invoke-static {v4}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll3/C;->i(LQ3/f;)Ljava/util/Collection;

    move-result-object v9

    sget-object v13, Ll3/b;->j:Ll3/b;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v10, "\n"

    const/16 v14, 0x1e

    invoke-static/range {v9 .. v14}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LQ2/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_18

    const-string p0, " no members found"

    goto :goto_8

    :cond_18
    const-string p0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_8
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v3}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_19
    invoke-static {v5}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lr3/K;

    :goto_9
    return-object v1

    :cond_1a
    new-instance v0, LQ2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v3}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
