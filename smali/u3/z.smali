.class public final Lu3/z;
.super Lu3/A;
.source "SourceFile"


# instance fields
.field public final c:Lu3/A;

.field public final d:Lh4/V;

.field public e:Lh4/V;

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Lh4/j;


# direct methods
.method public constructor <init>(Lu3/A;Lh4/V;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/z;->c:Lu3/A;

    iput-object p2, p0, Lu3/z;->d:Lh4/V;

    return-void
.end method

.method public static synthetic c0(I)V
    .locals 15

    const/16 v0, 0x17

    const/16 v1, 0xd

    const/16 v2, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq p0, v7, :cond_0

    if-eq p0, v6, :cond_0

    if-eq p0, v5, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v8, "@NotNull method %s.%s must not return null"

    goto :goto_0

    :cond_0
    const-string v8, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_0
    if-eq p0, v7, :cond_1

    if-eq p0, v6, :cond_1

    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v6

    :goto_1
    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazySubstitutingClassDescriptor"

    const/4 v11, 0x0

    if-eq p0, v7, :cond_5

    if-eq p0, v6, :cond_4

    if-eq p0, v5, :cond_3

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_2

    aput-object v10, v9, v11

    goto :goto_2

    :cond_2
    const-string v12, "substitutor"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_3
    const-string v12, "typeSubstitution"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_4
    const-string v12, "kotlinTypeRefiner"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_5
    const-string v12, "typeArguments"

    aput-object v12, v9, v11

    :goto_2
    const-string v11, "getMemberScope"

    const-string v12, "getUnsubstitutedMemberScope"

    const-string v13, "substitute"

    const/4 v14, 0x1

    packed-switch p0, :pswitch_data_0

    const-string v10, "getTypeConstructor"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_0
    const-string v10, "getSealedSubclasses"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_1
    const-string v10, "getDeclaredTypeParameters"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_2
    const-string v10, "getSource"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_3
    const-string v10, "getUnsubstitutedInnerClassesScope"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_4
    const-string v10, "getVisibility"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_5
    const-string v10, "getModality"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_6
    const-string v10, "getKind"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_7
    aput-object v13, v9, v14

    goto :goto_3

    :pswitch_8
    const-string v10, "getContainingDeclaration"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_9
    const-string v10, "getOriginal"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_a
    const-string v10, "getName"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_b
    const-string v10, "getAnnotations"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_c
    const-string v10, "getConstructors"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_d
    const-string v10, "getContextReceivers"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_e
    const-string v10, "getDefaultType"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_f
    const-string v10, "getStaticScope"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_10
    aput-object v12, v9, v14

    goto :goto_3

    :pswitch_11
    aput-object v11, v9, v14

    goto :goto_3

    :pswitch_12
    aput-object v10, v9, v14

    :goto_3
    if-eq p0, v7, :cond_8

    if-eq p0, v6, :cond_8

    if-eq p0, v5, :cond_8

    if-eq p0, v4, :cond_8

    if-eq p0, v3, :cond_8

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_6

    goto :goto_4

    :cond_6
    aput-object v13, v9, v7

    goto :goto_4

    :cond_7
    aput-object v12, v9, v7

    goto :goto_4

    :cond_8
    aput-object v11, v9, v7

    :goto_4
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eq p0, v7, :cond_9

    if-eq p0, v6, :cond_9

    if-eq p0, v5, :cond_9

    if-eq p0, v4, :cond_9

    if-eq p0, v3, :cond_9

    if-eq p0, v2, :cond_9

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_12
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_12
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


# virtual methods
.method public final A0()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/e;->A0()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x1f

    invoke-static {p0}, Lu3/z;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final C(Lh4/S;)La4/o;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0}, LT3/e;->d(Lr3/j;)Lr3/x;

    move-result-object v0

    invoke-static {v0}, LX3/f;->i(Lr3/x;)V

    sget-object v0, Li4/f;->a:Li4/f;

    invoke-virtual {p0, p1, v0}, Lu3/z;->d(Lh4/S;Li4/f;)La4/o;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0xa

    invoke-static {p0}, Lu3/z;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final D()Z
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/w;->D()Z

    move-result p0

    return p0
.end method

.method public final D0()Z
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/e;->D0()Z

    move-result p0

    return p0
.end method

