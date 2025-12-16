.class public final LF3/f;
.super Lh4/q;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lh4/z;Lh4/z;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "upperBound"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LF3/f;-><init>(Lh4/z;Lh4/z;Z)V

    return-void
.end method

.method public constructor <init>(Lh4/z;Lh4/z;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh4/q;-><init>(Lh4/z;Lh4/z;)V

    if-nez p3, :cond_0

    sget-object p0, Li4/d;->a:Li4/l;

    invoke-virtual {p0, p1, p2}, Li4/l;->b(Lh4/v;Lh4/v;)Z

    :cond_0
    return-void
.end method

.method public static final S0(LS3/g;Lh4/z;)Ljava/util/ArrayList;
    .locals 9

    invoke-virtual {p1}, Lh4/v;->u0()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/N;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "typeProjection"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v7, LS3/e;

    const/4 v1, 0x0

    invoke-direct {v7, p0, v1}, LS3/e;-><init>(LS3/g;I)V

    const/16 v8, 0x3c

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v2

    invoke-static/range {v3 .. v8}, LR2/m;->R0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final T0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x3c

    invoke-static {p0, v2, v1, v1, v0}, Ls4/h;->m(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v2}, Ls4/h;->v(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ls4/h;->u(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final L0(Li4/f;)Lh4/v;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, LF3/f;

    iget-object v0, p0, Lh4/q;->d:Lh4/z;

    const-string v1, "type"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lh4/q;->e:Lh4/z;

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1}, LF3/f;-><init>(Lh4/z;Lh4/z;Z)V

    return-object p1
.end method

.method public final N0(Z)Lh4/Z;
    .locals 2

    new-instance v0, LF3/f;

    iget-object v1, p0, Lh4/q;->d:Lh4/z;

    invoke-virtual {v1, p1}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object v1

    iget-object p0, p0, Lh4/q;->e:Lh4/z;

    invoke-virtual {p0, p1}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LF3/f;-><init>(Lh4/z;Lh4/z;)V

    return-object v0
.end method

.method public final O0(Li4/f;)Lh4/Z;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, LF3/f;

    iget-object v0, p0, Lh4/q;->d:Lh4/z;

    const-string v1, "type"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lh4/q;->e:Lh4/z;

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1}, LF3/f;-><init>(Lh4/z;Lh4/z;Z)V

    return-object p1
.end method

.method public final P0(Lh4/G;)Lh4/Z;
    .locals 2

    const-string v0, "newAttributes"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LF3/f;

    iget-object v1, p0, Lh4/q;->d:Lh4/z;

    invoke-virtual {v1, p1}, Lh4/z;->R0(Lh4/G;)Lh4/z;

    move-result-object v1

    iget-object p0, p0, Lh4/q;->e:Lh4/z;

    invoke-virtual {p0, p1}, Lh4/z;->R0(Lh4/G;)Lh4/z;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LF3/f;-><init>(Lh4/z;Lh4/z;)V

    return-object v0
.end method

.method public final Q0()Lh4/z;
    .locals 0

    iget-object p0, p0, Lh4/q;->d:Lh4/z;

    return-object p0
.end method

.method public final R0(LS3/g;LS3/i;)Ljava/lang/String;
    .locals 10

    const-string v0, "renderer"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "options"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lh4/q;->d:Lh4/z;

    invoke-virtual {p1, v0}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh4/q;->e:Lh4/z;

    invoke-virtual {p1, v2}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, LS3/i;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "raw ("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v2}, Lh4/v;->u0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lf1/a;->y(Lh4/v;)Lo3/i;

    move-result-object p0

    invoke-virtual {p1, v1, v3, p0}, LS3/g;->F(Ljava/lang/String;Ljava/lang/String;Lo3/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1, v0}, LF3/f;->S0(LS3/g;Lh4/z;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, v2}, LF3/f;->S0(LS3/g;Lh4/z;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v8, LF3/e;->d:LF3/e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, ", "

    const/16 v9, 0x1e

    move-object v4, p2

    invoke-static/range {v4 .. v9}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0}, LR2/m;->l1(Ljava/util/List;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ2/e;

    iget-object v4, v0, LQ2/e;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v0, v0, LQ2/e;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v5, "out "

    invoke-static {v0, v5}, Ls4/h;->p(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "*"

    invoke-static {v0, v4}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {v3, v2}, LF3/f;->T0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-static {v1, v2}, LF3/f;->T0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object p2

    :cond_6
    invoke-static {p0}, Lf1/a;->y(Lh4/v;)Lo3/i;

    move-result-object p0

    invoke-virtual {p1, p2, v3, p0}, LS3/g;->F(Ljava/lang/String;Ljava/lang/String;Lo3/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final q0()La4/o;
    .locals 3

    invoke-virtual {p0}, Lh4/q;->J0()Lh4/J;

    move-result-object v0

    invoke-interface {v0}, Lh4/J;->i()Lr3/g;

    move-result-object v0

    instance-of v1, v0, Lr3/e;

    if-eqz v1, :cond_0

    check-cast v0, Lr3/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance p0, LF3/d;

    invoke-direct {p0}, LF3/d;-><init>()V

    invoke-interface {v0, p0}, Lr3/e;->C(Lh4/S;)La4/o;

    move-result-object p0

    const-string v0, "classDescriptor.getMemberScope(RawSubstitution())"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect classifier: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh4/q;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
