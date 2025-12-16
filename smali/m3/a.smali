.class public final Lm3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm3/e;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/util/List;

.field public final c:I

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/util/ArrayList;I)V
    .locals 6

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lm3/a;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/ArrayList;IILjava/util/List;)V
    .locals 1

    const-string v0, "jClass"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "callMode"

    invoke-static {p3, v0}, LB/f;->x(ILjava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p4, v0}, LB/f;->x(ILjava/lang/String;)V

    const-string v0, "methods"

    invoke-static {v0, p5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/a;->a:Ljava/lang/Class;

    iput-object p2, p0, Lm3/a;->b:Ljava/util/List;

    iput p3, p0, Lm3/a;->c:I

    iput-object p5, p0, Lm3/a;->d:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p5}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/reflect/Method;

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lm3/a;->e:Ljava/util/ArrayList;

    iget-object p1, p0, Lm3/a;->d:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/reflect/Method;

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    const-string p5, "it"

    invoke-static {p5, p3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p5, Lx3/d;->a:Ljava/util/List;

    sget-object p5, Lx3/d;->c:Ljava/util/Map;

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Class;

    if-nez p5, :cond_1

    goto :goto_2

    :cond_1
    move-object p3, p5

    :goto_2
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iput-object p2, p0, Lm3/a;->f:Ljava/util/ArrayList;

    iget-object p1, p0, Lm3/a;->d:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/reflect/Method;

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iput-object p2, p0, Lm3/a;->g:Ljava/util/ArrayList;

    iget p1, p0, Lm3/a;->c:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_8

    const/4 p1, 0x1

    if-ne p4, p1, :cond_8

    iget-object p0, p0, Lm3/a;->b:Ljava/util/List;

    const-string p2, "<this>"

    invoke-static {p2, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p3, 0x0

    move p4, p3

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    if-nez p4, :cond_5

    const-string v0, "value"

    invoke-static {p5, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move p4, p1

    move v0, p3

    goto :goto_5

    :cond_5
    move v0, p1

    :goto_5
    if-eqz v0, :cond_4

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, p1

    if-nez p0, :cond_7

    goto :goto_6

    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Positional call of a Java annotation constructor is allowed only if there are no parameters or one parameter named \"value\". This restriction exists because Java annotations (in contrast to Kotlin)do not impose any order on their arguments. Use KCallable#callBy instead."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_6
    return-void
.end method


# virtual methods
.method public final i([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p1}, LW1/a;->j(Lm3/e;[Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    iget-object v7, v0, Lm3/a;->b:Ljava/util/List;

    if-ge v5, v3, :cond_c

    aget-object v8, v1, v5

    add-int/lit8 v9, v6, 0x1

    iget-object v10, v0, Lm3/a;->f:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    iget v11, v0, Lm3/a;->c:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    iget-object v8, v0, Lm3/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_5

    :cond_0
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    instance-of v12, v8, Ljava/lang/Class;

    if-eqz v12, :cond_1

    :goto_1
    const/4 v8, 0x0

    goto :goto_5

    :cond_1
    instance-of v12, v8, Li3/c;

    if-eqz v12, :cond_2

    check-cast v8, Li3/c;

    invoke-static {v8}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object v8

    goto :goto_3

    :cond_2
    instance-of v12, v8, [Ljava/lang/Object;

    if-eqz v12, :cond_6

    move-object v12, v8

    check-cast v12, [Ljava/lang/Object;

    instance-of v14, v12, [Ljava/lang/Class;

    if-eqz v14, :cond_3

    goto :goto_1

    :cond_3
    instance-of v14, v12, [Li3/c;

    if-eqz v14, :cond_5

    const-string v12, "null cannot be cast to non-null type kotlin.Array<kotlin.reflect.KClass<*>>"

    invoke-static {v12, v8}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, [Li3/c;

    new-instance v12, Ljava/util/ArrayList;

    array-length v14, v8

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    array-length v14, v8

    move v15, v4

    :goto_2
    if-ge v15, v14, :cond_4

    aget-object v16, v8, v15

    invoke-static/range {v16 .. v16}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_4
    new-array v8, v4, [Ljava/lang/Class;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    goto :goto_3

    :cond_5
    move-object v8, v12

    :cond_6
    :goto_3
    invoke-virtual {v11, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object v13, v8

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    :goto_4
    move-object v8, v13

    :goto_5
    if-nez v8, :cond_b

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-class v2, Ljava/lang/Class;

    invoke-static {v1, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Li3/c;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v1

    goto :goto_6

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, [Li3/c;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v1

    goto :goto_6

    :cond_9
    invoke-static {v1}, LL2/b;->t(Ljava/lang/Class;)Li3/c;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Li3/c;->l()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ld3/q;->a:Ld3/r;

    const-class v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v3

    invoke-interface {v3}, Li3/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Li3/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "kotlinClass.java.componentType"

    invoke-static {v3, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, LL2/b;->t(Ljava/lang/Class;)Li3/c;

    move-result-object v1

    invoke-interface {v1}, Li3/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_a
    invoke-interface {v1}, Li3/c;->l()Ljava/lang/String;

    move-result-object v1

    :goto_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Argument #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not of the required type "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto/16 :goto_0

    :cond_c
    invoke-static {v7, v2}, LR2/m;->l1(Ljava/util/List;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, LR2/z;->C1(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lm3/a;->d:Ljava/util/List;

    iget-object v0, v0, Lm3/a;->a:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, LL2/b;->h(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lm3/a;->a:Ljava/lang/Class;

    return-object p0
.end method

.method public final o()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lm3/a;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final bridge synthetic p()Ljava/lang/reflect/Member;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
