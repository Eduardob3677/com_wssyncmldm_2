.class public final Li4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li4/b;


# static fields
.field public static final c:Li4/e;

.field public static final d:Li4/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Li4/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li4/e;->c:Li4/e;

    new-instance v0, Li4/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li4/e;->d:Li4/e;

    return-void
.end method

.method public static y(Lh4/z;)Lh4/z;
    .locals 13

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object v0

    instance-of v1, v0, LU3/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast v0, LU3/c;

    iget-object v1, v0, LU3/c;->a:Lh4/N;

    invoke-virtual {v1}, Lh4/N;->a()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lh4/N;->b()Lh4/v;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lh4/v;->M0()Lh4/Z;

    move-result-object v2

    :cond_1
    move-object v6, v2

    iget-object v1, v0, LU3/c;->b:Li4/i;

    if-nez v1, :cond_3

    invoke-virtual {v0}, LU3/c;->j()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh4/v;

    invoke-virtual {v3}, Lh4/v;->M0()Lh4/Z;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v1, Li4/i;

    const-string v3, "projection"

    iget-object v8, v0, LU3/c;->a:Lh4/N;

    invoke-static {v3, v8}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v9, Lf4/d;

    const/4 v3, 0x1

    invoke-direct {v9, v2, v3}, Lf4/d;-><init>(Ljava/util/ArrayList;I)V

    const/16 v12, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Li4/i;-><init>(Lh4/N;Lf4/d;Li4/i;Lr3/Q;I)V

    iput-object v1, v0, LU3/c;->b:Li4/i;

    :cond_3
    new-instance v1, Li4/h;

    iget-object v5, v0, LU3/c;->b:Li4/i;

    invoke-static {v5}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lh4/v;->I0()Lh4/G;

    move-result-object v7

    invoke-virtual {p0}, Lh4/v;->K0()Z

    move-result v8

    const/16 v9, 0x20

    const/4 v4, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Li4/h;-><init>(ILi4/i;Lh4/Z;Lh4/G;ZI)V

    return-object v1

    :cond_4
    instance-of v1, v0, Lh4/u;

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lh4/v;->K0()Z

    move-result v1

    if-eqz v1, :cond_9

    check-cast v0, Lh4/u;

    iget-object p0, v0, Lh4/u;->b:Ljava/util/LinkedHashSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh4/v;

    invoke-static {v3}, Lf1/a;->W(Lh4/v;)Lh4/Z;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_2

    :cond_5
    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    iget-object p0, v0, Lh4/u;->a:Lh4/v;

    if-eqz p0, :cond_7

    invoke-static {p0, v5}, Lh4/X;->h(Lh4/v;Z)Lh4/Z;

    move-result-object v2

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    new-instance v1, Lh4/u;

    invoke-direct {v1, p0}, Lh4/u;-><init>(Ljava/util/AbstractCollection;)V

    iput-object v2, v1, Lh4/u;->a:Lh4/v;

    move-object v2, v1

    :goto_3
    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    move-object v0, v2

    :goto_4
    invoke-virtual {v0}, Lh4/u;->b()Lh4/z;

    move-result-object p0

    :cond_9
    return-object p0
.end method


