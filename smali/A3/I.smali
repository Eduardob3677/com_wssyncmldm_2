.class public abstract LA3/I;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LA3/n;

.field public static final b:Ljava/util/ArrayList;

.field public static final c:Ljava/util/ArrayList;

.field public static final d:Ljava/util/Map;

.field public static final e:Ljava/util/LinkedHashMap;

.field public static final f:Ljava/util/Set;

.field public static final g:Ljava/util/Set;

.field public static final h:LA3/F;

.field public static final i:Ljava/util/Map;

.field public static final j:Ljava/util/LinkedHashMap;

.field public static final k:Ljava/util/ArrayList;

.field public static final l:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, LA3/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LA3/I;->a:LA3/n;

    const-string v0, "retainAll"

    const-string v1, "containsAll"

    const-string v2, "removeAll"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR2/B;->T([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "BOOLEAN.desc"

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, LA3/I;->a:LA3/n;

    sget-object v5, LY3/c;->g:LY3/c;

    invoke-virtual {v5}, LY3/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "java/util/Collection"

    const-string v6, "Ljava/util/Collection;"

    invoke-static {v4, v3, v2, v6, v5}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sput-object v1, LA3/I;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA3/F;

    iget-object v2, v2, LA3/F;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sput-object v0, LA3/I;->c:Ljava/util/ArrayList;

    sget-object v0, LA3/I;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA3/F;

    iget-object v2, v2, LA3/F;->a:LQ3/f;

    invoke-virtual {v2}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    sget-object v0, LA3/I;->a:LA3/n;

    const-string v1, "java/util/"

    const-string v2, "Collection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LY3/c;->g:LY3/c;

    invoke-virtual {v5}, LY3/c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "contains"

    const-string v8, "Ljava/lang/Object;"

    invoke-static {v0, v4, v7, v8, v6}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v4

    sget-object v6, LA3/H;->f:LA3/H;

    new-instance v9, LQ2/e;

    invoke-direct {v9, v4, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, LY3/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "remove"

    invoke-static {v0, v2, v7, v8, v4}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v2

    new-instance v10, LQ2/e;

    invoke-direct {v10, v2, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "Map"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, LY3/c;->c()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v12, "containsKey"

    invoke-static {v0, v4, v12, v8, v11}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v4

    new-instance v11, LQ2/e;

    invoke-direct {v11, v4, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, LY3/c;->c()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v13, "containsValue"

    invoke-static {v0, v4, v13, v8, v12}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v4

    new-instance v12, LQ2/e;

    invoke-direct {v12, v4, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, LY3/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "Ljava/lang/Object;Ljava/lang/Object;"

    invoke-static {v0, v4, v7, v3, v5}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v4

    new-instance v13, LQ2/e;

    invoke-direct {v13, v4, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getOrDefault"

    invoke-static {v0, v4, v5, v3, v8}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v3

    sget-object v4, LA3/H;->g:LA3/G;

    new-instance v14, LQ2/e;

    invoke-direct {v14, v3, v4}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "get"

    invoke-static {v0, v3, v4, v8, v8}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v3

    sget-object v5, LA3/H;->d:LA3/H;

    new-instance v15, LQ2/e;

    invoke-direct {v15, v3, v5}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7, v8, v8}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v2

    new-instance v3, LQ2/e;

    invoke-direct {v3, v2, v5}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "List"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, LY3/c;->k:LY3/c;

    move-object/from16 v19, v4

    invoke-virtual {v6}, LY3/c;->c()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v7

    const-string v7, "INT.desc"

    invoke-static {v7, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v16, v3

    const-string v3, "indexOf"

    invoke-static {v0, v5, v3, v8, v4}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v3

    sget-object v4, LA3/H;->e:LA3/H;

    new-instance v5, LQ2/e;

    invoke-direct {v5, v3, v4}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, LY3/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "lastIndexOf"

    invoke-static {v0, v1, v3, v8, v2}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v0

    new-instance v1, LQ2/e;

    invoke-direct {v1, v0, v4}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v17, v5

    move-object/from16 v18, v1

    filled-new-array/range {v9 .. v18}, [LQ2/e;

    move-result-object v0

    invoke-static {v0}, LR2/z;->A1([LQ2/e;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LA3/I;->d:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, LR2/z;->y1(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA3/F;

    iget-object v3, v3, LA3/F;->b:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    sput-object v1, LA3/I;->e:Ljava/util/LinkedHashMap;

    sget-object v0, LA3/I;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, LA3/I;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, LR2/B;->S(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA3/F;

    iget-object v3, v3, LA3/F;->a:LQ3/f;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    invoke-static {v1}, LR2/m;->j1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, LA3/I;->f:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA3/F;

    iget-object v2, v2, LA3/F;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    invoke-static {v1}, LR2/m;->j1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LA3/I;->g:Ljava/util/Set;

    sget-object v0, LA3/I;->a:LA3/n;

    sget-object v1, LY3/c;->k:LY3/c;

    invoke-virtual {v1}, LY3/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "java/util/List"

    const-string v4, "removeAt"

    invoke-static {v0, v3, v4, v2, v8}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v2

    sput-object v2, LA3/I;->h:LA3/F;

    const-string v3, "java/lang/"

    const-string v4, "Number"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, LY3/c;->i:LY3/c;

    invoke-virtual {v6}, LY3/c;->c()Ljava/lang/String;

    move-result-object v6

    const-string v8, "BYTE.desc"

    invoke-static {v8, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "toByte"

    const-string v9, ""

    invoke-static {v0, v5, v8, v9, v6}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v5

    const-string v6, "byteValue"

    invoke-static {v6}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v6

    new-instance v10, LQ2/e;

    invoke-direct {v10, v5, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, LY3/c;->j:LY3/c;

    invoke-virtual {v6}, LY3/c;->c()Ljava/lang/String;

    move-result-object v6

    const-string v8, "SHORT.desc"

    invoke-static {v8, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "toShort"

    invoke-static {v0, v5, v8, v9, v6}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v5

    const-string v6, "shortValue"

    invoke-static {v6}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v6

    new-instance v11, LQ2/e;

    invoke-direct {v11, v5, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, LY3/c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "toInt"

    invoke-static {v0, v5, v8, v9, v6}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v5

    const-string v6, "intValue"

    invoke-static {v6}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v6

    new-instance v12, LQ2/e;

    invoke-direct {v12, v5, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, LY3/c;->m:LY3/c;

    invoke-virtual {v6}, LY3/c;->c()Ljava/lang/String;

    move-result-object v6

    const-string v8, "LONG.desc"

    invoke-static {v8, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "toLong"

    invoke-static {v0, v5, v8, v9, v6}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v5

    const-string v6, "longValue"

    invoke-static {v6}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v6

    new-instance v13, LQ2/e;

    invoke-direct {v13, v5, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, LY3/c;->l:LY3/c;

    invoke-virtual {v6}, LY3/c;->c()Ljava/lang/String;

    move-result-object v6

    const-string v8, "FLOAT.desc"

    invoke-static {v8, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "toFloat"

    invoke-static {v0, v5, v8, v9, v6}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v5

    const-string v6, "floatValue"

    invoke-static {v6}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v6

    new-instance v14, LQ2/e;

    invoke-direct {v14, v5, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LY3/c;->n:LY3/c;

    invoke-virtual {v5}, LY3/c;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DOUBLE.desc"

    invoke-static {v6, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "toDouble"

    invoke-static {v0, v4, v6, v9, v5}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v4

    const-string v5, "doubleValue"

    invoke-static {v5}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v5

    new-instance v15, LQ2/e;

    invoke-direct {v15, v4, v5}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {v20 .. v20}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v4

    new-instance v5, LQ2/e;

    invoke-direct {v5, v2, v4}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "CharSequence"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, LY3/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, LY3/c;->h:LY3/c;

    invoke-virtual {v3}, LY3/c;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CHAR.desc"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v4, v19

    invoke-static {v0, v2, v4, v1, v3}, LA3/n;->a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;

    move-result-object v0

    const-string v1, "charAt"

    invoke-static {v1}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v1

    new-instance v2, LQ2/e;

    invoke-direct {v2, v0, v1}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    filled-new-array/range {v10 .. v17}, [LQ2/e;

    move-result-object v0

    invoke-static {v0}, LR2/z;->A1([LQ2/e;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LA3/I;->i:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, LR2/z;->y1(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA3/F;

    iget-object v3, v3, LA3/F;->b:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_6
    sput-object v1, LA3/I;->j:Ljava/util/LinkedHashMap;

    sget-object v0, LA3/I;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA3/F;

    iget-object v2, v2, LA3/F;->a:LQ3/f;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    sput-object v1, LA3/I;->k:Ljava/util/ArrayList;

    sget-object v0, LA3/I;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, LQ2/e;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LA3/F;

    iget-object v4, v4, LA3/F;->a:LQ3/f;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v3, v4, v2}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_8
    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, LR2/z;->y1(I)I

    move-result v0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_9

    move v0, v2

    :cond_9
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ2/e;

    iget-object v3, v1, LQ2/e;->d:Ljava/lang/Object;

    check-cast v3, LQ3/f;

    iget-object v1, v1, LQ2/e;->c:Ljava/lang/Object;

    check-cast v1, LQ3/f;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_a
    sput-object v2, LA3/I;->l:Ljava/util/LinkedHashMap;

    return-void
.end method
