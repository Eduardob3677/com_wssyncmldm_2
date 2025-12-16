.class public final Lh4/V;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lh4/V;


# instance fields
.field public final a:Lh4/S;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lh4/S;->a:Lh4/P;

    invoke-static {v0}, Lh4/V;->e(Lh4/S;)Lh4/V;

    move-result-object v0

    sput-object v0, Lh4/V;->b:Lh4/V;

    return-void
.end method

.method public constructor <init>(Lh4/S;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/V;->a:Lh4/S;

    return-void

    :cond_0
    const/4 p0, 0x7

    invoke-static {p0}, Lh4/V;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic a(I)V
    .locals 13

    const/16 v0, 0x25

    const/16 v1, 0x22

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p0, v3, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    const/4 v6, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    move v6, v4

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_8

    :pswitch_2
    const-string v9, "substitution"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_3
    const-string v9, "projectionKind"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_4
    const-string v9, "typeParameterVariance"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_5
    const-string v9, "annotations"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_6
    const-string v9, "substituted"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_7
    const-string v9, "originalType"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_8
    const-string v9, "originalProjection"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_9
    const-string v9, "typeProjection"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_a
    const-string v9, "howThisTypeIsUsed"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_b
    const-string v9, "type"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_c
    const-string v9, "context"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_d
    const-string v9, "substitutionContext"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_e
    const-string v9, "second"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_f
    const-string v9, "first"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_10
    aput-object v7, v6, v8

    :goto_2
    const-string v8, "safeSubstitute"

    const-string v9, "unsafeSubstitute"

    const-string v10, "projectedTypeForConflictedTypeWithUnsafeVariance"

    const-string v11, "filterOutUnsafeVariance"

    const-string v12, "combine"

    if-eq p0, v3, :cond_6

    if-eq p0, v4, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_9

    packed-switch p0, :pswitch_data_a

    packed-switch p0, :pswitch_data_b

    packed-switch p0, :pswitch_data_c

    aput-object v7, v6, v3

    goto :goto_3

    :pswitch_11
    aput-object v10, v6, v3

    goto :goto_3

    :pswitch_12
    aput-object v9, v6, v3

    goto :goto_3

    :pswitch_13
    aput-object v8, v6, v3

    goto :goto_3

    :cond_2
    :pswitch_14
    aput-object v12, v6, v3

    goto :goto_3

    :cond_3
    aput-object v11, v6, v3

    goto :goto_3

    :cond_4
    const-string v7, "getSubstitution"

    aput-object v7, v6, v3

    goto :goto_3

    :cond_5
    const-string v7, "replaceWithContravariantApproximatingSubstitution"

    aput-object v7, v6, v3

    goto :goto_3

    :cond_6
    const-string v7, "replaceWithNonApproximatingSubstitution"

    aput-object v7, v6, v3

    :goto_3
    packed-switch p0, :pswitch_data_d

    :pswitch_15
    const-string v7, "create"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_16
    aput-object v12, v6, v4

    goto :goto_4

    :pswitch_17
    aput-object v11, v6, v4

    goto :goto_4

    :pswitch_18
    aput-object v10, v6, v4

    goto :goto_4

    :pswitch_19
    aput-object v9, v6, v4

    goto :goto_4

    :pswitch_1a
    const-string v7, "substituteWithoutApproximation"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1b
    const-string v7, "substitute"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1c
    aput-object v8, v6, v4

    goto :goto_4

    :pswitch_1d
    const-string v7, "<init>"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1e
    const-string v7, "createChainedSubstitutor"

    aput-object v7, v6, v4

    :goto_4
    :pswitch_1f
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v3, :cond_7

    if-eq p0, v4, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    packed-switch p0, :pswitch_data_e

    packed-switch p0, :pswitch_data_f

    packed-switch p0, :pswitch_data_10

    packed-switch p0, :pswitch_data_11

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :pswitch_20
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x28
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_2
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_5
        :pswitch_10
        :pswitch_4
        :pswitch_9
        :pswitch_10
        :pswitch_4
        :pswitch_3
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xb
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1d
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x28
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_1d
        :pswitch_1f
        :pswitch_1c
        :pswitch_1c
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_17
        :pswitch_1f
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0xb
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x13
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x1d
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x28
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public static b(II)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    if-eqz p1, :cond_0

    return p1

    :cond_0
    const/16 p0, 0x28

    invoke-static {p0}, Lh4/V;->a(I)V

    throw v0

    :cond_1
    if-ne p1, v1, :cond_3

    if-eqz p0, :cond_2

    return p0

    :cond_2
    const/16 p0, 0x29

    invoke-static {p0}, Lh4/V;->a(I)V

    throw v0

    :cond_3
    if-ne p0, p1, :cond_5

    if-eqz p1, :cond_4

    return p1

    :cond_4
    const/16 p0, 0x2a

    invoke-static {p0}, Lh4/V;->a(I)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Variance conflict: type parameter variance \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lh0/c;->n(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' and projection kind \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lh0/c;->n(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' cannot be combined"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6
    const/16 p0, 0x27

    invoke-static {p0}, Lh4/V;->a(I)V

    throw v0

    :cond_7
    const/16 p0, 0x26

    invoke-static {p0}, Lh4/V;->a(I)V

    throw v0
.end method

.method public static c(II)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-ne p0, v0, :cond_0

    if-ne p1, v1, :cond_0

    return v1

    :cond_0
    if-ne p0, v1, :cond_1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Lh4/v;)Lh4/V;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object v0

    invoke-virtual {p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object p0

    sget-object v1, Lh4/L;->b:Lh4/d;

    invoke-virtual {v1, v0, p0}, Lh4/d;->f(Lh4/J;Ljava/util/List;)Lh4/S;

    move-result-object p0

    invoke-static {p0}, Lh4/V;->e(Lh4/S;)Lh4/V;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, Lh4/V;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static e(Lh4/S;)Lh4/V;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lh4/V;

    invoke-direct {v0, p0}, Lh4/V;-><init>(Lh4/S;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lh4/V;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static f(Lh4/S;Lh4/S;)Lh4/V;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lh4/S;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lh4/S;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lh4/p;

    invoke-direct {v0, p0, p1}, Lh4/p;-><init>(Lh4/S;Lh4/S;)V

    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lh4/V;->e(Lh4/S;)Lh4/V;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x4

    invoke-static {p0}, Lh4/V;->a(I)V

    throw v0

    :cond_3
    const/4 p0, 0x3

    invoke-static {p0}, Lh4/V;->a(I)V

    throw v0
.end method

.method public static i(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lq4/k;->i(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Exception while computing toString(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method


# virtual methods
.method public final g()Lh4/S;
    .locals 0

    iget-object p0, p0, Lh4/V;->a:Lh4/S;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x8

    invoke-static {p0}, Lh4/V;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final h(ILh4/v;)Lh4/v;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    iget-object v1, p0, Lh4/V;->a:Lh4/S;

    invoke-virtual {v1}, Lh4/S;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    new-instance v1, Lh4/O;

    invoke-direct {v1, p1, p2}, Lh4/O;-><init>(ILh4/v;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lh4/V;->k(Lh4/N;Lr3/Q;I)Lh4/N;

    move-result-object p0

    invoke-virtual {p0}, Lh4/N;->b()Lh4/v;

    move-result-object p0
    :try_end_0
    .catch Lh4/U; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/16 p0, 0xc

    invoke-static {p0}, Lh4/V;->a(I)V

    throw v0

    :catch_0
    move-exception p0

    sget-object p1, Lj4/h;->m:Lj4/h;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p0, 0xa

    invoke-static {p0}, Lh4/V;->a(I)V

    throw v0

    :cond_3
    const/16 p0, 0x9

    invoke-static {p0}, Lh4/V;->a(I)V

    throw v0
.end method

.method public final j(ILh4/v;)Lh4/v;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    if-eqz p1, :cond_9

    new-instance v1, Lh4/O;

    invoke-virtual {p0}, Lh4/V;->g()Lh4/S;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lh4/S;->f(ILh4/v;)Lh4/v;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lh4/O;-><init>(ILh4/v;)V

    iget-object p1, p0, Lh4/V;->a:Lh4/S;

    invoke-virtual {p1}, Lh4/S;->e()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, v1, v0, v2}, Lh4/V;->k(Lh4/N;Lr3/Q;I)Lh4/N;

    move-result-object v1
    :try_end_0
    .catch Lh4/U; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Lh4/S;->a()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lh4/S;->b()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lh4/S;->b()Z

    move-result p0

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lh4/N;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lh4/N;->b()Lh4/v;

    move-result-object p1

    const-string p2, "typeProjection.type"

    invoke-static {p2, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p2, Lm4/b;->d:Lm4/b;

    invoke-static {p1, p2, v0}, Lh4/X;->d(Lh4/v;Lc3/b;Lq4/h;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lh4/N;->a()I

    move-result p2

    const-string v3, "typeProjection.projectionKind"

    invoke-static {p2, v3}, LB/f;->E(ILjava/lang/String;)V

    const/4 v3, 0x3

    if-ne p2, v3, :cond_5

    invoke-static {p1}, Li3/x;->d(Lh4/v;)Lm4/a;

    move-result-object p0

    new-instance v1, Lh4/O;

    iget-object p0, p0, Lm4/a;->b:Ljava/lang/Object;

    check-cast p0, Lh4/v;

    invoke-direct {v1, p2, p0}, Lh4/O;-><init>(ILh4/v;)V

    goto :goto_2

    :cond_5
    if-eqz p0, :cond_6

    invoke-static {p1}, Li3/x;->d(Lh4/v;)Lm4/a;

    move-result-object p0

    iget-object p0, p0, Lm4/a;->a:Ljava/lang/Object;

    check-cast p0, Lh4/v;

    new-instance v1, Lh4/O;

    invoke-direct {v1, p2, p0}, Lh4/O;-><init>(ILh4/v;)V

    goto :goto_2

    :cond_6
    new-instance p0, Lm4/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lh4/V;->e(Lh4/S;)Lh4/V;

    move-result-object p0

    iget-object p1, p0, Lh4/V;->a:Lh4/S;

    invoke-virtual {p1}, Lh4/S;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    :try_start_1
    invoke-virtual {p0, v1, v0, v2}, Lh4/V;->k(Lh4/N;Lr3/Q;I)Lh4/N;

    move-result-object v1
    :try_end_1
    .catch Lh4/U; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :goto_1
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Lh4/N;->b()Lh4/v;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_9
    const/16 p0, 0xf

    invoke-static {p0}, Lh4/V;->a(I)V

    throw v0

    :cond_a
    const/16 p0, 0xe

    invoke-static {p0}, Lh4/V;->a(I)V

    throw v0
.end method

.method public final k(Lh4/N;Lr3/Q;I)Lh4/N;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_2b

    const/16 v7, 0x64

    iget-object v8, v0, Lh4/V;->a:Lh4/S;

    if-gt v2, v7, :cond_2a

    invoke-virtual/range {p1 .. p1}, Lh4/N;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    return-object p1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lh4/N;->b()Lh4/v;

    move-result-object v7

    instance-of v9, v7, Lh4/Y;

    if-eqz v9, :cond_2

    check-cast v7, Lh4/Y;

    invoke-interface {v7}, Lh4/Y;->c0()Lh4/Z;

    move-result-object v3

    invoke-interface {v7}, Lh4/Y;->p0()Lh4/v;

    move-result-object v4

    new-instance v6, Lh4/O;

    invoke-virtual/range {p1 .. p1}, Lh4/N;->a()I

    move-result v7

    invoke-direct {v6, v7, v3}, Lh4/O;-><init>(ILh4/v;)V

    add-int/2addr v2, v5

    invoke-virtual {v0, v6, v1, v2}, Lh4/V;->k(Lh4/N;Lr3/Q;I)Lh4/N;

    move-result-object v1

    invoke-virtual {v1}, Lh4/N;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lh4/N;->a()I

    move-result v2

    invoke-virtual {v0, v2, v4}, Lh4/V;->j(ILh4/v;)Lh4/v;

    move-result-object v0

    invoke-virtual {v1}, Lh4/N;->b()Lh4/v;

    move-result-object v2

    invoke-virtual {v2}, Lh4/v;->M0()Lh4/Z;

    move-result-object v2

    invoke-static {v2, v0}, Lh4/c;->A(Lh4/Z;Lh4/v;)Lh4/Z;

    move-result-object v0

    new-instance v2, Lh4/O;

    invoke-virtual {v1}, Lh4/N;->a()I

    move-result v1

    invoke-direct {v2, v1, v0}, Lh4/O;-><init>(ILh4/v;)V

    return-object v2

    :cond_2
    const-string v9, "<this>"

    invoke-static {v9, v7}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7}, Lh4/v;->M0()Lh4/Z;

    invoke-virtual {v7}, Lh4/v;->M0()Lh4/Z;

    move-result-object v9

    instance-of v9, v9, LF3/f;

    if-eqz v9, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {v8, v7}, Lh4/S;->d(Lh4/v;)Lh4/N;

    move-result-object v9

    const/4 v10, 0x3

    if-eqz v9, :cond_8

    invoke-virtual {v7}, Lh4/v;->t()Ls3/h;

    move-result-object v11

    sget-object v12, Lo3/m;->y:LQ3/c;

    invoke-interface {v11, v12}, Ls3/h;->b(LQ3/c;)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v9}, Lh4/N;->b()Lh4/v;

    move-result-object v11

    invoke-virtual {v11}, Lh4/v;->J0()Lh4/J;

    move-result-object v11

    instance-of v12, v11, Li4/i;

    if-nez v12, :cond_5

    goto :goto_0

    :cond_5
    check-cast v11, Li4/i;

    iget-object v11, v11, Li4/i;->a:Lh4/N;

    invoke-virtual {v11}, Lh4/N;->a()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lh4/N;->a()I

    move-result v13

    invoke-static {v13, v12}, Lh4/V;->c(II)I

    move-result v13

    if-ne v13, v10, :cond_6

    new-instance v9, Lh4/O;

    invoke-virtual {v11}, Lh4/N;->b()Lh4/v;

    move-result-object v11

    invoke-direct {v9, v11}, Lh4/O;-><init>(Lh4/v;)V

    goto :goto_0

    :cond_6
    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    invoke-interface/range {p2 .. p2}, Lr3/Q;->A()I

    move-result v13

    invoke-static {v13, v12}, Lh4/V;->c(II)I

    move-result v12

    if-ne v12, v10, :cond_9

    new-instance v9, Lh4/O;

    invoke-virtual {v11}, Lh4/N;->b()Lh4/v;

    move-result-object v11

    invoke-direct {v9, v11}, Lh4/O;-><init>(Lh4/v;)V

    goto :goto_0

    :cond_8
    move-object v9, v6

    :cond_9
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lh4/N;->a()I

    move-result v11

    if-nez v9, :cond_d

    invoke-static {v7}, Lh4/c;->j(Lh4/v;)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {v7}, Lh4/v;->M0()Lh4/Z;

    move-result-object v12

    instance-of v13, v12, Lh4/k;

    if-eqz v13, :cond_a

    check-cast v12, Lh4/k;

    goto :goto_1

    :cond_a
    move-object v12, v6

    :goto_1
    if-eqz v12, :cond_b

    invoke-interface {v12}, Lh4/k;->J()Z

    move-result v12

    goto :goto_2

    :cond_b
    move v12, v4

    :goto_2
    if-nez v12, :cond_d

    invoke-virtual {v7}, Lh4/v;->M0()Lh4/Z;

    move-result-object v3

    check-cast v3, Lh4/q;

    new-instance v4, Lh4/O;

    iget-object v6, v3, Lh4/q;->d:Lh4/z;

    invoke-direct {v4, v11, v6}, Lh4/O;-><init>(ILh4/v;)V

    add-int/2addr v2, v5

    invoke-virtual {v0, v4, v1, v2}, Lh4/V;->k(Lh4/N;Lr3/Q;I)Lh4/N;

    move-result-object v4

    new-instance v5, Lh4/O;

    iget-object v3, v3, Lh4/q;->e:Lh4/z;

    invoke-direct {v5, v11, v3}, Lh4/O;-><init>(ILh4/v;)V

    invoke-virtual {v0, v5, v1, v2}, Lh4/V;->k(Lh4/N;Lr3/Q;I)Lh4/N;

    move-result-object v0

    invoke-virtual {v4}, Lh4/N;->a()I

    move-result v1

    invoke-virtual {v4}, Lh4/N;->b()Lh4/v;

    move-result-object v2

    if-ne v2, v6, :cond_c

    invoke-virtual {v0}, Lh4/N;->b()Lh4/v;

    move-result-object v2

    if-ne v2, v3, :cond_c

    return-object p1

    :cond_c
    invoke-virtual {v4}, Lh4/N;->b()Lh4/v;

    move-result-object v2

    invoke-static {v2}, Lh4/c;->b(Lh4/v;)Lh4/z;

    move-result-object v2

    invoke-virtual {v0}, Lh4/N;->b()Lh4/v;

    move-result-object v0

    invoke-static {v0}, Lh4/c;->b(Lh4/v;)Lh4/z;

    move-result-object v0

    invoke-static {v2, v0}, Lh4/d;->j(Lh4/z;Lh4/z;)Lh4/Z;

    move-result-object v0

    new-instance v2, Lh4/O;

    invoke-direct {v2, v1, v0}, Lh4/O;-><init>(ILh4/v;)V

    return-object v2

    :cond_d
    invoke-static {v7}, Lo3/i;->E(Lh4/v;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {v7}, Lh4/c;->i(Lh4/v;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_12

    :cond_e
    if-eqz v9, :cond_1a

    invoke-virtual {v9}, Lh4/N;->a()I

    move-result v0

    invoke-static {v11, v0}, Lh4/V;->c(II)I

    move-result v0

    invoke-virtual {v7}, Lh4/v;->J0()Lh4/J;

    move-result-object v1

    instance-of v1, v1, LU3/b;

    if-nez v1, :cond_11

    invoke-static {v0}, Lk/Q0;->f(I)I

    move-result v1

    if-eq v1, v5, :cond_10

    if-eq v1, v3, :cond_f

    goto :goto_3

    :cond_f
    new-instance v0, Lh4/U;

    const-string v1, "Out-projection in in-position"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lh4/O;

    invoke-virtual {v7}, Lh4/v;->J0()Lh4/J;

    move-result-object v1

    invoke-interface {v1}, Lh4/J;->g()Lo3/i;

    move-result-object v1

    invoke-virtual {v1}, Lo3/i;->o()Lh4/z;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lh4/O;-><init>(ILh4/v;)V

    return-object v0

    :cond_11
    :goto_3
    invoke-virtual {v7}, Lh4/v;->M0()Lh4/Z;

    move-result-object v1

    instance-of v2, v1, Lh4/k;

    if-eqz v2, :cond_12

    check-cast v1, Lh4/k;

    goto :goto_4

    :cond_12
    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_13

    invoke-interface {v1}, Lh4/k;->J()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_5

    :cond_13
    move-object v1, v6

    :goto_5
    invoke-virtual {v9}, Lh4/N;->c()Z

    move-result v2

    if-eqz v2, :cond_14

    return-object v9

    :cond_14
    if-eqz v1, :cond_15

    invoke-virtual {v9}, Lh4/N;->b()Lh4/v;

    move-result-object v2

    invoke-interface {v1, v2}, Lh4/k;->d(Lh4/v;)Lh4/Z;

    move-result-object v1

    goto :goto_6

    :cond_15
    invoke-virtual {v9}, Lh4/N;->b()Lh4/v;

    move-result-object v1

    invoke-virtual {v7}, Lh4/v;->K0()Z

    move-result v2

    invoke-static {v1, v2}, Lh4/X;->i(Lh4/v;Z)Lh4/v;

    move-result-object v1

    :goto_6
    invoke-virtual {v7}, Lh4/v;->t()Ls3/h;

    move-result-object v2

    invoke-interface {v2}, Ls3/h;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v7}, Lh4/v;->t()Ls3/h;

    move-result-object v2

    invoke-virtual {v8, v2}, Lh4/S;->c(Ls3/h;)Ls3/h;

    move-result-object v2

    if-eqz v2, :cond_17

    sget-object v6, Lo3/m;->y:LQ3/c;

    invoke-interface {v2, v6}, Ls3/h;->b(LQ3/c;)Z

    move-result v6

    if-nez v6, :cond_16

    goto :goto_7

    :cond_16
    new-instance v6, Ls3/l;

    new-instance v7, Lh4/T;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-direct {v6, v2, v7}, Ls3/l;-><init>(Ls3/h;Lh4/T;)V

    move-object v2, v6

    :goto_7
    new-instance v6, Ls3/i;

    invoke-virtual {v1}, Lh4/v;->t()Ls3/h;

    move-result-object v7

    new-array v3, v3, [Ls3/h;

    aput-object v7, v3, v4

    aput-object v2, v3, v5

    invoke-direct {v6, v3}, Ls3/i;-><init>([Ls3/h;)V

    invoke-static {v1, v6}, Lf1/a;->g0(Lh4/v;Ls3/h;)Lh4/v;

    move-result-object v1

    goto :goto_8

    :cond_17
    const/16 v0, 0x21

    invoke-static {v0}, Lh4/V;->a(I)V

    throw v6

    :cond_18
    :goto_8
    if-ne v0, v5, :cond_19

    invoke-virtual {v9}, Lh4/N;->a()I

    move-result v0

    invoke-static {v11, v0}, Lh4/V;->b(II)I

    move-result v11

    :cond_19
    new-instance v0, Lh4/O;

    invoke-direct {v0, v11, v1}, Lh4/O;-><init>(ILh4/v;)V

    return-object v0

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lh4/N;->b()Lh4/v;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lh4/N;->a()I

    move-result v7

    invoke-virtual {v1}, Lh4/v;->J0()Lh4/J;

    move-result-object v9

    invoke-interface {v9}, Lh4/J;->i()Lr3/g;

    move-result-object v9

    instance-of v9, v9, Lr3/Q;

    if-eqz v9, :cond_1b

    move-object/from16 v1, p1

    goto/16 :goto_11

    :cond_1b
    invoke-virtual {v1}, Lh4/v;->M0()Lh4/Z;

    move-result-object v9

    instance-of v10, v9, Lh4/a;

    if-eqz v10, :cond_1c

    check-cast v9, Lh4/a;

    goto :goto_9

    :cond_1c
    move-object v9, v6

    :goto_9
    if-eqz v9, :cond_1d

    iget-object v9, v9, Lh4/a;->e:Lh4/z;

    goto :goto_a

    :cond_1d
    move-object v9, v6

    :goto_a
    if-eqz v9, :cond_20

    instance-of v6, v8, Lh4/t;

    if-eqz v6, :cond_1f

    invoke-virtual {v8}, Lh4/S;->b()Z

    move-result v6

    if-nez v6, :cond_1e

    goto :goto_b

    :cond_1e
    new-instance v6, Lh4/V;

    new-instance v10, Lh4/t;

    move-object v11, v8

    check-cast v11, Lh4/t;

    iget-object v12, v11, Lh4/t;->c:[Lh4/N;

    iget-object v11, v11, Lh4/t;->b:[Lr3/Q;

    invoke-direct {v10, v11, v12, v4}, Lh4/t;-><init>([Lr3/Q;[Lh4/N;Z)V

    invoke-direct {v6, v10}, Lh4/V;-><init>(Lh4/S;)V

    goto :goto_c

    :cond_1f
    :goto_b
    move-object v6, v0

    :goto_c
    invoke-virtual {v6, v5, v9}, Lh4/V;->j(ILh4/v;)Lh4/v;

    move-result-object v6

    :cond_20
    invoke-virtual {v1}, Lh4/v;->J0()Lh4/J;

    move-result-object v9

    invoke-interface {v9}, Lh4/J;->k()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v4

    :goto_d
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_26

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lr3/Q;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lh4/N;

    add-int/lit8 v15, v2, 0x1

    invoke-virtual {v0, v14, v13, v15}, Lh4/V;->k(Lh4/N;Lr3/Q;I)Lh4/N;

    move-result-object v15

    invoke-interface {v13}, Lr3/Q;->A()I

    move-result v3

    invoke-virtual {v15}, Lh4/N;->a()I

    move-result v5

    invoke-static {v3, v5}, Lh4/V;->c(II)I

    move-result v3

    invoke-static {v3}, Lk/Q0;->f(I)I

    move-result v3

    if-eqz v3, :cond_23

    const/4 v5, 0x1

    if-eq v3, v5, :cond_21

    const/4 v5, 0x2

    if-eq v3, v5, :cond_22

    goto :goto_e

    :cond_21
    const/4 v5, 0x2

    :cond_22
    invoke-static {v13}, Lh4/X;->k(Lr3/Q;)Lh4/E;

    move-result-object v15

    :goto_e
    const/4 v13, 0x1

    goto :goto_f

    :cond_23
    const/4 v5, 0x2

    invoke-interface {v13}, Lr3/Q;->A()I

    move-result v3

    const/4 v13, 0x1

    if-eq v3, v13, :cond_24

    invoke-virtual {v15}, Lh4/N;->c()Z

    move-result v3

    if-nez v3, :cond_24

    new-instance v3, Lh4/O;

    invoke-virtual {v15}, Lh4/N;->b()Lh4/v;

    move-result-object v15

    invoke-direct {v3, v13, v15}, Lh4/O;-><init>(ILh4/v;)V

    move-object v15, v3

    :cond_24
    :goto_f
    if-eq v15, v14, :cond_25

    move v12, v13

    :cond_25
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v13

    move v3, v5

    move v5, v13

    goto :goto_d

    :cond_26
    if-nez v12, :cond_27

    goto :goto_10

    :cond_27
    move-object v10, v11

    :goto_10
    invoke-virtual {v1}, Lh4/v;->t()Ls3/h;

    move-result-object v0

    invoke-virtual {v8, v0}, Lh4/S;->c(Ls3/h;)Ls3/h;

    move-result-object v0

    const-string v2, "newArguments"

    invoke-static {v2, v10}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "newAnnotations"

    invoke-static {v2, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x4

    invoke-static {v1, v10, v0, v2}, Lh4/c;->o(Lh4/v;Ljava/util/List;Ls3/h;I)Lh4/v;

    move-result-object v0

    instance-of v1, v0, Lh4/z;

    if-eqz v1, :cond_28

    instance-of v1, v6, Lh4/z;

    if-eqz v1, :cond_28

    check-cast v0, Lh4/z;

    check-cast v6, Lh4/z;

    invoke-static {v0, v6}, Lh4/c;->z(Lh4/z;Lh4/z;)Lh4/z;

    move-result-object v0

    :cond_28
    new-instance v1, Lh4/O;

    invoke-direct {v1, v7, v0}, Lh4/O;-><init>(ILh4/v;)V

    :goto_11
    return-object v1

    :cond_29
    :goto_12
    return-object p1

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recursion too deep. Most likely infinite loop while substituting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lh4/V;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; substitution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lh4/V;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    const/16 v0, 0x12

    invoke-static {v0}, Lh4/V;->a(I)V

    throw v6
.end method
