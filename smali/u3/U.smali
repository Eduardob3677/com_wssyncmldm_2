.class public final Lu3/U;
.super Lu3/V;
.source "SourceFile"


# instance fields
.field public final n:LQ2/h;


# direct methods
.method public constructor <init>(Lr3/b;Lu3/V;ILs3/h;LQ3/f;Lh4/v;ZZZLh4/v;Lr3/N;Lc3/a;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lu3/V;-><init>(Lr3/b;Lu3/V;ILs3/h;LQ3/f;Lh4/v;ZZZLh4/v;Lr3/N;)V

    new-instance p1, LQ2/h;

    invoke-direct {p1, p12}, LQ2/h;-><init>(Lc3/a;)V

    iput-object p1, p0, Lu3/U;->n:LQ2/h;

    return-void
.end method


# virtual methods
.method public final Q0(Lp3/g;LQ3/f;I)Lu3/V;
    .locals 14

    move-object v0, p0

    new-instance v13, Lu3/U;

    invoke-virtual {p0}, LK3/c;->t()Ls3/h;

    move-result-object v4

    const-string v1, "annotations"

    invoke-static {v1, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lu3/W;->e()Lh4/v;

    move-result-object v6

    const-string v1, "type"

    invoke-static {v1, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lu3/V;->R0()Z

    move-result v7

    sget-object v11, Lr3/N;->a:Lr3/M;

    new-instance v12, Lu3/B;

    const/4 v1, 0x1

    invoke-direct {v12, p0, v1}, Lu3/B;-><init>(Lu3/o;I)V

    iget-boolean v9, v0, Lu3/V;->k:Z

    iget-object v10, v0, Lu3/V;->l:Lh4/v;

    const/4 v2, 0x0

    iget-boolean v8, v0, Lu3/V;->j:Z

    move-object v0, v13

    move-object v1, p1

    move/from16 v3, p3

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v12}, Lu3/U;-><init>(Lr3/b;Lu3/V;ILs3/h;LQ3/f;Lh4/v;ZZZLh4/v;Lr3/N;Lc3/a;)V

    return-object v13
.end method
