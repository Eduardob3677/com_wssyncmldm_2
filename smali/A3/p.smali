.class public final LA3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr3/f0;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lr3/f0;I)V
    .locals 0

    iput p2, p0, LA3/p;->b:I

    const-string p2, "delegate"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA3/p;->a:Lr3/f0;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$1"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic b(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$2"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic c(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$8"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic d(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$9"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic e(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$3"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic f(I)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v3, :cond_0

    const-string v4, "descriptor"

    aput-object v4, v0, v1

    goto :goto_0

    :cond_0
    const-string v4, "from"

    aput-object v4, v0, v1

    goto :goto_0

    :cond_1
    const-string v4, "what"

    aput-object v4, v0, v1

    :goto_0
    const-string v1, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1"

    aput-object v1, v0, v2

    if-eq p0, v2, :cond_2

    if-eq p0, v3, :cond_2

    const-string p0, "hasContainingSourceFile"

    aput-object p0, v0, v3

    goto :goto_1

    :cond_2
    const-string p0, "isVisible"

    aput-object p0, v0, v3

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic g(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic h(I)V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v4, :cond_1

    if-eq p0, v0, :cond_0

    const-string v5, "what"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_0
    const-string v5, "fromClass"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_1
    const-string v5, "whatDeclaration"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_2
    const-string v5, "from"

    aput-object v5, v1, v3

    :goto_0
    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3"

    aput-object v3, v1, v2

    if-eq p0, v4, :cond_3

    if-eq p0, v0, :cond_3

    const-string p0, "isVisible"

    aput-object p0, v1, v4

    goto :goto_1

    :cond_3
    const-string p0, "doesReceiverFitForProtectedVisibility"

    aput-object p0, v1, v4

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic i(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$4"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic j(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$5"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic k(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$6"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic l(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$7"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final m(Lr3/O;Lr3/m;Lr3/j;)Z
    .locals 6

    iget v0, p0, LA3/p;->b:I

    packed-switch v0, :pswitch_data_0

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0}, LA3/p;->d(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    if-eqz p3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    invoke-static {p0}, LA3/p;->c(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_1
    if-nez p3, :cond_2

    const/4 p0, 0x1

    invoke-static {p0}, LA3/p;->l(I)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Visibility is unknown yet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    if-nez p3, :cond_3

    const/4 p0, 0x1

    invoke-static {p0}, LA3/p;->k(I)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This method shouldn\'t be invoked for LOCAL visibility"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    const/4 p0, 0x1

    if-eqz p3, :cond_4

    return p0

    :cond_4
    invoke-static {p0}, LA3/p;->j(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_4
    const/4 p0, 0x1

    if-eqz p3, :cond_6

    invoke-static {p2}, LT3/e;->d(Lr3/j;)Lr3/x;

    move-result-object p1

    invoke-static {p3}, LT3/e;->d(Lr3/j;)Lr3/x;

    move-result-object p2

    invoke-interface {p2, p1}, Lr3/x;->t0(Lr3/x;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p0, 0x0

    goto :goto_0

    :cond_5
    sget-object p1, Lr3/n;->n:Ln4/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return p0

    :cond_6
    invoke-static {p0}, LA3/p;->i(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_5
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_11

    const-class v2, Lr3/e;

    invoke-static {p2, v2, v1}, LT3/e;->j(Lr3/j;Ljava/lang/Class;Z)Lr3/j;

    move-result-object v3

    check-cast v3, Lr3/e;

    const/4 v4, 0x0

    invoke-static {p3, v2, v4}, LT3/e;->j(Lr3/j;Ljava/lang/Class;Z)Lr3/j;

    move-result-object p3

    check-cast p3, Lr3/e;

    if-nez p3, :cond_7

    :goto_1
    move v1, v4

    goto/16 :goto_4

    :cond_7
    if-eqz v3, :cond_8

    invoke-static {v3}, LT3/e;->m(Lr3/j;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v3, v2, v1}, LT3/e;->j(Lr3/j;Ljava/lang/Class;Z)Lr3/j;

    move-result-object v3

    check-cast v3, Lr3/e;

    if-eqz v3, :cond_8

    invoke-interface {p3}, Lr3/e;->q()Lh4/z;

    move-result-object v5

    invoke-interface {v3}, Lr3/e;->a()Lr3/e;

    move-result-object v3

    invoke-static {v5, v3}, LT3/e;->s(Lh4/v;Lr3/e;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    instance-of v3, p2, Lr3/c;

    if-eqz v3, :cond_9

    move-object v3, p2

    check-cast v3, Lr3/c;

    invoke-static {v3}, LT3/e;->u(Lr3/c;)Lr3/c;

    move-result-object v3

    goto :goto_2

    :cond_9
    move-object v3, p2

    :goto_2
    invoke-static {v3, v2, v1}, LT3/e;->j(Lr3/j;Ljava/lang/Class;Z)Lr3/j;

    move-result-object v2

    check-cast v2, Lr3/e;

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    invoke-interface {p3}, Lr3/e;->q()Lh4/z;

    move-result-object v4

    invoke-interface {v2}, Lr3/e;->a()Lr3/e;

    move-result-object v2

    invoke-static {v4, v2}, LT3/e;->s(Lh4/v;Lr3/e;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lr3/n;->m:Lr3/O;

    if-ne p1, v2, :cond_b

    goto :goto_3

    :cond_b
    instance-of v2, v3, Lr3/c;

    if-nez v2, :cond_c

    goto :goto_4

    :cond_c
    instance-of v2, v3, Lr3/i;

    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    sget-object v2, Lr3/n;->l:Lr3/O;

    if-ne p1, v2, :cond_e

    goto :goto_4

    :cond_e
    sget-object v1, Lr3/n;->k:Lr3/O;

    if-eq p1, v1, :cond_10

    if-nez p1, :cond_f

    goto :goto_3

    :cond_f
    invoke-virtual {p1}, Lr3/O;->e()Lh4/v;

    throw v0

    :cond_10
    :goto_3
    invoke-interface {p3}, Lr3/j;->l()Lr3/j;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, LA3/p;->m(Lr3/O;Lr3/m;Lr3/j;)Z

    move-result v1

    :goto_4
    return v1

    :cond_11
    invoke-static {v1}, LA3/p;->h(I)V

    throw v0

    :pswitch_6
    const/4 p0, 0x1

    if-eqz p3, :cond_15

    sget-object v0, Lr3/n;->a:LA3/p;

    invoke-virtual {v0, p1, p2, p3}, LA3/p;->m(Lr3/O;Lr3/m;Lr3/j;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_13

    sget-object p3, Lr3/n;->l:Lr3/O;

    if-ne p1, p3, :cond_12

    goto :goto_5

    :cond_12
    sget-object p3, Lr3/n;->k:Lr3/O;

    if-ne p1, p3, :cond_14

    :cond_13
    move p0, v0

    goto :goto_5

    :cond_14
    const-class p3, Lr3/e;

    invoke-static {p2, p3, p0}, LT3/e;->j(Lr3/j;Ljava/lang/Class;Z)Lr3/j;

    move-result-object p0

    if-eqz p0, :cond_13

    instance-of p2, p1, Lb4/c;

    if-eqz p2, :cond_13

    check-cast p1, Lb4/c;

    iget-object p1, p1, Lb4/c;->c:Lr3/e;

    invoke-interface {p1}, Lr3/e;->a()Lr3/e;

    move-result-object p1

    invoke-interface {p0}, Lr3/j;->a()Lr3/j;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_5
    return p0

    :cond_15
    invoke-static {p0}, LA3/p;->g(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_7
    if-eqz p3, :cond_1e

    invoke-static {p2}, LT3/e;->t(Lr3/j;)Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-static {p3}, LT3/e;->f(Lr3/j;)Lr3/O;

    move-result-object p0

    sget-object p1, Lr3/O;->d:Lr3/O;

    if-eq p0, p1, :cond_16

    invoke-static {p2, p3}, Lr3/n;->d(Lr3/j;Lr3/j;)Z

    move-result p0

    goto :goto_8

    :cond_16
    instance-of p0, p2, Lr3/i;

    if-eqz p0, :cond_17

    move-object p0, p2

    check-cast p0, Lr3/i;

    invoke-interface {p0}, Lr3/i;->l()Lr3/h;

    :cond_17
    if-eqz p2, :cond_19

    invoke-interface {p2}, Lr3/j;->l()Lr3/j;

    move-result-object p2

    instance-of p0, p2, Lr3/e;

    if-eqz p0, :cond_18

    invoke-static {p2}, LT3/e;->m(Lr3/j;)Z

    move-result p0

    if-eqz p0, :cond_19

    :cond_18
    instance-of p0, p2, Lr3/C;

    if-eqz p0, :cond_17

    :cond_19
    const/4 p0, 0x0

    if-nez p2, :cond_1a

    goto :goto_8

    :cond_1a
    :goto_6
    if-eqz p3, :cond_1d

    const/4 p1, 0x1

    if-ne p2, p3, :cond_1b

    :goto_7
    move p0, p1

    goto :goto_8

    :cond_1b
    instance-of v0, p3, Lr3/C;

    if-eqz v0, :cond_1c

    instance-of v0, p2, Lr3/C;

    if-eqz v0, :cond_1d

    move-object v0, p2

    check-cast v0, Lr3/C;

    check-cast v0, Lu3/E;

    move-object v1, p3

    check-cast v1, Lr3/C;

    check-cast v1, Lu3/E;

    iget-object v0, v0, Lu3/E;->g:LQ3/c;

    iget-object v1, v1, Lu3/E;->g:LQ3/c;

    invoke-virtual {v0, v1}, LQ3/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p3}, LT3/e;->d(Lr3/j;)Lr3/x;

    move-result-object p3

    invoke-static {p2}, LT3/e;->d(Lr3/j;)Lr3/x;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    goto :goto_7

    :cond_1c
    invoke-interface {p3}, Lr3/j;->l()Lr3/j;

    move-result-object p3

    goto :goto_6

    :cond_1d
    :goto_8
    return p0

    :cond_1e
    const/4 p0, 0x2

    invoke-static {p0}, LA3/p;->f(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_8
    if-eqz p3, :cond_1f

    invoke-static {p1, p2, p3}, LA3/q;->b(Lr3/O;Lr3/m;Lr3/j;)Z

    move-result p0

    return p0

    :cond_1f
    const/4 p0, 0x1

    invoke-static {p0}, LA3/p;->e(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_9
    if-eqz p3, :cond_20

    invoke-static {p1, p2, p3}, LA3/q;->b(Lr3/O;Lr3/m;Lr3/j;)Z

    move-result p0

    return p0

    :cond_20
    const/4 p0, 0x1

    invoke-static {p0}, LA3/p;->b(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_a
    if-eqz p3, :cond_21

    invoke-static {p2, p3}, LA3/q;->c(Lr3/j;Lr3/j;)Z

    move-result p0

    return p0

    :cond_21
    const/4 p0, 0x1

    invoke-static {p0}, LA3/p;->a(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LA3/p;->a:Lr3/f0;

    invoke-virtual {p0}, Lr3/f0;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
