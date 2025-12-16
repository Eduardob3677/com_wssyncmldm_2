.class public final Lq3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt3/b;
.implements Lt3/d;


# static fields
.field public static final synthetic g:[Li3/o;


# instance fields
.field public final a:Lr3/x;

.field public final b:Lg4/i;

.field public final c:Lh4/z;

.field public final d:Lg4/i;

.field public final e:Lg4/e;

.field public final f:Lg4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Lq3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v3

    const-string v4, "settings"

    const-string v5, "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$Settings;"

    invoke-direct {v0, v3, v4, v5}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    new-instance v3, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v4

    const-string v5, "cloneableType"

    const-string v6, "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v3, v4, v5, v6}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v3

    new-instance v4, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v5, "notConsideredDeprecation"

    const-string v6, "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;"

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

    sput-object v2, Lq3/n;->g:[Li3/o;

    return-void
.end method

.method public constructor <init>(Lu3/C;Lg4/o;LB3/k;)V
    .locals 9

    const-string v0, "storageManager"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/n;->a:Lr3/x;

    move-object v0, p2

    check-cast v0, Lg4/l;

    new-instance v1, Lg4/i;

    invoke-direct {v1, v0, p3}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v1, p0, Lq3/n;->b:Lg4/i;

    new-instance p3, LQ3/c;

    const-string v1, "java.io"

    invoke-direct {p3, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v3, Lq3/l;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p3, v1}, Lq3/l;-><init>(Lr3/x;LQ3/c;I)V

    new-instance p1, Lh4/x;

    new-instance p3, Lq3/m;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lq3/m;-><init>(Lq3/n;I)V

    invoke-direct {p1, p2, p3}, Lh4/x;-><init>(Lg4/o;Lc3/a;)V

    invoke-static {p1}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-instance p1, Lu3/m;

    const-string p3, "Serializable"

    invoke-static {p3}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x2

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lu3/m;-><init>(Lr3/j;LQ3/f;IILjava/util/List;Lg4/o;)V

    sget-object p3, La4/n;->b:La4/n;

    sget-object v1, LR2/w;->c:LR2/w;

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v1, v2}, Lu3/m;->u0(La4/o;Ljava/util/Set;Lu3/k;)V

    invoke-virtual {p1}, Lu3/b;->q()Lh4/z;

    move-result-object p1

    iput-object p1, p0, Lq3/n;->c:Lh4/z;

    new-instance p1, LB3/c;

    const/16 p3, 0xe

    invoke-direct {p1, p0, p3, p2}, LB3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance p2, Lg4/i;

    invoke-direct {p2, v0, p1}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object p2, p0, Lq3/n;->d:Lg4/i;

    new-instance p1, Lg4/e;

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {p2, v2, p3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-direct {p1, v0, p2}, Lg4/e;-><init>(Lg4/l;Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object p1, p0, Lq3/n;->e:Lg4/e;

    new-instance p1, Lq3/m;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lq3/m;-><init>(Lq3/n;I)V

    new-instance p2, Lg4/i;

    invoke-direct {p2, v0, p1}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object p2, p0, Lq3/n;->f:Lg4/i;

    return-void
.end method


# virtual methods
.method public final a(Lf4/i;)Ljava/util/Collection;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "classDescriptor"

    invoke-static {v2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, LX3/f;->h(Lr3/j;)LQ3/e;

    move-result-object p1

    sget-object v2, Lq3/p;->a:Ljava/util/LinkedHashSet;

    sget-object v2, Lo3/m;->g:LQ3/e;

    invoke-static {p1, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lo3/m;->c0:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v0

    :goto_1
    iget-object v4, p0, Lq3/n;->c:Lh4/z;

    if-eqz v3, :cond_2

    iget-object p0, p0, Lq3/n;->d:Lg4/i;

    sget-object p1, Lq3/n;->g:[Li3/o;

    aget-object p1, p1, v0

    invoke-static {p0, p1}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/z;

    const-string p1, "cloneableType"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lh4/v;

    aput-object p0, p1, v1

    aput-object v4, p1, v0

    invoke-static {p1}, LR2/n;->y0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_2
    invoke-static {p1, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lo3/m;->c0:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    sget-object p0, Lq3/d;->a:Ljava/lang/String;

    invoke-static {p1}, Lq3/d;->f(LQ3/e;)LQ3/b;

    move-result-object p0

    if-nez p0, :cond_4

    :catch_0
    move v0, v1

    goto :goto_2

    :cond_4
    :try_start_0
    invoke-virtual {p0}, LQ3/b;->b()LQ3/c;

    move-result-object p0

    invoke-virtual {p0}, LQ3/c;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-class p1, Ljava/io/Serializable;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    invoke-static {v4}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_6
    sget-object p0, LR2/u;->c:LR2/u;

    :goto_3
    return-object p0
.end method

.method public final b(Lf4/i;)Ljava/util/Collection;
    .locals 14

    sget-object v0, LR2/u;->c:LR2/u;

    const/4 v1, 0x1

    iget v2, p1, Lf4/i;->m:I

    if-ne v2, v1, :cond_d

    invoke-virtual {p0}, Lq3/n;->g()Lq3/h;

    move-result-object v2

    iget-boolean v2, v2, Lq3/h;->b:Z

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, p1}, Lq3/n;->f(Lr3/e;)LE3/j;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-static {v2}, LX3/f;->g(Lr3/j;)LQ3/c;

    move-result-object v3

    sget-object v4, Lq3/b;->f:Lq3/b;

    invoke-static {v3, v4}, Lq3/e;->b(LQ3/c;Lo3/i;)Lr3/e;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v0

    :cond_2
    invoke-static {v3, v2}, Lp0/a;->g(Lr3/e;Lu3/b;)Lh4/K;

    move-result-object v0

    invoke-static {v0}, Lh4/V;->e(Lh4/S;)Lh4/V;

    move-result-object v0

    iget-object v4, v2, LE3/j;->t:LE3/q;

    iget-object v4, v4, LE3/q;->q:Lg4/i;

    invoke-virtual {v4}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lu3/k;

    move-object v10, v9

    check-cast v10, Lu3/v;

    invoke-virtual {v10}, Lu3/v;->c()LA3/p;

    move-result-object v11

    iget-object v11, v11, LA3/p;->a:Lr3/f0;

    iget-boolean v11, v11, Lr3/f0;->b:Z

    if-eqz v11, :cond_3

    invoke-interface {v3}, Lr3/e;->k()Ljava/util/Collection;

    move-result-object v11

    const-string v12, "defaultKotlinVersion.constructors"

    invoke-static {v12, v11}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lu3/k;

    const-string v13, "it"

    invoke-static {v13, v12}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, v0}, Lu3/k;->g1(Lh4/V;)Lu3/k;

    move-result-object v13

    invoke-static {v12, v13}, LT3/n;->j(Lr3/b;Lr3/b;)I

    move-result v12

    if-ne v12, v1, :cond_5

    goto :goto_0

    :cond_6
    :goto_1
    invoke-virtual {v10}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v1, :cond_8

    invoke-virtual {v10}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v10

    const-string v11, "valueParameters"

    invoke-static {v11, v10}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v10}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lu3/V;

    check-cast v10, Lu3/W;

    invoke-virtual {v10}, Lu3/W;->e()Lh4/v;

    move-result-object v10

    invoke-virtual {v10}, Lh4/v;->J0()Lh4/J;

    move-result-object v10

    invoke-interface {v10}, Lh4/J;->i()Lr3/g;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-static {v10}, LX3/f;->h(Lr3/j;)LQ3/e;

    move-result-object v7

    :cond_7
    invoke-static {p1}, LX3/f;->h(Lr3/j;)LQ3/e;

    move-result-object v10

    invoke-static {v7, v10}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-static {v9}, Lo3/i;->C(Lr3/s;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lq3/p;->e:Ljava/util/LinkedHashSet;

    invoke-static {v9, v8}, LW1/a;->n(Lr3/s;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, LL2/b;->K(Lr3/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v5}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu3/k;

    move-object v6, v5

    check-cast v6, Lu3/v;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lh4/V;->b:Lh4/V;

    invoke-virtual {v6, v9}, Lu3/v;->W0(Lh4/V;)Lu3/u;

    move-result-object v6

    invoke-virtual {v6, p1}, Lu3/u;->u(Lr3/j;)Lr3/r;

    invoke-virtual {p1}, Lu3/b;->q()Lh4/z;

    move-result-object v9

    invoke-virtual {v6, v9}, Lu3/u;->I(Lh4/v;)Lr3/r;

    iput-boolean v1, v6, Lu3/u;->q:Z

    invoke-virtual {v0}, Lh4/V;->g()Lh4/S;

    move-result-object v9

    if-eqz v9, :cond_b

    iput-object v9, v6, Lu3/u;->c:Lh4/S;

    sget-object v9, Lq3/p;->f:Ljava/util/LinkedHashSet;

    invoke-static {v5, v8}, LW1/a;->n(Lr3/s;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, LL2/b;->K(Lr3/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lq3/n;->f:Lg4/i;

    sget-object v9, Lq3/n;->g:[Li3/o;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-static {v5, v9}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls3/h;

    invoke-virtual {v6, v5}, Lu3/u;->y(Ls3/h;)Lr3/r;

    :cond_a
    iget-object v5, v6, Lu3/u;->z:Lu3/v;

    invoke-virtual {v5, v6}, Lu3/v;->T0(Lu3/u;)Lu3/v;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassConstructorDescriptor"

    invoke-static {v6, v5}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v5, Lu3/k;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    const/16 p0, 0x25

    invoke-static {p0}, Lu3/u;->b(I)V

    throw v7

    :cond_c
    return-object v3

    :cond_d
    :goto_3
    return-object v0
.end method

.method public final c(Lf4/i;)Ljava/util/Collection;
    .locals 2

    const-string v0, "classDescriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lq3/n;->g()Lq3/h;

    move-result-object v0

    iget-boolean v0, v0, Lq3/h;->b:Z

    sget-object v1, LR2/w;->c:LR2/w;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lq3/n;->f(Lr3/e;)LE3/j;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, LE3/j;->u0()LE3/q;

    move-result-object p0

    invoke-virtual {p0}, LE3/C;->a()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final d(Lf4/i;Lf4/s;)Z
    .locals 4

    const-string v0, "classDescriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lq3/n;->f(Lr3/e;)LE3/j;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, LK3/c;->t()Ls3/h;

    move-result-object v1

    sget-object v2, Lt3/e;->a:LQ3/c;

    invoke-interface {v1, v2}, Ls3/h;->b(LQ3/c;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lq3/n;->g()Lq3/h;

    move-result-object p0

    iget-boolean p0, p0, Lq3/h;->b:Z

    const/4 v1, 0x0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x3

    invoke-static {p2, p0}, LW1/a;->n(Lr3/s;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, LE3/j;->u0()LE3/q;

    move-result-object p1

    invoke-virtual {p2}, Lu3/o;->getName()LQ3/f;

    move-result-object p2

    const-string v3, "functionDescriptor.name"

    invoke-static {v3, p2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lz3/b;->c:Lz3/b;

    invoke-virtual {p1, p2, v3}, LE3/q;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lu3/N;

    invoke-static {p2, p0}, LW1/a;->n(Lr3/s;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :goto_0
    return v0
.end method

.method public final e(LQ3/f;Lf4/i;)Ljava/util/Collection;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "name"

    invoke-static {v6, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "classDescriptor"

    invoke-static {v6, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, Lq3/a;->e:LQ3/f;

    invoke-static {v1, v6}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    sget-object v7, LR2/u;->c:LR2/u;

    sget-object v8, Lq3/n;->g:[Li3/o;

    if-eqz v6, :cond_4

    sget-object v6, Lo3/i;->e:LQ3/f;

    sget-object v6, Lo3/m;->g:LQ3/e;

    invoke-static {v2, v6}, Lo3/i;->b(Lr3/g;LQ3/e;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static/range {p2 .. p2}, Lo3/i;->r(Lr3/g;)Lo3/k;

    move-result-object v6

    if-eqz v6, :cond_4

    :cond_0
    iget-object v3, v2, Lf4/i;->g:LL3/j;

    iget-object v3, v3, LL3/j;->s:Ljava/util/List;

    const-string v4, "classDescriptor.classProto.functionList"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LL3/y;

    iget-object v6, v2, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v6, v6, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v6, LN3/f;

    iget v4, v4, LL3/y;->h:I

    invoke-static {v6, v4}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v4

    sget-object v6, Lq3/a;->e:LQ3/f;

    invoke-static {v4, v6}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v7

    :cond_3
    :goto_0
    iget-object v0, v0, Lq3/n;->d:Lg4/i;

    aget-object v3, v8, v5

    invoke-static {v0, v3}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/z;

    invoke-virtual {v0}, Lh4/v;->q0()La4/o;

    move-result-object v0

    sget-object v3, Lz3/b;->c:Lz3/b;

    invoke-interface {v0, v1, v3}, La4/o;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, LR2/m;->a1(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/N;

    invoke-interface {v0}, Lr3/s;->e0()Lr3/r;

    move-result-object v0

    invoke-interface {v0, v2}, Lr3/r;->u(Lr3/j;)Lr3/r;

    sget-object v1, Lr3/n;->e:LA3/p;

    invoke-interface {v0, v1}, Lr3/r;->B(LA3/p;)Lr3/r;

    invoke-virtual/range {p2 .. p2}, Lu3/b;->q()Lh4/z;

    move-result-object v1

    invoke-interface {v0, v1}, Lr3/r;->I(Lh4/v;)Lr3/r;

    invoke-virtual/range {p2 .. p2}, Lu3/b;->H0()Lu3/w;

    move-result-object v1

    invoke-interface {v0, v1}, Lr3/r;->f(Lu3/w;)Lr3/r;

    invoke-interface {v0}, Lr3/r;->j()Lr3/s;

    move-result-object v0

    invoke-static {v0}, Ld3/i;->b(Ljava/lang/Object;)V

    check-cast v0, Lu3/N;

    invoke-static {v0}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lq3/n;->g()Lq3/h;

    move-result-object v6

    iget-boolean v6, v6, Lq3/h;->b:Z

    if-nez v6, :cond_5

    return-object v7

    :cond_5
    new-instance v6, LE3/E;

    invoke-direct {v6, v1, v5}, LE3/E;-><init>(LQ3/f;I)V

    invoke-virtual {v0, v2}, Lq3/n;->f(Lr3/e;)LE3/j;

    move-result-object v1

    const/4 v10, 0x3

    const-string v11, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    if-nez v1, :cond_6

    goto/16 :goto_b

    :cond_6
    invoke-static {v1}, LX3/f;->g(Lr3/j;)LQ3/c;

    move-result-object v12

    sget-object v13, Lq3/b;->f:Lq3/b;

    const-string v14, "builtIns"

    invoke-static {v14, v13}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v12, v13}, Lq3/e;->b(LQ3/c;Lo3/i;)Lr3/e;

    move-result-object v12

    if-nez v12, :cond_7

    sget-object v12, LR2/w;->c:LR2/w;

    goto :goto_1

    :cond_7
    sget-object v14, Lq3/d;->a:Ljava/lang/String;

    invoke-static {v12}, LX3/f;->h(Lr3/j;)LQ3/e;

    move-result-object v14

    sget-object v15, Lq3/d;->k:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LQ3/c;

    if-nez v14, :cond_8

    invoke-static {v12}, LL2/b;->I(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v12

    goto :goto_1

    :cond_8
    invoke-virtual {v13, v14}, Lo3/i;->i(LQ3/c;)Lr3/e;

    move-result-object v13

    new-array v14, v3, [Lr3/e;

    aput-object v12, v14, v4

    aput-object v13, v14, v5

    invoke-static {v14}, LR2/n;->y0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    :goto_1
    instance-of v13, v12, Ljava/util/List;

    if-eqz v13, :cond_a

    move-object v13, v12

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_2

    :cond_9
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v5

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    goto :goto_4

    :cond_a
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_b

    :goto_2
    const/4 v13, 0x0

    goto :goto_4

    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    goto :goto_3

    :cond_c
    move-object v13, v14

    :goto_4
    check-cast v13, Lr3/e;

    if-nez v13, :cond_d

    goto/16 :goto_b

    :cond_d
    sget v7, Lq4/h;->e:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v12}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v14

    invoke-direct {v7, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lr3/e;

    invoke-static {v14}, LX3/f;->g(Lr3/j;)LQ3/c;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    new-instance v12, Lq4/h;

    invoke-direct {v12}, Lq4/h;-><init>()V

    invoke-virtual {v12, v7}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    sget-object v7, Lq3/d;->a:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, LT3/e;->g(Lr3/j;)LQ3/e;

    move-result-object v7

    sget-object v14, Lq3/d;->j:Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v1}, LX3/f;->g(Lr3/j;)LQ3/c;

    move-result-object v14

    new-instance v15, LB3/c;

    const/16 v4, 0xf

    invoke-direct {v15, v1, v4, v13}, LB3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v1, v0, Lq3/n;->e:Lg4/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lg4/g;

    invoke-direct {v4, v14, v15}, Lg4/g;-><init>(Ljava/lang/Object;Lc3/a;)V

    invoke-virtual {v1, v4}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    check-cast v1, Lr3/e;

    invoke-interface {v1}, Lr3/e;->f0()La4/o;

    move-result-object v1

    const-string v4, "fakeJavaClassDescriptor.unsubstitutedMemberScope"

    invoke-static {v4, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, LE3/E;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lu3/N;

    invoke-virtual {v13}, Lu3/v;->k0()I

    move-result v14

    if-eq v14, v5, :cond_11

    :cond_10
    :goto_7
    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_11
    invoke-virtual {v13}, Lu3/v;->c()LA3/p;

    move-result-object v14

    iget-object v14, v14, LA3/p;->a:Lr3/f0;

    iget-boolean v14, v14, Lr3/f0;->b:Z

    if-nez v14, :cond_12

    goto :goto_7

    :cond_12
    invoke-static {v13}, Lo3/i;->C(Lr3/s;)Z

    move-result v14

    if-eqz v14, :cond_13

    goto :goto_7

    :cond_13
    invoke-virtual {v13}, Lu3/v;->p()Ljava/util/Collection;

    move-result-object v14

    const-string v15, "analogueMember.overriddenDescriptors"

    invoke-static {v15, v14}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_14

    goto :goto_8

    :cond_14
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_15
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lr3/s;

    invoke-interface {v15}, Lr3/j;->l()Lr3/j;

    move-result-object v15

    const-string v9, "it.containingDeclaration"

    invoke-static {v9, v15}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v15}, LX3/f;->g(Lr3/j;)LQ3/c;

    move-result-object v9

    invoke-virtual {v12, v9}, Lq4/h;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    goto :goto_7

    :cond_16
    :goto_8
    invoke-virtual {v13}, Lu3/p;->l()Lr3/j;

    move-result-object v9

    invoke-static {v11, v9}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v9, Lr3/e;

    invoke-static {v13, v10}, LW1/a;->n(Lr3/s;I)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lq3/p;->d:Ljava/util/LinkedHashSet;

    invoke-static {v9, v14}, LL2/b;->K(Lr3/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v15, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v7

    if-eqz v9, :cond_17

    move v9, v5

    goto :goto_9

    :cond_17
    invoke-static {v13}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sget-object v13, Lq3/e;->c:Lq3/e;

    new-instance v14, LA3/d;

    const/16 v15, 0x15

    invoke-direct {v14, v15, v0}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-static {v9, v13, v14}, Lq4/k;->h(Ljava/util/List;Lq4/a;Lc3/b;)Ljava/lang/Boolean;

    move-result-object v9

    const-string v13, "private fun SimpleFuncti\u2026scriptor)\n        }\n    }"

    invoke-static {v13, v9}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    :goto_9
    if-nez v9, :cond_10

    move v9, v5

    :goto_a
    if-eqz v9, :cond_f

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_18
    move-object v7, v4

    :goto_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lu3/N;

    invoke-virtual {v6}, Lu3/p;->l()Lr3/j;

    move-result-object v7

    invoke-static {v11, v7}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v7, Lr3/e;

    invoke-static {v7, v2}, Lp0/a;->g(Lr3/e;Lu3/b;)Lh4/K;

    move-result-object v7

    invoke-static {v7}, Lh4/V;->e(Lh4/S;)Lh4/V;

    move-result-object v7

    invoke-virtual {v6, v7}, Lu3/v;->b(Lh4/V;)Lr3/s;

    move-result-object v7

    const-string v9, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.SimpleFunctionDescriptor"

    invoke-static {v9, v7}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v7, Lu3/N;

    invoke-interface {v7}, Lr3/s;->e0()Lr3/r;

    move-result-object v7

    invoke-interface {v7, v2}, Lr3/r;->u(Lr3/j;)Lr3/r;

    invoke-virtual/range {p2 .. p2}, Lu3/b;->H0()Lu3/w;

    move-result-object v9

    invoke-interface {v7, v9}, Lr3/r;->f(Lu3/w;)Lr3/r;

    invoke-interface {v7}, Lr3/r;->l()Lr3/r;

    invoke-virtual {v6}, Lu3/p;->l()Lr3/j;

    move-result-object v9

    invoke-static {v11, v9}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v9, Lr3/e;

    invoke-static {v6, v10}, LW1/a;->n(Lr3/s;I)Ljava/lang/String;

    move-result-object v6

    new-instance v12, LQ2/a;

    invoke-direct {v12, v5}, LQ2/a;-><init>(I)V

    invoke-static {v9}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v13, Lc1/w;

    invoke-direct {v13, v0}, Lc1/w;-><init>(Ljava/lang/Object;)V

    new-instance v14, LX3/d;

    invoke-direct {v14, v6, v12, v5}, LX3/d;-><init>(Ljava/lang/Object;Ljava/io/Serializable;I)V

    invoke-static {v9, v13, v14}, Lq4/k;->f(Ljava/util/List;Lq4/a;Lq4/k;)Ljava/lang/Object;

    move-result-object v6

    const-string v9, "jvmDescriptor = computeJ\u2026CONSIDERED\n            })"

    invoke-static {v9, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v6, Lq3/k;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_1c

    if-eq v6, v3, :cond_1b

    if-eq v6, v10, :cond_1a

    goto :goto_f

    :cond_1a
    :goto_d
    const/4 v6, 0x0

    goto :goto_10

    :cond_1b
    iget-object v6, v0, Lq3/n;->f:Lg4/i;

    aget-object v9, v8, v3

    invoke-static {v6, v9}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls3/h;

    invoke-interface {v7, v6}, Lr3/r;->y(Ls3/h;)Lr3/r;

    goto :goto_f

    :cond_1c
    invoke-virtual/range {p2 .. p2}, Lf4/i;->i()I

    move-result v6

    if-ne v6, v5, :cond_1d

    invoke-virtual/range {p2 .. p2}, Lf4/i;->L()I

    move-result v6

    if-eq v6, v10, :cond_1d

    move v6, v5

    goto :goto_e

    :cond_1d
    const/4 v6, 0x0

    :goto_e
    if-eqz v6, :cond_1e

    goto :goto_d

    :cond_1e
    invoke-interface {v7}, Lr3/r;->E()Lr3/r;

    :goto_f
    invoke-interface {v7}, Lr3/r;->j()Lr3/s;

    move-result-object v6

    invoke-static {v6}, Ld3/i;->b(Ljava/lang/Object;)V

    check-cast v6, Lu3/N;

    :goto_10
    if-eqz v6, :cond_19

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_1f
    return-object v1

    :cond_20
    invoke-static {v10}, Lg4/e;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final f(Lr3/e;)LE3/j;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    sget-object v1, Lo3/i;->e:LQ3/f;

    sget-object v1, Lo3/m;->a:LQ3/e;

    invoke-static {p1, v1}, Lo3/i;->b(Lr3/g;LQ3/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lo3/i;->H(Lr3/j;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, LX3/f;->h(Lr3/j;)LQ3/e;

    move-result-object p1

    invoke-virtual {p1}, LQ3/e;->d()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    sget-object v1, Lq3/d;->a:Ljava/lang/String;

    invoke-static {p1}, Lq3/d;->f(LQ3/e;)LQ3/b;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, LQ3/b;->b()LQ3/c;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lq3/n;->g()Lq3/h;

    move-result-object p0

    iget-object p0, p0, Lq3/h;->a:Lr3/x;

    invoke-static {p0, p1}, Lo3/f;->r(Lr3/x;LQ3/c;)Lr3/e;

    move-result-object p0

    instance-of p1, p0, LE3/j;

    if-eqz p1, :cond_4

    move-object v0, p0

    check-cast v0, LE3/j;

    :cond_4
    :goto_0
    return-object v0

    :cond_5
    const/16 p0, 0x6c

    invoke-static {p0}, Lo3/i;->a(I)V

    throw v0
.end method

.method public final g()Lq3/h;
    .locals 2

    iget-object p0, p0, Lq3/n;->b:Lg4/i;

    sget-object v0, Lq3/n;->g:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq3/h;

    return-object p0
.end method
