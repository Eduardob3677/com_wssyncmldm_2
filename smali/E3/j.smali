.class public final LE3/j;
.super Lu3/l;
.source "SourceFile"

# interfaces
.implements LC3/c;


# instance fields
.field public final j:LD3/e;

.field public final k:Lx3/o;

.field public final l:Lr3/e;

.field public final m:LD3/e;

.field public final n:LQ2/h;

.field public final o:I

.field public final p:I

.field public final q:Lr3/f0;

.field public final r:Z

.field public final s:LE3/h;

.field public final t:LE3/q;

.field public final u:Lr3/L;

.field public final v:La4/i;

.field public final w:LE3/G;

.field public final x:LD3/c;

.field public final y:Lg4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "notifyAll"

    const-string v6, "toString"

    const-string v0, "equals"

    const-string v1, "hashCode"

    const-string v2, "getClass"

    const-string v3, "wait"

    const-string v4, "notify"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR2/B;->T([Ljava/lang/Object;)Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(LD3/e;Lr3/j;Lx3/o;Lr3/e;)V
    .locals 9

    const-string v0, "outerContext"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "containingDeclaration"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "jClass"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v1, v0, LD3/a;->a:Lg4/o;

    iget-object v2, p3, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v3

    iget-object v0, v0, LD3/a;->j:Lw3/d;

    invoke-virtual {v0, p3}, Lw3/d;->c(LH3/c;)Lw3/f;

    move-result-object v0

    invoke-direct {p0, v1, p2, v3, v0}, Lu3/l;-><init>(Lg4/o;Lr3/j;LQ3/f;Lr3/N;)V

    iput-object p1, p0, LE3/j;->j:LD3/e;

    iput-object p3, p0, LE3/j;->k:Lx3/o;

    iput-object p4, p0, LE3/j;->l:Lr3/e;

    const/4 p2, 0x4

    invoke-static {p1, p0, p3, p2}, LL2/b;->d(LD3/e;Lr3/f;LH3/e;I)LD3/e;

    move-result-object p1

    iput-object p1, p0, LE3/j;->m:LD3/e;

    iget-object v0, p1, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v1, v0, LD3/a;->g:LB3/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LE3/g;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, LE3/g;-><init>(LE3/j;I)V

    new-instance v3, LQ2/h;

    invoke-direct {v3, v1}, LQ2/h;-><init>(Lc3/a;)V

    iput-object v3, p0, LE3/j;->n:LQ2/h;

    invoke-virtual {v2}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v5

    :goto_0
    iput v1, p0, LE3/j;->o:I

    invoke-virtual {v2}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    const/4 v6, 0x0

    if-nez v1, :cond_8

    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Lx3/o;->f()Z

    move-result v1

    invoke-virtual {p3}, Lx3/o;->f()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    move v7, v6

    goto :goto_2

    :cond_5
    :goto_1
    move v7, v5

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v8

    xor-int/2addr v8, v5

    if-eqz v1, :cond_6

    move p2, v4

    goto :goto_4

    :cond_6
    if-eqz v7, :cond_7

    goto :goto_4

    :cond_7
    if-eqz v8, :cond_8

    move p2, v3

    goto :goto_4

    :cond_8
    :goto_3
    move p2, v5

    :goto_4
    iput p2, p0, LE3/j;->p:I

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result p2

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object p2, Lr3/c0;->c:Lr3/c0;

    goto :goto_5

    :cond_9
    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object p2, Lr3/Z;->c:Lr3/Z;

    goto :goto_5

    :cond_a
    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p2, Lv3/c;->c:Lv3/c;

    goto :goto_5

    :cond_b
    sget-object p2, Lv3/b;->c:Lv3/b;

    goto :goto_5

    :cond_c
    sget-object p2, Lv3/a;->c:Lv3/a;

    :goto_5
    iput-object p2, p0, LE3/j;->q:Lr3/f0;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_d

    new-instance v1, Lx3/o;

    invoke-direct {v1, p2}, Lx3/o;-><init>(Ljava/lang/Class;)V

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_e

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result p2

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p2

    if-nez p2, :cond_e

    move p2, v5

    goto :goto_7

    :cond_e
    move p2, v6

    :goto_7
    iput-boolean p2, p0, LE3/j;->r:Z

    new-instance p2, LE3/h;

    invoke-direct {p2, p0}, LE3/h;-><init>(LE3/j;)V

    iput-object p2, p0, LE3/j;->s:LE3/h;

    new-instance p2, LE3/q;

    if-eqz p4, :cond_f

    move v7, v5

    goto :goto_8

    :cond_f
    move v7, v6

    :goto_8
    const/4 v8, 0x0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, LE3/q;-><init>(LD3/e;Lr3/e;Lx3/o;ZLE3/q;)V

    iput-object p2, p0, LE3/j;->t:LE3/q;

    sget-object p4, Lr3/L;->e:Lr3/O;

    iget-object v1, v0, LD3/a;->u:Li4/k;

    check-cast v1, Li4/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LA3/d;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p4, "storageManager"

    iget-object v0, v0, LD3/a;->a:Lg4/o;

    invoke-static {p4, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p4, Lr3/L;

    invoke-direct {p4, p0, v0, v1}, Lr3/L;-><init>(Lr3/e;Lg4/o;Lc3/b;)V

    iput-object p4, p0, LE3/j;->u:Lr3/L;

    new-instance p4, La4/i;

    invoke-direct {p4, p2}, La4/i;-><init>(La4/o;)V

    iput-object p4, p0, LE3/j;->v:La4/i;

    new-instance p2, LE3/G;

    invoke-direct {p2, p1, p3, p0}, LE3/G;-><init>(LD3/e;Lx3/o;LC3/c;)V

    iput-object p2, p0, LE3/j;->w:LE3/G;

    invoke-static {p1, p3}, LW1/a;->g0(LD3/e;LH3/b;)LD3/c;

    move-result-object p1

    iput-object p1, p0, LE3/j;->x:LD3/c;

    new-instance p1, LE3/g;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, LE3/g;-><init>(LE3/j;I)V

    check-cast v0, Lg4/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lg4/i;

    invoke-direct {p2, v0, p1}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object p2, p0, LE3/j;->y:Lg4/i;

    return-void
.end method


# virtual methods
.method public final A0()Ljava/util/Collection;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, LR2/u;->c:LR2/u;

    iget v2, v0, LE3/j;->p:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const/4 v2, 0x7

    const/4 v4, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v4, v4, v11, v2}, LL2/b;->N(IZZLu3/j;I)LF3/a;

    move-result-object v2

    iget-object v3, v0, LE3/j;->k:Lx3/o;

    iget-object v3, v3, Lx3/o;->a:Ljava/lang/Class;

    const-string v5, "clazz"

    invoke-static {v5, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lo3/f;->a:Lcom/google/firebase/messaging/p;

    if-nez v5, :cond_0

    const-class v5, Ljava/lang/Class;

    :try_start_0
    new-instance v6, Lcom/google/firebase/messaging/p;

    const-string v7, "isSealed"

    invoke-virtual {v5, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    const-string v7, "getPermittedSubclasses"

    invoke-virtual {v5, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    const-string v7, "isRecord"

    invoke-virtual {v5, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    const-string v7, "getRecordComponents"

    invoke-virtual {v5, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    const/16 v17, 0x14

    move-object v12, v6

    invoke-direct/range {v12 .. v17}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    :catch_0
    new-instance v12, Lcom/google/firebase/messaging/p;

    const/16 v10, 0x14

    move-object v5, v12

    move-object v6, v11

    move-object v7, v11

    move-object v8, v11

    move-object v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_0
    sput-object v5, Lo3/f;->a:Lcom/google/firebase/messaging/p;

    :cond_0
    iget-object v5, v5, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v5, Ljava/lang/reflect/Method;

    if-nez v5, :cond_1

    move-object v3, v11

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type kotlin.Array<java.lang.Class<*>>"

    invoke-static {v5, v3}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v3, [Ljava/lang/Class;

    :goto_1
    if-eqz v3, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, v3

    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v6, v3, v4

    new-instance v7, Lx3/q;

    invoke-direct {v7, v6}, Lx3/q;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx3/q;

    iget-object v5, v0, LE3/j;->m:LD3/e;

    iget-object v5, v5, LD3/e;->h:Ljava/lang/Object;

    check-cast v5, Lcom/google/firebase/messaging/p;

    invoke-virtual {v5, v4, v2}, Lcom/google/firebase/messaging/p;->K(LH3/d;LF3/a;)Lh4/v;

    move-result-object v4

    invoke-virtual {v4}, Lh4/v;->J0()Lh4/J;

    move-result-object v4

    invoke-interface {v4}, Lh4/J;->i()Lr3/g;

    move-result-object v4

    instance-of v5, v4, Lr3/e;

    if-eqz v5, :cond_4

    check-cast v4, Lr3/e;

    goto :goto_4

    :cond_4
    move-object v4, v11

    :goto_4
    if-eqz v4, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v0, LE3/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v3, v0}, LR2/m;->e1(Ljava/util/AbstractCollection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    :cond_6
    return-object v1
.end method

.method public final D0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final H()Lh4/J;
    .locals 0

    iget-object p0, p0, LE3/j;->s:LE3/h;

    return-object p0
.end method

.method public final J(Li4/f;)La4/o;
    .locals 1

    iget-object p0, p0, LE3/j;->u:Lr3/L;

    iget-object p1, p0, Lr3/L;->a:Lr3/e;

    invoke-static {p1}, LX3/f;->j(Lr3/j;)Lr3/x;

    iget-object p0, p0, Lr3/L;->d:Lg4/i;

    sget-object p1, Lr3/L;->f:[Li3/o;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La4/o;

    check-cast p0, LE3/q;

    return-object p0
.end method

.method public final L()I
    .locals 0

    iget p0, p0, LE3/j;->o:I

    return p0
.end method

.method public final N()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final R()La4/o;
    .locals 0

    iget-object p0, p0, LE3/j;->v:La4/i;

    return-object p0
.end method

.method public final S()Lr3/S;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final W()Lu3/k;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final X()La4/o;
    .locals 0

    iget-object p0, p0, LE3/j;->w:LE3/G;

    return-object p0
.end method

.method public final c()LA3/p;
    .locals 2

    sget-object v0, Lr3/n;->a:LA3/p;

    iget-object v1, p0, LE3/j;->q:Lr3/f0;

    invoke-static {v1, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, LE3/j;->k:Lx3/o;

    iget-object p0, p0, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lx3/o;

    invoke-direct {v0, p0}, Lx3/o;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object p0, LA3/q;->a:LA3/p;

    const-string v0, "{\n            JavaDescri\u2026KAGE_VISIBILITY\n        }"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, LL2/b;->O(Lr3/f0;)LA3/p;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic f0()La4/o;
    .locals 0

    invoke-virtual {p0}, LE3/j;->u0()LE3/q;

    move-result-object p0

    return-object p0
.end method

.method public final h0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, LE3/j;->p:I

    return p0
.end method

.method public final j()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final k()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, LE3/j;->t:LE3/q;

    iget-object p0, p0, LE3/q;->q:Lg4/i;

    invoke-virtual {p0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final s()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LE3/j;->y:Lg4/i;

    invoke-virtual {p0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final t()Ls3/h;
    .locals 0

    iget-object p0, p0, LE3/j;->x:LD3/c;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lazy Java class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LX3/f;->h(Lr3/j;)LQ3/e;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u0()LE3/q;
    .locals 1

    invoke-super {p0}, Lu3/b;->f0()La4/o;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.load.java.lazy.descriptors.LazyJavaClassMemberScope"

    invoke-static {v0, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, LE3/q;

    return-object p0
.end method

.method public final v()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final y()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final z()Z
    .locals 0

    iget-boolean p0, p0, LE3/j;->r:Z

    return p0
.end method
