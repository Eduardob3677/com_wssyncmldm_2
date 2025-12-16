.class public final LE3/h;
.super Lh4/b;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:Lg4/i;

.field public final synthetic e:Lu3/b;


# direct methods
.method public constructor <init>(LE3/j;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, LE3/h;->c:I

    iput-object p1, p0, LE3/h;->e:Lu3/b;

    iget-object v0, p1, LE3/j;->m:LD3/e;

    iget-object v0, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->a:Lg4/o;

    invoke-direct {p0, v0}, Lh4/b;-><init>(Lg4/o;)V

    iget-object v0, p1, LE3/j;->m:LD3/e;

    iget-object v0, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->a:Lg4/o;

    new-instance v1, LE3/g;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, LE3/g;-><init>(LE3/j;I)V

    check-cast v0, Lg4/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lg4/i;

    invoke-direct {p1, v0, v1}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object p1, p0, LE3/h;->d:Lg4/i;

    return-void
.end method

.method public constructor <init>(Lf4/i;)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, LE3/h;->c:I

    iput-object p1, p0, LE3/h;->e:Lu3/b;

    iget-object v0, p1, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->a:Lg4/o;

    invoke-direct {p0, v0}, Lh4/b;-><init>(Lg4/o;)V

    iget-object v0, p1, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->a:Lg4/o;

    new-instance v1, Lf4/h;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lf4/h;-><init>(Lf4/i;I)V

    check-cast v0, Lg4/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lg4/i;

    invoke-direct {p1, v0, v1}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object p1, p0, LE3/h;->d:Lg4/i;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Collection;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string v2, "<this>"

    iget-object v3, v0, LE3/h;->e:Lu3/b;

    const/4 v4, 0x1

    iget v0, v0, LE3/h;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast v3, Lf4/i;

    iget-object v0, v3, Lf4/i;->g:LL3/j;

    iget-object v5, v3, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v6, v5, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    check-cast v6, Ls2/c;

    invoke-static {v2, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "typeTable"

    invoke-static {v2, v6}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, LL3/j;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    iget-object v0, v0, LL3/j;->k:Ljava/util/List;

    const-string v2, "supertypeIdList"

    invoke-static {v2, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    const-string v8, "it"

    invoke-static {v8, v7}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ls2/c;->l(I)LL3/Q;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LL3/Q;

    iget-object v7, v5, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    check-cast v7, LJ3/c;

    invoke-virtual {v7, v6}, LJ3/c;->o(LL3/Q;)Lh4/v;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v2, v5, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v2, Ld4/i;

    iget-object v2, v2, Ld4/i;->n:Lt3/b;

    invoke-interface {v2, v3}, Lt3/b;->a(Lf4/i;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v0, v2}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh4/v;

    invoke-virtual {v7}, Lh4/v;->J0()Lh4/J;

    move-result-object v7

    invoke-interface {v7}, Lh4/J;->i()Lr3/g;

    move-result-object v7

    instance-of v8, v7, Lr3/A;

    if-eqz v8, :cond_4

    check-cast v7, Lr3/A;

    goto :goto_4

    :cond_4
    move-object v7, v1

    :goto_4
    if-eqz v7, :cond_3

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_8

    iget-object v1, v5, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v1, Ld4/i;

    iget-object v1, v1, Ld4/i;->h:Ld4/k;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr3/A;

    invoke-static {v5}, LX3/f;->f(Lr3/g;)LQ3/b;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, LQ3/b;->b()LQ3/c;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, LQ3/c;->b()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_6
    invoke-virtual {v5}, Lu3/b;->getName()LQ3/f;

    move-result-object v5

    invoke-virtual {v5}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    invoke-interface {v1, v3, v4}, Ld4/k;->b(Lu3/b;Ljava/util/ArrayList;)V

    :cond_8
    invoke-static {v0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_0
    check-cast v3, LE3/j;

    iget-object v0, v3, LE3/j;->k:Lx3/o;

    iget-object v0, v0, Lx3/o;->a:Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    invoke-static {v0, v5}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    sget-object v13, LR2/u;->c:LR2/u;

    const/4 v7, 0x2

    if-eqz v6, :cond_9

    move-object v5, v13

    goto :goto_9

    :cond_9
    new-instance v6, Lc1/w;

    invoke-direct {v6, v7}, Lc1/w;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v8

    if-nez v8, :cond_a

    goto :goto_7

    :cond_a
    move-object v5, v8

    :goto_7
    invoke-virtual {v6, v5}, Lc1/w;->Q(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v5, "klass.genericInterfaces"

    invoke-static {v5, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Lc1/w;->R(Ljava/lang/Object;)V

    iget-object v0, v6, Lc1/w;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LR2/n;->y0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Type;

    new-instance v8, Lx3/q;

    invoke-direct {v8, v6}, Lx3/q;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    :goto_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-direct {v6, v14}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v8, LA3/z;->n:LQ3/c;

    const-string v9, "PURELY_IMPLEMENTS_ANNOTATION"

    invoke-static {v9, v8}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v3, LE3/j;->x:LD3/c;

    invoke-virtual {v9, v8}, LD3/c;->f(LQ3/c;)Ls3/b;

    move-result-object v8

    if-nez v8, :cond_d

    :cond_c
    :goto_a
    move-object v7, v1

    goto :goto_e

    :cond_d
    invoke-interface {v8}, Ls3/b;->b()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-static {v8}, LR2/m;->c1(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, LV3/v;

    if-eqz v9, :cond_e

    check-cast v8, LV3/v;

    goto :goto_b

    :cond_e
    move-object v8, v1

    :goto_b
    if-eqz v8, :cond_c

    iget-object v8, v8, LV3/g;->a:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_f

    goto :goto_a

    :cond_f
    move v10, v4

    move v9, v14

    :goto_c
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x3

    if-ge v9, v11, :cond_15

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v10}, Lk/Q0;->f(I)I

    move-result v15

    if-eqz v15, :cond_12

    if-eq v15, v4, :cond_10

    if-eq v15, v7, :cond_12

    goto :goto_d

    :cond_10
    const/16 v15, 0x2e

    if-ne v11, v15, :cond_11

    move v10, v12

    goto :goto_d

    :cond_11
    invoke-static {v11}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v11

    if-nez v11, :cond_14

    goto :goto_a

    :cond_12
    invoke-static {v11}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v10

    if-nez v10, :cond_13

    goto :goto_a

    :cond_13
    move v10, v7

    :cond_14
    :goto_d
    add-int/2addr v9, v4

    goto :goto_c

    :cond_15
    if-eq v10, v12, :cond_c

    new-instance v7, LQ3/c;

    invoke-direct {v7, v8}, LQ3/c;-><init>(Ljava/lang/String;)V

    :goto_e
    if-eqz v7, :cond_16

    invoke-virtual {v7}, LQ3/c;->d()Z

    move-result v8

    if-nez v8, :cond_16

    sget-object v8, Lo3/n;->i:LQ3/f;

    invoke-virtual {v7, v8}, LQ3/c;->h(LQ3/f;)Z

    move-result v8

    if-eqz v8, :cond_16

    goto :goto_f

    :cond_16
    move-object v7, v1

    :goto_f
    iget-object v12, v3, LE3/j;->m:LD3/e;

    if-nez v7, :cond_18

    sget-object v8, LA3/l;->a:Ljava/util/LinkedHashMap;

    invoke-static {v3}, LX3/f;->g(Lr3/j;)LQ3/c;

    move-result-object v8

    sget-object v9, LA3/l;->b:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LQ3/c;

    if-nez v8, :cond_19

    :cond_17
    :goto_10
    move-object v2, v1

    goto/16 :goto_14

    :cond_18
    move-object v8, v7

    :cond_19
    iget-object v9, v12, LD3/e;->d:Ljava/lang/Object;

    check-cast v9, LD3/a;

    iget-object v9, v9, LD3/a;->o:Lr3/x;

    sget-object v10, Lz3/b;->j:Lz3/b;

    sget v11, LX3/f;->a:I

    invoke-static {v2, v9}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, LQ3/c;->d()Z

    invoke-virtual {v8}, LQ3/c;->e()LQ3/c;

    move-result-object v2

    const-string v11, "topLevelClassFqName.parent()"

    invoke-static {v11, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v9, v2}, Lr3/x;->a0(LQ3/c;)Lr3/H;

    move-result-object v2

    check-cast v2, Lu3/y;

    iget-object v2, v2, Lu3/y;->i:La4/k;

    invoke-virtual {v8}, LQ3/c;->f()LQ3/f;

    move-result-object v8

    const-string v9, "topLevelClassFqName.shortName()"

    invoke-static {v9, v8}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v8, v10}, La4/k;->c(LQ3/f;Lz3/b;)Lr3/g;

    move-result-object v2

    instance-of v8, v2, Lr3/e;

    if-eqz v8, :cond_1a

    check-cast v2, Lr3/e;

    goto :goto_11

    :cond_1a
    move-object v2, v1

    :goto_11
    if-nez v2, :cond_1b

    goto :goto_10

    :cond_1b
    invoke-interface {v2}, Lr3/g;->H()Lh4/J;

    move-result-object v8

    invoke-interface {v8}, Lh4/J;->k()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, v3, LE3/j;->s:LE3/h;

    invoke-virtual {v9}, LE3/h;->k()Ljava/util/List;

    move-result-object v9

    const-string v10, "getTypeConstructor().parameters"

    invoke-static {v10, v9}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v8, :cond_1c

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v9}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lr3/Q;

    new-instance v10, Lh4/O;

    invoke-interface {v9}, Lr3/g;->q()Lh4/z;

    move-result-object v9

    invoke-direct {v10, v4, v9}, Lh4/O;-><init>(ILh4/v;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1c
    if-ne v10, v4, :cond_17

    if-le v8, v4, :cond_17

    if-nez v7, :cond_17

    new-instance v7, Lh4/O;

    invoke-static {v9}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lr3/Q;

    invoke-interface {v9}, Lr3/g;->q()Lh4/z;

    move-result-object v9

    invoke-direct {v7, v4, v9}, Lh4/O;-><init>(ILh4/v;)V

    new-instance v9, Lh3/c;

    invoke-direct {v9, v4, v8, v4}, Lh3/a;-><init>(III)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v9}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, Lh3/a;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_13
    move-object v10, v9

    check-cast v10, Lh3/b;

    iget-boolean v10, v10, Lh3/b;->e:Z

    if-eqz v10, :cond_1d

    move-object v10, v9

    check-cast v10, Lh3/b;

    invoke-virtual {v10}, Lh3/b;->a()I

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1d
    move-object v7, v8

    :cond_1e
    sget-object v8, Lh4/G;->d:Le/v;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lh4/G;->e:Lh4/G;

    invoke-static {v8, v2, v7}, Lh4/d;->q(Lh4/G;Lr3/e;Ljava/util/List;)Lh4/z;

    move-result-object v2

    :goto_14
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lx3/q;

    iget-object v7, v12, LD3/e;->h:Ljava/lang/Object;

    check-cast v7, Lcom/google/firebase/messaging/p;

    const/4 v8, 0x7

    invoke-static {v4, v14, v14, v1, v8}, LL2/b;->N(IZZLu3/j;I)LF3/a;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Lcom/google/firebase/messaging/p;->K(LH3/d;LF3/a;)Lh4/v;

    move-result-object v21

    iget-object v7, v12, LD3/e;->d:Ljava/lang/Object;

    check-cast v7, LD3/a;

    iget-object v7, v7, LD3/a;->r:Ls2/c;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, LI3/p;

    sget-object v19, LA3/a;->g:LA3/a;

    const/16 v17, 0x0

    const/16 v20, 0x1

    const/16 v16, 0x0

    move-object v15, v8

    move-object/from16 v18, v12

    invoke-direct/range {v15 .. v20}, LI3/p;-><init>(Ls3/a;ZLD3/e;LA3/a;Z)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v9, v21

    move-object v10, v13

    move-object v1, v11

    move-object/from16 v11, v16

    move-object v14, v12

    move v12, v15

    invoke-virtual/range {v7 .. v12}, Ls2/c;->i(LI3/p;Lh4/v;Ljava/util/List;LI3/q;Z)Lh4/v;

    move-result-object v7

    if-nez v7, :cond_1f

    move-object/from16 v7, v21

    :cond_1f
    invoke-virtual {v7}, Lh4/v;->J0()Lh4/J;

    move-result-object v8

    invoke-interface {v8}, Lh4/J;->i()Lr3/g;

    move-result-object v8

    instance-of v8, v8, Lr3/A;

    if-eqz v8, :cond_20

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    invoke-virtual {v7}, Lh4/v;->J0()Lh4/J;

    move-result-object v1

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lh4/v;->J0()Lh4/J;

    move-result-object v8

    goto :goto_16

    :cond_21
    const/4 v8, 0x0

    :goto_16
    invoke-static {v1, v8}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_22
    :goto_17
    move-object v12, v14

    const/4 v1, 0x0

    const/4 v14, 0x0

    goto :goto_15

    :cond_23
    invoke-static {v7}, Lo3/i;->x(Lh4/v;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_24
    move-object v14, v12

    iget-object v1, v3, LE3/j;->l:Lr3/e;

    if-eqz v1, :cond_25

    invoke-static {v1, v3}, Lp0/a;->g(Lr3/e;Lu3/b;)Lh4/K;

    move-result-object v5

    invoke-static {v5}, Lh4/V;->e(Lh4/S;)Lh4/V;

    move-result-object v5

    invoke-interface {v1}, Lr3/e;->q()Lh4/z;

    move-result-object v1

    invoke-virtual {v5, v4, v1}, Lh4/V;->j(ILh4/v;)Lh4/v;

    move-result-object v1

    goto :goto_18

    :cond_25
    const/4 v1, 0x0

    :goto_18
    invoke-static {v0, v1}, Lq4/k;->b(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lq4/k;->b(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_27

    iget-object v1, v14, LD3/e;->d:Ljava/lang/Object;

    check-cast v1, LD3/a;

    iget-object v1, v1, LD3/a;->f:Ld4/k;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v6}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LH3/d;

    const-string v7, "null cannot be cast to non-null type org.jetbrains.kotlin.load.java.structure.JavaClassifierType"

    invoke-static {v7, v6}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v6, Lx3/q;

    iget-object v6, v6, Lx3/q;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_26
    invoke-interface {v1, v3, v2}, Ld4/k;->b(Lu3/b;Ljava/util/ArrayList;)V

    :cond_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_28

    invoke-static {v0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_1a

    :cond_28
    iget-object v0, v14, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->o:Lr3/x;

    invoke-interface {v0}, Lr3/x;->g()Lo3/i;

    move-result-object v0

    invoke-virtual {v0}, Lo3/i;->e()Lh4/z;

    move-result-object v0

    invoke-static {v0}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1a
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Lr3/O;
    .locals 1

    iget v0, p0, LE3/h;->c:I

    packed-switch v0, :pswitch_data_0

    sget-object p0, Lr3/O;->e:Lr3/O;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LE3/h;->e:Lu3/b;

    check-cast p0, LE3/j;

    iget-object p0, p0, LE3/j;->m:LD3/e;

    iget-object p0, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, LD3/a;

    iget-object p0, p0, LD3/a;->m:Lr3/O;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()Z
    .locals 0

    iget p0, p0, LE3/h;->c:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i()Lr3/g;
    .locals 1

    iget v0, p0, LE3/h;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LE3/h;->e:Lu3/b;

    check-cast p0, Lf4/i;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LE3/h;->e:Lu3/b;

    check-cast p0, LE3/j;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k()Ljava/util/List;
    .locals 1

    iget v0, p0, LE3/h;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LE3/h;->d:Lg4/i;

    invoke-virtual {p0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LE3/h;->d:Lg4/i;

    invoke-virtual {p0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n()Lr3/e;
    .locals 1

    iget v0, p0, LE3/h;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LE3/h;->e:Lu3/b;

    check-cast p0, Lf4/i;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LE3/h;->e:Lu3/b;

    check-cast p0, LE3/j;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, LE3/h;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LE3/h;->e:Lu3/b;

    check-cast p0, Lf4/i;

    invoke-virtual {p0}, Lu3/b;->getName()LQ3/f;

    move-result-object p0

    iget-object p0, p0, LQ3/f;->c:Ljava/lang/String;

    const-string v0, "name.toString()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :pswitch_0
    iget-object p0, p0, LE3/h;->e:Lu3/b;

    check-cast p0, LE3/j;

    invoke-virtual {p0}, Lu3/b;->getName()LQ3/f;

    move-result-object p0

    invoke-virtual {p0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name.asString()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
