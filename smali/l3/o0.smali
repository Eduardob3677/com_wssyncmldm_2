.class public abstract Ll3/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ll3/o0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Lw3/e;
    .locals 51

    const-string v3, "<this>"

    move-object/from16 v4, p0

    invoke-static {v3, v4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p0 .. p0}, Lx3/d;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Ll3/x0;

    invoke-direct {v4, v3}, Ll3/x0;-><init>(Ljava/lang/ClassLoader;)V

    sget-object v5, Ll3/o0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lw3/e;

    if-eqz v7, :cond_0

    return-object v7

    :cond_0
    invoke-virtual {v5, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    new-instance v6, Le/v;

    invoke-direct {v6, v3}, Le/v;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v7, Le/v;

    const-class v8, LQ2/k;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const-string v9, "Unit::class.java.classLoader"

    invoke-static {v9, v8}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v7, v8}, Le/v;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v10, Lc1/w;

    invoke-direct {v10, v3}, Lc1/w;-><init>(Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "runtime module for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v31, Lw3/d;->b:Lw3/d;

    sget-object v17, Lw3/d;->c:Lw3/d;

    const-string v8, "moduleName"

    invoke-static {v8, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v15, Lg4/l;

    const-string v8, "DeserializationComponentsForJava.ModuleData"

    invoke-direct {v15, v8}, Lg4/l;-><init>(Ljava/lang/String;)V

    new-instance v14, Lq3/j;

    invoke-direct {v14, v15}, Lq3/j;-><init>(Lg4/l;)V

    new-instance v13, Lu3/C;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "<"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3e

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LQ3/f;->g(Ljava/lang/String;)LQ3/f;

    move-result-object v3

    const/16 v8, 0x38

    invoke-direct {v13, v3, v15, v14, v8}, Lu3/C;-><init>(LQ3/f;Lg4/o;Lo3/i;I)V

    iget-object v3, v15, Lg4/l;->a:Lg4/n;

    invoke-interface {v3}, Lg4/n;->G()V

    :try_start_0
    iget-object v8, v14, Lo3/i;->a:Lu3/C;

    if-nez v8, :cond_7

    iput-object v13, v14, Lo3/i;->a:Lu3/C;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {v3}, Lg4/n;->C()V

    new-instance v3, Lq3/i;

    invoke-direct {v3, v13}, Lq3/i;-><init>(Lu3/C;)V

    iput-object v3, v14, Lq3/j;->f:Lc3/a;

    new-instance v3, LJ3/f;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v12, Ls2/c;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    new-instance v11, Lcom/google/firebase/messaging/p;

    invoke-direct {v11, v15, v13}, Lcom/google/firebase/messaging/p;-><init>(Lg4/o;Lr3/x;)V

    sget-object v19, LJ3/g;->c:LJ3/g;

    new-instance v9, LD3/a;

    sget-object v16, LB3/j;->c:LB3/j;

    sget-object v18, LB3/j;->a:LB3/j;

    new-instance v8, Le4/d;

    sget-object v32, LR2/u;->c:LR2/u;

    invoke-direct {v8, v15}, Le4/d;-><init>(Lg4/o;)V

    sget-object v20, Lr3/O;->e:Lr3/O;

    sget-object v21, Lz3/a;->a:Lz3/a;

    new-instance v0, Lo3/l;

    invoke-direct {v0, v13, v11}, Lo3/l;-><init>(Lu3/C;Lcom/google/firebase/messaging/p;)V

    new-instance v1, LA3/c;

    sget-object v2, LA3/v;->c:LA3/v;

    invoke-direct {v1, v2}, LA3/c;-><init>(LA3/v;)V

    move-object/from16 p0, v4

    new-instance v4, Ls2/c;

    move-object/from16 v22, v8

    new-instance v8, LI3/d;

    sget-object v27, LD3/b;->a:LD3/b;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-direct {v4, v8}, Ls2/c;-><init>(Ljava/lang/Object;)V

    sget-object v26, LA3/n;->a:LA3/n;

    sget-object v8, Li4/k;->b:Li4/j;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v45, Li4/j;->b:Li4/l;

    new-instance v30, LJ3/g;

    invoke-direct/range {v30 .. v30}, Ljava/lang/Object;-><init>()V

    move-object v8, v9

    move-object/from16 v49, v5

    move-object v5, v9

    move-object v9, v15

    move-object/from16 v33, v7

    move-object v7, v11

    move-object v11, v6

    move-object/from16 v34, v12

    move-object v12, v3

    move-object/from16 v50, v13

    move-object/from16 v13, v16

    move-object/from16 v35, v14

    move-object/from16 v14, v31

    move-object/from16 v41, v7

    move-object v7, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v22

    move-object/from16 v18, v34

    move-object/from16 v22, v50

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    move-object/from16 v25, v4

    move-object/from16 v28, v45

    move-object/from16 v29, v2

    invoke-direct/range {v8 .. v30}, LD3/a;-><init>(Lg4/o;Lc1/w;Le/v;LJ3/f;LB3/j;Ld4/k;LB3/j;Le4/d;Lw3/d;Ls2/c;LJ3/g;Lr3/O;Lz3/a;Lr3/x;Lo3/l;LA3/c;Ls2/c;LA3/n;LD3/b;Li4/k;LA3/v;LJ3/g;)V

    new-instance v0, LD3/d;

    invoke-direct {v0, v5}, LD3/d;-><init>(LD3/a;)V

    sget-object v1, LP3/f;->g:LP3/f;

    const-string v2, "jvmMetadataVersion"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v14, LA3/D;

    const/4 v2, 0x7

    invoke-direct {v14, v6, v2, v3}, LA3/D;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v15, LJ3/d;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    iput-object v6, v15, LJ3/d;->c:Ljava/lang/Object;

    new-instance v2, LA3/d;

    const/16 v4, 0x9

    invoke-direct {v2, v4, v15}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v2}, Lg4/l;->b(Lc3/b;)Lg4/e;

    move-result-object v2

    iput-object v2, v15, LJ3/d;->d:Ljava/lang/Object;

    move-object/from16 v2, v50

    iput-object v2, v15, LJ3/d;->e:Ljava/lang/Object;

    move-object/from16 v4, v41

    iput-object v4, v15, LJ3/d;->f:Ljava/lang/Object;

    new-instance v5, LA3/D;

    invoke-direct {v5, v2, v4}, LA3/D;-><init>(Lr3/x;Lcom/google/firebase/messaging/p;)V

    iput-object v5, v15, LJ3/d;->g:Ljava/lang/Object;

    sget-object v5, LP3/f;->g:LP3/f;

    iput-object v5, v15, LJ3/d;->h:Ljava/lang/Object;

    iput-object v1, v15, LJ3/d;->h:Ljava/lang/Object;

    sget-object v1, Lh4/l;->a:Lh4/l;

    invoke-static {v1}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    iget-object v1, v2, Lu3/C;->f:Lo3/i;

    instance-of v5, v1, Lq3/j;

    if-eqz v5, :cond_2

    check-cast v1, Lq3/j;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    new-instance v5, Ld4/i;

    sget-object v18, LJ3/g;->b:LJ3/g;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lq3/j;->I()Lq3/n;

    move-result-object v8

    if-eqz v8, :cond_3

    :goto_1
    move-object/from16 v21, v8

    goto :goto_2

    :cond_3
    sget-object v8, Lt3/a;->b:Lt3/a;

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lq3/j;->I()Lq3/n;

    move-result-object v1

    if-eqz v1, :cond_4

    :goto_3
    move-object/from16 v22, v1

    goto :goto_4

    :cond_4
    sget-object v1, Lt3/a;->d:Lt3/a;

    goto :goto_3

    :goto_4
    sget-object v23, LP3/h;->a:LR3/i;

    new-instance v1, Le4/d;

    invoke-direct {v1, v7}, Le4/d;-><init>(Lg4/o;)V

    const/high16 v27, 0x40000

    move-object v11, v5

    move-object v12, v7

    move-object v13, v2

    move-object/from16 v16, v0

    move-object/from16 v17, v31

    move-object/from16 v19, v32

    move-object/from16 v20, v4

    move-object/from16 v24, v45

    move-object/from16 v25, v1

    invoke-direct/range {v11 .. v27}, Ld4/i;-><init>(Lg4/o;Lr3/x;Ld4/e;Ld4/a;Lr3/D;Ld4/k;Ld4/l;Ljava/lang/Iterable;Lcom/google/firebase/messaging/p;Lt3/b;Lt3/d;LR3/i;Li4/l;Le4/d;Ljava/util/List;I)V

    iput-object v5, v3, LJ3/f;->a:Ld4/i;

    new-instance v1, Ls2/c;

    invoke-direct {v1, v0}, Ls2/c;-><init>(Ljava/lang/Object;)V

    move-object/from16 v8, v34

    iput-object v1, v8, Ls2/c;->c:Ljava/lang/Object;

    new-instance v1, Lq3/o;

    invoke-virtual/range {v35 .. v35}, Lq3/j;->I()Lq3/n;

    move-result-object v8

    invoke-virtual/range {v35 .. v35}, Lq3/j;->I()Lq3/n;

    move-result-object v9

    new-instance v10, Le4/d;

    invoke-direct {v10, v7}, Le4/d;-><init>(Lg4/o;)V

    const-string v11, "additionalClassPartsProvider"

    invoke-static {v11, v8}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v11, "platformDependentDeclarationFilter"

    invoke-static {v11, v9}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v11, v33

    invoke-direct {v1, v7, v11, v2}, Lq3/o;-><init>(Lg4/l;Le/v;Lu3/C;)V

    new-instance v11, Ld4/i;

    new-instance v12, Lc1/w;

    invoke-direct {v12, v1}, Lc1/w;-><init>(Ljava/lang/Object;)V

    new-instance v13, LA3/D;

    sget-object v14, Le4/a;->q:Le4/a;

    invoke-direct {v13, v2, v4, v14}, LA3/D;-><init>(Lr3/x;Lcom/google/firebase/messaging/p;Le4/a;)V

    sget-object v38, Ld4/k;->a:Ld4/j;

    sget-object v39, Ld4/j;->c:Ld4/j;

    new-instance v15, Lp3/a;

    invoke-direct {v15, v7, v2}, Lp3/a;-><init>(Lg4/o;Lu3/C;)V

    move-object/from16 v16, v5

    new-instance v5, Lq3/g;

    invoke-direct {v5, v7, v2}, Lq3/g;-><init>(Lg4/o;Lu3/C;)V

    move-object/from16 v18, v3

    move-object/from16 v17, v6

    const/4 v6, 0x2

    new-array v3, v6, [Lt3/c;

    const/4 v6, 0x0

    aput-object v15, v3, v6

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v3}, LR2/n;->y0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v40

    iget-object v3, v14, Lc4/a;->a:LR3/i;

    move-object/from16 v44, v3

    const/high16 v48, 0xc0000

    const/16 v47, 0x0

    move-object/from16 v32, v11

    move-object/from16 v33, v7

    move-object/from16 v34, v2

    move-object/from16 v35, v12

    move-object/from16 v36, v13

    move-object/from16 v37, v1

    move-object/from16 v41, v4

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v46, v10

    invoke-direct/range {v32 .. v48}, Ld4/i;-><init>(Lg4/o;Lr3/x;Ld4/e;Ld4/a;Lr3/D;Ld4/k;Ld4/l;Ljava/lang/Iterable;Lcom/google/firebase/messaging/p;Lt3/b;Lt3/d;LR3/i;Li4/l;Le4/d;Ljava/util/List;I)V

    iput-object v11, v1, Lq3/o;->d:Ld4/i;

    filled-new-array {v2}, [Lu3/C;

    move-result-object v3

    invoke-static {v3}, LR2/i;->w0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Le/v;

    invoke-direct {v4, v3}, Le/v;-><init>(Ljava/util/List;)V

    iput-object v4, v2, Lu3/C;->i:Le/v;

    new-instance v3, Lu3/n;

    const/4 v4, 0x2

    new-array v4, v4, [Lr3/G;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v4}, LR2/n;->y0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "CompositeProvider@RuntimeModuleData for "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lu3/n;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v3, v2, Lu3/C;->j:Lr3/D;

    new-instance v0, Lw3/e;

    new-instance v1, LJ/r0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, v18

    iput-object v2, v1, LJ/r0;->c:Ljava/lang/Object;

    move-object/from16 v2, v17

    iput-object v2, v1, LJ/r0;->d:Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v1, LJ/r0;->e:Ljava/lang/Object;

    move-object/from16 v2, v16

    invoke-direct {v0, v2, v1}, Lw3/e;-><init>(Ld4/i;LJ/r0;)V

    :goto_5
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    move-object/from16 v4, v49

    invoke-virtual {v4, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw3/e;

    if-eqz v3, :cond_6

    return-object v3

    :cond_6
    invoke-virtual {v4, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 p0, v2

    move-object/from16 v49, v4

    goto :goto_5

    :cond_7
    move-object v2, v13

    move-object/from16 v35, v14

    move-object v7, v15

    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Built-ins module is already set: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v35

    iget-object v4, v4, Lo3/i;->a:Lu3/C;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (attempting to reset to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v7, v15

    :goto_6
    :try_start_2
    iget-object v1, v7, Lg4/l;->b:Lg4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-interface {v3}, Lg4/n;->C()V

    throw v0
.end method
