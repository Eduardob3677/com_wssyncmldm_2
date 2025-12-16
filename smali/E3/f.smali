.class public final LE3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/b;
.implements LC3/h;


# static fields
.field public static final synthetic h:[Li3/o;


# instance fields
.field public final a:LD3/e;

.field public final b:Lx3/e;

.field public final c:Lg4/h;

.field public final d:Lg4/i;

.field public final e:Lw3/f;

.field public final f:Lg4/i;

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, LE3/f;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v3

    const-string v4, "fqName"

    const-string v5, "getFqName()Lorg/jetbrains/kotlin/name/FqName;"

    invoke-direct {v0, v3, v4, v5}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    new-instance v3, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v4

    const-string v5, "type"

    const-string v6, "getType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v3, v4, v5, v6}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v3

    new-instance v4, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v5, "allValueArguments"

    const-string v6, "getAllValueArguments()Ljava/util/Map;"

    invoke-direct {v4, v2, v5, v6}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Li3/o;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, LE3/f;->h:[Li3/o;

    return-void
.end method

.method public constructor <init>(LD3/e;Lx3/e;Z)V
    .locals 4

    const-string v0, "c"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "javaAnnotation"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE3/f;->a:LD3/e;

    iput-object p2, p0, LE3/f;->b:Lx3/e;

    iget-object p1, p1, LD3/e;->d:Ljava/lang/Object;

    check-cast p1, LD3/a;

    iget-object v0, p1, LD3/a;->a:Lg4/o;

    new-instance v1, LE3/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LE3/e;-><init>(LE3/f;I)V

    check-cast v0, Lg4/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg4/h;

    invoke-direct {v2, v0, v1}, Lg4/h;-><init>(Lg4/l;Lc3/a;)V

    iput-object v2, p0, LE3/f;->c:Lg4/h;

    new-instance v0, LE3/e;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LE3/e;-><init>(LE3/f;I)V

    iget-object v1, p1, LD3/a;->a:Lg4/o;

    move-object v2, v1

    check-cast v2, Lg4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lg4/i;

    invoke-direct {v3, v2, v0}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v3, p0, LE3/f;->d:Lg4/i;

    iget-object p1, p1, LD3/a;->j:Lw3/d;

    invoke-virtual {p1, p2}, Lw3/d;->c(LH3/c;)Lw3/f;

    move-result-object p1

    iput-object p1, p0, LE3/f;->e:Lw3/f;

    new-instance p1, LE3/e;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LE3/e;-><init>(LE3/f;I)V

    check-cast v1, Lg4/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lg4/i;

    invoke-direct {p2, v1, p1}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object p2, p0, LE3/f;->f:Lg4/i;

    iput-boolean p3, p0, LE3/f;->g:Z

    return-void
.end method


# virtual methods
.method public final a()LQ3/c;
    .locals 2

    iget-object p0, p0, LE3/f;->c:Lg4/h;

    sget-object v0, LE3/f;->h:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "<this>"

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "p"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lg4/h;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ3/c;

    return-object p0
.end method

.method public final b()Ljava/util/Map;
    .locals 2

    iget-object p0, p0, LE3/f;->f:Lg4/i;

    sget-object v0, LE3/f;->h:[Li3/o;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final c(LH3/a;)LV3/g;
    .locals 8

    instance-of v0, p1, Lx3/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p0, LV3/h;->a:LV3/h;

    check-cast p1, Lx3/v;

    iget-object p1, p1, Lx3/v;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, LV3/h;->b(Ljava/lang/Object;Lr3/x;)LV3/g;

    move-result-object v1

    goto/16 :goto_5

    :cond_0
    instance-of v0, p1, Lx3/t;

    if-eqz v0, :cond_2

    check-cast p1, Lx3/t;

    iget-object p0, p1, Lx3/t;->b:Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    const-string v0, "enumClass"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object p0

    iget-object p1, p1, Lx3/t;->b:Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p1

    new-instance v1, LV3/i;

    invoke-direct {v1, p0, p1}, LV3/i;-><init>(LQ3/b;LQ3/f;)V

    goto/16 :goto_5

    :cond_2
    instance-of v0, p1, Lx3/h;

    const/4 v2, 0x0

    const-string v3, "type"

    iget-object v4, p0, LE3/f;->a:LD3/e;

    if-eqz v0, :cond_9

    check-cast p1, Lx3/h;

    move-object v0, p1

    check-cast v0, Lx3/f;

    iget-object v0, v0, Lx3/f;->a:LQ3/f;

    if-nez v0, :cond_3

    sget-object v0, LA3/z;->b:LQ3/f;

    :cond_3
    const-string v5, "argument.name ?: DEFAULT_ANNOTATION_MEMBER_NAME"

    invoke-static {v5, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lx3/h;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v5, p0, LE3/f;->d:Lg4/i;

    sget-object v6, LE3/f;->h:[Li3/o;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v5, v6}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh4/z;

    invoke-static {v3, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5}, Lh4/c;->i(Lh4/v;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-static {p0}, LX3/f;->d(Ls3/b;)Lr3/e;

    move-result-object v3

    invoke-static {v3}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-static {v0, v3}, Li3/x;->B(LQ3/f;Lr3/e;)Lu3/V;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Lu3/W;

    invoke-virtual {v0}, Lu3/W;->e()Lh4/v;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, v4, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->o:Lr3/x;

    invoke-interface {v0}, Lr3/x;->g()Lo3/i;

    move-result-object v0

    sget-object v3, Lj4/h;->F:Lj4/h;

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v3, v2}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo3/i;->h(Lh4/Z;)Lh4/z;

    move-result-object v0

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LH3/a;

    invoke-virtual {p0, v3}, LE3/f;->c(LH3/a;)LV3/g;

    move-result-object v3

    if-nez v3, :cond_7

    new-instance v3, LV3/t;

    invoke-direct {v3, v1}, LV3/g;-><init>(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    new-instance v1, LV3/w;

    invoke-direct {v1, v2, v0}, LV3/w;-><init>(Ljava/util/List;Lh4/v;)V

    goto/16 :goto_5

    :cond_9
    instance-of p0, p1, Lx3/g;

    if-eqz p0, :cond_a

    check-cast p1, Lx3/g;

    new-instance p0, Lx3/e;

    iget-object p1, p1, Lx3/g;->b:Ljava/lang/annotation/Annotation;

    invoke-direct {p0, p1}, Lx3/e;-><init>(Ljava/lang/annotation/Annotation;)V

    new-instance v1, LV3/a;

    new-instance p1, LE3/f;

    invoke-direct {p1, v4, p0, v2}, LE3/f;-><init>(LD3/e;Lx3/e;Z)V

    invoke-direct {v1, p1}, LV3/g;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_a
    instance-of p0, p1, Lx3/p;

    if-eqz p0, :cond_13

    check-cast p1, Lx3/p;

    iget-object p0, p1, Lx3/p;->b:Ljava/lang/Class;

    invoke-static {v3, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lx3/z;

    invoke-direct {p1, p0}, Lx3/z;-><init>(Ljava/lang/Class;)V

    goto :goto_3

    :cond_b
    instance-of p1, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_2

    :cond_c
    instance-of p1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz p1, :cond_d

    new-instance p1, Lx3/E;

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-direct {p1, p0}, Lx3/E;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_3

    :cond_d
    new-instance p1, Lx3/q;

    invoke-direct {p1, p0}, Lx3/q;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_3

    :cond_e
    :goto_2
    new-instance p1, Lx3/i;

    invoke-direct {p1, p0}, Lx3/i;-><init>(Ljava/lang/reflect/Type;)V

    :goto_3
    iget-object p0, v4, LD3/e;->h:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/p;

    const/4 v0, 0x2

    const/4 v3, 0x7

    invoke-static {v0, v2, v2, v1, v3}, LL2/b;->N(IZZLu3/j;I)LF3/a;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/messaging/p;->K(LH3/d;LF3/a;)Lh4/v;

    move-result-object p0

    invoke-static {p0}, Lh4/c;->i(Lh4/v;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_f
    move-object p1, p0

    move v0, v2

    :goto_4
    invoke-static {p1}, Lo3/i;->y(Lh4/v;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p1}, Lh4/v;->u0()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh4/N;

    invoke-virtual {p1}, Lh4/N;->b()Lh4/v;

    move-result-object p1

    const-string v3, "type.arguments.single().type"

    invoke-static {v3, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    invoke-virtual {p1}, Lh4/v;->J0()Lh4/J;

    move-result-object p1

    invoke-interface {p1}, Lh4/J;->i()Lr3/g;

    move-result-object p1

    instance-of v3, p1, Lr3/e;

    if-eqz v3, :cond_12

    invoke-static {p1}, LX3/f;->f(Lr3/g;)LQ3/b;

    move-result-object p1

    if-nez p1, :cond_11

    new-instance v1, LV3/r;

    new-instance p1, LV3/o;

    invoke-direct {p1, p0}, LV3/o;-><init>(Lh4/v;)V

    invoke-direct {v1, p1}, LV3/g;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    :cond_11
    new-instance v1, LV3/r;

    invoke-direct {v1, p1, v0}, LV3/r;-><init>(LQ3/b;I)V

    goto :goto_5

    :cond_12
    instance-of p0, p1, Lr3/Q;

    if-eqz p0, :cond_13

    new-instance v1, LV3/r;

    sget-object p0, Lo3/m;->a:LQ3/e;

    invoke-virtual {p0}, LQ3/e;->g()LQ3/c;

    move-result-object p0

    invoke-static {p0}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object p0

    invoke-direct {v1, p0, v2}, LV3/r;-><init>(LQ3/b;I)V

    :cond_13
    :goto_5
    return-object v1
.end method

.method public final e()Lh4/v;
    .locals 2

    iget-object p0, p0, LE3/f;->d:Lg4/i;

    sget-object v0, LE3/f;->h:[Li3/o;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/z;

    return-object p0
.end method

.method public final m()Lr3/N;
    .locals 0

    iget-object p0, p0, LE3/f;->e:Lw3/f;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, LS3/g;->c:LS3/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, LS3/g;->x(Ls3/b;Ls3/d;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