.method public final F0(Lr3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lr3/l;->b(Lr3/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final H()Lh4/J;
    .locals 6

    iget-object v0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {v0}, Lr3/g;->H()Lh4/J;

    move-result-object v0

    iget-object v1, p0, Lu3/z;->d:Lh4/V;

    iget-object v1, v1, Lh4/V;->a:Lh4/S;

    invoke-virtual {v1}, Lh4/S;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lu3/z;->c0(I)V

    throw v2

    :cond_1
    iget-object v1, p0, Lu3/z;->h:Lh4/j;

    const/4 v3, 0x1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lu3/z;->p0()Lh4/V;

    move-result-object v1

    invoke-interface {v0}, Lh4/J;->j()Ljava/util/Collection;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh4/v;

    invoke-virtual {v1, v3, v5}, Lh4/V;->j(ILh4/v;)Lh4/v;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lh4/j;

    iget-object v1, p0, Lu3/z;->f:Ljava/util/ArrayList;

    sget-object v5, Lg4/l;->e:Lg4/b;

    invoke-direct {v0, p0, v1, v4, v5}, Lh4/j;-><init>(Lr3/e;Ljava/util/List;Ljava/util/Collection;Lg4/o;)V

    iput-object v0, p0, Lu3/z;->h:Lh4/j;

    :cond_3
    iget-object p0, p0, Lu3/z;->h:Lh4/j;

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    invoke-static {v3}, Lu3/z;->c0(I)V

    throw v2
.end method

.method public final H0()Lu3/w;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final J(Li4/f;)La4/o;
    .locals 1

    iget-object v0, p0, Lu3/z;->c:Lu3/A;

    invoke-virtual {v0, p1}, Lu3/A;->J(Li4/f;)La4/o;

    move-result-object p1

    iget-object v0, p0, Lu3/z;->d:Lh4/V;

    iget-object v0, v0, Lh4/V;->a:Lh4/S;

    invoke-virtual {v0}, Lh4/S;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p0, 0xe

    invoke-static {p0}, Lu3/z;->c0(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance v0, La4/t;

    invoke-virtual {p0}, Lu3/z;->p0()Lh4/V;

    move-result-object p0

    invoke-direct {v0, p1, p0}, La4/t;-><init>(La4/o;Lh4/V;)V

    return-object v0
.end method

.method public final L()I
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/e;->L()I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    :cond_0
    const/16 p0, 0x19

    invoke-static {p0}, Lu3/z;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final N()Z
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/e;->N()Z

    move-result p0

    return p0
.end method

.method public final R()La4/o;
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/e;->R()La4/o;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x1c

    invoke-static {p0}, Lu3/z;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final S()Lr3/S;
    .locals 7

    iget-object v0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {v0}, Lr3/e;->S()Lr3/S;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v1, v0, Lr3/t;

    const/4 v2, 0x1

    iget-object v3, p0, Lu3/z;->d:Lh4/V;

    if-eqz v1, :cond_3

    new-instance v1, Lr3/t;

    check-cast v0, Lr3/t;

    iget-object v4, v0, Lr3/t;->b:Lk4/d;

    check-cast v4, Lh4/z;

    if-eqz v4, :cond_2

    iget-object v3, v3, Lh4/V;->a:Lh4/S;

    invoke-virtual {v3}, Lh4/S;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lu3/z;->p0()Lh4/V;

    move-result-object p0

    invoke-virtual {p0, v2, v4}, Lh4/V;->j(ILh4/v;)Lh4/v;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lh4/z;

    :cond_2
    :goto_0
    iget-object p0, v0, Lr3/t;->a:LQ3/f;

    invoke-direct {v1, p0, v4}, Lr3/t;-><init>(LQ3/f;Lk4/d;)V

    goto :goto_3

    :cond_3
    instance-of v1, v0, Lr3/y;

    if-eqz v1, :cond_7

    check-cast v0, Lr3/y;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lr3/y;->a:Ljava/util/List;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LQ2/e;

    iget-object v5, v4, LQ2/e;->c:Ljava/lang/Object;

    check-cast v5, LQ3/f;

    iget-object v4, v4, LQ2/e;->d:Ljava/lang/Object;

    check-cast v4, Lk4/d;

    check-cast v4, Lh4/z;

    if-eqz v4, :cond_5

    iget-object v6, v3, Lh4/V;->a:Lh4/S;

    invoke-virtual {v6}, Lh4/S;->e()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lu3/z;->p0()Lh4/V;

    move-result-object v6

    invoke-virtual {v6, v2, v4}, Lh4/V;->j(ILh4/v;)Lh4/v;

    move-result-object v4

    check-cast v4, Lh4/z;

    :cond_5
    :goto_2
    new-instance v6, LQ2/e;

    invoke-direct {v6, v5, v4}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance p0, Lr3/y;

    invoke-direct {p0, v1}, Lr3/y;-><init>(Ljava/util/ArrayList;)V

    move-object v1, p0

    :goto_3
    return-object v1

    :cond_7
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final W()Lu3/k;
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/e;->W()Lu3/k;

    move-result-object p0

    return-object p0
.end method

.method public final X()La4/o;
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/e;->X()La4/o;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0xf

    invoke-static {p0}, Lu3/z;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a()Lr3/e;
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/e;->a()Lr3/e;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x15

    invoke-static {p0}, Lu3/z;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(Lh4/V;)Lr3/k;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Lh4/V;->a:Lh4/S;

    invoke-virtual {v0}, Lh4/S;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lu3/z;

    invoke-virtual {p1}, Lh4/V;->g()Lh4/S;

    move-result-object p1

    invoke-virtual {p0}, Lu3/z;->p0()Lh4/V;

    move-result-object v1

    invoke-virtual {v1}, Lh4/V;->g()Lh4/S;

    move-result-object v1

    invoke-static {p1, v1}, Lh4/V;->f(Lh4/S;Lh4/S;)Lh4/V;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lu3/z;-><init>(Lu3/A;Lh4/V;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_1
    const/16 p0, 0x17

    invoke-static {p0}, Lu3/z;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c()LA3/p;
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/e;->c()LA3/p;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x1b

    invoke-static {p0}, Lu3/z;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Lh4/S;Li4/f;)La4/o;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lu3/z;->c:Lu3/A;

    invoke-virtual {v1, p1, p2}, Lu3/A;->d(Lh4/S;Li4/f;)La4/o;

    move-result-object p1

    iget-object p2, p0, Lu3/z;->d:Lh4/V;

    iget-object p2, p2, Lh4/V;->a:Lh4/S;

    invoke-virtual {p2}, Lh4/S;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x7

    invoke-static {p0}, Lu3/z;->c0(I)V

    throw v0

    :cond_1
    new-instance p2, La4/t;

    invoke-virtual {p0}, Lu3/z;->p0()Lh4/V;

    move-result-object p0

    invoke-direct {p2, p1, p0}, La4/t;-><init>(La4/o;Lh4/V;)V

    return-object p2

    :cond_2
    const/4 p0, 0x5

    invoke-static {p0}, Lu3/z;->c0(I)V

    throw v0
.end method

.method public final f0()La4/o;
    .locals 1

    iget-object v0, p0, Lu3/z;->c:Lu3/A;

    invoke-static {v0}, LT3/e;->d(Lr3/j;)Lr3/x;

    move-result-object v0

    invoke-static {v0}, LX3/f;->i(Lr3/x;)V

    sget-object v0, Li4/f;->a:Li4/f;

    invoke-virtual {p0, v0}, Lu3/z;->J(Li4/f;)La4/o;

    move-result-object p0

    return-object p0
.end method

.method public final getName()LQ3/f;
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/j;->getName()LQ3/f;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x14

    invoke-static {p0}, Lu3/z;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final h0()Z
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/e;->h0()Z

    move-result p0

    return p0
.end method

.method public final i()I
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/e;->i()I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    :cond_0
    const/16 p0, 0x1a

    invoke-static {p0}, Lu3/z;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/e;->j()Z

    move-result p0

    return p0
.end method

.method public final j0()Z
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/w;->j0()Z

    move-result p0

    return p0
.end method

.method public final k()Ljava/util/Collection;
    .locals 5

    iget-object v0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {v0}, Lr3/e;->k()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu3/k;

    move-object v3, v2

    check-cast v3, Lu3/v;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lh4/V;->b:Lh4/V;

    invoke-virtual {v3, v4}, Lu3/v;->W0(Lh4/V;)Lu3/u;

    move-result-object v4

    invoke-virtual {v2}, Lu3/k;->d1()Lu3/k;

    move-result-object v2

    iput-object v2, v4, Lu3/u;->g:Lr3/s;

    invoke-virtual {v3}, Lu3/v;->i()I

    move-result v2

    invoke-virtual {v4, v2}, Lu3/u;->z(I)Lr3/r;

    invoke-virtual {v3}, Lu3/v;->c()LA3/p;

    move-result-object v2

    invoke-virtual {v4, v2}, Lu3/u;->B(LA3/p;)Lr3/r;

    invoke-virtual {v3}, Lu3/v;->k0()I

    move-result v2

    invoke-virtual {v4, v2}, Lu3/u;->a(I)Lr3/r;

    const/4 v2, 0x0

    iput-boolean v2, v4, Lu3/u;->o:Z

    iget-object v2, v4, Lu3/u;->z:Lu3/v;

    invoke-virtual {v2, v4}, Lu3/v;->T0(Lu3/u;)Lu3/v;

    move-result-object v2

    check-cast v2, Lu3/k;

    invoke-virtual {p0}, Lu3/z;->p0()Lh4/V;

    move-result-object v3

    invoke-virtual {v2, v3}, Lu3/k;->g1(Lh4/V;)Lu3/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final l()Lr3/j;
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x16

    invoke-static {p0}, Lu3/z;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final m()Lr3/N;
    .locals 0

    sget-object p0, Lr3/N;->a:Lr3/M;

    return-object p0
.end method

.method public final p0()Lh4/V;
    .locals 4

    iget-object v0, p0, Lu3/z;->e:Lh4/V;

    if-nez v0, :cond_3

    iget-object v0, p0, Lu3/z;->d:Lh4/V;

    iget-object v1, v0, Lh4/V;->a:Lh4/S;

    invoke-virtual {v1}, Lh4/S;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lu3/z;->e:Lh4/V;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {v1}, Lr3/g;->H()Lh4/J;

    move-result-object v1

    invoke-interface {v1}, Lh4/J;->k()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lu3/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lh4/V;->g()Lh4/S;

    move-result-object v0

    iget-object v2, p0, Lu3/z;->f:Ljava/util/ArrayList;

    invoke-static {v1, v0, p0, v2}, Lh4/c;->u(Ljava/util/List;Lh4/S;Lr3/j;Ljava/util/List;)Lh4/V;

    move-result-object v0

    iput-object v0, p0, Lu3/z;->e:Lh4/V;

    iget-object v0, p0, Lu3/z;->f:Ljava/util/ArrayList;

    const-string v1, "<this>"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lr3/Q;

    invoke-interface {v3}, Lr3/Q;->m0()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lu3/z;->g:Ljava/util/ArrayList;

    :cond_3
    :goto_1
    iget-object p0, p0, Lu3/z;->e:Lh4/V;

    return-object p0
.end method

.method public final q()Lh4/z;
    .locals 4

    invoke-virtual {p0}, Lu3/z;->H()Lh4/J;

    move-result-object v0

    invoke-interface {v0}, Lh4/J;->k()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lh4/X;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lu3/z;->t()Ls3/h;

    move-result-object v1

    const-string v2, "annotations"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Ls3/h;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lh4/G;->d:Le/v;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lh4/G;->e:Lh4/G;

    goto :goto_0

    :cond_0
    sget-object v2, Lh4/G;->d:Le/v;

    new-instance v3, Lh4/h;

    invoke-direct {v3, v1}, Lh4/h;-><init>(Ls3/h;)V

    invoke-static {v3}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Le/v;->j(Ljava/util/List;)Lh4/G;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lu3/z;->H()Lh4/J;

    move-result-object v2

    invoke-virtual {p0}, Lu3/z;->f0()La4/o;

    move-result-object p0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v0, v3}, Lh4/d;->s(La4/o;Lh4/G;Lh4/J;Ljava/util/List;Z)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public final s()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lu3/z;->p0()Lh4/V;

    iget-object p0, p0, Lu3/z;->g:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x1e

    invoke-static {p0}, Lu3/z;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final s0()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x11

    invoke-static {p0}, Lu3/z;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final t()Ls3/h;
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Ls3/a;->t()Ls3/h;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x13

    invoke-static {p0}, Lu3/z;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final v()Z
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/e;->v()Z

    move-result p0

    return p0
.end method

.method public final y()Z
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/w;->y()Z

    move-result p0

    return p0
.end method

.method public final z()Z
    .locals 0

    iget-object p0, p0, Lu3/z;->c:Lu3/A;

    invoke-interface {p0}, Lr3/h;->z()Z

    move-result p0

    return p0
.end method
