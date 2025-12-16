.class public final Le4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo3/c;


# instance fields
.field public final b:Le4/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le4/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le4/d;-><init>(I)V

    iput-object v0, p0, Le4/b;->b:Le4/d;

    return-void
.end method


# virtual methods
.method public a(Lg4/o;Lr3/x;Ljava/lang/Iterable;Lt3/d;Lt3/b;Z)Lr3/D;
    .locals 21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "storageManager"

    invoke-static {v0, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "builtInsModule"

    invoke-static {v0, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "classDescriptorFactories"

    move-object/from16 v8, p3

    invoke-static {v0, v8}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "platformDependentDeclarationFilter"

    move-object/from16 v11, p4

    invoke-static {v0, v11}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "additionalClassPartsProvider"

    move-object/from16 v10, p5

    invoke-static {v0, v10}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lo3/n;->o:Ljava/util/Set;

    const-string v3, "packageFqNames"

    invoke-static {v3, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ3/c;

    sget-object v4, Le4/a;->q:Le4/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Le4/a;->a(LQ3/c;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "p0"

    invoke-static {v5, v4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v5, p0

    iget-object v6, v5, Le4/b;->b:Le4/d;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Le4/d;->i(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {v3, v1, v2, v6}, LZ0/j;->w(LQ3/c;Lg4/o;Lr3/x;Ljava/io/InputStream;)Le4/c;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Resource not found in classpath: "

    invoke-static {v1, v4}, Lh0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v7, Lr3/F;

    invoke-direct {v7, v9}, Lr3/F;-><init>(Ljava/util/ArrayList;)V

    new-instance v6, Lcom/google/firebase/messaging/p;

    invoke-direct {v6, v1, v2}, Lcom/google/firebase/messaging/p;-><init>(Lg4/o;Lr3/x;)V

    new-instance v5, Ld4/i;

    new-instance v3, Lc1/w;

    invoke-direct {v3, v7}, Lc1/w;-><init>(Ljava/lang/Object;)V

    new-instance v4, LA3/D;

    sget-object v0, Le4/a;->q:Le4/a;

    invoke-direct {v4, v2, v6, v0}, LA3/D;-><init>(Lr3/x;Lcom/google/firebase/messaging/p;Le4/a;)V

    sget-object v17, Ld4/k;->a:Ld4/j;

    sget-object v18, Ld4/j;->c:Ld4/j;

    new-instance v12, Le4/d;

    move-object v14, v12

    invoke-direct {v12, v1}, Le4/d;-><init>(Lg4/o;)V

    iget-object v12, v0, Lc4/a;->a:LR3/i;

    const/4 v13, 0x0

    const/high16 v16, 0xd0000

    const/4 v15, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v19, v5

    move-object v5, v7

    move-object/from16 v20, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v18

    move-object/from16 v8, p3

    move-object/from16 v18, v9

    move-object/from16 v9, v20

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v16}, Ld4/i;-><init>(Lg4/o;Lr3/x;Ld4/e;Ld4/a;Lr3/D;Ld4/k;Ld4/l;Ljava/lang/Iterable;Lcom/google/firebase/messaging/p;Lt3/b;Lt3/d;LR3/i;Li4/l;Le4/d;Ljava/util/List;I)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le4/c;

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Le4/c;->R0(Ld4/i;)V

    goto :goto_1

    :cond_2
    return-object v17
.end method
