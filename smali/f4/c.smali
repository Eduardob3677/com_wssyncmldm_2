.class public final Lf4/c;
.super Lu3/k;
.source "SourceFile"

# interfaces
.implements Lf4/b;


# instance fields
.field public final H:LL3/l;

.field public final I:LN3/f;

.field public final J:Ls2/c;

.field public final K:LN3/g;

.field public final L:Lf4/j;


# direct methods
.method public constructor <init>(Lr3/e;Lr3/i;Ls3/h;ZILL3/l;LN3/f;Ls2/c;LN3/g;Lf4/j;Lr3/N;)V
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

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lu3/k;-><init>(Lr3/e;Lr3/i;Ls3/h;ZILr3/N;)V

    iput-object v8, v7, Lf4/c;->H:LL3/l;

    iput-object v9, v7, Lf4/c;->I:LN3/f;

    iput-object v10, v7, Lf4/c;->J:Ls2/c;

    iput-object v11, v7, Lf4/c;->K:LN3/g;

    move-object/from16 v0, p10

    iput-object v0, v7, Lf4/c;->L:Lf4/j;

    return-void
.end method


# virtual methods
.method public final B0()LN3/f;
    .locals 0

    iget-object p0, p0, Lf4/c;->I:LN3/f;

    return-object p0
.end method

.method public final D()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic S0(ILQ3/f;Lr3/j;Lr3/s;Lr3/N;Ls3/h;)Lu3/v;
    .locals 6

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p1

    move-object v4, p6

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lf4/c;->h1(Lr3/j;Lr3/s;ILs3/h;Lr3/N;)Lf4/c;

    move-result-object p0

    return-object p0
.end method

.method public final Z()Ls2/c;
    .locals 0

    iget-object p0, p0, Lf4/c;->J:Ls2/c;

    return-object p0
.end method

.method public final bridge synthetic b1(ILQ3/f;Lr3/j;Lr3/s;Lr3/N;Ls3/h;)Lu3/k;
    .locals 6

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p1

    move-object v4, p6

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lf4/c;->h1(Lr3/j;Lr3/s;ILs3/h;Lr3/N;)Lf4/c;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h1(Lr3/j;Lr3/s;ILs3/h;Lr3/N;)Lf4/c;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const-string v2, "newOwner"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "kind"

    move/from16 v8, p3

    invoke-static {v8, v2}, LB/f;->x(ILjava/lang/String;)V

    const-string v2, "annotations"

    move-object/from16 v6, p4

    invoke-static {v2, v6}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lf4/c;

    move-object v4, v1

    check-cast v4, Lr3/e;

    move-object/from16 v5, p2

    check-cast v5, Lr3/i;

    iget-object v12, v0, Lf4/c;->K:LN3/g;

    iget-object v13, v0, Lf4/c;->L:Lf4/j;

    iget-boolean v7, v0, Lu3/k;->G:Z

    iget-object v9, v0, Lf4/c;->H:LL3/l;

    iget-object v10, v0, Lf4/c;->I:LN3/f;

    iget-object v11, v0, Lf4/c;->J:Ls2/c;

    move-object v3, v2

    move-object/from16 v6, p4

    move/from16 v8, p3

    move-object/from16 v14, p5

    invoke-direct/range {v3 .. v14}, Lf4/c;-><init>(Lr3/e;Lr3/i;Ls3/h;ZILL3/l;LN3/f;Ls2/c;LN3/g;Lf4/j;Lr3/N;)V

    iget-boolean v0, v0, Lu3/v;->y:Z

    iput-boolean v0, v2, Lu3/v;->y:Z

    return-object v2
.end method

.method public final j()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l0()LR3/b;
    .locals 0

    iget-object p0, p0, Lf4/c;->H:LL3/l;

    return-object p0
.end method

.method public final x()Lf4/j;
    .locals 0

    iget-object p0, p0, Lf4/c;->L:Lf4/j;

    return-object p0
.end method
