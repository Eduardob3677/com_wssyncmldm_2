.class public abstract Ll3/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Le4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le4/d;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Le4/d;-><init>(I)V

    sput-object v0, Ll3/r0;->c:Le4/d;

    return-void
.end method

.method public static synthetic b(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "initializer"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "kotlin/reflect/jvm/internal/ReflectProperties"

    aput-object v2, v0, v1

    const/4 v2, 0x2

    if-eq p0, v1, :cond_0

    if-eq p0, v2, :cond_0

    const-string p0, "lazy"

    aput-object p0, v0, v2

    goto :goto_0

    :cond_0
    const-string p0, "lazySoft"

    aput-object p0, v0, v2

    :goto_0
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final c(Ll3/d0;Z)Lm3/e;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    sget-object v2, Ll3/C;->c:LQ2/a;

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object v3

    iget-object v3, v3, Ll3/j0;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "input"

    invoke-static {v4, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v2, LQ2/a;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p0, Lm3/y;->a:Lm3/y;

    goto/16 :goto_5

    :cond_0
    sget-object v2, Ll3/u0;->a:LQ3/b;

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object v2

    invoke-virtual {v2}, Ll3/j0;->p()Lr3/K;

    move-result-object v2

    invoke-static {v2}, Ll3/u0;->b(Lr3/K;)Ll3/r0;

    move-result-object v2

    instance-of v3, v2, Ll3/m;

    if-eqz v3, :cond_e

    check-cast v2, Ll3/m;

    const/4 v3, 0x0

    iget-object v4, v2, Ll3/m;->f:LO3/e;

    if-eqz p1, :cond_2

    iget v5, v4, LO3/e;->d:I

    const/4 v6, 0x4

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    iget-object v4, v4, LO3/e;->g:LO3/c;

    goto :goto_0

    :cond_1
    move-object v4, v3

    goto :goto_0

    :cond_2
    iget v5, v4, LO3/e;->d:I

    const/16 v6, 0x8

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    iget-object v4, v4, LO3/e;->h:LO3/c;

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object v3

    iget-object v3, v3, Ll3/j0;->d:Ll3/C;

    iget v5, v4, LO3/c;->e:I

    iget-object v2, v2, Ll3/m;->g:LN3/f;

    invoke-interface {v2, v5}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object v5

    iget v4, v4, LO3/c;->f:I

    invoke-interface {v2, v4}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ll3/C;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_8

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object v2

    invoke-virtual {v2}, Ll3/j0;->p()Lr3/K;

    move-result-object v2

    invoke-static {v2}, LT3/i;->d(Lr3/U;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object v2

    invoke-virtual {v2}, Ll3/j0;->p()Lr3/K;

    move-result-object v2

    invoke-interface {v2}, Lr3/w;->c()LA3/p;

    move-result-object v2

    sget-object v3, Lr3/n;->d:LA3/p;

    invoke-static {v2, v3}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object p1

    invoke-virtual {p1}, Ll3/j0;->p()Lr3/K;

    move-result-object p1

    invoke-interface {p1}, Lr3/j;->l()Lr3/j;

    move-result-object p1

    invoke-static {p1}, Lf1/a;->p0(Lr3/j;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object v1

    invoke-virtual {v1}, Ll3/j0;->p()Lr3/K;

    move-result-object v1

    invoke-static {p1, v1}, Lf1/a;->J(Ljava/lang/Class;Lr3/c;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p0}, Ll3/d0;->n()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lm3/v;

    invoke-static {p0}, Ll3/r0;->h(Ll3/d0;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lm3/v;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    new-instance v1, Lm3/w;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lm3/x;-><init>(Ljava/lang/reflect/Method;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_5
    new-instance p1, LQ2/d;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Underlying property of inline class "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " should have a field"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_6
    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object v2

    iget-object v2, v2, Ll3/j0;->h:LQ2/c;

    invoke-interface {v2}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_7

    invoke-static {p0, p1, v2}, Ll3/r0;->f(Ll3/d0;ZLjava/lang/reflect/Field;)Lm3/t;

    move-result-object v1

    goto/16 :goto_3

    :cond_7
    new-instance p1, LQ2/d;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No accessors or field is found for property "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_8
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Ll3/d0;->n()Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Lm3/p;

    invoke-static {p0}, Ll3/r0;->h(Ll3/d0;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v3, v1}, Lm3/p;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    :goto_1
    move-object v1, p1

    goto/16 :goto_3

    :cond_9
    new-instance p1, Lm3/s;

    invoke-direct {p1, v0, v3}, Lm3/s;-><init>(ILjava/lang/reflect/Method;)V

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object p1

    invoke-virtual {p1}, Ll3/j0;->p()Lr3/K;

    move-result-object p1

    invoke-interface {p1}, Ls3/a;->t()Ls3/h;

    move-result-object p1

    sget-object v2, Ll3/w0;->a:LQ3/c;

    invoke-interface {p1, v2}, Ls3/h;->b(LQ3/c;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Ll3/d0;->n()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lm3/q;

    invoke-direct {p1, v3}, Lm3/q;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_1

    :cond_b
    new-instance p1, Lm3/s;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v3}, Lm3/s;-><init>(ILjava/lang/reflect/Method;)V

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Ll3/d0;->n()Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Lm3/r;

    invoke-static {p0}, Ll3/r0;->h(Ll3/d0;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v3, v1}, Lm3/r;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_1

    :cond_d
    new-instance p1, Lm3/s;

    invoke-direct {p1, v1, v3}, Lm3/s;-><init>(ILjava/lang/reflect/Method;)V

    goto :goto_1

    :cond_e
    instance-of v3, v2, Ll3/k;

    if-eqz v3, :cond_f

    check-cast v2, Ll3/k;

    iget-object v1, v2, Ll3/k;->d:Ljava/lang/reflect/Field;

    invoke-static {p0, p1, v1}, Ll3/r0;->f(Ll3/d0;ZLjava/lang/reflect/Field;)Lm3/t;

    move-result-object v1

    goto :goto_3

    :cond_f
    instance-of v3, v2, Ll3/l;

    if-eqz v3, :cond_13

    if-eqz p1, :cond_10

    check-cast v2, Ll3/l;

    iget-object p1, v2, Ll3/l;->d:Ljava/lang/reflect/Method;

    goto :goto_2

    :cond_10
    check-cast v2, Ll3/l;

    iget-object p1, v2, Ll3/l;->e:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_12

    :goto_2
    invoke-virtual {p0}, Ll3/d0;->n()Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Lm3/p;

    invoke-static {p0}, Ll3/r0;->h(Ll3/d0;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lm3/p;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_3

    :cond_11
    new-instance v1, Lm3/s;

    invoke-direct {v1, v0, p1}, Lm3/s;-><init>(ILjava/lang/reflect/Method;)V

    :goto_3
    invoke-virtual {p0}, Ll3/d0;->o()Lr3/J;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lf1/a;->k(Lm3/e;Lr3/s;Z)Lm3/e;

    move-result-object p0

    goto :goto_5

    :cond_12
    new-instance p0, LQ2/d;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No source found for setter of Java method property: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Ll3/l;->d:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_13
    instance-of v3, v2, Ll3/n;

    if-eqz v3, :cond_18

    if-eqz p1, :cond_14

    check-cast v2, Ll3/n;

    iget-object p1, v2, Ll3/n;->d:Ll3/j;

    goto :goto_4

    :cond_14
    check-cast v2, Ll3/n;

    iget-object p1, v2, Ll3/n;->e:Ll3/j;

    if-eqz p1, :cond_17

    :goto_4
    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object v2

    iget-object v2, v2, Ll3/j0;->d:Ll3/C;

    iget-object p1, p1, Ll3/j;->d:LP3/e;

    iget-object v3, p1, LP3/e;->b:Ljava/lang/String;

    iget-object p1, p1, LP3/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Ll3/C;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    invoke-virtual {p0}, Ll3/d0;->n()Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v0, Lm3/p;

    invoke-static {p0}, Ll3/r0;->h(Ll3/d0;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lm3/p;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_5

    :cond_15
    new-instance p0, Lm3/s;

    invoke-direct {p0, v0, p1}, Lm3/s;-><init>(ILjava/lang/reflect/Method;)V

    :goto_5
    return-object p0

    :cond_16
    new-instance p1, LQ2/d;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No accessor found for property "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_17
    new-instance p1, LQ2/d;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No setter found for property "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_18
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static final d(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const-string v2, "parameterTypes"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Ll3/b;->m:Ll3/b;

    const-string v3, "("

    const-string v4, ")"

    invoke-static {v1, v3, v4, v2}, LR2/i;->s0([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lc3/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "returnType"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lx3/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Ll3/d0;ZLjava/lang/reflect/Field;)Lm3/t;
    .locals 4

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object v0

    invoke-virtual {v0}, Ll3/j0;->p()Lr3/K;

    move-result-object v0

    invoke-interface {v0}, Lr3/j;->l()Lr3/j;

    move-result-object v1

    const-string v2, "containingDeclaration"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, LT3/e;->m(Lr3/j;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lr3/j;->l()Lr3/j;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, LT3/e;->o(Lr3/j;I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x5

    invoke-static {v1, v2}, LT3/e;->o(Lr3/j;I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    instance-of v1, v0, Lf4/r;

    if-eqz v1, :cond_2

    check-cast v0, Lf4/r;

    iget-object v0, v0, Lf4/r;->D:LL3/G;

    invoke-static {v0}, LP3/h;->d(LL3/G;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_3
    :goto_1
    const-string v0, "field"

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ll3/d0;->n()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lm3/h;

    invoke-static {p0}, Ll3/r0;->h(Ll3/d0;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lm3/h;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    goto/16 :goto_3

    :cond_4
    new-instance p1, Lm3/j;

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-direct {p1, p2, v3, p0}, Lm3/j;-><init>(Ljava/lang/reflect/Field;ZI)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p0}, Ll3/d0;->n()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lm3/l;

    invoke-static {p0}, Ll3/r0;->g(Ll3/d0;)Z

    move-result v0

    invoke-static {p0}, Ll3/r0;->h(Ll3/d0;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, Lm3/l;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    goto :goto_3

    :cond_6
    new-instance p1, Lm3/n;

    invoke-static {p0}, Ll3/r0;->g(Ll3/d0;)Z

    move-result p0

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v3, v0}, Lm3/n;-><init>(Ljava/lang/reflect/Field;ZZI)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object v0

    invoke-virtual {v0}, Ll3/j0;->p()Lr3/K;

    move-result-object v0

    invoke-interface {v0}, Ls3/a;->t()Ls3/h;

    move-result-object v0

    sget-object v1, Ll3/w0;->a:LQ3/c;

    invoke-interface {v0, v1}, Ls3/h;->b(LQ3/c;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ll3/d0;->n()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lm3/i;

    invoke-direct {p0, p2, v1}, Lm3/k;-><init>(Ljava/lang/reflect/Field;Z)V

    :goto_2
    move-object p1, p0

    goto :goto_3

    :cond_8
    new-instance p0, Lm3/j;

    const/4 p1, 0x1

    invoke-direct {p0, p2, v3, p1}, Lm3/j;-><init>(Ljava/lang/reflect/Field;ZI)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Ll3/d0;->n()Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Lm3/m;

    invoke-static {p0}, Ll3/r0;->g(Ll3/d0;)Z

    move-result p0

    invoke-direct {p1, p2, p0, v1}, Lm3/o;-><init>(Ljava/lang/reflect/Field;ZZ)V

    goto :goto_3

    :cond_a
    new-instance p1, Lm3/n;

    invoke-static {p0}, Ll3/r0;->g(Ll3/d0;)Z

    move-result p0

    const/4 v0, 0x1

    invoke-direct {p1, p2, p0, v3, v0}, Lm3/n;-><init>(Ljava/lang/reflect/Field;ZZI)V

    goto :goto_3

    :cond_b
    if-eqz p1, :cond_c

    new-instance p1, Lm3/j;

    const/4 p0, 0x2

    invoke-direct {p1, p2, v1, p0}, Lm3/j;-><init>(Ljava/lang/reflect/Field;ZI)V

    goto :goto_3

    :cond_c
    new-instance p1, Lm3/n;

    invoke-static {p0}, Ll3/r0;->g(Ll3/d0;)Z

    move-result p0

    const/4 v0, 0x2

    invoke-direct {p1, p2, p0, v1, v0}, Lm3/n;-><init>(Ljava/lang/reflect/Field;ZZI)V

    :goto_3
    return-object p1
.end method

.method public static final g(Ll3/d0;)Z
    .locals 0

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object p0

    invoke-virtual {p0}, Ll3/j0;->p()Lr3/K;

    move-result-object p0

    invoke-interface {p0}, Lr3/T;->e()Lh4/v;

    move-result-object p0

    invoke-static {p0}, Lh4/X;->f(Lh4/v;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final h(Ll3/d0;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object p0

    invoke-virtual {p0}, Ll3/j0;->p()Lr3/K;

    move-result-object v0

    iget-object p0, p0, Ll3/j0;->g:Ljava/lang/Object;

    invoke-static {p0, v0}, Lf1/a;->c(Ljava/lang/Object;Lr3/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lc3/a;)Ll3/q0;
    .locals 1

    new-instance v0, Ll3/q0;

    invoke-direct {v0, p0}, Ll3/q0;-><init>(Lc3/a;)V

    return-object v0
.end method

.method public static j(Lc3/a;)Ll3/p0;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Ll3/p0;

    invoke-direct {v1, v0, p0}, Ll3/p0;-><init>(Ljava/lang/Object;Lc3/a;)V

    return-object v1

    :cond_0
    const/4 p0, 0x2

    invoke-static {p0}, Ll3/r0;->b(I)V

    throw v0
.end method


# virtual methods
.method public abstract e()Ljava/lang/String;
.end method
