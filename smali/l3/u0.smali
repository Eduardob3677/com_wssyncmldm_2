.class public abstract Ll3/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LQ3/c;

    const-string v1, "java.lang.Void"

    invoke-direct {v0, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v0

    sput-object v0, Ll3/u0;->a:LQ3/b;

    return-void
.end method

.method public static a(Lr3/s;)Ll3/j;
    .locals 4

    new-instance v0, Ll3/j;

    new-instance v1, LP3/e;

    invoke-static {p0}, Li3/x;->N(Lr3/c;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    instance-of v2, p0, Lu3/L;

    const-string v3, "descriptor.propertyIfAccessor.name.asString()"

    if-eqz v2, :cond_0

    invoke-static {p0}, LX3/f;->k(Lr3/c;)Lr3/c;

    move-result-object v2

    invoke-interface {v2}, Lr3/j;->getName()LQ3/f;

    move-result-object v2

    invoke-virtual {v2}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, LA3/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    instance-of v2, p0, Lu3/M;

    if-eqz v2, :cond_1

    invoke-static {p0}, LX3/f;->k(Lr3/c;)Lr3/c;

    move-result-object v2

    invoke-interface {v2}, Lr3/j;->getName()LQ3/f;

    move-result-object v2

    invoke-virtual {v2}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, LA3/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, p0

    check-cast v2, Lu3/o;

    invoke-virtual {v2}, Lu3/o;->getName()LQ3/f;

    move-result-object v2

    invoke-virtual {v2}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "descriptor.name.asString()"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    const/4 v3, 0x1

    invoke-static {p0, v3}, LW1/a;->n(Lr3/s;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, LP3/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ll3/j;-><init>(LP3/e;)V

    return-object v0
.end method

.method public static b(Lr3/K;)Ll3/r0;
    .locals 7

    const-string v0, "possiblyOverriddenProperty"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LT3/e;->u(Lr3/c;)Lr3/c;

    move-result-object p0

    check-cast p0, Lr3/K;

    invoke-interface {p0}, Lr3/K;->a()Lr3/K;

    move-result-object v1

    const-string p0, "unwrapFakeOverride(possi\u2026rriddenProperty).original"

    invoke-static {p0, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, v1, Lf4/r;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move-object p0, v1

    check-cast p0, Lf4/r;

    sget-object v2, LO3/k;->d:LR3/p;

    const-string v3, "propertySignature"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lf4/r;->D:LL3/G;

    invoke-static {v3, v2}, Lf1/a;->C(LR3/n;LR3/p;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, LO3/e;

    if-eqz v4, :cond_a

    new-instance v6, Ll3/m;

    iget-object v5, p0, Lf4/r;->E:LN3/f;

    iget-object p0, p0, Lf4/r;->F:Ls2/c;

    move-object v0, v6

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Ll3/m;-><init>(Lr3/K;LL3/G;LO3/e;LN3/f;Ls2/c;)V

    return-object v6

    :cond_0
    instance-of p0, v1, LC3/g;

    if-eqz p0, :cond_a

    move-object p0, v1

    check-cast p0, LC3/g;

    invoke-virtual {p0}, Lu3/p;->m()Lr3/N;

    move-result-object p0

    instance-of v2, p0, Lw3/f;

    if-eqz v2, :cond_1

    check-cast p0, Lw3/f;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, p0, Lw3/f;->b:Lx3/s;

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    instance-of v2, p0, Lx3/u;

    if-eqz v2, :cond_3

    new-instance v0, Ll3/k;

    check-cast p0, Lx3/u;

    iget-object p0, p0, Lx3/u;->a:Ljava/lang/reflect/Field;

    invoke-direct {v0, p0}, Ll3/k;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_6

    :cond_3
    instance-of v2, p0, Lx3/x;

    if-eqz v2, :cond_9

    new-instance v2, Ll3/l;

    check-cast p0, Lx3/x;

    iget-object p0, p0, Lx3/x;->a:Ljava/lang/reflect/Method;

    invoke-interface {v1}, Lr3/K;->f()Lu3/M;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lu3/p;

    invoke-virtual {v1}, Lu3/p;->m()Lr3/N;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    instance-of v3, v1, Lw3/f;

    if-eqz v3, :cond_5

    check-cast v1, Lw3/f;

    goto :goto_3

    :cond_5
    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_6

    iget-object v1, v1, Lw3/f;->b:Lx3/s;

    goto :goto_4

    :cond_6
    move-object v1, v0

    :goto_4
    instance-of v3, v1, Lx3/x;

    if-eqz v3, :cond_7

    check-cast v1, Lx3/x;

    goto :goto_5

    :cond_7
    move-object v1, v0

    :goto_5
    if-eqz v1, :cond_8

    iget-object v0, v1, Lx3/x;->a:Ljava/lang/reflect/Method;

    :cond_8
    invoke-direct {v2, p0, v0}, Ll3/l;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    move-object v0, v2

    :goto_6
    return-object v0

    :cond_9
    new-instance v0, LQ2/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Incorrect resolution sequence for Java field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (source = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_a
    invoke-interface {v1}, Lr3/K;->r()Lu3/L;

    move-result-object p0

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-static {p0}, Ll3/u0;->a(Lr3/s;)Ll3/j;

    move-result-object p0

    invoke-interface {v1}, Lr3/K;->f()Lu3/M;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {v1}, Ll3/u0;->a(Lr3/s;)Ll3/j;

    move-result-object v0

    :cond_b
    new-instance v1, Ll3/n;

    invoke-direct {v1, p0, v0}, Ll3/n;-><init>(Ll3/j;Ll3/j;)V

    return-object v1
.end method

.method public static c(Lr3/s;)Ll3/r0;
    .locals 7

    const/4 v0, 0x2

    const-string v1, "possiblySubstitutedFunction"

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LT3/e;->u(Lr3/c;)Lr3/c;

    move-result-object v1

    check-cast v1, Lr3/s;

    invoke-interface {v1}, Lr3/s;->a()Lr3/s;

    move-result-object v1

    const-string v2, "unwrapFakeOverride(possi\u2026titutedFunction).original"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v2, v1, Lf4/b;

    if-eqz v2, :cond_3

    move-object v0, v1

    check-cast v0, Lf4/b;

    invoke-interface {v0}, Lf4/k;->l0()LR3/b;

    move-result-object v2

    instance-of v3, v2, LL3/y;

    if-eqz v3, :cond_0

    sget-object v3, LP3/h;->a:LR3/i;

    move-object v3, v2

    check-cast v3, LL3/y;

    invoke-interface {v0}, Lf4/k;->B0()LN3/f;

    move-result-object v4

    invoke-interface {v0}, Lf4/k;->Z()Ls2/c;

    move-result-object v5

    invoke-static {v3, v4, v5}, LP3/h;->c(LL3/y;LN3/f;Ls2/c;)LP3/e;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance p0, Ll3/j;

    invoke-direct {p0, v3}, Ll3/j;-><init>(LP3/e;)V

    return-object p0

    :cond_0
    instance-of v3, v2, LL3/l;

    if-eqz v3, :cond_2

    sget-object v3, LP3/h;->a:LR3/i;

    check-cast v2, LL3/l;

    invoke-interface {v0}, Lf4/k;->B0()LN3/f;

    move-result-object v3

    invoke-interface {v0}, Lf4/k;->Z()Ls2/c;

    move-result-object v0

    invoke-static {v2, v3, v0}, LP3/h;->a(LL3/l;LN3/f;Ls2/c;)LP3/e;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object p0

    const-string v1, "possiblySubstitutedFunction.containingDeclaration"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LT3/i;->b(Lr3/j;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ll3/j;

    invoke-direct {p0, v0}, Ll3/j;-><init>(LP3/e;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ll3/i;

    invoke-direct {p0, v0}, Ll3/i;-><init>(LP3/e;)V

    :goto_0
    return-object p0

    :cond_2
    invoke-static {v1}, Ll3/u0;->a(Lr3/s;)Ll3/j;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p0, v1, LC3/f;

    const/4 v2, 0x0

    if-eqz p0, :cond_8

    move-object p0, v1

    check-cast p0, LC3/f;

    invoke-virtual {p0}, Lu3/p;->m()Lr3/N;

    move-result-object p0

    instance-of v3, p0, Lw3/f;

    if-eqz v3, :cond_4

    check-cast p0, Lw3/f;

    goto :goto_1

    :cond_4
    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_5

    iget-object p0, p0, Lw3/f;->b:Lx3/s;

    goto :goto_2

    :cond_5
    move-object p0, v2

    :goto_2
    instance-of v3, p0, Lx3/x;

    if-eqz v3, :cond_6

    move-object v2, p0

    check-cast v2, Lx3/x;

    :cond_6
    if-eqz v2, :cond_7

    iget-object p0, v2, Lx3/x;->a:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_7

    new-instance v0, Ll3/h;

    invoke-direct {v0, p0}, Ll3/h;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0

    :cond_7
    new-instance p0, LQ2/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Incorrect resolution sequence for Java method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_8
    instance-of p0, v1, LC3/b;

    const/16 v3, 0x29

    const-string v4, " ("

    if-eqz p0, :cond_d

    move-object p0, v1

    check-cast p0, LC3/b;

    invoke-virtual {p0}, Lu3/p;->m()Lr3/N;

    move-result-object p0

    instance-of v5, p0, Lw3/f;

    if-eqz v5, :cond_9

    check-cast p0, Lw3/f;

    goto :goto_3

    :cond_9
    move-object p0, v2

    :goto_3
    if-eqz p0, :cond_a

    iget-object v2, p0, Lw3/f;->b:Lx3/s;

    :cond_a
    instance-of p0, v2, Lx3/r;

    if-eqz p0, :cond_b

    new-instance p0, Ll3/g;

    check-cast v2, Lx3/r;

    iget-object v0, v2, Lx3/r;->a:Ljava/lang/reflect/Constructor;

    invoke-direct {p0, v0}, Ll3/g;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_4

    :cond_b
    instance-of p0, v2, Lx3/o;

    if-eqz p0, :cond_c

    move-object p0, v2

    check-cast p0, Lx3/o;

    iget-object v5, p0, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->isAnnotation()Z

    move-result v5

    if-eqz v5, :cond_c

    new-instance v0, Ll3/f;

    iget-object p0, p0, Lx3/o;->a:Ljava/lang/Class;

    invoke-direct {v0, p0}, Ll3/f;-><init>(Ljava/lang/Class;)V

    move-object p0, v0

    :goto_4
    return-object p0

    :cond_c
    new-instance p0, LQ2/d;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Incorrect resolution sequence for Java constructor "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_d
    move-object p0, v1

    check-cast p0, Lu3/o;

    invoke-virtual {p0}, Lu3/o;->getName()LQ3/f;

    move-result-object v2

    sget-object v5, Lo3/n;->c:LQ3/f;

    invoke-virtual {v2, v5}, LQ3/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v1}, LZ0/j;->S(Lr3/s;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {p0}, Lu3/o;->getName()LQ3/f;

    move-result-object v2

    sget-object v5, Lo3/n;->a:LQ3/f;

    invoke-virtual {v2, v5}, LQ3/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {v1}, LZ0/j;->S(Lr3/s;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {p0}, Lu3/o;->getName()LQ3/f;

    move-result-object p0

    sget-object v2, Lq3/a;->e:LQ3/f;

    invoke-static {p0, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-interface {v1}, Lr3/b;->w0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_10

    :goto_5
    invoke-static {v1}, Ll3/u0;->a(Lr3/s;)Ll3/j;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p0, LQ2/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unknown origin of "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
