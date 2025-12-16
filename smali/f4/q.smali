.class public final Lf4/q;
.super Lf4/p;
.source "SourceFile"


# instance fields
.field public final g:Lr3/C;

.field public final h:Ljava/lang/String;

.field public final i:LQ3/c;


# direct methods
.method public constructor <init>(Lr3/C;LL3/C;LN3/f;LN3/a;Lf4/j;Ld4/i;Ljava/lang/String;Lc3/a;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    move-object/from16 v15, p7

    const-string v1, "packageDescriptor"

    invoke-static {v1, v14}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "nameResolver"

    move-object/from16 v2, p3

    invoke-static {v1, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "metadataVersion"

    move-object/from16 v3, p4

    invoke-static {v1, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "debugName"

    invoke-static {v1, v15}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v10, Ls2/c;

    iget-object v1, v0, LL3/C;->i:LL3/X;

    const-string v4, "proto.typeTable"

    invoke-static {v4, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v10, v1}, Ls2/c;-><init>(LL3/X;)V

    iget-object v1, v0, LL3/C;->j:LL3/e0;

    const-string v4, "proto.versionRequirementTable"

    invoke-static {v4, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v1, LL3/e0;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    sget-object v1, LN3/g;->a:LN3/g;

    move-object v11, v1

    goto :goto_0

    :cond_0
    new-instance v4, LN3/g;

    iget-object v1, v1, LL3/e0;->d:Ljava/util/List;

    const-string v5, "table.requirementList"

    invoke-static {v5, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v11, v4

    :goto_0
    move-object/from16 v7, p6

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v7 .. v13}, Ld4/i;->a(Lr3/C;LN3/f;Ls2/c;LN3/g;LN3/a;Lf4/j;)Lcom/google/android/gms/internal/firebase-auth-api/G4;

    move-result-object v1

    iget-object v2, v0, LL3/C;->f:Ljava/util/List;

    const-string v3, "proto.functionList"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v0, LL3/C;->g:Ljava/util/List;

    const-string v4, "proto.propertyList"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v0, LL3/C;->h:Ljava/util/List;

    const-string v0, "proto.typeAliasList"

    invoke-static {v0, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lf4/p;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G4;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lc3/a;)V

    iput-object v14, v6, Lf4/q;->g:Lr3/C;

    iput-object v15, v6, Lf4/q;->h:Ljava/lang/String;

    move-object v0, v14

    check-cast v0, Lu3/E;

    iget-object v0, v0, Lu3/E;->g:LQ3/c;

    iput-object v0, v6, Lf4/q;->i:LQ3/c;

    return-void
.end method


# virtual methods
.method public final c(LQ3/f;Lz3/b;)Lr3/g;
    .locals 2

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->i:Lz3/a;

    iget-object v1, p0, Lf4/q;->g:Lr3/C;

    invoke-static {v0, p2, v1, p1}, Lp0/a;->n(Lz3/a;Lz3/b;Lr3/C;LQ3/f;)V

    invoke-super {p0, p1, p2}, Lf4/p;->c(LQ3/f;Lz3/b;)Lr3/g;

    move-result-object p0

    return-object p0
.end method

.method public final f(La4/f;Lc3/b;)Ljava/util/Collection;
    .locals 3

    const-string v0, "kindFilter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameFilter"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lf4/p;->i(La4/f;Lc3/b;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p2, Ld4/i;

    iget-object p2, p2, Ld4/i;->k:Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt3/c;

    iget-object v2, p0, Lf4/q;->i:LQ3/c;

    invoke-interface {v1, v2}, Lt3/c;->b(LQ3/c;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/util/ArrayList;Lc3/b;)V
    .locals 0

    const-string p0, "nameFilter"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final l(LQ3/f;)LQ3/b;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LQ3/b;

    iget-object p0, p0, Lf4/q;->i:LQ3/c;

    invoke-direct {v0, p0, p1}, LQ3/b;-><init>(LQ3/c;LQ3/f;)V

    return-object v0
.end method

.method public final n()Ljava/util/Set;
    .locals 0

    sget-object p0, LR2/w;->c:LR2/w;

    return-object p0
.end method

.method public final o()Ljava/util/Set;
    .locals 0

    sget-object p0, LR2/w;->c:LR2/w;

    return-object p0
.end method

.method public final p()Ljava/util/Set;
    .locals 0

    sget-object p0, LR2/w;->c:LR2/w;

    return-object p0
.end method

.method public final q(LQ3/f;)Z
    .locals 3

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lf4/p;->q(LQ3/f;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->k:Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt3/c;

    iget-object v2, p0, Lf4/q;->i:LQ3/c;

    invoke-interface {v1, v2, p1}, Lt3/c;->a(LQ3/c;LQ3/f;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf4/q;->h:Ljava/lang/String;

    return-object p0
.end method
