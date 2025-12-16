.class public Lu3/m;
.super Lu3/l;
.source "SourceFile"


# instance fields
.field public final j:I

.field public final k:I

.field public final l:Lh4/j;

.field public m:La4/o;

.field public n:Ljava/util/Set;

.field public o:Lu3/k;


# direct methods
.method public constructor <init>(Lr3/j;LQ3/f;IILjava/util/List;Lg4/o;)V
    .locals 2

    sget-object v0, Lr3/N;->a:Lr3/M;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-eqz p6, :cond_0

    invoke-direct {p0, p6, p1, p2, v0}, Lu3/l;-><init>(Lg4/o;Lr3/j;LQ3/f;Lr3/N;)V

    iput p3, p0, Lu3/m;->j:I

    iput p4, p0, Lu3/m;->k:I

    new-instance p1, Lh4/j;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p0, p2, p5, p6}, Lh4/j;-><init>(Lr3/e;Ljava/util/List;Ljava/util/Collection;Lg4/o;)V

    iput-object p1, p0, Lu3/m;->l:Lh4/j;

    return-void

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, Lu3/m;->c0(I)V

    throw v1

    :cond_1
    const/4 p0, 0x3

    invoke-static {p0}, Lu3/m;->c0(I)V

    throw v1

    :cond_2
    const/4 p0, 0x2

    invoke-static {p0}, Lu3/m;->c0(I)V

    throw v1

    :cond_3
    const/4 p0, 0x1

    invoke-static {p0}, Lu3/m;->c0(I)V

    throw v1

    :cond_4
    const/4 p0, 0x0

    invoke-static {p0}, Lu3/m;->c0(I)V

    throw v1
.end method

.method public static synthetic c0(I)V
    .locals 6

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    move v2, v1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_4
    const-string v5, "kotlinTypeRefiner"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_6
    const-string v5, "constructors"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "unsubstitutedMemberScope"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "storageManager"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_a
    const-string v5, "supertypes"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "kind"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_c
    const-string v5, "modality"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_d
    const-string v5, "name"

    aput-object v5, v2, v4

    :goto_2
    const-string v4, "getUnsubstitutedMemberScope"

    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_e
    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_f
    const-string v3, "getSealedSubclasses"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_10
    const-string v3, "getDeclaredTypeParameters"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_11
    const-string v3, "getVisibility"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_12
    const-string v3, "getModality"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_13
    const-string v3, "getKind"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_14
    const-string v3, "getStaticScope"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_15
    aput-object v4, v2, v5

    goto :goto_3

    :pswitch_16
    const-string v3, "getConstructors"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_17
    const-string v3, "getTypeConstructor"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_18
    const-string v3, "getAnnotations"

    aput-object v3, v2, v5

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_19
    aput-object v4, v2, v1

    goto :goto_4

    :pswitch_1a
    const-string v3, "initialize"

    aput-object v3, v2, v1

    :goto_4
    :pswitch_1b
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_e
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_19
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x9
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public final A0()Ljava/util/Collection;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x13

    invoke-static {p0}, Lu3/m;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final D0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final H()Lh4/J;
    .locals 0

    iget-object p0, p0, Lu3/m;->l:Lh4/j;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0xa

    invoke-static {p0}, Lu3/m;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final J(Li4/f;)La4/o;
    .locals 0

    iget-object p0, p0, Lu3/m;->m:La4/o;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0xd

    invoke-static {p0}, Lu3/m;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final L()I
    .locals 0

    iget p0, p0, Lu3/m;->k:I

    if-eqz p0, :cond_0

    return p0

    :cond_0
    const/16 p0, 0xf

    invoke-static {p0}, Lu3/m;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final N()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final S()Lr3/S;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final W()Lu3/k;
    .locals 0

    iget-object p0, p0, Lu3/m;->o:Lu3/k;

    return-object p0
.end method

.method public final X()La4/o;
    .locals 0

    sget-object p0, La4/n;->b:La4/n;

    return-object p0
.end method

.method public final c()LA3/p;
    .locals 0

    sget-object p0, Lr3/n;->e:LA3/p;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x11

    invoke-static {p0}, Lu3/m;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final h0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lu3/m;->j:I

    if-eqz p0, :cond_0

    return p0

    :cond_0
    const/16 p0, 0x10

    invoke-static {p0}, Lu3/m;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final k()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lu3/m;->n:Ljava/util/Set;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0xb

    invoke-static {p0}, Lu3/m;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final s()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x12

    invoke-static {p0}, Lu3/m;->c0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final t()Ls3/h;
    .locals 0

    sget-object p0, Ls3/g;->a:Ls3/f;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu3/b;->getName()LQ3/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u0(La4/o;Ljava/util/Set;Lu3/k;)V
    .locals 0

    iput-object p1, p0, Lu3/m;->m:La4/o;

    iput-object p2, p0, Lu3/m;->n:Ljava/util/Set;

    iput-object p3, p0, Lu3/m;->o:Lu3/k;

    return-void
.end method

.method public final v()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final y()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final z()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
