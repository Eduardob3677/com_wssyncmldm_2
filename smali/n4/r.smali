.class public abstract Ln4/r;
.super LW1/a;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Ln4/i;

    sget-object v6, Ln4/s;->i:LQ3/f;

    sget-object v7, Ln4/m;->e:Ln4/m;

    new-instance v8, Ln4/x;

    invoke-direct {v8, v4}, Ln4/x;-><init>(I)V

    new-array v9, v2, [Ln4/e;

    aput-object v7, v9, v3

    aput-object v8, v9, v4

    invoke-direct {v5, v6, v9}, Ln4/i;-><init>(LQ3/f;[Ln4/e;)V

    new-instance v6, Ln4/i;

    sget-object v8, Ln4/s;->j:LQ3/f;

    new-instance v9, Ln4/x;

    invoke-direct {v9, v2}, Ln4/x;-><init>(I)V

    new-array v10, v2, [Ln4/e;

    aput-object v7, v10, v3

    aput-object v9, v10, v4

    sget-object v9, Ln4/h;->h:Ln4/h;

    invoke-direct {v6, v8, v10, v9}, Ln4/i;-><init>(LQ3/f;[Ln4/e;Lc3/b;)V

    new-instance v8, Ln4/i;

    sget-object v9, Ln4/s;->a:LQ3/f;

    sget-object v10, Ln4/l;->c:Ln4/l;

    new-instance v11, Ln4/x;

    invoke-direct {v11, v2}, Ln4/x;-><init>(I)V

    sget-object v12, Ln4/l;->b:Ln4/l;

    new-array v13, v0, [Ln4/e;

    aput-object v7, v13, v3

    aput-object v10, v13, v4

    aput-object v11, v13, v2

    aput-object v12, v13, v1

    invoke-direct {v8, v9, v13}, Ln4/i;-><init>(LQ3/f;[Ln4/e;)V

    new-instance v9, Ln4/i;

    sget-object v11, Ln4/s;->b:LQ3/f;

    new-instance v13, Ln4/x;

    invoke-direct {v13, v1}, Ln4/x;-><init>(I)V

    new-array v14, v0, [Ln4/e;

    aput-object v7, v14, v3

    aput-object v10, v14, v4

    aput-object v13, v14, v2

    aput-object v12, v14, v1

    invoke-direct {v9, v11, v14}, Ln4/i;-><init>(LQ3/f;[Ln4/e;)V

    new-instance v11, Ln4/i;

    sget-object v13, Ln4/s;->c:LQ3/f;

    new-instance v14, Ln4/x;

    invoke-direct {v14}, Ln4/x;-><init>()V

    new-array v15, v0, [Ln4/e;

    aput-object v7, v15, v3

    aput-object v10, v15, v4

    aput-object v14, v15, v2

    aput-object v12, v15, v1

    invoke-direct {v11, v13, v15}, Ln4/i;-><init>(LQ3/f;[Ln4/e;)V

    new-instance v12, Ln4/i;

    sget-object v13, Ln4/s;->g:LQ3/f;

    new-array v14, v4, [Ln4/e;

    aput-object v7, v14, v3

    invoke-direct {v12, v13, v14}, Ln4/i;-><init>(LQ3/f;[Ln4/e;)V

    new-instance v13, Ln4/i;

    sget-object v14, Ln4/s;->f:LQ3/f;

    sget-object v15, Ln4/y;->e:Ln4/y;

    sget-object v16, Ln4/t;->c:Ln4/t;

    new-array v1, v0, [Ln4/e;

    aput-object v7, v1, v3

    aput-object v15, v1, v4

    aput-object v10, v1, v2

    const/16 v17, 0x3

    aput-object v16, v1, v17

    invoke-direct {v13, v14, v1}, Ln4/i;-><init>(LQ3/f;[Ln4/e;)V

    new-instance v1, Ln4/i;

    sget-object v14, Ln4/s;->h:LQ3/f;

    sget-object v18, Ln4/y;->d:Ln4/y;

    new-array v0, v2, [Ln4/e;

    aput-object v7, v0, v3

    aput-object v18, v0, v4

    invoke-direct {v1, v14, v0}, Ln4/i;-><init>(LQ3/f;[Ln4/e;)V

    new-instance v0, Ln4/i;

    sget-object v14, Ln4/s;->k:LQ3/f;

    move-object/from16 v20, v1

    new-array v1, v2, [Ln4/e;

    aput-object v7, v1, v3

    aput-object v18, v1, v4

    invoke-direct {v0, v14, v1}, Ln4/i;-><init>(LQ3/f;[Ln4/e;)V

    new-instance v14, Ln4/i;

    sget-object v1, Ln4/s;->l:LQ3/f;

    move-object/from16 v22, v0

    const/4 v2, 0x3

    new-array v0, v2, [Ln4/e;

    aput-object v7, v0, v3

    aput-object v18, v0, v4

    const/16 v21, 0x2

    aput-object v16, v0, v21

    invoke-direct {v14, v1, v0}, Ln4/i;-><init>(LQ3/f;[Ln4/e;)V

    new-instance v0, Ln4/i;

    sget-object v1, Ln4/s;->p:LQ3/f;

    move-object/from16 v16, v14

    new-array v14, v2, [Ln4/e;

    aput-object v7, v14, v3

    aput-object v15, v14, v4

    aput-object v10, v14, v21

    invoke-direct {v0, v1, v14}, Ln4/i;-><init>(LQ3/f;[Ln4/e;)V

    new-instance v1, Ln4/i;

    sget-object v14, Ln4/s;->q:LQ3/f;

    move-object/from16 v23, v0

    new-array v0, v2, [Ln4/e;

    aput-object v7, v0, v3

    aput-object v15, v0, v4

    aput-object v10, v0, v21

    invoke-direct {v1, v14, v0}, Ln4/i;-><init>(LQ3/f;[Ln4/e;)V

    new-instance v0, Ln4/i;

    sget-object v2, Ln4/s;->d:LQ3/f;

    new-array v14, v4, [Ln4/e;

    sget-object v24, Ln4/m;->d:Ln4/m;

    aput-object v24, v14, v3

    sget-object v4, Ln4/h;->i:Ln4/h;

    invoke-direct {v0, v2, v14, v4}, Ln4/i;-><init>(LQ3/f;[Ln4/e;Lc3/b;)V

    new-instance v2, Ln4/i;

    sget-object v4, Ln4/s;->e:LQ3/f;

    move-object/from16 v25, v0

    const/4 v14, 0x4

    new-array v0, v14, [Ln4/e;

    aput-object v7, v0, v3

    sget-object v14, Ln4/u;->c:Ln4/u;

    const/4 v3, 0x1

    aput-object v14, v0, v3

    const/4 v14, 0x2

    aput-object v15, v0, v14

    const/4 v14, 0x3

    aput-object v10, v0, v14

    invoke-direct {v2, v4, v0}, Ln4/i;-><init>(LQ3/f;[Ln4/e;)V

    new-instance v0, Ln4/i;

    sget-object v4, Ln4/s;->s:Ljava/util/Set;

    move-object/from16 v24, v2

    new-array v2, v14, [Ln4/e;

    const/4 v14, 0x0

    aput-object v7, v2, v14

    aput-object v15, v2, v3

    const/4 v3, 0x2

    aput-object v10, v2, v3

    invoke-direct {v0, v4, v2}, Ln4/i;-><init>(Ljava/util/Set;[Ln4/e;)V

    new-instance v2, Ln4/i;

    sget-object v4, Ln4/s;->r:Ljava/util/Set;

    move-object/from16 v27, v0

    new-array v0, v3, [Ln4/e;

    aput-object v7, v0, v14

    const/4 v3, 0x1

    aput-object v18, v0, v3

    invoke-direct {v2, v4, v0}, Ln4/i;-><init>(Ljava/util/Set;[Ln4/e;)V

    new-instance v0, Ln4/i;

    sget-object v4, Ln4/s;->n:LQ3/f;

    sget-object v14, Ln4/s;->o:LQ3/f;

    filled-new-array {v4, v14}, [LQ3/f;

    move-result-object v4

    invoke-static {v4}, LR2/n;->y0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-array v14, v3, [Ln4/e;

    const/16 v26, 0x0

    aput-object v7, v14, v26

    sget-object v3, Ln4/h;->j:Ln4/h;

    invoke-direct {v0, v4, v14, v3}, Ln4/i;-><init>(Ljava/util/Collection;[Ln4/e;Lc3/b;)V

    new-instance v3, Ln4/i;

    sget-object v4, Ln4/s;->t:Ljava/util/Set;

    const/4 v14, 0x4

    new-array v14, v14, [Ln4/e;

    aput-object v7, v14, v26

    sget-object v19, Ln4/v;->c:Ln4/v;

    const/16 v28, 0x1

    aput-object v19, v14, v28

    move-object/from16 v29, v0

    const/4 v0, 0x2

    aput-object v15, v14, v0

    const/4 v15, 0x3

    aput-object v10, v14, v15

    invoke-direct {v3, v4, v14}, Ln4/i;-><init>(Ljava/util/Set;[Ln4/e;)V

    new-instance v4, Ln4/i;

    sget-object v10, Ln4/s;->m:LQ2/a;

    new-array v14, v0, [Ln4/e;

    aput-object v7, v14, v26

    aput-object v18, v14, v28

    sget-object v34, Ln4/h;->f:Ln4/h;

    const-string v7, "regex"

    invoke-static {v7, v10}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v14, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v35, v0

    check-cast v35, [Ln4/e;

    const/16 v31, 0x0

    const/16 v33, 0x0

    move-object/from16 v30, v4

    move-object/from16 v32, v10

    invoke-direct/range {v30 .. v35}, Ln4/i;-><init>(LQ3/f;LQ2/a;Ljava/util/Collection;Lc3/b;[Ln4/e;)V

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object/from16 v12, v20

    move-object/from16 v13, v22

    move-object/from16 v14, v16

    move-object/from16 v15, v23

    move-object/from16 v16, v1

    move-object/from16 v17, v25

    move-object/from16 v18, v24

    move-object/from16 v19, v27

    move-object/from16 v20, v2

    move-object/from16 v21, v29

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    filled-new-array/range {v5 .. v23}, [Ln4/i;

    move-result-object v0

    invoke-static {v0}, LR2/n;->y0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ln4/r;->b:Ljava/util/List;

    return-void
.end method
