.class public abstract Lh4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final A(Lh4/Z;Lh4/v;)Lh4/Z;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p0, Lh4/Y;

    if-eqz v0, :cond_0

    check-cast p0, Lh4/Y;

    invoke-interface {p0}, Lh4/Y;->c0()Lh4/Z;

    move-result-object p0

    invoke-static {p0, p1}, Lh4/c;->A(Lh4/Z;Lh4/v;)Lh4/Z;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_4

    invoke-static {p1, p0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lh4/z;

    if-eqz v0, :cond_2

    new-instance v0, Lh4/C;

    check-cast p0, Lh4/z;

    invoke-direct {v0, p0, p1}, Lh4/C;-><init>(Lh4/z;Lh4/v;)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lh4/q;

    if-eqz v0, :cond_3

    new-instance v0, Lh4/s;

    check-cast p0, Lh4/q;

    invoke-direct {v0, p0, p1}, Lh4/s;-><init>(Lh4/q;Lh4/v;)V

    :goto_0
    return-object v0

    :cond_3
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static synthetic a(I)V
    .locals 7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v2, 0x2

    if-eq p0, v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v6, "typeParameters"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_1
    aput-object v4, v3, v5

    goto :goto_2

    :pswitch_2
    const-string v6, "result"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_3
    const-string v6, "newContainingDeclaration"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_4
    const-string v6, "originalSubstitution"

    aput-object v6, v3, v5

    :goto_2
    const-string v5, "substituteTypeParameters"

    const/4 v6, 0x1

    if-eq p0, v0, :cond_2

    aput-object v4, v3, v6

    goto :goto_3

    :cond_2
    aput-object v5, v3, v6

    :goto_3
    if-eq p0, v0, :cond_3

    aput-object v5, v3, v2

    :cond_3
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static final b(Lh4/v;)Lh4/z;
    .locals 3

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lh4/v;->M0()Lh4/Z;

    move-result-object v0

    instance-of v1, v0, Lh4/z;

    if-eqz v1, :cond_0

    check-cast v0, Lh4/z;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This is should be simple type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final c(Ljava/util/ArrayList;Ljava/util/List;Lo3/i;)Lh4/v;
    .locals 1

    new-instance v0, Lh4/F;

    invoke-direct {v0, p0}, Lh4/F;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lh4/V;->e(Lh4/S;)Lh4/V;

    move-result-object p0

    invoke-static {p1}, LR2/m;->M0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh4/v;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lh4/V;->j(ILh4/v;)Lh4/v;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lo3/i;->m()Lh4/z;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final d(Lk4/c;Ljava/util/HashSet;)Lk4/c;
    .locals 4

    sget-object v0, Li4/e;->d:Li4/e;

    invoke-virtual {v0, p0}, Li4/e;->u0(Lk4/c;)Lh4/J;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-static {v1}, Li3/x;->c0(Lk4/f;)Lr3/Q;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, Lf1/a;->I(Lr3/Q;)Lh4/v;

    move-result-object v1

    invoke-static {v1, p1}, Lh4/c;->d(Lk4/c;Ljava/util/HashSet;)Lk4/c;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, v1}, Li4/e;->u0(Lk4/c;)Lh4/J;

    move-result-object v2

    invoke-static {v2}, Li3/x;->p0(Lk4/f;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v1, Lk4/d;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lk4/d;

    invoke-static {v2}, Li3/x;->x0(Lk4/d;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    instance-of v3, p1, Lk4/d;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Lk4/d;

    invoke-static {v3}, Li3/x;->x0(Lk4/d;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0}, Li3/x;->w0(Lk4/c;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Li4/e;->s(Lk4/c;)Lk4/c;

    move-result-object p0

    goto :goto_3

    :cond_3
    invoke-static {p1}, Li3/x;->w0(Lk4/c;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0, p0}, Li4/e;->r(Lk4/c;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p1}, Li4/e;->s(Lk4/c;)Lk4/c;

    move-result-object p0

    goto :goto_3

    :cond_5
    move-object p0, v3

    goto :goto_3

    :cond_6
    invoke-static {v1}, Li3/x;->p0(Lk4/f;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p0}, Li3/x;->d0(Lk4/c;)Lh4/z;

    move-result-object v1

    if-nez v1, :cond_7

    return-object v3

    :cond_7
    invoke-static {v1, p1}, Lh4/c;->d(Lk4/c;Ljava/util/HashSet;)Lk4/c;

    move-result-object p1

    if-nez p1, :cond_8

    return-object v3

    :cond_8
    invoke-static {p0}, Li3/x;->w0(Lk4/c;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_2
    move-object p0, p1

    goto :goto_3

    :cond_a
    invoke-static {p1}, Li3/x;->w0(Lk4/c;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    instance-of v1, p1, Lk4/d;

    if-eqz v1, :cond_c

    move-object v1, p1

    check-cast v1, Lk4/d;

    invoke-static {v1}, Li3/x;->x0(Lk4/d;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v0, p1}, Li4/e;->s(Lk4/c;)Lk4/c;

    move-result-object p0

    :cond_d
    :goto_3
    return-object p0
.end method

.method public static final e(Lh4/v;)Lh4/v;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p0, Lh4/Y;

    if-eqz v0, :cond_0

    check-cast p0, Lh4/Y;

    invoke-interface {p0}, Lh4/Y;->p0()Lh4/v;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static f(Lh4/I;Lk4/d;Lh4/c;)Z
    .locals 9

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "type"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lh4/I;->c:Li4/b;

    invoke-interface {v0, p1}, Li4/b;->O(Lk4/d;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Li4/b;->m0(Lk4/d;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_0
    invoke-interface {v0, p1}, Li4/b;->q0(Lk4/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, Lh4/I;->c()V

    iget-object v1, p0, Lh4/I;->g:Ljava/util/ArrayDeque;

    invoke-static {v1}, Ld3/i;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lh4/I;->h:Lq4/h;

    invoke-static {v3}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_a

    iget v4, v3, Lq4/h;->d:I

    const/16 v5, 0x3e8

    if-gt v4, v5, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk4/d;

    const-string v5, "current"

    invoke-static {v5, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lq4/h;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v4}, Li4/b;->m0(Lk4/d;)Z

    move-result v5

    sget-object v6, Lh4/H;->c:Lh4/H;

    if-eqz v5, :cond_3

    move-object v5, v6

    goto :goto_1

    :cond_3
    move-object v5, p2

    :goto_1
    invoke-static {v5, v6}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {v0, v4}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v4

    invoke-interface {v0, v4}, Li4/b;->o0(Lk4/f;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk4/c;

    invoke-virtual {v5, p0, v6}, Lh4/c;->x(Lh4/I;Lk4/c;)Lk4/d;

    move-result-object v6

    invoke-interface {v0, v6}, Li4/b;->O(Lk4/d;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0, v6}, Li4/b;->m0(Lk4/d;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    invoke-interface {v0, v6}, Li4/b;->q0(Lk4/c;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    invoke-virtual {p0}, Lh4/I;->a()V

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Too many supertypes for type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Supertypes = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x3f

    invoke-static/range {v3 .. v8}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Lh4/I;->a()V

    const/4 v2, 0x0

    :cond_b
    :goto_4
    return v2
.end method

.method public static final g(Lh4/Z;Lh4/v;)Lh4/Z;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "origin"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lh4/c;->e(Lh4/v;)Lh4/v;

    move-result-object p1

    invoke-static {p0, p1}, Lh4/c;->A(Lh4/Z;Lh4/v;)Lh4/Z;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lh4/I;Lk4/d;Lk4/f;)Z
    .locals 2

    iget-object v0, p0, Lh4/I;->c:Li4/b;

    invoke-interface {v0, p1}, Li4/b;->E(Lk4/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {v0, p1}, Li4/b;->m0(Lk4/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-boolean p0, p0, Lh4/I;->b:Z

    if-eqz p0, :cond_2

    invoke-interface {v0, p1}, Li4/b;->w0(Lk4/d;)V

    :cond_2
    invoke-interface {v0, p1}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Li4/b;->z0(Lk4/f;Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public static final i(Lh4/v;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lh4/v;->M0()Lh4/Z;

    move-result-object p0

    instance-of v0, p0, Lj4/f;

    if-nez v0, :cond_1

    instance-of v0, p0, Lh4/q;

    if-eqz v0, :cond_0

    check-cast p0, Lh4/q;

    invoke-virtual {p0}, Lh4/q;->Q0()Lh4/z;

    move-result-object p0

    instance-of p0, p0, Lj4/f;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final j(Lh4/v;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lh4/v;->M0()Lh4/Z;

    move-result-object p0

    instance-of p0, p0, Lh4/q;

    return p0
.end method

.method public static final k(Lh4/v;)Lh4/z;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lh4/v;->M0()Lh4/Z;

    move-result-object p0

    instance-of v0, p0, Lh4/q;

    if-eqz v0, :cond_0

    check-cast p0, Lh4/q;

    iget-object p0, p0, Lh4/q;->d:Lh4/z;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lh4/z;

    if-eqz v0, :cond_1

    check-cast p0, Lh4/z;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static final l(Lh4/Z;Z)Lh4/Z;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lh4/d;->p(Lh4/Z;Z)Lh4/m;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lh4/c;->m(Lh4/v;)Lh4/z;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lh4/Z;->N0(Z)Lh4/Z;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static final m(Lh4/v;)Lh4/z;
    .locals 7

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    instance-of v0, p0, Lh4/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lh4/u;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lh4/u;->b:Ljava/util/LinkedHashSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh4/v;

    invoke-static {v5}, Lh4/X;->f(Lh4/v;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lh4/v;->M0()Lh4/Z;

    move-result-object v4

    invoke-static {v4, v3}, Lh4/c;->l(Lh4/Z;Z)Lh4/Z;

    move-result-object v5

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    move-object v2, v1

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lh4/u;->a:Lh4/v;

    if-eqz p0, :cond_5

    invoke-static {p0}, Lh4/X;->f(Lh4/v;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lh4/v;->M0()Lh4/Z;

    move-result-object p0

    invoke-static {p0, v3}, Lh4/c;->l(Lh4/Z;Z)Lh4/Z;

    move-result-object p0

    goto :goto_2

    :cond_5
    move-object p0, v1

    :cond_6
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    new-instance v2, Lh4/u;

    invoke-direct {v2, v0}, Lh4/u;-><init>(Ljava/util/AbstractCollection;)V

    iput-object p0, v2, Lh4/u;->a:Lh4/v;

    :goto_3
    if-nez v2, :cond_7

    return-object v1

    :cond_7
    invoke-virtual {v2}, Lh4/u;->b()Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Lh4/z;Ljava/util/List;Lh4/G;)Lh4/z;
    .locals 7

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "newArguments"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "newAttributes"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/v;->I0()Lh4/G;

    move-result-object v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lh4/z;->R0(Lh4/G;)Lh4/z;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lj4/f;

    if-eqz v0, :cond_2

    check-cast p0, Lj4/f;

    new-instance p2, Lj4/f;

    iget-object v0, p0, Lj4/f;->i:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    iget-object v1, p0, Lj4/f;->d:Lh4/J;

    iget-object v2, p0, Lj4/f;->e:La4/o;

    iget-object v3, p0, Lj4/f;->f:Lj4/h;

    iget-boolean v5, p0, Lj4/f;->h:Z

    move-object v0, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lj4/f;-><init>(Lh4/J;La4/o;Lj4/h;Ljava/util/List;Z[Ljava/lang/String;)V

    return-object p2

    :cond_2
    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object v0

    invoke-virtual {p0}, Lh4/v;->K0()Z

    move-result p0

    invoke-static {p2, v0, p1, p0}, Lh4/d;->r(Lh4/G;Lh4/J;Ljava/util/List;Z)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lh4/v;Ljava/util/List;Ls3/h;I)Lh4/v;
    .locals 1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lh4/v;->t()Ls3/h;

    move-result-object p2

    :cond_0
    const-string p3, "<this>"

    invoke-static {p3, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p3, "newAnnotations"

    invoke-static {p3, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object p3

    if-ne p1, p3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lh4/v;->t()Ls3/h;

    move-result-object p3

    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lh4/v;->I0()Lh4/G;

    move-result-object p3

    instance-of v0, p2, Ls3/l;

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ls3/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p2, Ls3/g;->a:Ls3/f;

    :cond_3
    invoke-static {p3, p2}, Lh4/c;->q(Lh4/G;Ls3/h;)Lh4/G;

    move-result-object p2

    invoke-virtual {p0}, Lh4/v;->M0()Lh4/Z;

    move-result-object p0

    instance-of p3, p0, Lh4/q;

    if-eqz p3, :cond_4

    check-cast p0, Lh4/q;

    iget-object p3, p0, Lh4/q;->d:Lh4/z;

    invoke-static {p3, p1, p2}, Lh4/c;->n(Lh4/z;Ljava/util/List;Lh4/G;)Lh4/z;

    move-result-object p3

    iget-object p0, p0, Lh4/q;->e:Lh4/z;

    invoke-static {p0, p1, p2}, Lh4/c;->n(Lh4/z;Ljava/util/List;Lh4/G;)Lh4/z;

    move-result-object p0

    invoke-static {p3, p0}, Lh4/d;->j(Lh4/z;Lh4/z;)Lh4/Z;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of p3, p0, Lh4/z;

    if-eqz p3, :cond_5

    check-cast p0, Lh4/z;

    invoke-static {p0, p1, p2}, Lh4/c;->n(Lh4/z;Ljava/util/List;Lh4/G;)Lh4/z;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_5
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static synthetic p(Lh4/z;Ljava/util/List;Lh4/G;I)Lh4/z;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lh4/v;->I0()Lh4/G;

    move-result-object p2

    :cond_1
    invoke-static {p0, p1, p2}, Lh4/c;->n(Lh4/z;Ljava/util/List;Lh4/G;)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public static final q(Lh4/G;Ls3/h;)Lh4/G;
    .locals 5

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lh4/i;->a(Lh4/G;)Ls3/h;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lh4/i;->a:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lh4/i;->b:Lcom/google/android/gms/internal/firebase-auth-api/Z3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "property"

    invoke-static {v2, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Ln4/d;->c:Ln4/a;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/Z3;->a:I

    invoke-virtual {v0, v1}, Ln4/a;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/h;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ln4/d;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move-object v0, p0

    goto :goto_2

    :cond_1
    iget-object v1, p0, Ln4/d;->c:Ln4/a;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lh4/h;

    invoke-static {v4, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Ln4/d;->c:Ln4/a;

    invoke-virtual {v1}, Ln4/a;->l()I

    move-result v1

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lh4/G;->d:Le/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Le/v;->j(Ljava/util/List;)Lh4/G;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move-object p0, v0

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p1}, Ls3/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Lh4/h;

    invoke-direct {v0, p1}, Lh4/h;-><init>(Ls3/h;)V

    sget-object p1, Ld3/q;->a:Ld3/r;

    const-class v1, Lh4/h;

    invoke-virtual {p1, v1}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object p1

    sget-object v1, Lh4/G;->d:Le/v;

    invoke-virtual {v1, p1}, Le/v;->p(Li3/c;)I

    move-result p1

    iget-object v1, p0, Ln4/d;->c:Ln4/a;

    invoke-virtual {v1, p1}, Ln4/a;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Ln4/d;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p0, Lh4/G;

    invoke-static {v0}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lh4/G;-><init>(Ljava/util/List;)V

    goto :goto_4

    :cond_9
    invoke-static {p0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0}, LR2/m;->Z0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Le/v;->j(Ljava/util/List;)Lh4/G;

    move-result-object p0

    :goto_4
    return-object p0
.end method

.method public static final r(Lr3/Q;)Lh4/v;
    .locals 5

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object v0

    const-string v1, "this.containingDeclaration"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v1, v0, Lr3/h;

    const-string v2, "upperBounds"

    const-string v3, "it.typeConstructor"

    if-eqz v1, :cond_1

    check-cast v0, Lr3/h;

    invoke-interface {v0}, Lr3/g;->H()Lh4/J;

    move-result-object v0

    invoke-interface {v0}, Lh4/J;->k()Ljava/util/List;

    move-result-object v0

    const-string v1, "descriptor.typeConstructor.parameters"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr3/Q;

    invoke-interface {v4}, Lr3/g;->H()Lh4/J;

    move-result-object v4

    invoke-static {v3, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lr3/Q;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LX3/f;->e(Lr3/j;)Lo3/i;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lh4/c;->c(Ljava/util/ArrayList;Ljava/util/List;Lo3/i;)Lh4/v;

    move-result-object p0

    goto :goto_2

    :cond_1
    instance-of v1, v0, Lr3/s;

    if-eqz v1, :cond_3

    check-cast v0, Lr3/s;

    invoke-interface {v0}, Lr3/b;->u()Ljava/util/List;

    move-result-object v0

    const-string v1, "descriptor.typeParameters"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr3/Q;

    invoke-interface {v4}, Lr3/g;->H()Lh4/J;

    move-result-object v4

    invoke-static {v3, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lr3/Q;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LX3/f;->e(Lr3/j;)Lo3/i;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lh4/c;->c(Ljava/util/ArrayList;Ljava/util/List;Lo3/i;)Lh4/v;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported descriptor type to build star projection type based on type parameters of it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(Li4/b;Lk4/d;Lk4/d;)Z
    .locals 8

    invoke-interface {p0, p1}, Li4/b;->K(Lk4/c;)I

    move-result v0

    invoke-interface {p0, p2}, Li4/b;->K(Lk4/c;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    invoke-interface {p0, p1}, Li4/b;->m0(Lk4/d;)Z

    move-result v0

    invoke-interface {p0, p2}, Li4/b;->m0(Lk4/d;)Z

    move-result v1

    if-ne v0, v1, :cond_8

    invoke-interface {p0, p1}, Li4/b;->p0(Lk4/d;)Lh4/m;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p0, p2}, Li4/b;->p0(Lk4/d;)Lh4/m;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_8

    invoke-interface {p0, p1}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v0

    invoke-interface {p0, p2}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Li4/b;->z0(Lk4/f;Lk4/f;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p0, p1, p2}, Li4/b;->s0(Lk4/d;Lk4/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-interface {p0, p1}, Li4/b;->K(Lk4/c;)I

    move-result v0

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_7

    invoke-interface {p0, p1, v3}, Li4/b;->X(Lk4/c;I)Lh4/N;

    move-result-object v4

    invoke-interface {p0, p2, v3}, Li4/b;->X(Lk4/c;I)Lh4/N;

    move-result-object v5

    invoke-interface {p0, v4}, Li4/b;->c(Lh4/N;)Z

    move-result v6

    invoke-interface {p0, v5}, Li4/b;->c(Lh4/N;)Z

    move-result v7

    if-eq v6, v7, :cond_4

    return v2

    :cond_4
    invoke-interface {p0, v4}, Li4/b;->c(Lh4/N;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {p0, v4}, Li4/b;->i0(Lh4/N;)I

    move-result v6

    invoke-interface {p0, v5}, Li4/b;->i0(Lh4/N;)I

    move-result v7

    if-eq v6, v7, :cond_5

    return v2

    :cond_5
    invoke-interface {p0, v4}, Li4/b;->q(Lh4/N;)Lh4/Z;

    move-result-object v4

    invoke-interface {p0, v5}, Li4/b;->q(Lh4/N;)Lh4/Z;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lh4/c;->t(Li4/b;Lk4/c;Lk4/c;)Z

    move-result v4

    if-nez v4, :cond_6

    return v2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return v1

    :cond_8
    :goto_3
    return v2
.end method

.method public static t(Li4/b;Lk4/c;Lk4/c;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    invoke-interface {p0, p1}, Li4/b;->Z(Lk4/c;)Lh4/z;

    move-result-object v1

    invoke-interface {p0, p2}, Li4/b;->Z(Lk4/c;)Lh4/z;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-static {p0, v1, v2}, Lh4/c;->s(Li4/b;Lk4/d;Lk4/d;)Z

    move-result p0

    return p0

    :cond_1
    invoke-interface {p0, p1}, Li4/b;->e0(Lk4/c;)Lh4/q;

    move-result-object p1

    invoke-interface {p0, p2}, Li4/b;->e0(Lk4/c;)Lh4/q;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p0, p1}, Li4/b;->b0(Lh4/q;)Lh4/z;

    move-result-object v2

    invoke-interface {p0, p2}, Li4/b;->b0(Lh4/q;)Lh4/z;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lh4/c;->s(Li4/b;Lk4/d;Lk4/d;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, p1}, Li4/b;->h0(Lh4/q;)Lh4/z;

    move-result-object p1

    invoke-interface {p0, p2}, Li4/b;->h0(Lh4/q;)Lh4/z;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lh4/c;->s(Li4/b;Lk4/d;Lk4/d;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    return v1
.end method

.method public static u(Ljava/util/List;Lh4/S;Lr3/j;Ljava/util/List;)Lh4/V;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    invoke-static {p0, p1, p2, p3, v0}, Lh4/c;->v(Ljava/util/List;Lh4/S;Lr3/j;Ljava/util/List;[Z)Lh4/V;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Substitution failed"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    const/4 p0, 0x3

    invoke-static {p0}, Lh4/c;->a(I)V

    throw v0

    :cond_2
    const/4 p0, 0x2

    invoke-static {p0}, Lh4/c;->a(I)V

    throw v0

    :cond_3
    const/4 p0, 0x1

    invoke-static {p0}, Lh4/c;->a(I)V

    throw v0
.end method

.method public static v(Ljava/util/List;Lh4/S;Lr3/j;Ljava/util/List;[Z)Lh4/V;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_a

    if-eqz v1, :cond_9

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    move v8, v13

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lr3/Q;

    invoke-interface {v14}, Ls3/a;->t()Ls3/h;

    move-result-object v4

    invoke-interface {v14}, Lr3/Q;->n0()Z

    move-result v5

    invoke-interface {v14}, Lr3/Q;->A()I

    move-result v6

    invoke-interface {v14}, Lr3/j;->getName()LQ3/f;

    move-result-object v7

    add-int/lit8 v15, v8, 0x1

    invoke-interface {v14}, Lr3/Q;->K()Lg4/o;

    move-result-object v9

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v9}, Lu3/T;->S0(Lr3/j;Ls3/h;ZILQ3/f;ILg4/o;)Lu3/T;

    move-result-object v3

    invoke-interface {v14}, Lr3/g;->H()Lh4/J;

    move-result-object v4

    new-instance v5, Lh4/O;

    invoke-virtual {v3}, Lu3/j;->q()Lh4/z;

    move-result-object v6

    invoke-direct {v5, v6}, Lh4/O;-><init>(Lh4/v;)V

    invoke-virtual {v10, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v15

    goto :goto_0

    :cond_0
    new-instance v1, Lh4/K;

    invoke-direct {v1, v10, v13}, Lh4/K;-><init>(Ljava/util/Map;Z)V

    invoke-static {v0, v1}, Lh4/V;->f(Lh4/S;Lh4/S;)Lh4/V;

    move-result-object v3

    new-instance v4, Lh4/Q;

    invoke-direct {v4, v0}, Lh4/Q;-><init>(Lh4/S;)V

    invoke-static {v4, v1}, Lh4/V;->f(Lh4/S;Lh4/S;)Lh4/V;

    move-result-object v0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr3/Q;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu3/T;

    invoke-interface {v4}, Lr3/Q;->getUpperBounds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "Type parameter descriptor is already initialized: "

    const/4 v8, 0x1

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh4/v;

    invoke-virtual {v6}, Lh4/v;->J0()Lh4/J;

    move-result-object v9

    invoke-interface {v9}, Lh4/J;->i()Lr3/g;

    move-result-object v9

    instance-of v10, v9, Lr3/Q;

    if-eqz v10, :cond_1

    check-cast v9, Lr3/Q;

    const-string v10, "typeParameter"

    invoke-static {v10, v9}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v9, v2, v2}, Lf1/a;->L(Lr3/Q;Lh4/J;Ljava/util/Set;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v3

    goto :goto_3

    :cond_1
    move-object v9, v0

    :goto_3
    const/4 v10, 0x3

    invoke-virtual {v9, v10, v6}, Lh4/V;->j(ILh4/v;)Lh4/v;

    move-result-object v9

    if-nez v9, :cond_2

    return-object v2

    :cond_2
    if-eq v9, v6, :cond_3

    if-eqz p4, :cond_3

    aput-boolean v8, p4, v13

    :cond_3
    iget-boolean v6, v5, Lu3/T;->n:Z

    if-nez v6, :cond_5

    invoke-static {v9}, Lh4/c;->i(Lh4/v;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    iget-object v6, v5, Lu3/T;->m:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lu3/T;->U0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-boolean v4, v5, Lu3/T;->n:Z

    if-nez v4, :cond_7

    iput-boolean v8, v5, Lu3/T;->n:Z

    goto/16 :goto_1

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lu3/T;->U0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-object v3

    :cond_9
    const/16 v0, 0x8

    invoke-static {v0}, Lh4/c;->a(I)V

    throw v2

    :cond_a
    const/4 v0, 0x7

    invoke-static {v0}, Lh4/c;->a(I)V

    throw v2

    :cond_b
    const/4 v0, 0x6

    invoke-static {v0}, Lh4/c;->a(I)V

    throw v2
.end method

.method public static final w(Ls3/h;)Lh4/G;
    .locals 2

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ls3/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lh4/G;->d:Le/v;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lh4/G;->e:Lh4/G;

    goto :goto_0

    :cond_0
    sget-object v0, Lh4/G;->d:Le/v;

    new-instance v1, Lh4/h;

    invoke-direct {v1, p0}, Lh4/h;-><init>(Ls3/h;)V

    invoke-static {v1}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Le/v;->j(Ljava/util/List;)Lh4/G;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final y(Lh4/v;)Lh4/z;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lh4/v;->M0()Lh4/Z;

    move-result-object p0

    instance-of v0, p0, Lh4/q;

    if-eqz v0, :cond_0

    check-cast p0, Lh4/q;

    iget-object p0, p0, Lh4/q;->e:Lh4/z;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lh4/z;

    if-eqz v0, :cond_1

    check-cast p0, Lh4/z;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static final z(Lh4/z;Lh4/z;)Lh4/z;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "abbreviatedType"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lh4/c;->i(Lh4/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lh4/a;

    invoke-direct {v0, p0, p1}, Lh4/a;-><init>(Lh4/z;Lh4/z;)V

    return-object v0
.end method


# virtual methods
.method public abstract x(Lh4/I;Lk4/c;)Lk4/d;
.end method
