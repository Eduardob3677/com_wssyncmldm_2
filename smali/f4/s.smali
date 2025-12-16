.class public final Lf4/s;
.super Lu3/N;
.source "SourceFile"

# interfaces
.implements Lf4/b;


# instance fields
.field public final G:LL3/y;

.field public final H:LN3/f;

.field public final I:Ls2/c;

.field public final J:LN3/g;

.field public final K:Lf4/j;


# direct methods
.method public constructor <init>(Lr3/j;Lu3/N;Ls3/h;LQ3/f;ILL3/y;LN3/f;Ls2/c;LN3/g;Lf4/j;Lr3/N;)V
    .locals 12

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    const-string v0, "containingDeclaration"

    move-object v1, p1

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "annotations"

    move-object v3, p3

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kind"

    move/from16 v5, p5

    invoke-static {v5, v0}, LB/f;->x(ILjava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v0, v8}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, v9}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeTable"

    invoke-static {v0, v10}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v0, v11}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p11, :cond_0

    sget-object v0, Lr3/N;->a:Lr3/M;

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p11

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lu3/N;-><init>(Lr3/j;Lu3/N;Ls3/h;LQ3/f;ILr3/N;)V

    iput-object v8, v7, Lf4/s;->G:LL3/y;

    iput-object v9, v7, Lf4/s;->H:LN3/f;

    iput-object v10, v7, Lf4/s;->I:Ls2/c;

    iput-object v11, v7, Lf4/s;->J:LN3/g;

    move-object/from16 v0, p10

    iput-object v0, v7, Lf4/s;->K:Lf4/j;

    return-void
.end method


# virtual methods
.method public final B0()LN3/f;
    .locals 0

    iget-object p0, p0, Lf4/s;->H:LN3/f;

    return-object p0
.end method

.method public final S0(ILQ3/f;Lr3/j;Lr3/s;Lr3/N;Ls3/h;)Lu3/v;
    .locals 14

    move-object v0, p0

    const-string v1, "newOwner"

    move-object/from16 v3, p3

    invoke-static {v1, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "kind"

    move v7, p1

    invoke-static {p1, v1}, LB/f;->x(ILjava/lang/String;)V

    const-string v1, "annotations"

    move-object/from16 v5, p6

    invoke-static {v1, v5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lf4/s;

    move-object/from16 v4, p4

    check-cast v4, Lu3/N;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lu3/o;->getName()LQ3/f;

    move-result-object v2

    const-string v6, "name"

    invoke-static {v6, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p2

    :goto_0
    iget-object v11, v0, Lf4/s;->J:LN3/g;

    iget-object v12, v0, Lf4/s;->K:Lf4/j;

    iget-object v8, v0, Lf4/s;->G:LL3/y;

    iget-object v9, v0, Lf4/s;->H:LN3/f;

    iget-object v10, v0, Lf4/s;->I:Ls2/c;

    move-object v2, v1

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move v7, p1

    move-object/from16 v13, p5

    invoke-direct/range {v2 .. v13}, Lf4/s;-><init>(Lr3/j;Lu3/N;Ls3/h;LQ3/f;ILL3/y;LN3/f;Ls2/c;LN3/g;Lf4/j;Lr3/N;)V

    iget-boolean v0, v0, Lu3/v;->y:Z

    iput-boolean v0, v1, Lu3/v;->y:Z

    return-object v1
.end method

.method public final Z()Ls2/c;
    .locals 0

    iget-object p0, p0, Lf4/s;->I:Ls2/c;

    return-object p0
.end method

.method public final l0()LR3/b;
    .locals 0

    iget-object p0, p0, Lf4/s;->G:LL3/y;

    return-object p0
.end method

.method public final x()Lf4/j;
    .locals 0

    iget-object p0, p0, Lf4/s;->K:Lf4/j;

    return-object p0
.end method
