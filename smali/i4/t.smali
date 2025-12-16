.class public final Li4/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li4/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li4/t;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li4/t;->a:Li4/t;

    return-void
.end method

.method public static a(Ljava/util/AbstractCollection;Lc3/c;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, "filteredTypes.iterator()"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/z;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh4/z;

    if-eq v3, v1, :cond_2

    const-string v4, "lower"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "upper"

    invoke-static {v4, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v3, v1}, Lc3/c;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)Lh4/z;
    .locals 16

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/z;

    invoke-virtual {v2}, Lh4/v;->J0()Lh4/J;

    move-result-object v4

    instance-of v4, v4, Lh4/u;

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lh4/v;->J0()Lh4/J;

    move-result-object v4

    invoke-interface {v4}, Lh4/J;->j()Ljava/util/Collection;

    move-result-object v4

    const-string v5, "type.constructor.supertypes"

    invoke-static {v5, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh4/v;

    const-string v7, "it"

    invoke-static {v7, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6}, Lh4/c;->y(Lh4/v;)Lh4/z;

    move-result-object v6

    invoke-virtual {v2}, Lh4/v;->K0()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v3}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object v6

    :cond_0
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v1, Li4/r;->c:Li4/p;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh4/Z;

    invoke-virtual {v1, v4}, Li4/r;->a(Lh4/Z;)Li4/r;

    move-result-object v1

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "<this>"

    const/4 v6, 0x0

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh4/z;

    sget-object v7, Li4/r;->f:Li4/o;

    if-ne v1, v7, :cond_8

    instance-of v7, v4, Li4/h;

    if-eqz v7, :cond_5

    check-cast v4, Li4/h;

    invoke-static {v5, v4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v14, Li4/h;

    iget-object v10, v4, Li4/h;->f:Lh4/Z;

    const/4 v13, 0x1

    iget v8, v4, Li4/h;->d:I

    iget-object v9, v4, Li4/h;->e:Li4/i;

    iget-object v11, v4, Li4/h;->g:Lh4/G;

    iget-boolean v12, v4, Li4/h;->h:Z

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Li4/h;-><init>(ILi4/i;Lh4/Z;Lh4/G;ZZ)V

    move-object v4, v14

    :cond_5
    invoke-static {v5, v4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4, v6}, Lh4/d;->p(Lh4/Z;Z)Lh4/m;

    move-result-object v5

    if-eqz v5, :cond_7

    :cond_6
    move-object v4, v5

    goto :goto_4

    :cond_7
    invoke-static {v4}, Lh4/c;->m(Lh4/v;)Lh4/z;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-virtual {v4, v6}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object v4

    :cond_8
    :goto_4
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh4/z;

    invoke-virtual {v4}, Lh4/v;->I0()Lh4/G;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v4, "Empty collection can\'t be reduced."

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    const-string v9, "other"

    if-eqz v7, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh4/G;

    check-cast v1, Lh4/G;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v7}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ln4/d;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v7}, Ln4/d;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_6

    :cond_b
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lh4/G;->d:Le/v;

    iget-object v10, v10, Le/v;->c:Ljava/lang/Object;

    check-cast v10, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    const-string v11, "idPerType.values"

    invoke-static {v11, v10}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    iget-object v12, v1, Ln4/d;->c:Ln4/a;

    invoke-virtual {v12, v11}, Ln4/a;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lh4/h;

    iget-object v13, v7, Ln4/d;->c:Ln4/a;

    invoke-virtual {v13, v11}, Ln4/a;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh4/h;

    if-nez v12, :cond_d

    if-eqz v11, :cond_c

    invoke-static {v12, v11}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    goto :goto_9

    :cond_c
    move-object v11, v8

    goto :goto_9

    :cond_d
    invoke-static {v11, v12}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    goto :goto_8

    :cond_e
    move-object v12, v8

    :goto_8
    move-object v11, v12

    :goto_9
    invoke-static {v9, v11}, Lq4/k;->b(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_7

    :cond_f
    invoke-static {v9}, Le/v;->j(Ljava/util/List;)Lh4/G;

    move-result-object v1

    goto :goto_6

    :cond_10
    check-cast v1, Lh4/G;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v3, :cond_11

    invoke-static {v2}, LR2/m;->a1(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/z;

    goto/16 :goto_e

    :cond_11
    new-instance v0, Li4/s;

    const/4 v7, 0x2

    const/4 v10, 0x0

    move-object/from16 v11, p0

    invoke-direct {v0, v7, v11, v10}, Li4/s;-><init>(ILjava/lang/Object;I)V

    invoke-static {v2, v0}, Li4/t;->a(Ljava/util/AbstractCollection;Lc3/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_12

    goto/16 :goto_d

    :cond_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh4/z;

    check-cast v4, Lh4/z;

    if-eqz v4, :cond_17

    if-nez v11, :cond_13

    goto :goto_c

    :cond_13
    invoke-virtual {v4}, Lh4/v;->J0()Lh4/J;

    move-result-object v12

    invoke-virtual {v11}, Lh4/v;->J0()Lh4/J;

    move-result-object v13

    instance-of v14, v12, LV3/m;

    if-eqz v14, :cond_14

    instance-of v15, v13, LV3/m;

    if-eqz v15, :cond_14

    check-cast v12, LV3/m;

    check-cast v13, LV3/m;

    iget-object v4, v12, LV3/m;->c:Ljava/util/Set;

    iget-object v11, v13, LV3/m;->c:Ljava/util/Set;

    invoke-static {v5, v4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v9, v11}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4}, LR2/m;->i1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v11}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    new-instance v11, LV3/m;

    iget-object v13, v12, LV3/m;->b:Lr3/x;

    iget-wide v14, v12, LV3/m;->a:J

    invoke-direct {v11, v14, v15, v13, v4}, LV3/m;-><init>(JLr3/x;Ljava/util/Set;)V

    sget-object v4, Lh4/G;->d:Le/v;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lh4/G;->e:Lh4/G;

    const-string v12, "attributes"

    invoke-static {v12, v4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v12, LR2/u;->c:LR2/u;

    const-string v13, "unknown integer literal type"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v3, v13}, Lj4/i;->a(IZ[Ljava/lang/String;)Lj4/e;

    move-result-object v13

    invoke-static {v13, v4, v11, v12, v6}, Lh4/d;->s(La4/o;Lh4/G;Lh4/J;Ljava/util/List;Z)Lh4/z;

    move-result-object v4

    goto :goto_a

    :cond_14
    if-eqz v14, :cond_16

    check-cast v12, LV3/m;

    iget-object v4, v12, LV3/m;->c:Ljava/util/Set;

    invoke-interface {v4, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_b

    :cond_15
    move-object v11, v8

    :goto_b
    move-object v4, v11

    goto :goto_a

    :cond_16
    instance-of v11, v13, LV3/m;

    if-eqz v11, :cond_17

    check-cast v13, LV3/m;

    iget-object v11, v13, LV3/m;->c:Ljava/util/Set;

    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    goto :goto_a

    :cond_17
    :goto_c
    move-object v4, v8

    goto :goto_a

    :cond_18
    move-object v8, v4

    check-cast v8, Lh4/z;

    :goto_d
    if-eqz v8, :cond_19

    move-object v0, v8

    goto :goto_e

    :cond_19
    new-instance v3, Li4/s;

    sget-object v4, Li4/k;->b:Li4/j;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Li4/j;->b:Li4/l;

    const/4 v5, 0x1

    invoke-direct {v3, v7, v4, v5}, Li4/s;-><init>(ILjava/lang/Object;I)V

    invoke-static {v0, v3}, Li4/t;->a(Ljava/util/AbstractCollection;Lc3/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v7, :cond_1a

    invoke-static {v0}, LR2/m;->a1(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/z;

    goto :goto_e

    :cond_1a
    new-instance v0, Lh4/u;

    invoke-direct {v0, v2}, Lh4/u;-><init>(Ljava/util/AbstractCollection;)V

    invoke-virtual {v0}, Lh4/u;->b()Lh4/z;

    move-result-object v0

    :goto_e
    invoke-virtual {v0, v1}, Lh4/z;->R0(Lh4/G;)Lh4/z;

    move-result-object v0

    return-object v0

    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
