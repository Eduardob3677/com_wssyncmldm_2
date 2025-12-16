.class public final Ll3/E;
.super Ll3/r;
.source "SourceFile"

# interfaces
.implements Ld3/f;
.implements Li3/f;
.implements Ll3/e;


# static fields
.field public static final synthetic i:[Li3/o;


# instance fields
.field public final d:Ll3/C;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Object;

.field public final g:Ll3/p0;

.field public final h:LQ2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Ll3/E;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v3, "descriptor"

    const-string v4, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;"

    invoke-direct {v0, v2, v3, v4}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Li3/o;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Ll3/E;->i:[Li3/o;

    return-void
.end method

.method public constructor <init>(Ll3/C;Ljava/lang/String;Ljava/lang/String;Lr3/s;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ll3/r;-><init>()V

    iput-object p1, p0, Ll3/E;->d:Ll3/C;

    iput-object p3, p0, Ll3/E;->e:Ljava/lang/String;

    iput-object p5, p0, Ll3/E;->f:Ljava/lang/Object;

    new-instance p1, LB3/c;

    const/16 p3, 0x9

    invoke-direct {p1, p0, p3, p2}, LB3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance p2, Ll3/p0;

    invoke-direct {p2, p4, p1}, Ll3/p0;-><init>(Ljava/lang/Object;Lc3/a;)V

    iput-object p2, p0, Ll3/E;->g:Ll3/p0;

    new-instance p1, Ll3/D;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ll3/D;-><init>(Ll3/E;I)V

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lf1/a;->U(ILc3/a;)LQ2/c;

    move-result-object p1

    iput-object p1, p0, Ll3/E;->h:LQ2/c;

    new-instance p1, Ll3/D;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Ll3/D;-><init>(Ll3/E;I)V

    invoke-static {p2, p1}, Lf1/a;->U(ILc3/a;)LQ2/c;

    return-void
.end method

.method public constructor <init>(Ll3/C;Lr3/s;)V
    .locals 7

    const-string v0, "container"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "descriptor"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p2

    check-cast v0, Lu3/o;

    invoke-virtual {v0}, Lu3/o;->getName()LQ3/f;

    move-result-object v0

    invoke-virtual {v0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v3

    const-string v0, "descriptor.name.asString()"

    invoke-static {v0, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Ll3/u0;->c(Lr3/s;)Ll3/r0;

    move-result-object v0

    invoke-virtual {v0}, Ll3/r0;->e()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ld3/a;->c:Ld3/a;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Ll3/E;-><init>(Ll3/C;Ljava/lang/String;Ljava/lang/String;Lr3/s;Ljava/lang/Object;)V

    return-void
.end method

.method public static final o(Ll3/E;Ljava/lang/reflect/Constructor;Lr3/s;Z)Lm3/t;
    .locals 6

    const/4 v3, 0x0

    const-string v0, "constructor.genericParameterTypes"

    const-string v1, "constructor.declaringClass"

    const-string v2, "constructor"

    if-nez p3, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p3, p2, Lu3/k;

    if-eqz p3, :cond_0

    check-cast p2, Lu3/k;

    goto :goto_0

    :cond_0
    move-object p2, v3

    :goto_0
    if-nez p2, :cond_1

    goto/16 :goto_2

    :cond_1
    move-object p3, p2

    check-cast p3, Lu3/v;

    invoke-virtual {p3}, Lu3/v;->c()LA3/p;

    move-result-object v4

    invoke-static {v4}, Lr3/n;->e(LA3/p;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p2}, Lu3/k;->Y()Lr3/e;

    move-result-object v4

    const-string v5, "constructorDescriptor.constructedClass"

    invoke-static {v5, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4}, LT3/i;->b(Lr3/j;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p2}, Lu3/k;->Y()Lr3/e;

    move-result-object p2

    invoke-static {p2}, LT3/e;->r(Lr3/h;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p3}, Lu3/v;->w0()Ljava/util/List;

    move-result-object p2

    const-string p3, "constructorDescriptor.valueParameters"

    invoke-static {p3, p2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lu3/V;

    check-cast p3, Lu3/W;

    invoke-virtual {p3}, Lu3/W;->e()Lh4/v;

    move-result-object p3

    const-string v4, "it.type"

    invoke-static {v4, p3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p3}, LL2/b;->C(Lh4/v;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Ll3/E;->n()Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Lm3/f;

    invoke-virtual {p0}, Ll3/E;->p()Lr3/s;

    move-result-object p3

    iget-object p0, p0, Ll3/E;->f:Ljava/lang/Object;

    invoke-static {p0, p3}, Lf1/a;->c(Ljava/lang/Object;Lr3/c;)Ljava/lang/Object;

    move-result-object p0

    const/4 p3, 0x0

    invoke-direct {p2, p1, p0, p3}, Lm3/f;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;I)V

    goto/16 :goto_3

    :cond_7
    new-instance p2, Lm3/g;

    invoke-static {v2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length p3, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p3, v1, :cond_8

    new-array p0, v0, [Ljava/lang/reflect/Type;

    goto :goto_1

    :cond_8
    array-length p3, p0

    sub-int/2addr p3, v1

    invoke-static {p0, v0, p3}, LR2/i;->l0([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    :goto_1
    move-object v4, p0

    check-cast v4, [Ljava/lang/reflect/Type;

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lm3/g;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;I)V

    goto :goto_3

    :cond_9
    :goto_2
    invoke-virtual {p0}, Ll3/E;->n()Z

    move-result p2

    if-eqz p2, :cond_a

    new-instance p2, Lm3/f;

    invoke-virtual {p0}, Ll3/E;->p()Lr3/s;

    move-result-object p3

    iget-object p0, p0, Ll3/E;->f:Ljava/lang/Object;

    invoke-static {p0, p3}, Lf1/a;->c(Ljava/lang/Object;Lr3/c;)Ljava/lang/Object;

    move-result-object p0

    const/4 p3, 0x1

    invoke-direct {p2, p1, p0, p3}, Lm3/f;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;I)V

    goto :goto_3

    :cond_a
    new-instance p2, Lm3/g;

    invoke-static {v2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    if-eqz p3, :cond_b

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    if-nez p0, :cond_b

    move-object v3, p3

    :cond_b
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v0, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lm3/g;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;I)V

    :goto_3
    return-object p2
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ll3/r;->i([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b()I
    .locals 0

    invoke-virtual {p0}, Ll3/E;->g()Lm3/e;

    move-result-object p0

    invoke-static {p0}, LZ0/j;->I(Lm3/e;)I

    move-result p0

    return p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll3/r;->i([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll3/r;->i([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll3/r;->i([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {p1}, Ll3/w0;->b(Ljava/lang/Object;)Ll3/E;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Ll3/E;->d:Ll3/C;

    iget-object v2, p1, Ll3/E;->d:Ll3/C;

    invoke-static {v1, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ll3/E;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ll3/E;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ll3/E;->e:Ljava/lang/String;

    iget-object v2, p1, Ll3/E;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Ll3/E;->f:Ljava/lang/Object;

    iget-object p1, p1, Ll3/E;->f:Ljava/lang/Object;

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final g()Lm3/e;
    .locals 0

    iget-object p0, p0, Ll3/E;->h:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm3/e;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ll3/E;->p()Lr3/s;

    move-result-object p0

    check-cast p0, Lu3/o;

    invoke-virtual {p0}, Lu3/o;->getName()LQ3/f;

    move-result-object p0

    invoke-virtual {p0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "descriptor.name.asString()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h()Z
    .locals 0

    invoke-virtual {p0}, Ll3/E;->p()Lr3/s;

    move-result-object p0

    invoke-interface {p0}, Lr3/s;->h()Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Ll3/E;->d:Ll3/C;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Ll3/E;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Ll3/E;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final j()Ll3/C;
    .locals 0

    iget-object p0, p0, Ll3/E;->d:Ll3/C;

    return-object p0
.end method

.method public final bridge synthetic k()Lr3/c;
    .locals 0

    invoke-virtual {p0}, Ll3/E;->p()Lr3/s;

    move-result-object p0

    return-object p0
.end method

.method public final n()Z
    .locals 1

    sget-object v0, Ld3/a;->c:Ld3/a;

    iget-object p0, p0, Ll3/E;->f:Ljava/lang/Object;

    invoke-static {p0, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final p()Lr3/s;
    .locals 2

    sget-object v0, Ll3/E;->i:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Ll3/E;->g:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-descriptor>(...)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lr3/s;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Ll3/t0;->a:LS3/g;

    invoke-virtual {p0}, Ll3/E;->p()Lr3/s;

    move-result-object p0

    invoke-static {p0}, Ll3/t0;->b(Lr3/s;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
