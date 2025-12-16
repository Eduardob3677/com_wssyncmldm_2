.class public final Lm3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm3/e;


# instance fields
.field public final a:Lm3/e;

.field public final b:Z

.field public final c:LJ/r0;


# direct methods
.method public constructor <init>(Lm3/e;Lr3/s;Z)V
    .locals 8

    const-string v0, "descriptor"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/u;->a:Lm3/e;

    iput-boolean p3, p0, Lm3/u;->b:Z

    invoke-interface {p2}, Lr3/b;->n()Lh4/v;

    move-result-object p3

    invoke-static {p3}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-static {p3}, Lf1/a;->o0(Lh4/v;)Ljava/lang/Class;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    const-string v1, "box-impl"

    invoke-static {p3, p2}, Lf1/a;->J(Ljava/lang/Class;Lr3/c;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "{\n        getDeclaredMet\u2026riptor).returnType)\n    }"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, LQ2/d;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No box method found in inline class: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " (calling "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {p2}, LT3/i;->a(Lr3/s;)Z

    move-result p3

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    new-instance p1, LJ/r0;

    sget-object p2, Lh3/c;->f:Lh3/c;

    new-array p3, v2, [Ljava/lang/reflect/Method;

    invoke-direct {p1, p2, p3, v1}, LJ/r0;-><init>(Lh3/c;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto/16 :goto_a

    :cond_1
    instance-of p3, p1, Lm3/r;

    const/4 v3, 0x1

    const-string v4, "descriptor.containingDeclaration"

    const/4 v5, -0x1

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    instance-of p3, p2, Lr3/i;

    if-eqz p3, :cond_4

    instance-of p1, p1, Lm3/d;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v2

    goto :goto_2

    :cond_4
    invoke-interface {p2}, Lr3/b;->F()Lu3/w;

    move-result-object p3

    if-eqz p3, :cond_3

    instance-of p1, p1, Lm3/d;

    if-nez p1, :cond_3

    invoke-interface {p2}, Lr3/j;->l()Lr3/j;

    move-result-object p1

    invoke-static {v4, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, LT3/i;->b(Lr3/j;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v5, v3

    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Lr3/b;->d0()Lu3/w;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lu3/w;->e()Lh4/v;

    move-result-object p3

    goto :goto_3

    :cond_6
    move-object p3, v0

    :goto_3
    if-eqz p3, :cond_7

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    instance-of p3, p2, Lr3/i;

    if-eqz p3, :cond_8

    move-object p3, p2

    check-cast p3, Lr3/i;

    invoke-interface {p3}, Lr3/i;->Y()Lr3/e;

    move-result-object p3

    const-string v4, "descriptor.constructedClass"

    invoke-static {v4, p3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3}, Lr3/h;->z()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p3}, Lr3/j;->l()Lr3/j;

    move-result-object p3

    const-string v4, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v4, p3}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p3, Lr3/e;

    invoke-interface {p3}, Lr3/e;->q()Lh4/z;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-interface {p2}, Lr3/j;->l()Lr3/j;

    move-result-object p3

    invoke-static {v4, p3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v4, p3, Lr3/e;

    if-eqz v4, :cond_9

    invoke-static {p3}, LT3/i;->b(Lr3/j;)Z

    move-result v4

    if-eqz v4, :cond_9

    check-cast p3, Lr3/e;

    invoke-interface {p3}, Lr3/e;->q()Lh4/z;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    invoke-interface {p2}, Lr3/b;->w0()Ljava/util/List;

    move-result-object p3

    const-string v4, "descriptor.valueParameters"

    invoke-static {v4, p3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu3/V;

    check-cast v4, Lu3/W;

    invoke-virtual {v4}, Lu3/W;->e()Lh4/v;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    iget-boolean p3, p0, Lm3/u;->b:Z

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, 0x1f

    div-int/lit8 p3, p3, 0x20

    add-int/2addr p3, v3

    goto :goto_6

    :cond_b
    move p3, v2

    :goto_6
    invoke-interface {p2}, Lr3/s;->h()Z

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p3, v5

    add-int/2addr p3, v4

    invoke-static {p0}, LZ0/j;->I(Lm3/e;)I

    move-result v4

    if-ne v4, p3, :cond_f

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v5

    const/high16 v7, -0x80000000

    if-gt v6, v7, :cond_c

    sget-object v3, Lh3/c;->f:Lh3/c;

    goto :goto_7

    :cond_c
    new-instance v7, Lh3/c;

    sub-int/2addr v6, v3

    invoke-direct {v7, v4, v6, v3}, Lh3/a;-><init>(III)V

    move-object v3, v7

    :goto_7
    new-array v4, p3, [Ljava/lang/reflect/Method;

    :goto_8
    if-ge v2, p3, :cond_e

    iget v6, v3, Lh3/a;->c:I

    iget v7, v3, Lh3/a;->d:I

    if-gt v2, v7, :cond_d

    if-gt v6, v2, :cond_d

    sub-int v6, v2, v5

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh4/v;

    invoke-static {v6}, Lf1/a;->o0(Lh4/v;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-static {v6, p2}, Lf1/a;->J(Ljava/lang/Class;Lr3/c;)Ljava/lang/reflect/Method;

    move-result-object v6

    goto :goto_9

    :cond_d
    move-object v6, v0

    :goto_9
    aput-object v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_e
    new-instance p1, LJ/r0;

    invoke-direct {p1, v3, v4, v1}, LJ/r0;-><init>(Lh3/c;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_a
    iput-object p1, p0, Lm3/u;->c:LJ/r0;

    return-void

    :cond_f
    new-instance p1, LQ2/d;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent number of parameters in the descriptor and Java reflection object: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LZ0/j;->I(Lm3/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\nCalling: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\nParameter types: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lm3/u;->a:Lm3/e;

    invoke-interface {p2}, Lm3/e;->o()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")\nDefault: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lm3/u;->b:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p1
.end method


# virtual methods
.method public final i([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lm3/u;->c:LJ/r0;

    iget-object v1, v0, LJ/r0;->c:Ljava/lang/Object;

    check-cast v1, Lh3/c;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "copyOf(this, size)"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v1, Lh3/a;->c:I

    const/4 v4, 0x0

    iget v1, v1, Lh3/a;->d:I

    if-gt v3, v1, :cond_2

    :goto_0
    iget-object v5, v0, LJ/r0;->d:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/reflect/Method;

    aget-object v5, v5, v3

    aget-object v6, p1, v3

    if-eqz v5, :cond_1

    if-eqz v6, :cond_0

    invoke-virtual {v5, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "method.returnType"

    invoke-static {v6, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5}, Ll3/w0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    :cond_1
    :goto_1
    aput-object v6, v2, v3

    if-eq v3, v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lm3/u;->a:Lm3/e;

    invoke-interface {p0, v2}, Lm3/e;->i([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, v0, LJ/r0;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Method;

    if-eqz p1, :cond_4

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p0, p1

    :cond_4
    :goto_2
    return-object p0
.end method

.method public final n()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lm3/u;->a:Lm3/e;

    invoke-interface {p0}, Lm3/e;->n()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public final o()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lm3/u;->a:Lm3/e;

    invoke-interface {p0}, Lm3/e;->o()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final p()Ljava/lang/reflect/Member;
    .locals 0

    iget-object p0, p0, Lm3/u;->a:Lm3/e;

    invoke-interface {p0}, Lm3/e;->p()Ljava/lang/reflect/Member;

    move-result-object p0

    return-object p0
.end method
