.class public abstract LA3/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ3/c;

.field public static final b:[LQ3/c;

.field public static final c:LA3/D;

.field public static final d:LA3/t;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, LQ3/c;

    const-string v1, "org.jspecify.nullness"

    invoke-direct {v0, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v1, LQ3/c;

    const-string v2, "org.jspecify.annotations"

    invoke-direct {v1, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v1, LA3/s;->a:LQ3/c;

    new-instance v2, LQ3/c;

    const-string v3, "io.reactivex.rxjava3.annotations"

    invoke-direct {v2, v3}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v3, LQ3/c;

    const-string v4, "org.checkerframework.checker.nullness.compatqual"

    invoke-direct {v3, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, LQ3/c;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, LQ3/c;

    const-string v6, ".Nullable"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v6, LQ3/c;

    const-string v7, ".NonNull"

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    filled-new-array {v5, v6}, [LQ3/c;

    move-result-object v4

    sput-object v4, LA3/s;->b:[LQ3/c;

    new-instance v4, LA3/D;

    new-instance v5, LQ3/c;

    const-string v6, "org.jetbrains.annotations"

    invoke-direct {v5, v6}, LQ3/c;-><init>(Ljava/lang/String;)V

    sget-object v6, LA3/t;->d:LA3/t;

    new-instance v7, LQ2/e;

    invoke-direct {v7, v5, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LQ3/c;

    const-string v8, "androidx.annotation"

    invoke-direct {v5, v8}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v8, LQ2/e;

    invoke-direct {v8, v5, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LQ3/c;

    const-string v9, "android.support.annotation"

    invoke-direct {v5, v9}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v9, LQ2/e;

    invoke-direct {v9, v5, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LQ3/c;

    const-string v10, "android.annotation"

    invoke-direct {v5, v10}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v10, LQ2/e;

    invoke-direct {v10, v5, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LQ3/c;

    const-string v11, "com.android.annotations"

    invoke-direct {v5, v11}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v11, LQ2/e;

    invoke-direct {v11, v5, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LQ3/c;

    const-string v12, "org.eclipse.jdt.annotation"

    invoke-direct {v5, v12}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v12, LQ2/e;

    invoke-direct {v12, v5, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LQ3/c;

    const-string v13, "org.checkerframework.checker.nullness.qual"

    invoke-direct {v5, v13}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v13, LQ2/e;

    invoke-direct {v13, v5, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, LQ2/e;

    invoke-direct {v14, v3, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, LQ3/c;

    const-string v5, "javax.annotation"

    invoke-direct {v3, v5}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v15, LQ2/e;

    invoke-direct {v15, v3, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, LQ3/c;

    const-string v5, "edu.umd.cs.findbugs.annotations"

    invoke-direct {v3, v5}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v5, LQ2/e;

    invoke-direct {v5, v3, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, LQ3/c;

    move-object/from16 v24, v4

    const-string v4, "io.reactivex.annotations"

    invoke-direct {v3, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v4, LQ2/e;

    invoke-direct {v4, v3, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, LQ3/c;

    move-object/from16 v17, v4

    const-string v4, "androidx.annotation.RecentlyNullable"

    invoke-direct {v3, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v4, LA3/t;

    move-object/from16 v16, v5

    sget-object v5, LA3/E;->d:LA3/E;

    move-object/from16 v18, v15

    const/4 v15, 0x4

    invoke-direct {v4, v5, v15}, LA3/t;-><init>(LA3/E;I)V

    new-instance v15, LQ2/e;

    invoke-direct {v15, v3, v4}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, LQ3/c;

    const-string v4, "androidx.annotation.RecentlyNonNull"

    invoke-direct {v3, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v4, LA3/t;

    move-object/from16 v20, v15

    const/4 v15, 0x4

    invoke-direct {v4, v5, v15}, LA3/t;-><init>(LA3/E;I)V

    new-instance v15, LQ2/e;

    invoke-direct {v15, v3, v4}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, LQ3/c;

    const-string v4, "lombok"

    invoke-direct {v3, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v4, LQ2/e;

    invoke-direct {v4, v3, v6}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, LA3/t;

    new-instance v6, LQ2/b;

    move-object/from16 v21, v15

    const/16 v15, 0x9

    move-object/from16 v22, v4

    const/4 v4, 0x0

    invoke-direct {v6, v15, v4}, LQ2/b;-><init>(II)V

    sget-object v4, LA3/E;->e:LA3/E;

    invoke-direct {v3, v5, v6, v4}, LA3/t;-><init>(LA3/E;LQ2/b;LA3/E;)V

    new-instance v6, LQ2/e;

    invoke-direct {v6, v0, v3}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LA3/t;

    new-instance v3, LQ2/b;

    move-object/from16 v25, v6

    const/4 v6, 0x0

    invoke-direct {v3, v15, v6}, LQ2/b;-><init>(II)V

    invoke-direct {v0, v5, v3, v4}, LA3/t;-><init>(LA3/E;LQ2/b;LA3/E;)V

    new-instance v3, LQ2/e;

    invoke-direct {v3, v1, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LA3/t;

    new-instance v1, LQ2/b;

    const/16 v15, 0x8

    invoke-direct {v1, v15, v6}, LQ2/b;-><init>(II)V

    invoke-direct {v0, v5, v1, v4}, LA3/t;-><init>(LA3/E;LQ2/b;LA3/E;)V

    new-instance v1, LQ2/e;

    invoke-direct {v1, v2, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v2, v20

    move-object/from16 v4, v21

    const/4 v0, 0x4

    move-object/from16 v15, v18

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v22

    move-object/from16 v21, v25

    move-object/from16 v22, v3

    move-object/from16 v23, v1

    filled-new-array/range {v7 .. v23}, [LQ2/e;

    move-result-object v1

    invoke-static {v1}, LR2/z;->A1([LQ2/e;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-direct {v2, v1}, LA3/D;-><init>(Ljava/util/Map;)V

    sput-object v2, LA3/s;->c:LA3/D;

    new-instance v1, LA3/t;

    invoke-direct {v1, v5, v0}, LA3/t;-><init>(LA3/E;I)V

    sput-object v1, LA3/s;->d:LA3/t;

    return-void
.end method