# virtual methods
.method public A(Lk4/d;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Li3/x;->K0(Li4/b;Lk4/d;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public A0(Lk4/d;)Lh4/J;
    .locals 0

    invoke-static {p1}, Li3/x;->i1(Lk4/d;)Lh4/J;

    move-result-object p0

    return-object p0
.end method

.method public B(Lk4/f;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->n0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public B0(Lk4/c;)Lh4/O;
    .locals 0

    invoke-static {p1}, Li3/x;->n(Lk4/c;)Lh4/O;

    move-result-object p0

    return-object p0
.end method

.method public C(Lk4/d;)V
    .locals 0

    invoke-static {p1}, Li3/x;->B0(Lk4/d;)V

    return-void
.end method

.method public D(Lk4/d;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Li3/x;->h(Li4/b;Lk4/d;)Lk4/b;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public E(Lk4/c;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Li4/e;->u0(Lk4/c;)Lh4/J;

    move-result-object p0

    invoke-static {p0}, Li3/x;->v0(Lk4/f;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Li3/x;->w0(Lk4/c;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public F(Lk4/b;)Lh4/Z;
    .locals 0

    invoke-static {p1}, Li3/x;->E0(Lk4/b;)Lh4/Z;

    move-result-object p0

    return-object p0
.end method

.method public I(Lk4/d;)Lk4/d;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->i(Lk4/d;)Lh4/m;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Li3/x;->H0(Lh4/m;)Lh4/z;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public K(Lk4/c;)I
    .locals 0

    invoke-static {p1}, Li3/x;->f(Lk4/c;)I

    move-result p0

    return p0
.end method

.method public L(Lk4/f;)I
    .locals 0

    invoke-static {p1}, Li3/x;->J0(Lk4/f;)I

    move-result p0

    return p0
.end method

.method public O(Lk4/d;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->i1(Lk4/d;)Lh4/J;

    move-result-object p0

    invoke-static {p0}, Li3/x;->l0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public P(Lk4/d;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->i1(Lk4/d;)Lh4/J;

    move-result-object p0

    invoke-static {p0}, Li3/x;->q0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public Q(LU3/b;)Lh4/N;
    .locals 0

    invoke-static {p1}, Li3/x;->L0(LU3/b;)Lh4/N;

    move-result-object p0

    return-object p0
.end method

.method public R(Lk4/f;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->q0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public S(Lr3/Q;Lk4/f;)Z
    .locals 0

    invoke-static {p1, p2}, Li3/x;->h0(Lr3/Q;Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public T(Lk4/b;)I
    .locals 0

    invoke-static {p1}, Li3/x;->p(Lk4/b;)I

    move-result p0

    return p0
.end method

.method public U(Ljava/util/ArrayList;)Lh4/Z;
    .locals 7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_9

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh4/Z;

    if-nez v3, :cond_1

    invoke-static {v5}, Lh4/c;->i(Lh4/v;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v2

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v0

    :goto_2
    instance-of v6, v5, Lh4/z;

    if-eqz v6, :cond_2

    check-cast v5, Lh4/z;

    goto :goto_3

    :cond_2
    instance-of v4, v5, Lh4/q;

    if-eqz v4, :cond_3

    const-string v4, "<this>"

    invoke-static {v4, v5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v5, Lh4/q;

    iget-object v5, v5, Lh4/q;->d:Lh4/z;

    move v4, v0

    :goto_3
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    if-eqz v3, :cond_5

    sget-object p0, Lj4/h;->z:Lj4/h;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object p0

    goto :goto_5

    :cond_5
    sget-object v0, Li4/t;->a:Li4/t;

    if-nez v4, :cond_6

    invoke-virtual {v0, p0}, Li4/t;->b(Ljava/util/ArrayList;)Lh4/z;

    move-result-object p0

    goto :goto_5

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/Z;

    invoke-static {v2}, Lh4/c;->y(Lh4/v;)Lh4/z;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v0, p0}, Li4/t;->b(Ljava/util/ArrayList;)Lh4/z;

    move-result-object p0

    invoke-virtual {v0, v1}, Li4/t;->b(Ljava/util/ArrayList;)Lh4/z;

    move-result-object p1

    invoke-static {p0, p1}, Lh4/d;->j(Lh4/z;Lh4/z;)Lh4/Z;

    move-result-object p0

    goto :goto_5

    :cond_8
    invoke-static {p1}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/Z;

    :goto_5
    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected some types"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public W(Lk4/f;I)Lr3/Q;
    .locals 0

    invoke-static {p1, p2}, Li3/x;->T(Lk4/f;I)Lr3/Q;

    move-result-object p0

    return-object p0
.end method

.method public X(Lk4/c;I)Lh4/N;
    .locals 0

    invoke-static {p1, p2}, Li3/x;->C(Lk4/c;I)Lh4/N;

    move-result-object p0

    return-object p0
.end method

.method public Z(Lk4/c;)Lh4/z;
    .locals 0

    invoke-static {p1}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public a(Lh4/m;)Lh4/z;
    .locals 0

    invoke-static {p1}, Li3/x;->H0(Lh4/m;)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public b(Lk4/c;)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->j(Lk4/c;)Lh4/q;

    return-void
.end method

.method public b0(Lh4/q;)Lh4/z;
    .locals 0

    invoke-static {p1}, Li3/x;->D0(Lh4/q;)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public c(Lh4/N;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->z0(Lh4/N;)Z

    move-result p0

    return p0
.end method

.method public c0(Lk4/f;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->l0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public d(Lk4/d;Lk4/f;)V
    .locals 0

    return-void
.end method

.method public d0(Lr3/Q;)I
    .locals 0

    const-string p0, "$receiver"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr3/Q;->A()I

    move-result p0

    const-string p1, "this.variance"

    invoke-static {p0, p1}, LB/f;->E(ILjava/lang/String;)V

    invoke-static {p0}, Li3/x;->u(I)I

    move-result p0

    return p0
.end method

.method public e(Lk4/c;)Z
    .locals 0

    const-string p0, "$receiver"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, LI3/g;

    return p0
.end method

.method public e0(Lk4/c;)Lh4/q;
    .locals 0

    invoke-static {p1}, Li3/x;->j(Lk4/c;)Lh4/q;

    move-result-object p0

    return-object p0
.end method

.method public f(Lk4/e;)I
    .locals 2

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lk4/d;

    if-eqz p0, :cond_0

    check-cast p1, Lk4/c;

    invoke-static {p1}, Li3/x;->f(Lk4/c;)I

    move-result p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lk4/a;

    if-eqz p0, :cond_1

    check-cast p1, Lk4/a;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown type argument list type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v1, Ld3/q;->a:Ld3/r;

    invoke-virtual {v1, p1}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f0(Lk4/d;Z)Lh4/z;
    .locals 0

    invoke-static {p1, p2}, Li3/x;->l1(Lk4/d;Z)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public g(Lk4/c;)Lh4/z;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->j(Lk4/c;)Lh4/q;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Li3/x;->k1(Lh4/q;)Lh4/z;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {p1}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object p0

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public g0(Lk4/f;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->v0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public h(Lk4/b;)Li4/i;
    .locals 0

    invoke-static {p1}, Li3/x;->j1(Lk4/b;)Li4/i;

    move-result-object p0

    return-object p0
.end method

.method public h0(Lh4/q;)Lh4/z;
    .locals 0

    invoke-static {p1}, Li3/x;->k1(Lh4/q;)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public i(Lk4/e;I)Lh4/N;
    .locals 1

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lk4/d;

    if-eqz p0, :cond_0

    check-cast p1, Lk4/c;

    invoke-static {p1, p2}, Li3/x;->C(Lk4/c;I)Lh4/N;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lk4/a;

    if-eqz p0, :cond_1

    check-cast p1, Lk4/a;

    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(index)"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lh4/N;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unknown type argument list type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Ld3/q;->a:Ld3/r;

    invoke-virtual {v0, p1}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i0(Lh4/N;)I
    .locals 0

    invoke-static {p1}, Li3/x;->e0(Lh4/N;)I

    move-result p0

    return p0
.end method

.method public j(Lh4/Z;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Li4/e;->o(Lk4/c;)Lh4/z;

    move-result-object v0

    invoke-static {v0}, Li3/x;->u0(Lk4/d;)Z

    move-result v0

    invoke-virtual {p0, p1}, Li4/e;->g(Lk4/c;)Lh4/z;

    move-result-object p0

    invoke-static {p0}, Li3/x;->u0(Lk4/d;)Z

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k(Lk4/d;)Lh4/z;
    .locals 0

    invoke-static {p1}, Li3/x;->o(Lk4/d;)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public l(Lk4/f;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->k0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public l0(Lk4/b;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->y0(Lk4/b;)Z

    move-result p0

    return p0
.end method

.method public m(Lk4/d;Lk4/d;)Lh4/Z;
    .locals 0

    invoke-static {p0, p1, p2}, Li3/x;->x(Li4/b;Lk4/d;Lk4/d;)Lh4/Z;

    move-result-object p0

    return-object p0
.end method

.method public m0(Lk4/d;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->u0(Lk4/d;)Z

    move-result p0

    return p0
.end method

.method public n(Lk4/c;)Lh4/Z;
    .locals 0

    invoke-static {p1}, Li3/x;->F0(Lk4/c;)Lh4/Z;

    move-result-object p0

    return-object p0
.end method

.method public n0(Lk4/b;)Z
    .locals 0

    const-string p0, "$receiver"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, LU3/a;

    return p0
.end method

.method public o(Lk4/c;)Lh4/z;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->j(Lk4/c;)Lh4/q;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Li3/x;->D0(Lh4/q;)Lh4/z;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {p1}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object p0

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public o0(Lk4/f;)Ljava/util/Collection;
    .locals 0

    invoke-static {p1}, Li3/x;->f1(Lk4/f;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public p(Lk4/d;)Lk4/e;
    .locals 0

    invoke-static {p1}, Li3/x;->g(Lk4/d;)Lk4/e;

    move-result-object p0

    return-object p0
.end method

.method public p0(Lk4/d;)Lh4/m;
    .locals 0

    invoke-static {p1}, Li3/x;->i(Lk4/d;)Lh4/m;

    move-result-object p0

    return-object p0
.end method

.method public q(Lh4/N;)Lh4/Z;
    .locals 0

    invoke-static {p1}, Li3/x;->b0(Lh4/N;)Lh4/Z;

    move-result-object p0

    return-object p0
.end method

.method public q0(Lk4/c;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Li3/x;->i(Lk4/d;)Lh4/m;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public r(Lk4/c;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lk4/d;

    if-eqz p0, :cond_0

    check-cast p1, Lk4/d;

    invoke-static {p1}, Li3/x;->u0(Lk4/d;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public r0(Lk4/f;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->m0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public s(Lk4/c;)Lk4/c;
    .locals 1

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Li3/x;->l1(Lk4/d;Z)Lh4/z;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public s0(Lk4/d;Lk4/d;)Z
    .locals 0

    invoke-static {p1, p2}, Li3/x;->i0(Lk4/d;Lk4/d;)Z

    move-result p0

    return p0
.end method

.method public t(Lk4/d;)Li4/a;
    .locals 0

    invoke-static {p0, p1}, Li3/x;->e1(Li4/b;Lk4/d;)Li4/a;

    move-result-object p0

    return-object p0
.end method

.method public t0(Lk4/c;)Lk4/c;
    .locals 0

    invoke-static {p0, p1}, Li3/x;->m1(Li4/b;Lk4/c;)Lk4/c;

    move-result-object p0

    return-object p0
.end method

.method public u(Lk4/c;)Lh4/Z;
    .locals 4

    const-string v0, "type"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p1, Lh4/v;

    if-eqz v0, :cond_5

    check-cast p1, Lh4/v;

    invoke-virtual {p1}, Lh4/v;->M0()Lh4/Z;

    move-result-object p1

    instance-of v0, p1, Lh4/z;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lh4/z;

    invoke-static {v0}, Li4/e;->y(Lh4/z;)Lh4/z;

    move-result-object v0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lh4/q;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lh4/q;

    iget-object v1, v0, Lh4/q;->d:Lh4/z;

    invoke-static {v1}, Li4/e;->y(Lh4/z;)Lh4/z;

    move-result-object v2

    iget-object v0, v0, Lh4/q;->e:Lh4/z;

    invoke-static {v0}, Li4/e;->y(Lh4/z;)Lh4/z;

    move-result-object v3

    if-ne v2, v1, :cond_2

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v2, v3}, Lh4/d;->j(Lh4/z;Lh4/z;)Lh4/Z;

    move-result-object v0

    :goto_1
    invoke-static {p1}, Lh4/c;->e(Lh4/v;)Lh4/v;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Li4/e;->u(Lk4/c;)Lh4/Z;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    invoke-static {v0, p0}, Lh4/c;->A(Lh4/Z;Lh4/v;)Lh4/Z;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public u0(Lk4/c;)Lh4/J;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Li4/e;->o(Lk4/c;)Lh4/z;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Li3/x;->i1(Lk4/d;)Lh4/J;

    move-result-object p0

    return-object p0
.end method

.method public v(Lk4/d;I)Lh4/N;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    if-ltz p2, :cond_0

    invoke-static {p1}, Li3/x;->f(Lk4/c;)I

    move-result p0

    if-ge p2, p0, :cond_0

    invoke-static {p1, p2}, Li3/x;->C(Lk4/c;I)Lh4/N;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public v0(Lk4/d;)Lk4/b;
    .locals 0

    invoke-static {p0, p1}, Li3/x;->h(Li4/b;Lk4/d;)Lk4/b;

    move-result-object p0

    return-object p0
.end method

.method public w(Lk4/d;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->o0(Lk4/c;)Z

    move-result p0

    return p0
.end method

.method public w0(Lk4/d;)V
    .locals 0

    invoke-static {p1}, Li3/x;->A0(Lk4/d;)V

    return-void
.end method

.method public x(Lk4/f;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->r0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public z0(Lk4/f;Lk4/f;)Z
    .locals 0

    invoke-static {p1, p2}, Li3/x;->e(Lk4/f;Lk4/f;)Z

    move-result p0

    return p0
.end method
