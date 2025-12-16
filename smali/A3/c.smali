.class public final LA3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/LinkedHashMap;


# instance fields
.field public final a:LA3/v;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {}, LA3/a;->values()[LA3/a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, v4, LA3/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sput-object v0, LA3/c;->c:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(LA3/v;)V
    .locals 1

    const-string v0, "javaTypeEnhancementState"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA3/c;->a:LA3/v;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, LA3/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .locals 4

    check-cast p0, Ls3/b;

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ls3/b;->b()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ3/f;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LV3/g;

    if-eqz p1, :cond_1

    sget-object v3, LA3/z;->b:LQ3/f;

    invoke-static {v2, v3}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, LR2/u;->c:LR2/u;

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {v1}, LA3/c;->j(LV3/g;)Ljava/util/List;

    move-result-object v1

    :goto_2
    invoke-static {v0, v1}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static c(Ljava/lang/Object;LQ3/c;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0}, LA3/c;->e(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LA3/c;->d(Ljava/lang/Object;)LQ3/c;

    move-result-object v1

    invoke-static {v1, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static d(Ljava/lang/Object;)LQ3/c;
    .locals 1

    check-cast p0, Ls3/b;

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ls3/b;->a()LQ3/c;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    check-cast p0, Ls3/b;

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LX3/f;->d(Ls3/b;)Lr3/e;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ls3/a;->t()Ls3/h;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, LR2/u;->c:LR2/u;

    :goto_0
    return-object p0
.end method

.method public static f(Ljava/lang/Object;LQ3/c;)Z
    .locals 2

    invoke-static {p0}, LA3/c;->e(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LA3/c;->d(Ljava/lang/Object;)LQ3/c;

    move-result-object v0

    invoke-static {v0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public static j(LV3/g;)Ljava/util/List;
    .locals 2

    instance-of v0, p0, LV3/b;

    if-eqz v0, :cond_0

    check-cast p0, LV3/b;

    iget-object p0, p0, LV3/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LV3/g;

    invoke-static {v1}, LA3/c;->j(LV3/g;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, LV3/i;

    if-eqz v0, :cond_1

    check-cast p0, LV3/i;

    iget-object p0, p0, LV3/i;->c:LQ3/f;

    invoke-virtual {p0}, LQ3/f;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, LR2/u;->c:LR2/u;

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final b(LA3/w;Ljava/lang/Iterable;)LA3/w;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "annotations"

    move-object/from16 v3, p2

    invoke-static {v2, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, LA3/c;->a:LA3/v;

    iget-boolean v4, v2, LA3/v;->b:Z

    if-eqz v4, :cond_0

    return-object v1

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    sget-object v8, LA3/E;->c:LA3/E;

    sget-object v9, LA3/E;->d:LA3/E;

    iget-boolean v10, v2, LA3/v;->b:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    :cond_2
    :goto_1
    move-object v14, v11

    goto :goto_5

    :cond_3
    sget-object v10, LA3/b;->f:Ljava/util/LinkedHashMap;

    invoke-static {v5}, LA3/c;->d(Ljava/lang/Object;)LQ3/c;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LA3/o;

    if-eqz v10, :cond_2

    invoke-static {v5}, LA3/c;->d(Ljava/lang/Object;)LQ3/c;

    move-result-object v12

    if-eqz v12, :cond_4

    sget-object v13, LA3/b;->e:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    sget-object v13, LA3/u;->l:LA3/u;

    invoke-virtual {v13, v12}, LA3/u;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LA3/E;

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v5}, LA3/c;->h(Ljava/lang/Object;)LA3/E;

    move-result-object v12

    if-eqz v12, :cond_5

    goto :goto_2

    :cond_5
    iget-object v12, v2, LA3/v;->a:LA3/x;

    iget-object v12, v12, LA3/x;->a:LA3/E;

    :goto_2
    if-eq v12, v8, :cond_6

    goto :goto_3

    :cond_6
    move-object v12, v11

    :goto_3
    if-nez v12, :cond_7

    goto :goto_1

    :cond_7
    if-ne v12, v9, :cond_8

    move v12, v7

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    :goto_4
    iget-object v13, v10, LA3/o;->a:LI3/i;

    invoke-static {v13, v11, v12, v7}, LI3/i;->a(LI3/i;LI3/h;ZI)LI3/i;

    move-result-object v12

    iget-object v13, v10, LA3/o;->b:Ljava/util/Collection;

    const-string v14, "qualifierApplicabilityTypes"

    invoke-static {v14, v13}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v14, LA3/o;

    iget-boolean v10, v10, LA3/o;->c:Z

    invoke-direct {v14, v12, v13, v10}, LA3/o;-><init>(LI3/i;Ljava/util/Collection;Z)V

    :goto_5
    if-eqz v14, :cond_9

    move-object v11, v14

    goto/16 :goto_14

    :cond_9
    iget-object v10, v2, LA3/v;->a:LA3/x;

    iget-boolean v10, v10, LA3/x;->d:Z

    if-eqz v10, :cond_a

    :goto_6
    move-object v10, v11

    goto/16 :goto_b

    :cond_a
    sget-object v10, LA3/b;->c:LQ3/c;

    invoke-static {v5, v10}, LA3/c;->c(Ljava/lang/Object;LQ3/c;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_b

    goto :goto_6

    :cond_b
    invoke-static {v5}, LA3/c;->e(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v0, v13}, LA3/c;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_c

    goto :goto_7

    :cond_d
    move-object v13, v11

    :goto_7
    if-nez v13, :cond_e

    goto :goto_6

    :cond_e
    invoke-static {v10, v7}, LA3/c;->a(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_f
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    sget-object v15, LA3/c;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LA3/a;

    if-eqz v14, :cond_f

    invoke-interface {v12, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    new-instance v10, LQ2/e;

    sget-object v14, LA3/a;->g:LA3/a;

    invoke-interface {v12, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-static {}, LA3/a;->values()[LA3/a;

    move-result-object v14

    invoke-static {v14}, LR2/i;->x0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v14

    sget-object v15, LA3/a;->h:LA3/a;

    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, LR2/z;->y1(I)I

    move-result v11

    invoke-direct {v7, v11}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v14, 0x0

    :cond_11
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-nez v14, :cond_12

    invoke-static {v6, v15}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/4 v14, 0x1

    const/16 v17, 0x0

    goto :goto_a

    :cond_12
    const/16 v17, 0x1

    :goto_a
    if-eqz v17, :cond_11

    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_13
    invoke-static {v7, v12}, LR2/B;->S(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v12

    :cond_14
    invoke-direct {v10, v13, v12}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b
    if-nez v10, :cond_15

    :goto_c
    const/4 v11, 0x0

    goto/16 :goto_14

    :cond_15
    iget-object v6, v10, LQ2/e;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    invoke-virtual {v0, v5}, LA3/c;->h(Ljava/lang/Object;)LA3/E;

    move-result-object v5

    iget-object v7, v10, LQ2/e;->c:Ljava/lang/Object;

    if-nez v5, :cond_17

    invoke-virtual {v0, v7}, LA3/c;->h(Ljava/lang/Object;)LA3/E;

    move-result-object v5

    if-eqz v5, :cond_16

    goto :goto_d

    :cond_16
    iget-object v5, v2, LA3/v;->a:LA3/x;

    iget-object v5, v5, LA3/x;->a:LA3/E;

    :cond_17
    :goto_d
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v5, v8, :cond_18

    goto :goto_c

    :cond_18
    const-string v10, "$this$extractNullability"

    invoke-static {v10, v7}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v10}, LA3/c;->g(Ljava/lang/Object;Z)LI3/i;

    move-result-object v11

    if-eqz v11, :cond_19

    move-object v7, v11

    :goto_e
    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_13

    :cond_19
    invoke-virtual {v0, v7}, LA3/c;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_1a

    :goto_f
    const/4 v7, 0x0

    goto :goto_e

    :cond_1a
    invoke-virtual {v0, v7}, LA3/c;->h(Ljava/lang/Object;)LA3/E;

    move-result-object v7

    if-eqz v7, :cond_1b

    goto :goto_10

    :cond_1b
    iget-object v7, v2, LA3/v;->a:LA3/x;

    iget-object v7, v7, LA3/x;->a:LA3/E;

    :goto_10
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v7, v8, :cond_1c

    goto :goto_f

    :cond_1c
    const/4 v8, 0x0

    invoke-virtual {v0, v10, v8}, LA3/c;->g(Ljava/lang/Object;Z)LI3/i;

    move-result-object v10

    if-eqz v10, :cond_1e

    if-ne v7, v9, :cond_1d

    const/4 v7, 0x1

    :goto_11
    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_12

    :cond_1d
    move v7, v8

    goto :goto_11

    :goto_12
    invoke-static {v10, v12, v7, v11}, LI3/i;->a(LI3/i;LI3/h;ZI)LI3/i;

    move-result-object v7

    goto :goto_13

    :cond_1e
    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, v12

    :goto_13
    if-nez v7, :cond_1f

    move-object v11, v12

    goto :goto_14

    :cond_1f
    new-instance v10, LA3/o;

    if-ne v5, v9, :cond_20

    move v8, v11

    :cond_20
    invoke-static {v7, v12, v8, v11}, LI3/i;->a(LI3/i;LI3/h;ZI)LI3/i;

    move-result-object v5

    invoke-direct {v10, v5, v6}, LA3/o;-><init>(LI3/i;Ljava/util/Collection;)V

    move-object v11, v10

    :goto_14
    if-eqz v11, :cond_1

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_21
    move v11, v7

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    return-object v1

    :cond_22
    if-eqz v1, :cond_23

    iget-object v0, v1, LA3/w;->a:Ljava/util/EnumMap;

    if-eqz v0, :cond_23

    new-instance v2, Ljava/util/EnumMap;

    invoke-direct {v2, v0}, Ljava/util/EnumMap;-><init>(Ljava/util/EnumMap;)V

    goto :goto_15

    :cond_23
    new-instance v2, Ljava/util/EnumMap;

    const-class v0, LA3/a;

    invoke-direct {v2, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    :goto_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v6, v8

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA3/o;

    iget-object v4, v3, LA3/o;->b:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LA3/a;

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v11

    goto :goto_16

    :cond_25
    if-nez v6, :cond_26

    move-object v0, v1

    goto :goto_17

    :cond_26
    new-instance v0, LA3/w;

    invoke-direct {v0, v2}, LA3/w;-><init>(Ljava/util/EnumMap;)V

    :goto_17
    return-object v0
.end method

.method public final g(Ljava/lang/Object;Z)LI3/i;
    .locals 8

    invoke-static {p1}, LA3/c;->d(Ljava/lang/Object;)LQ3/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, LA3/c;->a:LA3/v;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LA3/u;->l:LA3/u;

    invoke-virtual {p0, v0}, LA3/u;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LA3/E;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LA3/E;->c:LA3/E;

    if-ne p0, v2, :cond_1

    return-object v1

    :cond_1
    sget-object v2, LA3/A;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, LI3/h;->d:LI3/h;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    goto/16 :goto_4

    :cond_2
    sget-object v2, LA3/A;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v6, LI3/h;->e:LI3/h;

    if-eqz v2, :cond_4

    :cond_3
    :goto_0
    move-object v3, v6

    goto/16 :goto_4

    :cond_4
    sget-object v2, LA3/A;->a:LQ3/c;

    invoke-static {v0, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v4

    goto :goto_1

    :cond_5
    sget-object v2, LA3/A;->d:LQ3/c;

    invoke-static {v0, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_6

    goto/16 :goto_4

    :cond_6
    sget-object v2, LA3/A;->b:LQ3/c;

    invoke-static {v0, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v4

    goto :goto_2

    :cond_7
    sget-object v2, LA3/A;->e:LQ3/c;

    invoke-static {v0, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    sget-object v7, LI3/h;->c:LI3/h;

    if-eqz v2, :cond_9

    :cond_8
    move-object v3, v7

    goto :goto_4

    :cond_9
    sget-object v2, LA3/A;->h:LQ3/c;

    invoke-static {v0, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {p1, v5}, LA3/c;->a(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, LR2/m;->N0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v0, "ALWAYS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_0

    :sswitch_1
    const-string v0, "UNKNOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :sswitch_2
    const-string v0, "NEVER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_3

    :sswitch_3
    const-string v0, "MAYBE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    :cond_a
    :goto_3
    return-object v1

    :cond_b
    sget-object p1, LA3/A;->k:LQ3/c;

    invoke-static {v0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_c
    sget-object p1, LA3/A;->l:LQ3/c;

    invoke-static {v0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_0

    :cond_d
    sget-object p1, LA3/A;->n:LQ3/c;

    invoke-static {v0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto/16 :goto_0

    :cond_e
    sget-object p1, LA3/A;->m:LQ3/c;

    invoke-static {v0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_f
    :goto_4
    new-instance p1, LI3/i;

    sget-object v0, LA3/E;->d:LA3/E;

    if-ne p0, v0, :cond_10

    move p0, v4

    goto :goto_5

    :cond_10
    move p0, v5

    :goto_5
    if-nez p0, :cond_12

    if-eqz p2, :cond_11

    goto :goto_6

    :cond_11
    move v4, v5

    :cond_12
    :goto_6
    invoke-direct {p1, v3, v4}, LI3/i;-><init>(LI3/h;Z)V

    return-object p1

    :cond_13
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x45bf448 -> :sswitch_3
        0x46bd26c -> :sswitch_2
        0x19d1382a -> :sswitch_1
        0x7342860f -> :sswitch_0
    .end sparse-switch
.end method

.method public final h(Ljava/lang/Object;)LA3/E;
    .locals 2

    iget-object p0, p0, LA3/c;->a:LA3/v;

    iget-object v0, p0, LA3/v;->a:LA3/x;

    iget-object v0, v0, LA3/x;->c:Ljava/util/Map;

    invoke-static {p1}, LA3/c;->d(Ljava/lang/Object;)LQ3/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA3/E;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, LA3/b;->d:LQ3/c;

    invoke-static {p1, v0}, LA3/c;->c(Ljava/lang/Object;LQ3/c;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    invoke-static {p1, v1}, LA3/c;->a(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, LR2/m;->N0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, LA3/v;->a:LA3/x;

    iget-object p0, p0, LA3/x;->b:LA3/E;

    if-nez p0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v1, -0x7f610e2e

    if-eq p0, v1, :cond_6

    const v1, -0x6d97ad37

    if-eq p0, v1, :cond_4

    const v1, 0x288a86

    if-eq p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "WARN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, LA3/E;->d:LA3/E;

    goto :goto_0

    :cond_4
    const-string p0, "STRICT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    sget-object v0, LA3/E;->e:LA3/E;

    goto :goto_0

    :cond_6
    const-string p0, "IGNORE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    sget-object v0, LA3/E;->c:LA3/E;

    goto :goto_0

    :cond_8
    move-object v0, p0

    :cond_9
    :goto_0
    return-object v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "annotation"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LA3/c;->a:LA3/v;

    iget-object v0, v0, LA3/v;->a:LA3/x;

    iget-boolean v0, v0, LA3/x;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, LA3/b;->g:Ljava/util/Set;

    invoke-static {p1}, LA3/c;->d(Ljava/lang/Object;)LQ3/c;

    move-result-object v2

    invoke-static {v0, v2}, LR2/m;->H0(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, LA3/b;->b:LQ3/c;

    invoke-static {p1, v0}, LA3/c;->f(Ljava/lang/Object;LQ3/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, LA3/b;->a:LQ3/c;

    invoke-static {p1, v0}, LA3/c;->f(Ljava/lang/Object;LQ3/c;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p0, LA3/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v2, p1

    check-cast v2, Ls3/b;

    invoke-static {v2}, LX3/f;->d(Ls3/b;)Lr3/e;

    move-result-object v2

    invoke-static {v2}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-static {p1}, LA3/c;->e(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, LA3/c;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_4
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    move-object v3, p0

    :cond_7
    :goto_1
    return-object v3

    :cond_8
    :goto_2
    return-object p1
.end method
