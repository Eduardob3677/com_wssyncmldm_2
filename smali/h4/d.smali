.class public final Lh4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lh4/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lh4/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh4/d;->a:Lh4/d;

    return-void
.end method

.method public static final b(Li4/b;Lk4/d;)Z
    .locals 1

    invoke-interface {p0, p1}, Li4/b;->P(Lk4/d;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lk4/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lk4/b;

    invoke-interface {p0, p1}, Li4/b;->h(Lk4/b;)Li4/i;

    move-result-object p1

    invoke-interface {p0, p1}, Li4/b;->Q(LU3/b;)Lh4/N;

    move-result-object p1

    invoke-interface {p0, p1}, Li4/b;->c(Lh4/N;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Li4/b;->q(Lh4/N;)Lh4/Z;

    move-result-object p1

    invoke-interface {p0, p1}, Li4/b;->g(Lk4/c;)Lh4/z;

    move-result-object p1

    invoke-interface {p0, p1}, Li4/b;->P(Lk4/d;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public static final c(Li4/b;Lh4/I;Lk4/d;Lk4/d;Z)Z
    .locals 4

    invoke-interface {p0, p2}, Li4/b;->A(Lk4/d;)Ljava/util/Set;

    move-result-object p2

    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

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

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk4/c;

    invoke-interface {p0, v0}, Li4/b;->u0(Lk4/c;)Lh4/J;

    move-result-object v2

    invoke-interface {p0, p3}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v3

    invoke-static {v2, v3}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p4, :cond_1

    sget-object v2, Lh4/d;->a:Lh4/d;

    invoke-static {v2, p1, p3, v0}, Lh4/d;->n(Lh4/d;Lh4/I;Lk4/c;Lk4/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public static d(Lh4/I;Lk4/d;Lk4/f;)Ljava/util/List;
    .locals 9

    iget-object v0, p0, Lh4/I;->c:Li4/b;

    invoke-interface {v0, p1, p2}, Li4/b;->d(Lk4/d;Lk4/f;)V

    invoke-interface {v0, p2}, Li4/b;->c0(Lk4/f;)Z

    move-result v1

    sget-object v2, LR2/u;->c:LR2/u;

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Li4/b;->O(Lk4/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v0, p2}, Li4/b;->r0(Lk4/f;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, p1}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Li4/b;->z0(Lk4/f;Lk4/f;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0, p1}, Li4/b;->k(Lk4/d;)Lh4/z;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    invoke-static {p1}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_2
    return-object v2

    :cond_3
    new-instance v1, Lq4/f;

    invoke-direct {v1}, Lq4/f;-><init>()V

    invoke-virtual {p0}, Lh4/I;->c()V

    iget-object v2, p0, Lh4/I;->g:Ljava/util/ArrayDeque;

    invoke-static {v2}, Ld3/i;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lh4/I;->h:Lq4/h;

    invoke-static {v3}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    iget v4, v3, Lq4/h;->d:I

    const/16 v5, 0x3e8

    if-gt v4, v5, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk4/d;

    const-string v5, "current"

    invoke-static {v5, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lq4/h;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0, v4}, Li4/b;->k(Lk4/d;)Lh4/z;

    move-result-object v5

    if-nez v5, :cond_5

    move-object v5, v4

    :cond_5
    invoke-interface {v0, v5}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v6

    invoke-interface {v0, v6, p2}, Li4/b;->z0(Lk4/f;Lk4/f;)Z

    move-result v6

    sget-object v7, Lh4/H;->c:Lh4/H;

    iget-object v8, p0, Lh4/I;->c:Li4/b;

    if-eqz v6, :cond_6

    invoke-virtual {v1, v5}, Lq4/f;->add(Ljava/lang/Object;)Z

    move-object v5, v7

    goto :goto_2

    :cond_6
    invoke-interface {v0, v5}, Li4/b;->K(Lk4/c;)I

    move-result v6

    if-nez v6, :cond_7

    sget-object v5, Lh4/H;->b:Lh4/H;

    goto :goto_2

    :cond_7
    invoke-interface {v8, v5}, Li4/b;->t(Lk4/d;)Li4/a;

    move-result-object v5

    :goto_2
    invoke-static {v5, v7}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_9

    goto :goto_1

    :cond_9
    invoke-interface {v8, v4}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v4

    invoke-interface {v8, v4}, Li4/b;->o0(Lk4/f;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk4/c;

    invoke-virtual {v5, p0, v6}, Lh4/c;->x(Lh4/I;Lk4/c;)Lk4/d;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
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

    :cond_b
    invoke-virtual {p0}, Lh4/I;->a()V

    return-object v1
.end method

.method public static e(Lh4/I;Lk4/d;Lk4/f;)Ljava/util/List;
    .locals 7

    invoke-static {p0, p1, p2}, Lh4/d;->d(Lh4/I;Lk4/d;Lk4/f;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lk4/d;

    iget-object v3, p0, Lh4/I;->c:Li4/b;

    invoke-interface {v3, v2}, Li4/b;->p(Lk4/d;)Lk4/e;

    move-result-object v2

    invoke-interface {v3, v2}, Li4/b;->f(Lk4/e;)I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-interface {v3, v2, v5}, Li4/b;->i(Lk4/e;I)Lh4/N;

    move-result-object v6

    invoke-interface {v3, v6}, Li4/b;->q(Lh4/N;)Lh4/Z;

    move-result-object v6

    invoke-interface {v3, v6}, Li4/b;->e0(Lk4/c;)Lh4/q;

    move-result-object v6

    if-nez v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_4

    move-object p1, p2

    :cond_4
    :goto_2
    return-object p1
.end method

.method public static g(Lh4/I;Lk4/c;Lk4/c;)Z
    .locals 9

    const-string v0, "state"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "a"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "b"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    sget-object v1, Lh4/d;->a:Lh4/d;

    iget-object v2, p0, Lh4/I;->c:Li4/b;

    invoke-static {v2, p1}, Lh4/d;->l(Li4/b;Lk4/c;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-static {v2, p2}, Lh4/d;->l(Li4/b;Lk4/c;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, p1}, Lh4/I;->e(Lk4/c;)Lh4/v;

    move-result-object v3

    invoke-virtual {p0, v3}, Lh4/I;->d(Lk4/c;)Lh4/Z;

    move-result-object v3

    invoke-virtual {p0, p2}, Lh4/I;->e(Lk4/c;)Lh4/v;

    move-result-object v5

    invoke-virtual {p0, v5}, Lh4/I;->d(Lk4/c;)Lh4/Z;

    move-result-object v5

    invoke-interface {v2, v3}, Li4/b;->o(Lk4/c;)Lh4/z;

    move-result-object v6

    invoke-interface {v2, v3}, Li4/b;->u0(Lk4/c;)Lh4/J;

    move-result-object v7

    invoke-interface {v2, v5}, Li4/b;->u0(Lk4/c;)Lh4/J;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Li4/b;->z0(Lk4/f;Lk4/f;)Z

    move-result v7

    if-nez v7, :cond_1

    return v4

    :cond_1
    invoke-interface {v2, v6}, Li4/b;->K(Lk4/c;)I

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v2, v3}, Li4/b;->j(Lh4/Z;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {v2, v5}, Li4/b;->j(Lh4/Z;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2, v6}, Li4/b;->m0(Lk4/d;)Z

    move-result p0

    invoke-interface {v2, v5}, Li4/b;->o(Lk4/c;)Lh4/z;

    move-result-object p1

    invoke-interface {v2, p1}, Li4/b;->m0(Lk4/d;)Z

    move-result p1

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v4

    :cond_4
    :goto_0
    return v0

    :cond_5
    invoke-static {v1, p0, p1, p2}, Lh4/d;->n(Lh4/d;Lh4/I;Lk4/c;Lk4/c;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1, p0, p2, p1}, Lh4/d;->n(Lh4/d;Lh4/I;Lk4/c;Lk4/c;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    move v0, v4

    :goto_1
    return v0
.end method

.method public static final j(Lh4/z;Lh4/z;)Lh4/Z;
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "upperBound"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lh4/r;

    invoke-direct {v0, p0, p1}, Lh4/r;-><init>(Lh4/z;Lh4/z;)V

    return-object v0
.end method

.method public static k(Li4/b;Lk4/c;Lk4/d;)Lr3/Q;
    .locals 7

    invoke-interface {p0, p1}, Li4/b;->K(Lk4/c;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_6

    invoke-interface {p0, p1, v2}, Li4/b;->X(Lk4/c;I)Lh4/N;

    move-result-object v4

    invoke-interface {p0, v4}, Li4/b;->c(Lh4/N;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    if-eqz v5, :cond_0

    move-object v3, v4

    :cond_0
    if-eqz v3, :cond_5

    invoke-interface {p0, v3}, Li4/b;->q(Lh4/N;)Lh4/Z;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {p0, v3}, Li4/b;->o(Lk4/c;)Lh4/z;

    move-result-object v4

    invoke-interface {p0, v4}, Li4/b;->I(Lk4/d;)Lk4/d;

    move-result-object v4

    invoke-interface {p0, v4}, Li4/b;->D(Lk4/d;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0, p2}, Li4/b;->o(Lk4/c;)Lh4/z;

    move-result-object v4

    invoke-interface {p0, v4}, Li4/b;->I(Lk4/d;)Lk4/d;

    move-result-object v4

    invoke-interface {p0, v4}, Li4/b;->D(Lk4/d;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    invoke-static {v3, p2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v6, :cond_3

    invoke-interface {p0, v3}, Li4/b;->u0(Lk4/c;)Lh4/J;

    move-result-object v4

    invoke-interface {p0, p2}, Li4/b;->u0(Lk4/c;)Lh4/J;

    move-result-object v5

    invoke-static {v4, v5}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p0, v3, p2}, Lh4/d;->k(Li4/b;Lk4/c;Lk4/d;)Lr3/Q;

    move-result-object v3

    if-eqz v3, :cond_5

    return-object v3

    :cond_4
    :goto_2
    invoke-interface {p0, p1}, Li4/b;->u0(Lk4/c;)Lh4/J;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Li4/b;->W(Lk4/f;I)Lr3/Q;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v3
.end method

.method public static l(Li4/b;Lk4/c;)Z
    .locals 1

    invoke-interface {p0, p1}, Li4/b;->u0(Lk4/c;)Lh4/J;

    move-result-object v0

    invoke-interface {p0, v0}, Li4/b;->B(Lk4/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Li4/b;->b(Lk4/c;)V

    invoke-interface {p0, p1}, Li4/b;->q0(Lk4/c;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Li4/b;->e(Lk4/c;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Li4/b;->o(Lk4/c;)Lh4/z;

    move-result-object v0

    invoke-interface {p0, v0}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v0

    invoke-interface {p0, p1}, Li4/b;->g(Lk4/c;)Lh4/z;

    move-result-object p1

    invoke-interface {p0, p1}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object p0

    invoke-static {v0, p0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static m(Lh4/I;Lk4/e;Lk4/d;)Z
    .locals 12

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "capturedSubArguments"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "superType"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lh4/I;->c:Li4/b;

    invoke-interface {v0, p2}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v1

    invoke-interface {v0, p1}, Li4/b;->f(Lk4/e;)I

    move-result v2

    invoke-interface {v0, v1}, Li4/b;->L(Lk4/f;)I

    move-result v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_c

    invoke-interface {v0, p2}, Li4/b;->K(Lk4/c;)I

    move-result v5

    if-eq v2, v5, :cond_0

    goto/16 :goto_3

    :cond_0
    move v2, v4

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v3, :cond_b

    invoke-interface {v0, p2, v2}, Li4/b;->X(Lk4/c;I)Lh4/N;

    move-result-object v6

    invoke-interface {v0, v6}, Li4/b;->c(Lh4/N;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-interface {v0, v6}, Li4/b;->q(Lh4/N;)Lh4/Z;

    move-result-object v7

    invoke-interface {v0, p1, v2}, Li4/b;->i(Lk4/e;I)Lh4/N;

    move-result-object v8

    invoke-interface {v0, v8}, Li4/b;->i0(Lh4/N;)I

    invoke-interface {v0, v8}, Li4/b;->q(Lh4/N;)Lh4/Z;

    move-result-object v8

    invoke-interface {v0, v1, v2}, Li4/b;->W(Lk4/f;I)Lr3/Q;

    move-result-object v9

    invoke-interface {v0, v9}, Li4/b;->d0(Lr3/Q;)I

    move-result v9

    invoke-interface {v0, v6}, Li4/b;->i0(Lh4/N;)I

    move-result v6

    const-string v10, "declared"

    invoke-static {v9, v10}, LB/f;->x(ILjava/lang/String;)V

    const-string v10, "useSite"

    invoke-static {v6, v10}, LB/f;->x(ILjava/lang/String;)V

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    if-ne v6, v10, :cond_2

    goto :goto_1

    :cond_2
    if-ne v9, v6, :cond_3

    goto :goto_1

    :cond_3
    move v9, v4

    :goto_1
    if-nez v9, :cond_4

    iget-boolean p0, p0, Lh4/I;->a:Z

    return p0

    :cond_4
    sget-object v6, Lh4/d;->a:Lh4/d;

    if-ne v9, v10, :cond_5

    invoke-static {v0, v8, v7}, Lh4/d;->o(Li4/b;Lk4/c;Lk4/c;)V

    invoke-static {v0, v7, v8}, Lh4/d;->o(Li4/b;Lk4/c;Lk4/c;)V

    :cond_5
    iget v10, p0, Lh4/I;->f:I

    const/16 v11, 0x64

    if-gt v10, v11, :cond_9

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lh4/I;->f:I

    invoke-static {v9}, Lk/Q0;->f(I)I

    move-result v9

    if-eqz v9, :cond_8

    if-eq v9, v5, :cond_7

    const/4 v5, 0x2

    if-ne v9, v5, :cond_6

    invoke-static {p0, v8, v7}, Lh4/d;->g(Lh4/I;Lk4/c;Lk4/c;)Z

    move-result v5

    goto :goto_2

    :cond_6
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_7
    invoke-static {v6, p0, v8, v7}, Lh4/d;->n(Lh4/d;Lh4/I;Lk4/c;Lk4/c;)Z

    move-result v5

    goto :goto_2

    :cond_8
    invoke-static {v6, p0, v7, v8}, Lh4/d;->n(Lh4/d;Lh4/I;Lk4/c;Lk4/c;)Z

    move-result v5

    :goto_2
    iget v6, p0, Lh4/I;->f:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lh4/I;->f:I

    if-nez v5, :cond_a

    return v4

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Arguments depth is too high. Some related argument: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return v5

    :cond_c
    :goto_3
    return v4
.end method

.method public static n(Lh4/d;Lh4/I;Lk4/c;Lk4/c;)Z
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "state"

    invoke-static {v3, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "subType"

    invoke-static {v3, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "superType"

    invoke-static {v3, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    goto/16 :goto_25

    :cond_0
    invoke-virtual/range {p1 .. p3}, Lh4/I;->b(Lk4/c;Lk4/c;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    :goto_0
    move v3, v5

    goto/16 :goto_25

    :cond_1
    invoke-virtual/range {p1 .. p2}, Lh4/I;->e(Lk4/c;)Lh4/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh4/I;->d(Lk4/c;)Lh4/Z;

    move-result-object v1

    invoke-virtual {v0, v2}, Lh4/I;->e(Lk4/c;)Lh4/v;

    move-result-object v2

    invoke-virtual {v0, v2}, Lh4/I;->d(Lk4/c;)Lh4/Z;

    move-result-object v2

    iget-object v4, v0, Lh4/I;->c:Li4/b;

    invoke-interface {v4, v1}, Li4/b;->o(Lk4/c;)Lh4/z;

    move-result-object v6

    invoke-interface {v4, v2}, Li4/b;->g(Lk4/c;)Lh4/z;

    move-result-object v7

    invoke-interface {v4, v6}, Li4/b;->w(Lk4/d;)Z

    move-result v8

    sget-object v9, Lh4/d;->a:Lh4/d;

    if-nez v8, :cond_11

    invoke-interface {v4, v7}, Li4/b;->w(Lk4/d;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-interface {v4, v6}, Li4/b;->C(Lk4/d;)V

    invoke-interface {v4, v6}, Li4/b;->w0(Lk4/d;)V

    invoke-interface {v4, v7}, Li4/b;->w0(Lk4/d;)V

    invoke-interface {v4, v7}, Li4/b;->p0(Lk4/d;)Lh4/m;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v4, v8}, Li4/b;->a(Lh4/m;)Lh4/z;

    move-result-object v8

    if-nez v8, :cond_4

    :cond_3
    move-object v8, v7

    :cond_4
    invoke-interface {v4, v8}, Li4/b;->v0(Lk4/d;)Lk4/b;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v4, v8}, Li4/b;->F(Lk4/b;)Lh4/Z;

    move-result-object v11

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    if-eqz v8, :cond_8

    if-eqz v11, :cond_8

    invoke-interface {v4, v7}, Li4/b;->m0(Lk4/d;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4, v11}, Li4/b;->t0(Lk4/c;)Lk4/c;

    move-result-object v11

    goto :goto_2

    :cond_6
    invoke-interface {v4, v7}, Li4/b;->q0(Lk4/c;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4, v11}, Li4/b;->n(Lk4/c;)Lh4/Z;

    move-result-object v11

    :cond_7
    :goto_2
    invoke-static {v9, v0, v6, v11}, Lh4/d;->n(Lh4/d;Lh4/I;Lk4/c;Lk4/c;)Z

    move-result v8

    if-eqz v8, :cond_8

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_7

    :cond_8
    invoke-interface {v4, v7}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v8

    invoke-interface {v4, v8}, Li4/b;->x(Lk4/f;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v4, v7}, Li4/b;->m0(Lk4/d;)Z

    invoke-interface {v4, v8}, Li4/b;->o0(Lk4/f;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_9
    move v6, v3

    goto :goto_3

    :cond_a
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lk4/c;

    invoke-static {v9, v0, v6, v8}, Lh4/d;->n(Lh4/d;Lh4/I;Lk4/c;Lk4/c;)Z

    move-result v8

    if-nez v8, :cond_b

    move v6, v5

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_7

    :cond_c
    invoke-interface {v4, v6}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v8

    instance-of v9, v6, Lk4/b;

    if-nez v9, :cond_f

    invoke-interface {v4, v8}, Li4/b;->x(Lk4/f;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v4, v8}, Li4/b;->o0(Lk4/f;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_4

    :cond_d
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lk4/c;

    instance-of v9, v9, Lk4/b;

    if-nez v9, :cond_e

    goto :goto_5

    :cond_f
    :goto_4
    invoke-static {v4, v7, v6}, Lh4/d;->k(Li4/b;Lk4/c;Lk4/d;)Lr3/Q;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-interface {v4, v7}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Li4/b;->S(Lr3/Q;Lk4/f;)Z

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_10
    :goto_5
    const/4 v6, 0x0

    goto :goto_7

    :cond_11
    :goto_6
    iget-boolean v8, v0, Lh4/I;->a:Z

    if-eqz v8, :cond_12

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_12
    invoke-interface {v4, v6}, Li4/b;->m0(Lk4/d;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v4, v7}, Li4/b;->m0(Lk4/d;)Z

    move-result v8

    if-nez v8, :cond_13

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_13
    invoke-interface {v4, v6, v5}, Li4/b;->f0(Lk4/d;Z)Lh4/z;

    move-result-object v6

    invoke-interface {v4, v7, v5}, Li4/b;->f0(Lk4/d;Z)Lh4/z;

    move-result-object v7

    const-string v8, "a"

    invoke-static {v8, v6}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "b"

    invoke-static {v8, v7}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4, v6, v7}, Lh4/c;->t(Li4/b;Lk4/c;Lk4/c;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_7
    if-eqz v6, :cond_14

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_1f

    :cond_14
    invoke-interface {v4, v1}, Li4/b;->o(Lk4/c;)Lh4/z;

    move-result-object v1

    invoke-interface {v4, v2}, Li4/b;->g(Lk4/c;)Lh4/z;

    move-result-object v2

    invoke-interface {v4, v2}, Li4/b;->m0(Lk4/d;)Z

    move-result v6

    sget-object v7, Lh4/H;->c:Lh4/H;

    sget-object v8, Lh4/H;->b:Lh4/H;

    const-string v9, ". Supertypes = "

    const-string v11, "Too many supertypes for type: "

    const-string v12, "current"

    const/16 v13, 0x3e8

    if-eqz v6, :cond_15

    goto/16 :goto_c

    :cond_15
    invoke-interface {v4, v1}, Li4/b;->q0(Lk4/c;)Z

    move-result v6

    if-nez v6, :cond_25

    invoke-interface {v4, v1}, Li4/b;->e(Lk4/c;)Z

    move-result v6

    if-eqz v6, :cond_16

    goto/16 :goto_c

    :cond_16
    instance-of v6, v1, Lk4/b;

    if-eqz v6, :cond_17

    move-object v6, v1

    check-cast v6, Lk4/b;

    invoke-interface {v4, v6}, Li4/b;->l0(Lk4/b;)Z

    move-result v6

    if-eqz v6, :cond_17

    goto/16 :goto_c

    :cond_17
    invoke-static {v0, v1, v8}, Lh4/c;->f(Lh4/I;Lk4/d;Lh4/c;)Z

    move-result v6

    if-eqz v6, :cond_18

    goto/16 :goto_c

    :cond_18
    invoke-interface {v4, v2}, Li4/b;->q0(Lk4/c;)Z

    move-result v6

    if-eqz v6, :cond_19

    goto/16 :goto_0

    :cond_19
    sget-object v6, Lh4/H;->d:Lh4/H;

    invoke-static {v0, v2, v6}, Lh4/c;->f(Lh4/I;Lk4/d;Lh4/c;)Z

    move-result v6

    if-eqz v6, :cond_1a

    goto/16 :goto_0

    :cond_1a
    invoke-interface {v4, v1}, Li4/b;->O(Lk4/d;)Z

    move-result v6

    if-eqz v6, :cond_1b

    goto/16 :goto_0

    :cond_1b
    invoke-interface {v4, v2}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v6

    const-string v14, "end"

    invoke-static {v14, v6}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1, v6}, Lh4/c;->h(Lh4/I;Lk4/d;Lk4/f;)Z

    move-result v14

    if-eqz v14, :cond_1c

    goto/16 :goto_c

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lh4/I;->c()V

    iget-object v14, v0, Lh4/I;->g:Ljava/util/ArrayDeque;

    invoke-static {v14}, Ld3/i;->b(Ljava/lang/Object;)V

    iget-object v15, v0, Lh4/I;->h:Lq4/h;

    invoke-static {v15}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_1d
    :goto_8
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_24

    iget v10, v15, Lq4/h;->d:I

    if-gt v10, v13, :cond_23

    invoke-virtual {v14}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lk4/d;

    invoke-static {v12, v10}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v15, v10}, Lq4/h;->add(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1d

    invoke-interface {v4, v10}, Li4/b;->m0(Lk4/d;)Z

    move-result v16

    if-eqz v16, :cond_1e

    move-object v13, v7

    goto :goto_9

    :cond_1e
    move-object v13, v8

    :goto_9
    invoke-static {v13, v7}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_1f

    goto :goto_a

    :cond_1f
    const/4 v13, 0x0

    :goto_a
    if-nez v13, :cond_21

    :cond_20
    const/16 v13, 0x3e8

    goto :goto_8

    :cond_21
    invoke-interface {v4, v10}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v10

    invoke-interface {v4, v10}, Li4/b;->o0(Lk4/f;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_20

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lk4/c;

    invoke-virtual {v13, v0, v3}, Lh4/c;->x(Lh4/I;Lk4/c;)Lk4/d;

    move-result-object v3

    invoke-static {v0, v3, v6}, Lh4/c;->h(Lh4/I;Lk4/d;Lk4/f;)Z

    move-result v16

    if-eqz v16, :cond_22

    invoke-virtual/range {p1 .. p1}, Lh4/I;->a()V

    goto :goto_c

    :cond_22
    invoke-virtual {v14, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_b

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x3f

    invoke-static/range {v15 .. v20}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    invoke-virtual/range {p1 .. p1}, Lh4/I;->a()V

    goto/16 :goto_0

    :cond_25
    :goto_c
    invoke-interface {v4, v1}, Li4/b;->o(Lk4/c;)Lh4/z;

    move-result-object v3

    invoke-interface {v4, v2}, Li4/b;->g(Lk4/c;)Lh4/z;

    move-result-object v6

    invoke-interface {v4, v3}, Li4/b;->P(Lk4/d;)Z

    move-result v10

    if-nez v10, :cond_27

    invoke-interface {v4, v6}, Li4/b;->P(Lk4/d;)Z

    move-result v10

    if-nez v10, :cond_27

    :cond_26
    const/4 v3, 0x0

    goto :goto_10

    :cond_27
    invoke-static {v4, v3}, Lh4/d;->b(Li4/b;Lk4/d;)Z

    move-result v10

    if-eqz v10, :cond_28

    invoke-static {v4, v6}, Lh4/d;->b(Li4/b;Lk4/d;)Z

    move-result v10

    if-eqz v10, :cond_28

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_10

    :cond_28
    invoke-interface {v4, v3}, Li4/b;->P(Lk4/d;)Z

    move-result v10

    if-eqz v10, :cond_29

    invoke-static {v4, v0, v3, v6, v5}, Lh4/d;->c(Li4/b;Lh4/I;Lk4/d;Lk4/d;Z)Z

    move-result v3

    if-eqz v3, :cond_26

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_10

    :cond_29
    invoke-interface {v4, v6}, Li4/b;->P(Lk4/d;)Z

    move-result v10

    if-eqz v10, :cond_26

    invoke-interface {v4, v3}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v10

    instance-of v13, v10, Lh4/u;

    if-eqz v13, :cond_2d

    invoke-interface {v4, v10}, Li4/b;->o0(Lk4/f;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2a

    goto :goto_e

    :cond_2a
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2b
    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lk4/c;

    invoke-interface {v4, v13}, Li4/b;->Z(Lk4/c;)Lh4/z;

    move-result-object v13

    if-eqz v13, :cond_2c

    invoke-interface {v4, v13}, Li4/b;->P(Lk4/d;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2b

    goto :goto_f

    :cond_2c
    const/4 v14, 0x1

    goto :goto_d

    :cond_2d
    :goto_e
    const/4 v14, 0x1

    invoke-static {v4, v0, v6, v3, v14}, Lh4/d;->c(Li4/b;Lh4/I;Lk4/d;Lk4/d;Z)Z

    move-result v3

    if-eqz v3, :cond_26

    :goto_f
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_10
    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto/16 :goto_25

    :cond_2e
    invoke-interface {v4, v2}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v3

    invoke-interface {v4, v1}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v6

    invoke-interface {v4, v6, v3}, Li4/b;->z0(Lk4/f;Lk4/f;)Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v4, v3}, Li4/b;->L(Lk4/f;)I

    move-result v6

    if-nez v6, :cond_2f

    goto/16 :goto_20

    :cond_2f
    invoke-interface {v4, v2}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v6

    invoke-interface {v4, v6}, Li4/b;->l(Lk4/f;)Z

    move-result v6

    if-eqz v6, :cond_30

    goto/16 :goto_20

    :cond_30
    const-string v6, "superConstructor"

    invoke-static {v6, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v1}, Li4/b;->O(Lk4/d;)Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-static {v0, v1, v3}, Lh4/d;->e(Lh4/I;Lk4/d;Lk4/f;)Ljava/util/List;

    move-result-object v6

    goto/16 :goto_16

    :cond_31
    invoke-interface {v4, v3}, Li4/b;->c0(Lk4/f;)Z

    move-result v6

    if-nez v6, :cond_32

    invoke-interface {v4, v3}, Li4/b;->R(Lk4/f;)Z

    move-result v6

    if-nez v6, :cond_32

    invoke-static {v0, v1, v3}, Lh4/d;->d(Lh4/I;Lk4/d;Lk4/f;)Ljava/util/List;

    move-result-object v6

    goto/16 :goto_16

    :cond_32
    new-instance v6, Lq4/f;

    invoke-direct {v6}, Lq4/f;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lh4/I;->c()V

    iget-object v10, v0, Lh4/I;->g:Ljava/util/ArrayDeque;

    invoke-static {v10}, Ld3/i;->b(Ljava/lang/Object;)V

    iget-object v13, v0, Lh4/I;->h:Lq4/h;

    invoke-static {v13}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_33
    :goto_11
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v14

    const/4 v15, 0x1

    xor-int/2addr v14, v15

    if-eqz v14, :cond_38

    iget v14, v13, Lq4/h;->d:I

    const/16 v15, 0x3e8

    if-gt v14, v15, :cond_37

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lk4/d;

    invoke-static {v12, v14}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v13, v14}, Lq4/h;->add(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_33

    invoke-interface {v4, v14}, Li4/b;->O(Lk4/d;)Z

    move-result v15

    if-eqz v15, :cond_34

    invoke-virtual {v6, v14}, Lq4/f;->add(Ljava/lang/Object;)Z

    move-object v15, v7

    goto :goto_12

    :cond_34
    move-object v15, v8

    :goto_12
    invoke-static {v15, v7}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_35

    goto :goto_13

    :cond_35
    const/4 v15, 0x0

    :goto_13
    if-nez v15, :cond_36

    goto :goto_11

    :cond_36
    invoke-interface {v4, v14}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v14

    invoke-interface {v4, v14}, Li4/b;->o0(Lk4/f;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_14
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_33

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lk4/c;

    invoke-virtual {v15, v0, v5}, Lh4/c;->x(Lh4/I;Lk4/c;)Lk4/d;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto :goto_14

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x3f

    move-object/from16 v18, v13

    invoke-static/range {v18 .. v23}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    invoke-virtual/range {p1 .. p1}, Lh4/I;->a()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Lq4/f;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_39

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lk4/d;

    const-string v13, "it"

    invoke-static {v13, v10}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v10, v3}, Lh4/d;->e(Lh4/I;Lk4/d;Lk4/f;)Ljava/util/List;

    move-result-object v10

    invoke-static {v5, v10}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_15

    :cond_39
    move-object v6, v5

    :goto_16
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v6}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v10

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lk4/d;

    invoke-virtual {v0, v10}, Lh4/I;->d(Lk4/c;)Lh4/Z;

    move-result-object v13

    invoke-interface {v4, v13}, Li4/b;->Z(Lk4/c;)Lh4/z;

    move-result-object v13

    if-nez v13, :cond_3a

    goto :goto_18

    :cond_3a
    move-object v10, v13

    :goto_18
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_3b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_46

    const/4 v10, 0x1

    if-eq v6, v10, :cond_45

    new-instance v6, Lk4/a;

    invoke-interface {v4, v3}, Li4/b;->L(Lk4/f;)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4, v3}, Li4/b;->L(Lk4/f;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_19
    if-ge v8, v7, :cond_42

    if-nez v9, :cond_3d

    invoke-interface {v4, v3, v8}, Li4/b;->W(Lk4/f;I)Lr3/Q;

    move-result-object v9

    invoke-interface {v4, v9}, Li4/b;->d0(Lr3/Q;)I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3c

    goto :goto_1a

    :cond_3c
    const/4 v9, 0x0

    goto :goto_1b

    :cond_3d
    :goto_1a
    const/4 v9, 0x1

    :goto_1b
    if-nez v9, :cond_41

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v5}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_40

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lk4/d;

    invoke-interface {v4, v12, v8}, Li4/b;->v(Lk4/d;I)Lh4/N;

    move-result-object v13

    if-eqz v13, :cond_3f

    invoke-interface {v4, v13}, Li4/b;->i0(Lh4/N;)I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_3e

    goto :goto_1d

    :cond_3e
    const/4 v13, 0x0

    :goto_1d
    if-eqz v13, :cond_3f

    invoke-interface {v4, v13}, Li4/b;->q(Lh4/N;)Lh4/Z;

    move-result-object v13

    if-eqz v13, :cond_3f

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Incorrect type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", subType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", superType: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    invoke-interface {v4, v10}, Li4/b;->U(Ljava/util/ArrayList;)Lh4/Z;

    move-result-object v10

    invoke-interface {v4, v10}, Li4/b;->B0(Lk4/c;)Lh4/O;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_42
    if-nez v9, :cond_43

    invoke-static {v0, v6, v2}, Lh4/d;->m(Lh4/I;Lk4/e;Lk4/d;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_20

    :cond_43
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk4/d;

    if-eqz v3, :cond_44

    goto :goto_1e

    :cond_44
    invoke-interface {v4, v5}, Li4/b;->p(Lk4/d;)Lk4/e;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lh4/d;->m(Lh4/I;Lk4/e;Lk4/d;)Z

    move-result v3

    goto :goto_1e

    :cond_45
    invoke-static {v5}, LR2/m;->M0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk4/d;

    invoke-interface {v4, v1}, Li4/b;->p(Lk4/d;)Lk4/e;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lh4/d;->m(Lh4/I;Lk4/e;Lk4/d;)Z

    move-result v3

    goto/16 :goto_25

    :cond_46
    invoke-interface {v4, v1}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v2

    invoke-interface {v4, v2}, Li4/b;->c0(Lk4/f;)Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v4, v2}, Li4/b;->g0(Lk4/f;)Z

    move-result v0

    :goto_1f
    move v3, v0

    goto/16 :goto_25

    :cond_47
    invoke-interface {v4, v1}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v2

    invoke-interface {v4, v2}, Li4/b;->g0(Lk4/f;)Z

    move-result v2

    if-eqz v2, :cond_48

    :goto_20
    const/4 v3, 0x1

    goto/16 :goto_25

    :cond_48
    invoke-virtual/range {p1 .. p1}, Lh4/I;->c()V

    iget-object v2, v0, Lh4/I;->g:Ljava/util/ArrayDeque;

    invoke-static {v2}, Ld3/i;->b(Ljava/lang/Object;)V

    iget-object v3, v0, Lh4/I;->h:Lq4/h;

    invoke-static {v3}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_49
    :goto_21
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    if-eqz v5, :cond_4f

    iget v5, v3, Lq4/h;->d:I

    const/16 v6, 0x3e8

    if-gt v5, v6, :cond_4e

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk4/d;

    invoke-static {v12, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Lq4/h;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_49

    invoke-interface {v4, v5}, Li4/b;->O(Lk4/d;)Z

    move-result v10

    if-eqz v10, :cond_4a

    move-object v10, v7

    goto :goto_22

    :cond_4a
    move-object v10, v8

    :goto_22
    invoke-static {v10, v7}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    xor-int/2addr v13, v14

    if-eqz v13, :cond_4b

    goto :goto_23

    :cond_4b
    const/4 v10, 0x0

    :goto_23
    if-nez v10, :cond_4c

    goto :goto_21

    :cond_4c
    invoke-interface {v4, v5}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v5

    invoke-interface {v4, v5}, Li4/b;->o0(Lk4/f;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lk4/c;

    invoke-virtual {v10, v0, v13}, Lh4/c;->x(Lh4/I;Lk4/c;)Lk4/d;

    move-result-object v13

    invoke-interface {v4, v13}, Li4/b;->A0(Lk4/d;)Lh4/J;

    move-result-object v15

    invoke-interface {v4, v15}, Li4/b;->g0(Lk4/f;)Z

    move-result v15

    if-eqz v15, :cond_4d

    invoke-virtual/range {p1 .. p1}, Lh4/I;->a()V

    move v3, v14

    goto :goto_25

    :cond_4d
    invoke-virtual {v2, v13}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x3f

    move-object/from16 v19, v3

    invoke-static/range {v19 .. v24}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    invoke-virtual/range {p1 .. p1}, Lh4/I;->a()V

    const/4 v3, 0x0

    :cond_50
    :goto_25
    return v3
.end method

.method public static o(Li4/b;Lk4/c;Lk4/c;)V
    .locals 1

    invoke-interface {p0, p1}, Li4/b;->Z(Lk4/c;)Lh4/z;

    move-result-object p1

    instance-of v0, p1, Lk4/b;

    if-eqz v0, :cond_2

    check-cast p1, Lk4/b;

    invoke-interface {p0, p1}, Li4/b;->n0(Lk4/b;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0, p1}, Li4/b;->h(Lk4/b;)Li4/i;

    move-result-object v0

    invoke-interface {p0, v0}, Li4/b;->Q(LU3/b;)Lh4/N;

    move-result-object v0

    invoke-interface {p0, v0}, Li4/b;->c(Lh4/N;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Li4/b;->T(Lk4/b;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p2}, Li4/b;->u0(Lk4/c;)Lh4/J;

    :cond_2
    :goto_0
    return-void
.end method

.method public static p(Lh4/Z;Z)Lh4/m;
    .locals 10

    const-string v0, "type"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p0, Lh4/m;

    if-eqz v0, :cond_0

    check-cast p0, Lh4/m;

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object v0

    invoke-interface {v0}, Lh4/J;->i()Lr3/g;

    move-result-object v0

    instance-of v0, v0, Lr3/Q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    instance-of v0, p0, Li4/h;

    if-nez v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object v0

    invoke-interface {v0}, Lh4/J;->i()Lr3/g;

    move-result-object v0

    instance-of v3, v0, Lu3/T;

    if-eqz v3, :cond_2

    check-cast v0, Lu3/T;

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lu3/T;->n:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object v0

    invoke-interface {v0}, Lh4/J;->i()Lr3/g;

    move-result-object v0

    instance-of v0, v0, Lr3/Q;

    if-eqz v0, :cond_4

    invoke-static {p0}, Lh4/X;->f(Lh4/v;)Z

    move-result v3

    goto :goto_1

    :cond_4
    sget-object v6, Li4/e;->d:Li4/e;

    const/4 v5, 0x1

    const/16 v9, 0x18

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Lf1/a;->i(ZZLi4/e;Li4/e;Li4/f;I)Lh4/I;

    move-result-object v0

    invoke-static {p0}, Lh4/c;->k(Lh4/v;)Lh4/z;

    move-result-object v4

    sget-object v5, Lh4/H;->b:Lh4/H;

    invoke-static {v0, v4, v5}, Lh4/c;->f(Lh4/I;Lk4/d;Lh4/c;)Z

    move-result v0

    xor-int/2addr v3, v0

    :goto_1
    if-eqz v3, :cond_6

    instance-of v0, p0, Lh4/q;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lh4/q;

    iget-object v2, v0, Lh4/q;->d:Lh4/z;

    invoke-virtual {v2}, Lh4/v;->J0()Lh4/J;

    move-result-object v2

    iget-object v0, v0, Lh4/q;->e:Lh4/z;

    invoke-virtual {v0}, Lh4/v;->J0()Lh4/J;

    move-result-object v0

    invoke-static {v2, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_5
    new-instance v0, Lh4/m;

    invoke-static {p0}, Lh4/c;->k(Lh4/v;)Lh4/z;

    move-result-object p0

    invoke-virtual {p0, v1}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lh4/m;-><init>(Lh4/z;Z)V

    move-object p0, v0

    goto :goto_2

    :cond_6
    move-object p0, v2

    :goto_2
    return-object p0
.end method

.method public static final q(Lh4/G;Lr3/e;Ljava/util/List;)Lh4/z;
    .locals 1

    const-string v0, "attributes"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "descriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "arguments"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr3/g;->H()Lh4/J;

    move-result-object p1

    const-string v0, "descriptor.typeConstructor"

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lh4/d;->r(Lh4/G;Lh4/J;Ljava/util/List;Z)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lh4/G;Lh4/J;Ljava/util/List;Z)Lh4/z;
    .locals 7

    const-string v0, "attributes"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "constructor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "arguments"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ln4/d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    invoke-interface {p1}, Lh4/J;->i()Lr3/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lh4/J;->i()Lr3/g;

    move-result-object p0

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-interface {p0}, Lr3/g;->q()Lh4/z;

    move-result-object p0

    const-string p1, "constructor.declarationDescriptor!!.defaultType"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1}, Lh4/J;->i()Lr3/g;

    move-result-object v0

    instance-of v1, v0, Lr3/Q;

    if-eqz v1, :cond_1

    check-cast v0, Lr3/Q;

    invoke-interface {v0}, Lr3/g;->q()Lh4/z;

    move-result-object v0

    invoke-virtual {v0}, Lh4/v;->q0()La4/o;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    instance-of v1, v0, Lr3/e;

    if-eqz v1, :cond_8

    invoke-static {v0}, LX3/f;->j(Lr3/j;)Lr3/x;

    move-result-object v1

    invoke-static {v1}, LX3/f;->i(Lr3/x;)V

    sget-object v1, Li4/f;->a:Li4/f;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "<this>"

    if-eqz v2, :cond_5

    check-cast v0, Lr3/e;

    invoke-static {v4, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v2, v0, Lu3/A;

    if-eqz v2, :cond_2

    move-object v3, v0

    check-cast v3, Lu3/A;

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Lu3/A;->J(Li4/f;)La4/o;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    invoke-interface {v0}, Lr3/e;->f0()La4/o;

    move-result-object v0

    const-string v1, "this.unsubstitutedMemberScope"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    check-cast v0, Lr3/e;

    sget-object v2, Lh4/L;->b:Lh4/d;

    invoke-virtual {v2, p1, p2}, Lh4/d;->f(Lh4/J;Ljava/util/List;)Lh4/S;

    move-result-object v2

    invoke-static {v4, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v4, v0, Lu3/A;

    if-eqz v4, :cond_6

    move-object v3, v0

    check-cast v3, Lu3/A;

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3, v2, v1}, Lu3/A;->d(Lh4/S;Li4/f;)La4/o;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_7
    invoke-interface {v0, v2}, Lr3/e;->C(Lh4/S;)La4/o;

    move-result-object v0

    const-string v1, "this.getMemberScope(\n   \u2026ubstitution\n            )"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    instance-of v1, v0, Lf4/t;

    if-eqz v1, :cond_9

    check-cast v0, Lf4/t;

    check-cast v0, Lu3/o;

    invoke-virtual {v0}, Lu3/o;->getName()LQ3/f;

    move-result-object v0

    iget-object v0, v0, LQ3/f;->c:Ljava/lang/String;

    const-string v1, "descriptor.name.toString()"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {v2, v1, v0}, Lj4/i;->a(IZ[Ljava/lang/String;)Lj4/e;

    move-result-object v0

    :goto_1
    move-object v5, v0

    goto :goto_2

    :cond_9
    instance-of v1, p1, Lh4/u;

    if-eqz v1, :cond_a

    move-object v0, p1

    check-cast v0, Lh4/u;

    iget-object v0, v0, Lh4/u;->b:Ljava/util/LinkedHashSet;

    const-string v1, "member scope for intersection type"

    invoke-static {v1, v0}, LL2/b;->g(Ljava/lang/String;Ljava/util/Collection;)La4/o;

    move-result-object v0

    goto :goto_1

    :goto_2
    new-instance v6, Lh4/w;

    invoke-direct {v6, p0, p1, p2, p3}, Lh4/w;-><init>(Lh4/G;Lh4/J;Ljava/util/List;Z)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lh4/d;->t(Lh4/G;Lh4/J;Ljava/util/List;ZLa4/o;Lc3/b;)Lh4/z;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported classifier: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " for constructor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final s(La4/o;Lh4/G;Lh4/J;Ljava/util/List;Z)Lh4/z;
    .locals 8

    const-string v0, "attributes"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "constructor"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "arguments"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "memberScope"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lh4/A;

    new-instance v7, Lh4/w;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lh4/w;-><init>(La4/o;Lh4/G;Lh4/J;Ljava/util/List;Z)V

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lh4/A;-><init>(Lh4/J;Ljava/util/List;ZLa4/o;Lc3/b;)V

    invoke-virtual {p1}, Ln4/d;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lh4/B;

    invoke-direct {p0, v0, p1}, Lh4/B;-><init>(Lh4/z;Lh4/G;)V

    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static final t(Lh4/G;Lh4/J;Ljava/util/List;ZLa4/o;Lc3/b;)Lh4/z;
    .locals 7

    const-string v0, "attributes"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "constructor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "arguments"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "memberScope"

    invoke-static {v0, p4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lh4/A;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lh4/A;-><init>(Lh4/J;Ljava/util/List;ZLa4/o;Lc3/b;)V

    invoke-virtual {p0}, Ln4/d;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lh4/B;

    invoke-direct {p1, v0, p0}, Lh4/B;-><init>(Lh4/z;Lh4/G;)V

    move-object v0, p1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ls3/h;Ls3/h;)V
    .locals 1

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3/b;

    invoke-interface {v0}, Ls3/b;->a()LQ3/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls3/b;

    invoke-interface {p2}, Ls3/b;->a()LQ3/c;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public f(Lh4/J;Ljava/util/List;)Lh4/S;
    .locals 4

    const-string p0, "typeConstructor"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "arguments"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lh4/J;->k()Ljava/util/List;

    move-result-object p0

    const-string v0, "typeConstructor.parameters"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LR2/m;->V0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/Q;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lr3/Q;->m0()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-interface {p1}, Lh4/J;->k()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/Q;

    invoke-interface {v0}, Lr3/g;->H()Lh4/J;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, LR2/m;->l1(Ljava/util/List;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, LR2/z;->C1(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    new-instance p1, Lh4/K;

    invoke-direct {p1, p0, v2}, Lh4/K;-><init>(Ljava/util/Map;Z)V

    return-object p1

    :cond_1
    new-instance p1, Lh4/t;

    new-array v0, v2, [Lr3/Q;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lr3/Q;

    new-array v0, v2, [Lh4/N;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lh4/N;

    invoke-direct {p1, p0, p2, v2}, Lh4/t;-><init>([Lr3/Q;[Lh4/N;Z)V

    return-object p1
.end method

.method public h(Lcom/google/firebase/messaging/p;Lh4/G;ZIZ)Lh4/z;
    .locals 8

    new-instance v0, Lh4/O;

    iget-object v1, p1, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v1, Lf4/t;

    invoke-virtual {v1}, Lf4/t;->S0()Lh4/z;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2}, Lh4/O;-><init>(ILh4/v;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, p4}, Lh4/d;->i(Lh4/N;Lcom/google/firebase/messaging/p;Lr3/Q;I)Lh4/N;

    move-result-object p4

    invoke-virtual {p4}, Lh4/N;->b()Lh4/v;

    move-result-object v0

    const-string v4, "expandedProjection.type"

    invoke-static {v4, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lh4/c;->b(Lh4/v;)Lh4/z;

    move-result-object v0

    invoke-static {v0}, Lh4/c;->i(Lh4/v;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p4}, Lh4/N;->a()I

    invoke-virtual {v0}, Lh4/v;->t()Ls3/h;

    move-result-object p4

    invoke-static {p2}, Lh4/i;->a(Lh4/G;)Ls3/h;

    move-result-object v4

    invoke-virtual {p0, p4, v4}, Lh4/d;->a(Ls3/h;Ls3/h;)V

    invoke-static {v0}, Lh4/c;->i(Lh4/v;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {v0}, Lh4/c;->i(Lh4/v;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lh4/v;->I0()Lh4/G;

    move-result-object p0

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v0}, Lh4/v;->I0()Lh4/G;

    move-result-object p0

    const-string p4, "other"

    invoke-static {p4, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Ln4/d;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Ln4/d;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3

    move-object p0, p2

    goto/16 :goto_3

    :cond_3
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lh4/G;->d:Le/v;

    iget-object v4, v4, Le/v;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    const-string v5, "idPerType.values"

    invoke-static {v5, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget-object v6, p2, Ln4/d;->c:Ln4/a;

    invoke-virtual {v6, v5}, Ln4/a;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh4/h;

    iget-object v7, p0, Ln4/d;->c:Ln4/a;

    invoke-virtual {v7, v5}, Ln4/a;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh4/h;

    if-nez v6, :cond_6

    if-eqz v5, :cond_5

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance v7, Lh4/h;

    iget-object v5, v5, Lh4/h;->a:Ls3/h;

    iget-object v6, v6, Lh4/h;->a:Ls3/h;

    invoke-static {v5, v6}, Lp/a;->e(Ls3/h;Ls3/h;)Ls3/h;

    move-result-object v5

    invoke-direct {v7, v5}, Lh4/h;-><init>(Ls3/h;)V

    move-object v5, v7

    goto :goto_2

    :cond_5
    move-object v5, v2

    goto :goto_2

    :cond_6
    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    new-instance v7, Lh4/h;

    iget-object v6, v6, Lh4/h;->a:Ls3/h;

    iget-object v5, v5, Lh4/h;->a:Ls3/h;

    invoke-static {v6, v5}, Lp/a;->e(Ls3/h;Ls3/h;)Ls3/h;

    move-result-object v5

    invoke-direct {v7, v5}, Lh4/h;-><init>(Ls3/h;)V

    move-object v6, v7

    :goto_1
    move-object v5, v6

    :goto_2
    invoke-static {p4, v5}, Lq4/k;->b(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    invoke-static {p4}, Le/v;->j(Ljava/util/List;)Lh4/G;

    move-result-object p0

    :goto_3
    invoke-static {v0, v2, p0, v3}, Lh4/c;->p(Lh4/z;Ljava/util/List;Lh4/G;I)Lh4/z;

    move-result-object v0

    :goto_4
    invoke-static {v0, p3}, Lh4/X;->j(Lh4/z;Z)Lh4/z;

    move-result-object p0

    const-string p4, "expandedType.combineAttr\u2026fNeeded(it, isNullable) }"

    invoke-static {p4, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p5, :cond_9

    iget-object p4, v1, Lf4/t;->i:Lu3/e;

    const-string p5, "descriptor.typeConstructor"

    invoke-static {p5, p4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p5, La4/n;->b:La4/n;

    iget-object p1, p1, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p5, p2, p4, p1, p3}, Lh4/d;->s(La4/o;Lh4/G;Lh4/J;Ljava/util/List;Z)Lh4/z;

    move-result-object p1

    invoke-static {p0, p1}, Lh4/c;->z(Lh4/z;Lh4/z;)Lh4/z;

    move-result-object p0

    :cond_9
    return-object p0
.end method

.method public i(Lh4/N;Lcom/google/firebase/messaging/p;Lr3/Q;I)Lh4/N;
    .locals 13

    move-object v6, p0

    move-object v7, p2

    move/from16 v8, p4

    const/16 v0, 0x64

    iget-object v1, v7, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v1, Lf4/t;

    if-gt v8, v0, :cond_1f

    invoke-virtual {p1}, Lh4/N;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p3 .. p3}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Lh4/X;->k(Lr3/Q;)Lh4/E;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lh4/N;->b()Lh4/v;

    move-result-object v0

    const-string v2, "underlyingProjection.type"

    invoke-static {v2, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lh4/v;->J0()Lh4/J;

    move-result-object v2

    const-string v3, "constructor"

    invoke-static {v3, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2}, Lh4/J;->i()Lr3/g;

    move-result-object v2

    instance-of v3, v2, Lr3/Q;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v7, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/N;

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    const/4 v3, 0x1

    if-nez v2, :cond_d

    invoke-virtual {p1}, Lh4/N;->b()Lh4/v;

    move-result-object v0

    invoke-virtual {v0}, Lh4/v;->M0()Lh4/Z;

    move-result-object v0

    invoke-static {v0}, Lh4/c;->b(Lh4/v;)Lh4/z;

    move-result-object v9

    invoke-static {v9}, Lh4/c;->i(Lh4/v;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Ll4/a;->f:Ll4/a;

    invoke-static {v9, v0, v4}, Lh4/X;->d(Lh4/v;Lc3/b;Lq4/h;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v9}, Lh4/v;->J0()Lh4/J;

    move-result-object v0

    invoke-interface {v0}, Lh4/J;->i()Lr3/g;

    move-result-object v1

    invoke-interface {v0}, Lh4/J;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    invoke-virtual {v9}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    instance-of v2, v1, Lr3/Q;

    if-eqz v2, :cond_3

    move-object v1, p1

    goto/16 :goto_4

    :cond_3
    instance-of v2, v1, Lf4/t;

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    move-object v2, v1

    check-cast v2, Lf4/t;

    invoke-virtual {p2, v2}, Lcom/google/firebase/messaging/p;->B(Lf4/t;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lh4/O;

    sget-object v1, Lj4/h;->h:Lj4/h;

    check-cast v2, Lu3/o;

    invoke-virtual {v2}, Lu3/o;->getName()LQ3/f;

    move-result-object v2

    iget-object v2, v2, LQ3/f;->c:Ljava/lang/String;

    const-string v4, "typeDescriptor.name.toString()"

    invoke-static {v4, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lh4/O;-><init>(ILh4/v;)V

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v9}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v5, 0x1

    if-ltz v5, :cond_5

    check-cast v10, Lh4/N;

    invoke-interface {v0}, Lh4/J;->k()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr3/Q;

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {p0, v10, p2, v5, v12}, Lh4/d;->i(Lh4/N;Lcom/google/firebase/messaging/p;Lr3/Q;I)Lh4/N;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v11

    goto :goto_1

    :cond_5
    invoke-static {}, LR2/n;->B0()V

    throw v4

    :cond_6
    iget-object v0, v2, Lf4/t;->i:Lu3/e;

    invoke-virtual {v0}, Lu3/e;->k()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr3/Q;

    invoke-interface {v4}, Lr3/Q;->a()Lr3/Q;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-static {v1, v3}, LR2/m;->l1(Ljava/util/List;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, LR2/z;->C1(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v4

    new-instance v10, Lcom/google/firebase/messaging/p;

    const/16 v5, 0xf

    move-object v0, v10

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9}, Lh4/v;->I0()Lh4/G;

    move-result-object v2

    invoke-virtual {v9}, Lh4/v;->K0()Z

    move-result v3

    add-int/lit8 v4, v8, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    invoke-virtual/range {v0 .. v5}, Lh4/d;->h(Lcom/google/firebase/messaging/p;Lh4/G;ZIZ)Lh4/z;

    move-result-object v0

    invoke-virtual {p0, v9, p2, v8}, Lh4/d;->u(Lh4/z;Lcom/google/firebase/messaging/p;I)Lh4/z;

    move-result-object v1

    invoke-static {v0, v1}, Lh4/c;->z(Lh4/z;Lh4/z;)Lh4/z;

    move-result-object v0

    new-instance v1, Lh4/O;

    invoke-virtual {p1}, Lh4/N;->a()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lh4/O;-><init>(ILh4/v;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v9, p2, v8}, Lh4/d;->u(Lh4/z;Lcom/google/firebase/messaging/p;I)Lh4/z;

    move-result-object v0

    invoke-static {v0}, Lh4/V;->d(Lh4/v;)Lh4/V;

    invoke-virtual {v0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v5, 0x1

    if-ltz v5, :cond_a

    check-cast v2, Lh4/N;

    invoke-virtual {v2}, Lh4/N;->c()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v2}, Lh4/N;->b()Lh4/v;

    move-result-object v2

    const-string v6, "substitutedArgument.type"

    invoke-static {v6, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, Ll4/a;->e:Ll4/a;

    invoke-static {v2, v6, v4}, Lh4/X;->d(Lh4/v;Lc3/b;Lq4/h;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v9}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/N;

    invoke-virtual {v9}, Lh4/v;->J0()Lh4/J;

    move-result-object v2

    invoke-interface {v2}, Lh4/J;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/Q;

    :cond_9
    move v5, v3

    goto :goto_3

    :cond_a
    invoke-static {}, LR2/n;->B0()V

    throw v4

    :cond_b
    new-instance v1, Lh4/O;

    invoke-virtual {p1}, Lh4/N;->a()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lh4/O;-><init>(ILh4/v;)V

    :goto_4
    move-object v0, v1

    goto :goto_6

    :cond_c
    :goto_5
    move-object v0, p1

    :goto_6
    return-object v0

    :cond_d
    invoke-virtual {v2}, Lh4/N;->c()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static/range {p3 .. p3}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Lh4/X;->k(Lr3/Q;)Lh4/E;

    move-result-object v0

    return-object v0

    :cond_e
    invoke-virtual {v2}, Lh4/N;->b()Lh4/v;

    move-result-object v5

    invoke-virtual {v5}, Lh4/v;->M0()Lh4/Z;

    move-result-object v5

    invoke-virtual {v2}, Lh4/N;->a()I

    move-result v2

    const-string v7, "argument.projectionKind"

    invoke-static {v2, v7}, LB/f;->E(ILjava/lang/String;)V

    invoke-virtual {p1}, Lh4/N;->a()I

    move-result v7

    const-string v8, "underlyingProjection.projectionKind"

    invoke-static {v7, v8}, LB/f;->E(ILjava/lang/String;)V

    const-string v8, "typeAlias"

    if-ne v7, v2, :cond_f

    goto :goto_7

    :cond_f
    if-ne v7, v3, :cond_10

    goto :goto_7

    :cond_10
    if-ne v2, v3, :cond_11

    move v2, v7

    goto :goto_7

    :cond_11
    invoke-static {v8, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_7
    if-eqz p3, :cond_12

    invoke-interface/range {p3 .. p3}, Lr3/Q;->A()I

    move-result v7

    if-nez v7, :cond_13

    :cond_12
    move v7, v3

    :cond_13
    if-ne v7, v2, :cond_14

    goto :goto_8

    :cond_14
    if-ne v7, v3, :cond_15

    goto :goto_8

    :cond_15
    if-ne v2, v3, :cond_16

    move v2, v3

    goto :goto_8

    :cond_16
    invoke-static {v8, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_8
    invoke-virtual {v0}, Lh4/v;->t()Ls3/h;

    move-result-object v1

    invoke-virtual {v5}, Lh4/v;->t()Ls3/h;

    move-result-object v7

    invoke-virtual {p0, v1, v7}, Lh4/d;->a(Ls3/h;Ls3/h;)V

    invoke-static {v5}, Lh4/c;->b(Lh4/v;)Lh4/z;

    move-result-object v1

    invoke-virtual {v0}, Lh4/v;->K0()Z

    move-result v5

    invoke-static {v1, v5}, Lh4/X;->j(Lh4/z;Z)Lh4/z;

    move-result-object v1

    const-string v5, "makeNullableIfNeeded(thi\u2026romType.isMarkedNullable)"

    invoke-static {v5, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lh4/v;->I0()Lh4/G;

    move-result-object v0

    invoke-static {v1}, Lh4/c;->i(Lh4/v;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto/16 :goto_d

    :cond_17
    invoke-static {v1}, Lh4/c;->i(Lh4/v;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v1}, Lh4/v;->I0()Lh4/G;

    move-result-object v0

    goto/16 :goto_c

    :cond_18
    invoke-virtual {v1}, Lh4/v;->I0()Lh4/G;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "other"

    invoke-static {v6, v5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ln4/d;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v5}, Ln4/d;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_19

    goto/16 :goto_c

    :cond_19
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lh4/G;->d:Le/v;

    iget-object v7, v7, Le/v;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    const-string v8, "idPerType.values"

    invoke-static {v8, v7}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    iget-object v9, v0, Ln4/d;->c:Ln4/a;

    invoke-virtual {v9, v8}, Ln4/a;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lh4/h;

    iget-object v10, v5, Ln4/d;->c:Ln4/a;

    invoke-virtual {v10, v8}, Ln4/a;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lh4/h;

    if-nez v9, :cond_1c

    if-eqz v8, :cond_1b

    if-nez v9, :cond_1a

    goto :goto_b

    :cond_1a
    new-instance v10, Lh4/h;

    iget-object v8, v8, Lh4/h;->a:Ls3/h;

    iget-object v9, v9, Lh4/h;->a:Ls3/h;

    invoke-static {v8, v9}, Lp/a;->e(Ls3/h;Ls3/h;)Ls3/h;

    move-result-object v8

    invoke-direct {v10, v8}, Lh4/h;-><init>(Ls3/h;)V

    move-object v8, v10

    goto :goto_b

    :cond_1b
    move-object v8, v4

    goto :goto_b

    :cond_1c
    if-nez v8, :cond_1d

    goto :goto_a

    :cond_1d
    new-instance v10, Lh4/h;

    iget-object v9, v9, Lh4/h;->a:Ls3/h;

    iget-object v8, v8, Lh4/h;->a:Ls3/h;

    invoke-static {v9, v8}, Lp/a;->e(Ls3/h;Ls3/h;)Ls3/h;

    move-result-object v8

    invoke-direct {v10, v8}, Lh4/h;-><init>(Ls3/h;)V

    move-object v9, v10

    :goto_a
    move-object v8, v9

    :goto_b
    invoke-static {v6, v8}, Lq4/k;->b(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_9

    :cond_1e
    invoke-static {v6}, Le/v;->j(Ljava/util/List;)Lh4/G;

    move-result-object v0

    :goto_c
    invoke-static {v1, v4, v0, v3}, Lh4/c;->p(Lh4/z;Ljava/util/List;Lh4/G;I)Lh4/z;

    move-result-object v1

    :goto_d
    new-instance v0, Lh4/O;

    invoke-direct {v0, v2, v1}, Lh4/O;-><init>(ILh4/v;)V

    return-object v0

    :cond_1f
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Too deep recursion while expanding type alias "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v1, Lu3/o;

    invoke-virtual {v1}, Lu3/o;->getName()LQ3/f;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public u(Lh4/z;Lcom/google/firebase/messaging/p;I)Lh4/z;
    .locals 8

    invoke-virtual {p1}, Lh4/v;->J0()Lh4/J;

    move-result-object v0

    invoke-virtual {p1}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_1

    check-cast v4, Lh4/N;

    invoke-interface {v0}, Lh4/J;->k()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr3/Q;

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p0, v4, p2, v3, v5}, Lh4/d;->i(Lh4/N;Lcom/google/firebase/messaging/p;Lr3/Q;I)Lh4/N;

    move-result-object v3

    invoke-virtual {v3}, Lh4/N;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Lh4/O;

    invoke-virtual {v3}, Lh4/N;->a()I

    move-result v7

    invoke-virtual {v3}, Lh4/N;->b()Lh4/v;

    move-result-object v3

    invoke-virtual {v4}, Lh4/N;->b()Lh4/v;

    move-result-object v4

    invoke-virtual {v4}, Lh4/v;->K0()Z

    move-result v4

    invoke-static {v3, v4}, Lh4/X;->i(Lh4/v;Z)Lh4/v;

    move-result-object v3

    invoke-direct {v5, v7, v3}, Lh4/O;-><init>(ILh4/v;)V

    move-object v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    :cond_1
    invoke-static {}, LR2/n;->B0()V

    throw v5

    :cond_2
    const/4 p0, 0x2

    invoke-static {p1, v2, v5, p0}, Lh4/c;->p(Lh4/z;Ljava/util/List;Lh4/G;I)Lh4/z;

    move-result-object p0

    return-object p0
.end method
