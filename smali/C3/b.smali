.class public final LC3/b;
.super Lu3/k;
.source "SourceFile"

# interfaces
.implements LC3/a;


# instance fields
.field public H:Ljava/lang/Boolean;

.field public I:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lr3/e;LC3/b;Ls3/h;ZILr3/N;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    invoke-direct/range {p0 .. p6}, Lu3/k;-><init>(Lr3/e;Lr3/i;Ls3/h;ZILr3/N;)V

    iput-object v0, p0, LC3/b;->H:Ljava/lang/Boolean;

    iput-object v0, p0, LC3/b;->I:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0}, LC3/b;->I0(I)V

    throw v0

    :cond_1
    const/4 p0, 0x2

    invoke-static {p0}, LC3/b;->I0(I)V

    throw v0

    :cond_2
    const/4 p0, 0x1

    invoke-static {p0}, LC3/b;->I0(I)V

    throw v0

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, LC3/b;->I0(I)V

    throw v0
.end method

.method public static synthetic I0(I)V
    .locals 9

    const/16 v0, 0x12

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_1
    const-string v7, "enhancedReturnType"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_2
    const-string v7, "enhancedValueParameterTypes"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_3
    const-string v7, "sourceElement"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_4
    aput-object v5, v4, v6

    goto :goto_2

    :pswitch_5
    const-string v7, "newOwner"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_6
    const-string v7, "source"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_7
    const-string v7, "kind"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_8
    const-string v7, "annotations"

    aput-object v7, v4, v6

    :goto_2
    const-string v6, "createSubstitutedCopy"

    const-string v7, "enhance"

    const/4 v8, 0x1

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v5, v4, v8

    goto :goto_3

    :cond_2
    aput-object v7, v4, v8

    goto :goto_3

    :cond_3
    aput-object v6, v4, v8

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_9
    aput-object v7, v4, v3

    goto :goto_4

    :pswitch_a
    const-string v5, "createDescriptor"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_b
    aput-object v6, v4, v3

    goto :goto_4

    :pswitch_c
    const-string v5, "createJavaConstructor"

    aput-object v5, v4, v3

    :goto_4
    :pswitch_d
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method

.method public static h1(Lr3/e;Ls3/h;ZLw3/f;)LC3/b;
    .locals 8

    if-eqz p0, :cond_0

    new-instance v7, LC3/b;

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, LC3/b;-><init>(Lr3/e;LC3/b;Ls3/h;ZILr3/N;)V

    return-object v7

    :cond_0
    const/4 p0, 0x4

    invoke-static {p0}, LC3/b;->I0(I)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final G0(Lh4/v;Ljava/util/ArrayList;Lh4/v;LQ2/e;)LC3/a;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual/range {p0 .. p0}, Lu3/k;->c1()Lr3/e;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lu3/v;->k0()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, LK3/c;->t()Ls3/h;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lu3/p;->m()Lr3/N;

    move-result-object v7

    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, LC3/b;->i1(Lr3/j;Lr3/s;ILs3/h;Lr3/N;)LC3/b;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    move-object/from16 v0, p0

    goto :goto_1

    :cond_0
    sget-object v3, Ls3/g;->a:Ls3/f;

    invoke-static {v2, v0, v3}, LZ0/j;->E(Lr3/b;Lh4/v;Ls3/h;)Lu3/w;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v10, v0, Lu3/v;->l:Lu3/w;

    sget-object v11, LR2/u;->c:LR2/u;

    invoke-virtual/range {p0 .. p0}, Lu3/v;->u()Ljava/util/List;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-static {v4, v3, v2}, Li3/x;->v(Ljava/util/ArrayList;Ljava/util/List;Lr3/b;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lu3/v;->i()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lu3/v;->c()LA3/p;

    move-result-object v16

    move-object v8, v2

    move-object/from16 v14, p3

    invoke-virtual/range {v8 .. v16}, Lu3/v;->V0(Lu3/w;Lu3/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lh4/v;ILA3/p;)V

    if-eqz v1, :cond_1

    iget-object v0, v1, LQ2/e;->c:Ljava/lang/Object;

    check-cast v0, Lr3/a;

    iget-object v1, v1, LQ2/e;->d:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lu3/v;->X0(Lr3/a;Ljava/lang/Object;)V

    :cond_1
    return-object v2
.end method

.method public final bridge synthetic S0(ILQ3/f;Lr3/j;Lr3/s;Lr3/N;Ls3/h;)Lu3/v;
    .locals 6

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p1

    move-object v4, p6

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, LC3/b;->i1(Lr3/j;Lr3/s;ILs3/h;Lr3/N;)LC3/b;

    move-result-object p0

    return-object p0
.end method

.method public final Y0(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, LC3/b;->H:Ljava/lang/Boolean;

    return-void
.end method

.method public final Z0(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, LC3/b;->I:Ljava/lang/Boolean;

    return-void
.end method

.method public final bridge synthetic b1(ILQ3/f;Lr3/j;Lr3/s;Lr3/N;Ls3/h;)Lu3/k;
    .locals 6

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p1

    move-object v4, p6

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, LC3/b;->i1(Lr3/j;Lr3/s;ILs3/h;Lr3/N;)LC3/b;

    move-result-object p0

    return-object p0
.end method

.method public final i1(Lr3/j;Lr3/s;ILs3/h;Lr3/N;)LC3/b;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p3, :cond_5

    if-eqz p4, :cond_4

    if-eqz p5, :cond_3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Attempt at creating a constructor that is not a declaration: \ncopy from: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\nnewOwner: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\nkind: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lh0/c;->s(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    move-object v1, p1

    check-cast v1, Lr3/e;

    move-object v2, p2

    check-cast v2, LC3/b;

    if-eqz p3, :cond_2

    new-instance p1, LC3/b;

    iget-boolean v4, p0, Lu3/k;->G:Z

    move-object v0, p1

    move-object v3, p4

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, LC3/b;-><init>(Lr3/e;LC3/b;Ls3/h;ZILr3/N;)V

    iget-object p2, p0, LC3/b;->H:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, LC3/b;->H:Ljava/lang/Boolean;

    iget-object p0, p0, LC3/b;->I:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p1, LC3/b;->I:Ljava/lang/Boolean;

    return-object p1

    :cond_2
    const/16 p0, 0xd

    invoke-static {p0}, LC3/b;->I0(I)V

    throw v0

    :cond_3
    const/16 p0, 0xa

    invoke-static {p0}, LC3/b;->I0(I)V

    throw v0

    :cond_4
    const/16 p0, 0x9

    invoke-static {p0}, LC3/b;->I0(I)V

    throw v0

    :cond_5
    const/16 p0, 0x8

    invoke-static {p0}, LC3/b;->I0(I)V

    throw v0

    :cond_6
    const/4 p0, 0x7

    invoke-static {p0}, LC3/b;->I0(I)V

    throw v0
.end method

.method public final o0()Z
    .locals 0

    iget-object p0, p0, LC3/b;->I:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
