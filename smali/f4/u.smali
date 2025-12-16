.class public final Lf4/u;
.super Lu3/c;
.source "SourceFile"


# instance fields
.field public final m:Lcom/google/android/gms/internal/firebase-auth-api/G4;

.field public final n:LL3/W;

.field public final o:Lf4/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/G4;LL3/W;I)V
    .locals 10

    const-string v0, "c"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v2, v0, Ld4/i;->a:Lg4/o;

    sget-object v4, Ls3/g;->a:Ls3/f;

    iget v1, p2, LL3/W;->g:I

    iget-object v3, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v3, LN3/f;

    invoke-static {v3, v1}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v5

    iget-object v1, p2, LL3/W;->i:LL3/V;

    const-string v3, "proto.variance"

    invoke-static {v3, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const/4 v1, 0x3

    move v6, v1

    goto :goto_0

    :cond_2
    move v6, v3

    :goto_0
    iget-boolean v7, p2, LL3/W;->h:Z

    sget-object v9, Lr3/O;->e:Lr3/O;

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lr3/j;

    move-object v1, p0

    move v8, p3

    invoke-direct/range {v1 .. v9}, Lu3/c;-><init>(Lg4/o;Lr3/j;Ls3/h;LQ3/f;IZILr3/O;)V

    iput-object p1, p0, Lf4/u;->m:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iput-object p2, p0, Lf4/u;->n:LL3/W;

    new-instance p1, Lf4/a;

    new-instance p2, LB3/k;

    const/16 p3, 0xe

    invoke-direct {p2, p3, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    iget-object p3, v0, Ld4/i;->a:Lg4/o;

    invoke-direct {p1, p3, p2}, Lf4/a;-><init>(Lg4/o;Lc3/a;)V

    iput-object p1, p0, Lf4/u;->o:Lf4/a;

    return-void
.end method


# virtual methods
.method public final R0()Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lf4/u;->m:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    check-cast v1, Ls2/c;

    iget-object v2, p0, Lf4/u;->n:LL3/W;

    const-string v3, "<this>"

    invoke-static {v3, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "typeTable"

    invoke-static {v3, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v2, LL3/W;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    iget-object v2, v2, LL3/W;->k:Ljava/util/List;

    const-string v3, "upperBoundIdList"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v5, "it"

    invoke-static {v5, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ls2/c;->l(I)LL3/Q;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, LX3/f;->e(Lr3/j;)Lo3/i;

    move-result-object p0

    invoke-virtual {p0}, Lo3/i;->m()Lh4/z;

    move-result-object p0

    invoke-static {p0}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v3}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LL3/Q;

    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    check-cast v3, LJ3/c;

    invoke-virtual {v3, v2}, LJ3/c;->o(LL3/Q;)Lh4/v;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method public final t()Ls3/h;
    .locals 0

    iget-object p0, p0, Lf4/u;->o:Lf4/a;

    return-object p0
.end method
