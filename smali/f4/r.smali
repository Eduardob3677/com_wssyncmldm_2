.class public final Lf4/r;
.super Lu3/K;
.source "SourceFile"

# interfaces
.implements Lf4/b;


# instance fields
.field public final D:LL3/G;

.field public final E:LN3/f;

.field public final F:Ls2/c;

.field public final G:LN3/g;

.field public final H:Lf4/j;


# direct methods
.method public constructor <init>(Lr3/j;Lr3/K;Ls3/h;ILA3/p;ZLQ3/f;IZZZZZLL3/G;LN3/f;Ls2/c;LN3/g;Lf4/j;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v14, p14

    move-object/from16 v13, p15

    move-object/from16 v12, p16

    move-object/from16 v11, p17

    const-string v0, "containingDeclaration"

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "annotations"

    move-object/from16 v3, p3

    invoke-static {v0, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "modality"

    move/from16 v4, p4

    invoke-static {v4, v0}, LB/f;->x(ILjava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v5, p5

    invoke-static {v0, v5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "name"

    move-object/from16 v7, p7

    invoke-static {v0, v7}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kind"

    move/from16 v8, p8

    invoke-static {v8, v0}, LB/f;->x(ILjava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v0, v14}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, v13}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeTable"

    invoke-static {v0, v12}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v0, v11}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v9, Lr3/N;->a:Lr3/M;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v6, p6

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p13

    move/from16 v13, v16

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-direct/range {v0 .. v15}, Lu3/K;-><init>(Lr3/j;Lr3/K;Ls3/h;ILA3/p;ZLQ3/f;ILr3/N;ZZZZZZ)V

    move-object/from16 v1, p14

    iput-object v1, v0, Lf4/r;->D:LL3/G;

    move-object/from16 v1, p15

    iput-object v1, v0, Lf4/r;->E:LN3/f;

    move-object/from16 v1, p16

    iput-object v1, v0, Lf4/r;->F:Ls2/c;

    move-object/from16 v1, p17

    iput-object v1, v0, Lf4/r;->G:LN3/g;

    move-object/from16 v1, p18

    iput-object v1, v0, Lf4/r;->H:Lf4/j;

    return-void
.end method


# virtual methods
.method public final B0()LN3/f;
    .locals 0

    iget-object p0, p0, Lf4/r;->E:LN3/f;

    return-object p0
.end method

.method public final D()Z
    .locals 1

    sget-object v0, LN3/e;->D:LN3/b;

    iget-object p0, p0, Lf4/r;->D:LL3/G;

    iget p0, p0, LL3/G;->f:I

    invoke-virtual {v0, p0}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final T0(Lr3/j;ILA3/p;Lr3/K;ILQ3/f;)Lu3/K;
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "newOwner"

    move-object/from16 v3, p1

    invoke-static {v1, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "newModality"

    move/from16 v6, p2

    invoke-static {v6, v1}, LB/f;->x(ILjava/lang/String;)V

    const-string v1, "newVisibility"

    move-object/from16 v7, p3

    invoke-static {v1, v7}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "kind"

    move/from16 v10, p5

    invoke-static {v10, v1}, LB/f;->x(ILjava/lang/String;)V

    const-string v1, "newName"

    move-object/from16 v9, p6

    invoke-static {v1, v9}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lf4/r;

    invoke-virtual/range {p0 .. p0}, LK3/c;->t()Ls3/h;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lf4/r;->D()Z

    move-result v13

    iget-object v2, v0, Lf4/r;->G:LN3/g;

    move-object/from16 v19, v2

    iget-object v2, v0, Lf4/r;->H:Lf4/j;

    move-object/from16 v20, v2

    iget-boolean v8, v0, Lu3/K;->h:Z

    iget-boolean v11, v0, Lu3/K;->p:Z

    iget-boolean v12, v0, Lu3/K;->q:Z

    iget-boolean v14, v0, Lu3/K;->u:Z

    iget-boolean v15, v0, Lu3/K;->r:Z

    iget-object v2, v0, Lf4/r;->D:LL3/G;

    move-object/from16 v16, v2

    iget-object v2, v0, Lf4/r;->E:LN3/f;

    move-object/from16 v17, v2

    iget-object v0, v0, Lf4/r;->F:Ls2/c;

    move-object/from16 v18, v0

    move-object v2, v1

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p6

    move/from16 v10, p5

    invoke-direct/range {v2 .. v20}, Lf4/r;-><init>(Lr3/j;Lr3/K;Ls3/h;ILA3/p;ZLQ3/f;IZZZZZLL3/G;LN3/f;Ls2/c;LN3/g;Lf4/j;)V

    return-object v1
.end method

.method public final Z()Ls2/c;
    .locals 0

    iget-object p0, p0, Lf4/r;->F:Ls2/c;

    return-object p0
.end method

.method public final l0()LR3/b;
    .locals 0

    iget-object p0, p0, Lf4/r;->D:LL3/G;

    return-object p0
.end method

.method public final x()Lf4/j;
    .locals 0

    iget-object p0, p0, Lf4/r;->H:Lf4/j;

    return-object p0
.end method
