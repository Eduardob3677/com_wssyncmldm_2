.class public abstract LA3/A;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ3/c;

.field public static final b:LQ3/c;

.field public static final c:LQ3/c;

.field public static final d:LQ3/c;

.field public static final e:LQ3/c;

.field public static final f:LQ3/c;

.field public static final g:Ljava/util/List;

.field public static final h:LQ3/c;

.field public static final i:LQ3/c;

.field public static final j:Ljava/util/List;

.field public static final k:LQ3/c;

.field public static final l:LQ3/c;

.field public static final m:LQ3/c;

.field public static final n:LQ3/c;

.field public static final o:Ljava/util/Set;

.field public static final p:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, LQ3/c;

    const-string v1, "org.jspecify.nullness.Nullable"

    invoke-direct {v0, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v0, LA3/A;->a:LQ3/c;

    new-instance v1, LQ3/c;

    const-string v2, "org.jspecify.nullness.NullnessUnspecified"

    invoke-direct {v1, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v1, LA3/A;->b:LQ3/c;

    new-instance v1, LQ3/c;

    const-string v2, "org.jspecify.nullness.NullMarked"

    invoke-direct {v1, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v1, LA3/A;->c:LQ3/c;

    new-instance v2, LQ3/c;

    const-string v3, "org.jspecify.annotations.Nullable"

    invoke-direct {v2, v3}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v2, LA3/A;->d:LQ3/c;

    new-instance v3, LQ3/c;

    const-string v4, "org.jspecify.annotations.NullnessUnspecified"

    invoke-direct {v3, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v3, LA3/A;->e:LQ3/c;

    new-instance v3, LQ3/c;

    const-string v4, "org.jspecify.annotations.NullMarked"

    invoke-direct {v3, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v3, LA3/A;->f:LQ3/c;

    sget-object v5, LA3/z;->i:LQ3/c;

    new-instance v6, LQ3/c;

    const-string v4, "androidx.annotation.Nullable"

    invoke-direct {v6, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v7, LQ3/c;

    invoke-direct {v7, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v8, LQ3/c;

    const-string v4, "android.annotation.Nullable"

    invoke-direct {v8, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v9, LQ3/c;

    const-string v4, "com.android.annotations.Nullable"

    invoke-direct {v9, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v10, LQ3/c;

    const-string v4, "org.eclipse.jdt.annotation.Nullable"

    invoke-direct {v10, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v11, LQ3/c;

    const-string v4, "org.checkerframework.checker.nullness.qual.Nullable"

    invoke-direct {v11, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v12, LQ3/c;

    const-string v4, "javax.annotation.Nullable"

    invoke-direct {v12, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v13, LQ3/c;

    const-string v4, "javax.annotation.CheckForNull"

    invoke-direct {v13, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v14, LQ3/c;

    const-string v15, "edu.umd.cs.findbugs.annotations.CheckForNull"

    invoke-direct {v14, v15}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v15, LQ3/c;

    move-object/from16 v19, v3

    const-string v3, "edu.umd.cs.findbugs.annotations.Nullable"

    invoke-direct {v15, v3}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v3, LQ3/c;

    move-object/from16 v20, v2

    const-string v2, "edu.umd.cs.findbugs.annotations.PossiblyNull"

    invoke-direct {v3, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v2, LQ3/c;

    move-object/from16 v21, v1

    const-string v1, "io.reactivex.annotations.Nullable"

    invoke-direct {v2, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v1, LQ3/c;

    move-object/from16 v22, v0

    const-string v0, "io.reactivex.rxjava3.annotations.Nullable"

    invoke-direct {v1, v0}, LQ3/c;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v1

    filled-new-array/range {v5 .. v18}, [LQ3/c;

    move-result-object v0

    invoke-static {v0}, LR2/n;->y0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LA3/A;->g:Ljava/util/List;

    new-instance v1, LQ3/c;

    const-string v2, "javax.annotation.Nonnull"

    invoke-direct {v1, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v1, LA3/A;->h:LQ3/c;

    new-instance v2, LQ3/c;

    invoke-direct {v2, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v2, LA3/A;->i:LQ3/c;

    sget-object v5, LA3/z;->h:LQ3/c;

    new-instance v6, LQ3/c;

    const-string v2, "edu.umd.cs.findbugs.annotations.NonNull"

    invoke-direct {v6, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v7, LQ3/c;

    const-string v2, "androidx.annotation.NonNull"

    invoke-direct {v7, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v8, LQ3/c;

    invoke-direct {v8, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v9, LQ3/c;

    const-string v2, "android.annotation.NonNull"

    invoke-direct {v9, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v10, LQ3/c;

    const-string v2, "com.android.annotations.NonNull"

    invoke-direct {v10, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v11, LQ3/c;

    const-string v2, "org.eclipse.jdt.annotation.NonNull"

    invoke-direct {v11, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v12, LQ3/c;

    const-string v2, "org.checkerframework.checker.nullness.qual.NonNull"

    invoke-direct {v12, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v13, LQ3/c;

    const-string v2, "lombok.NonNull"

    invoke-direct {v13, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v14, LQ3/c;

    const-string v2, "io.reactivex.annotations.NonNull"

    invoke-direct {v14, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v15, LQ3/c;

    const-string v2, "io.reactivex.rxjava3.annotations.NonNull"

    invoke-direct {v15, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    filled-new-array/range {v5 .. v15}, [LQ3/c;

    move-result-object v2

    invoke-static {v2}, LR2/n;->y0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, LA3/A;->j:Ljava/util/List;

    new-instance v3, LQ3/c;

    const-string v4, "org.checkerframework.checker.nullness.compatqual.NullableDecl"

    invoke-direct {v3, v4}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v3, LA3/A;->k:LQ3/c;

    new-instance v4, LQ3/c;

    const-string v5, "org.checkerframework.checker.nullness.compatqual.NonNullDecl"

    invoke-direct {v4, v5}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v4, LA3/A;->l:LQ3/c;

    new-instance v5, LQ3/c;

    const-string v6, "androidx.annotation.RecentlyNullable"

    invoke-direct {v5, v6}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v5, LA3/A;->m:LQ3/c;

    new-instance v6, LQ3/c;

    const-string v7, "androidx.annotation.RecentlyNonNull"

    invoke-direct {v6, v7}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v6, LA3/A;->n:LQ3/c;

    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v7, v0}, LR2/B;->S(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, v1}, LR2/B;->R(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, v2}, LR2/B;->S(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, v3}, LR2/B;->R(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, v4}, LR2/B;->R(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, v5}, LR2/B;->R(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, v6}, LR2/B;->R(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, LR2/B;->R(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, LR2/B;->R(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, LR2/B;->R(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, LR2/B;->R(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    sget-object v0, LA3/z;->k:LQ3/c;

    sget-object v1, LA3/z;->l:LQ3/c;

    filled-new-array {v0, v1}, [LQ3/c;

    move-result-object v0

    invoke-static {v0}, LR2/B;->T([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LA3/A;->o:Ljava/util/Set;

    sget-object v0, LA3/z;->j:LQ3/c;

    sget-object v1, LA3/z;->m:LQ3/c;

    filled-new-array {v0, v1}, [LQ3/c;

    move-result-object v0

    invoke-static {v0}, LR2/B;->T([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LA3/A;->p:Ljava/util/Set;

    sget-object v0, LA3/z;->c:LQ3/c;

    sget-object v1, Lo3/m;->t:LQ3/c;

    new-instance v2, LQ2/e;

    invoke-direct {v2, v0, v1}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LA3/z;->d:LQ3/c;

    sget-object v1, Lo3/m;->w:LQ3/c;

    new-instance v3, LQ2/e;

    invoke-direct {v3, v0, v1}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LA3/z;->e:LQ3/c;

    sget-object v1, Lo3/m;->m:LQ3/c;

    new-instance v4, LQ2/e;

    invoke-direct {v4, v0, v1}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LA3/z;->f:LQ3/c;

    sget-object v1, Lo3/m;->x:LQ3/c;

    new-instance v5, LQ2/e;

    invoke-direct {v5, v0, v1}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3, v4, v5}, [LQ2/e;

    move-result-object v0

    invoke-static {v0}, LR2/z;->A1([LQ2/e;)Ljava/util/Map;

    return-void
.end method
