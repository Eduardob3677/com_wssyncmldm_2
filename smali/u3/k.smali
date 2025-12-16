.class public Lu3/k;
.super Lu3/v;
.source "SourceFile"

# interfaces
.implements Lr3/i;


# instance fields
.field public final G:Z


# direct methods
.method public constructor <init>(Lr3/e;Lr3/i;Ls3/h;ZILr3/N;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    sget-object v3, LQ3/h;->e:LQ3/f;

    move-object v1, p0

    move v2, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p6

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lu3/v;-><init>(ILQ3/f;Lr3/j;Lr3/s;Lr3/N;Ls3/h;)V

    iput-boolean p4, p0, Lu3/k;->G:Z

    return-void

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0}, Lu3/k;->I0(I)V

    throw v0

    :cond_1
    const/4 p0, 0x2

    invoke-static {p0}, Lu3/k;->I0(I)V

    throw v0

    :cond_2
    const/4 p0, 0x1

    invoke-static {p0}, Lu3/k;->I0(I)V

    throw v0

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, Lu3/k;->I0(I)V

    throw v0
.end method

.method public static synthetic I0(I)V
    .locals 8

    const/16 v0, 0x1b

    const/16 v1, 0x15

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    move v4, v3

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_2

    :pswitch_2
    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_3
    const-string v7, "newOwner"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_4
    const-string v7, "overriddenDescriptors"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_5
    const-string v7, "originalSubstitutor"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_6
    aput-object v5, v4, v6

    goto :goto_2

    :pswitch_7
    const-string v7, "typeParameterDescriptors"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_8
    const-string v7, "visibility"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_9
    const-string v7, "unsubstitutedValueParameters"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_a
    const-string v7, "source"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_b
    const-string v7, "kind"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_c
    const-string v7, "annotations"

    aput-object v7, v4, v6

    :goto_2
    const/4 v6, 0x1

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_3

    aput-object v5, v4, v6

    goto :goto_3

    :pswitch_d
    const-string v5, "getOriginal"

    aput-object v5, v4, v6

    goto :goto_3

    :pswitch_e
    const-string v5, "getConstructedClass"

    aput-object v5, v4, v6

    goto :goto_3

    :pswitch_f
    const-string v5, "getContainingDeclaration"

    aput-object v5, v4, v6

    goto :goto_3

    :pswitch_10
    const-string v5, "calculateContextReceiverParameters"

    aput-object v5, v4, v6

    goto :goto_3

    :cond_2
    const-string v5, "copy"

    aput-object v5, v4, v6

    goto :goto_3

    :cond_3
    const-string v5, "getOverriddenDescriptors"

    aput-object v5, v4, v6

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_11
    const-string v5, "createSubstitutedCopy"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_12
    const-string v5, "setOverriddenDescriptors"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_13
    const-string v5, "substitute"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_14
    const-string v5, "initialize"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_15
    const-string v5, "createSynthesized"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_16
    const-string v5, "create"

    aput-object v5, v4, v3

    :goto_4
    :pswitch_17
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    :pswitch_18
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_2
        :pswitch_c
        :pswitch_a
        :pswitch_2
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_13
        :pswitch_17
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_17
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xf
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public final F0(Lr3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lr3/l;->x(Lr3/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final M(Ljava/util/Collection;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x16

    invoke-static {p0}, Lu3/k;->I0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic P0()Lr3/k;
    .locals 0

    invoke-virtual {p0}, Lu3/k;->d1()Lu3/k;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic S0(ILQ3/f;Lr3/j;Lr3/s;Lr3/N;Ls3/h;)Lu3/v;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lu3/k;->b1(ILQ3/f;Lr3/j;Lr3/s;Lr3/N;Ls3/h;)Lu3/k;

    move-result-object p0

    return-object p0
.end method

.method public final V()Z
    .locals 0

    iget-boolean p0, p0, Lu3/k;->G:Z

    return p0
.end method

.method public final Y()Lr3/e;
    .locals 0

    invoke-virtual {p0}, Lu3/k;->c1()Lr3/e;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x12

    invoke-static {p0}, Lu3/k;->I0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic a()Lr3/b;
    .locals 0

    invoke-virtual {p0}, Lu3/k;->d1()Lu3/k;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()Lr3/c;
    .locals 0

    invoke-virtual {p0}, Lu3/k;->d1()Lu3/k;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()Lr3/j;
    .locals 0

    invoke-virtual {p0}, Lu3/k;->d1()Lu3/k;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()Lr3/s;
    .locals 0

    invoke-virtual {p0}, Lu3/k;->d1()Lu3/k;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic b(Lh4/V;)Lr3/k;
    .locals 0

    invoke-virtual {p0, p1}, Lu3/k;->g1(Lh4/V;)Lu3/k;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic b(Lh4/V;)Lr3/s;
    .locals 0

    invoke-virtual {p0, p1}, Lu3/k;->g1(Lh4/V;)Lu3/k;

    move-result-object p0

    return-object p0
.end method

.method public b1(ILQ3/f;Lr3/j;Lr3/s;Lr3/N;Ls3/h;)Lu3/k;
    .locals 7

    const/4 p2, 0x0

    if-eqz p3, :cond_4

    if-eqz p1, :cond_3

    if-eqz p6, :cond_2

    const/4 v5, 0x1

    if-eq p1, v5, :cond_1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Attempt at creating a constructor that is not a declaration: \ncopy from: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\nnewOwner: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\nkind: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lh0/c;->s(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    new-instance p1, Lu3/k;

    move-object v1, p3

    check-cast v1, Lr3/e;

    iget-boolean v4, p0, Lu3/k;->G:Z

    move-object v0, p1

    move-object v2, p0

    move-object v3, p6

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lu3/k;-><init>(Lr3/e;Lr3/i;Ls3/h;ZILr3/N;)V

    return-object p1

    :cond_2
    const/16 p0, 0x19

    invoke-static {p0}, Lu3/k;->I0(I)V

    throw p2

    :cond_3
    const/16 p0, 0x18

    invoke-static {p0}, Lu3/k;->I0(I)V

    throw p2

    :cond_4
    const/16 p0, 0x17

    invoke-static {p0}, Lu3/k;->I0(I)V

    throw p2
.end method

.method public final c1()Lr3/e;
    .locals 0

    invoke-super {p0}, Lu3/p;->l()Lr3/j;

    move-result-object p0

    check-cast p0, Lr3/e;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x11

    invoke-static {p0}, Lu3/k;->I0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d1()Lu3/k;
    .locals 0

    invoke-super {p0}, Lu3/v;->a()Lr3/s;

    move-result-object p0

    check-cast p0, Lu3/k;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x13

    invoke-static {p0}, Lu3/k;->I0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e1(Ljava/util/List;LA3/p;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lu3/k;->c1()Lr3/e;

    move-result-object v0

    invoke-interface {v0}, Lr3/e;->s()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lu3/k;->f1(Ljava/util/List;LA3/p;Ljava/util/List;)V

    return-void

    :cond_0
    const/16 p0, 0xe

    invoke-static {p0}, Lu3/k;->I0(I)V

    throw v0

    :cond_1
    const/16 p0, 0xd

    invoke-static {p0}, Lu3/k;->I0(I)V

    throw v0
.end method

.method public final f1(Ljava/util/List;LA3/p;Ljava/util/List;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lu3/k;->c1()Lr3/e;

    move-result-object v1

    invoke-interface {v1}, Lr3/h;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lr3/j;->l()Lr3/j;

    move-result-object v1

    instance-of v2, v1, Lr3/e;

    if-eqz v2, :cond_0

    check-cast v1, Lr3/e;

    invoke-interface {v1}, Lr3/e;->H0()Lu3/w;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    invoke-virtual {p0}, Lu3/k;->c1()Lr3/e;

    move-result-object v1

    invoke-interface {v1}, Lr3/e;->s0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Lr3/e;->s0()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_1
    move-object v5, v1

    goto :goto_2

    :cond_1
    const/16 p0, 0xf

    invoke-static {p0}, Lu3/k;->I0(I)V

    throw v0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_1

    :goto_2
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p0

    move-object v6, p3

    move-object v7, p1

    move-object v10, p2

    invoke-virtual/range {v2 .. v10}, Lu3/v;->V0(Lu3/w;Lu3/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lh4/v;ILA3/p;)V

    return-void

    :cond_3
    const/16 p0, 0x10

    invoke-static {p0}, Lu3/k;->I0(I)V

    throw v0

    :cond_4
    const/16 p0, 0xc

    invoke-static {p0}, Lu3/k;->I0(I)V

    throw v0

    :cond_5
    const/16 p0, 0xb

    invoke-static {p0}, Lu3/k;->I0(I)V

    throw v0

    :cond_6
    const/16 p0, 0xa

    invoke-static {p0}, Lu3/k;->I0(I)V

    throw v0
.end method

.method public final g1(Lh4/V;)Lu3/k;
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lu3/v;->b(Lh4/V;)Lr3/s;

    move-result-object p0

    check-cast p0, Lu3/k;

    return-object p0

    :cond_0
    const/16 p0, 0x14

    invoke-static {p0}, Lu3/k;->I0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic l()Lr3/h;
    .locals 0

    invoke-virtual {p0}, Lu3/k;->c1()Lr3/e;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic l()Lr3/j;
    .locals 0

    invoke-virtual {p0}, Lu3/k;->c1()Lr3/e;

    move-result-object p0

    return-object p0
.end method

.method public final p()Ljava/util/Collection;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x15

    invoke-static {p0}, Lu3/k;->I0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final x0(Lr3/j;ILA3/p;)Lr3/c;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lu3/v;->Q0(Lr3/j;ILA3/p;)Lr3/s;

    move-result-object p0

    check-cast p0, Lu3/k;

    return-object p0
.end method
