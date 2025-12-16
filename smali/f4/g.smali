.class public final Lf4/g;
.super Lf4/p;
.source "SourceFile"


# instance fields
.field public final g:Li4/f;

.field public final h:Lg4/i;

.field public final i:Lg4/i;

.field public final synthetic j:Lf4/i;


# direct methods
.method public constructor <init>(Lf4/i;Li4/f;)V
    .locals 7

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lf4/g;->j:Lf4/i;

    iget-object v0, p1, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, p1, Lf4/i;->g:LL3/j;

    iget-object v3, v1, LL3/j;->s:Ljava/util/List;

    const-string v2, "classProto.functionList"

    invoke-static {v2, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v1, LL3/j;->t:Ljava/util/List;

    const-string v2, "classProto.propertyList"

    invoke-static {v2, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v1, LL3/j;->u:Ljava/util/List;

    const-string v2, "classProto.typeAliasList"

    invoke-static {v2, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v1, LL3/j;->m:Ljava/util/List;

    const-string v2, "classProto.nestedClassNameList"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p1, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast p1, LN3/f;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {p1, v6}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v6, Lf4/d;

    const/4 p1, 0x0

    invoke-direct {v6, v2, p1}, Lf4/d;-><init>(Ljava/util/ArrayList;I)V

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lf4/p;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G4;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lc3/a;)V

    iput-object p2, p0, Lf4/g;->g:Li4/f;

    iget-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p1, Ld4/i;

    iget-object p2, p1, Ld4/i;->a:Lg4/o;

    new-instance v0, Lf4/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf4/e;-><init>(Lf4/g;I)V

    check-cast p2, Lg4/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg4/i;

    invoke-direct {v1, p2, v0}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v1, p0, Lf4/g;->h:Lg4/i;

    iget-object p1, p1, Ld4/i;->a:Lg4/o;

    new-instance p2, Lf4/e;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lf4/e;-><init>(Lf4/g;I)V

    check-cast p1, Lg4/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg4/i;

    invoke-direct {v0, p1, p2}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v0, p0, Lf4/g;->i:Lg4/i;

    return-void
.end method


# virtual methods
.method public final c(LQ3/f;Lz3/b;)Lr3/g;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lf4/g;->s(LQ3/f;Lz3/b;)V

    iget-object v0, p0, Lf4/g;->j:Lf4/i;

    iget-object v0, v0, Lf4/i;->r:Lcom/google/firebase/messaging/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Lg4/j;

    invoke-virtual {v0, p1}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lf4/p;->c(LQ3/f;Lz3/b;)Lr3/g;

    move-result-object p0

    return-object p0
.end method

.method public final d(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lf4/g;->s(LQ3/f;Lz3/b;)V

    invoke-super {p0, p1, p2}, Lf4/p;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final f(La4/f;Lc3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "nameFilter"

    invoke-static {p1, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lf4/g;->h:Lg4/i;

    invoke-virtual {p0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final g(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lf4/g;->s(LQ3/f;Lz3/b;)V

    invoke-super {p0, p1, p2}, Lf4/p;->g(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/util/ArrayList;Lc3/b;)V
    .locals 3

    const-string v0, "nameFilter"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lf4/g;->j:Lf4/i;

    iget-object p0, p0, Lf4/i;->r:Lcom/google/firebase/messaging/p;

    if-eqz p0, :cond_1

    iget-object p2, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p2, Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ3/f;

    const-string v2, "name"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v2, Lg4/j;

    invoke-virtual {v2, v1}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/e;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    if-nez v0, :cond_3

    sget-object v0, LR2/u;->c:LR2/u;

    :cond_3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final j(LQ3/f;Ljava/util/ArrayList;)V
    .locals 7

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lf4/g;->i:Lg4/i;

    invoke-virtual {v0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/v;

    invoke-virtual {v1}, Lh4/v;->q0()La4/o;

    move-result-object v1

    sget-object v2, Lz3/b;->e:Lz3/b;

    invoke-interface {v1, p1, v2}, La4/o;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v1, Ld4/i;

    iget-object v1, v1, Ld4/i;->n:Lt3/b;

    iget-object v2, p0, Lf4/g;->j:Lf4/i;

    invoke-interface {v1, p1, v2}, Lt3/b;->e(LQ3/f;Lf4/i;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->q:Li4/k;

    check-cast v0, Li4/l;

    iget-object v1, v0, Li4/l;->d:LT3/n;

    new-instance v6, Lf4/f;

    const/4 v0, 0x0

    invoke-direct {v6, p2, v0}, Lf4/f;-><init>(Ljava/util/AbstractCollection;I)V

    iget-object v5, p0, Lf4/g;->j:Lf4/i;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, LT3/n;->h(LQ3/f;Ljava/util/Collection;Ljava/util/Collection;Lr3/e;Lf1/a;)V

    return-void
.end method

.method public final k(LQ3/f;Ljava/util/ArrayList;)V
    .locals 7

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lf4/g;->i:Lg4/i;

    invoke-virtual {v0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/v;

    invoke-virtual {v1}, Lh4/v;->q0()La4/o;

    move-result-object v1

    sget-object v2, Lz3/b;->e:Lz3/b;

    invoke-interface {v1, p1, v2}, La4/o;->g(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->q:Li4/k;

    check-cast v0, Li4/l;

    iget-object v1, v0, Li4/l;->d:LT3/n;

    new-instance v6, Lf4/f;

    const/4 v0, 0x0

    invoke-direct {v6, p2, v0}, Lf4/f;-><init>(Ljava/util/AbstractCollection;I)V

    iget-object v5, p0, Lf4/g;->j:Lf4/i;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, LT3/n;->h(LQ3/f;Ljava/util/Collection;Ljava/util/Collection;Lr3/e;Lf1/a;)V

    return-void
.end method

.method public final l(LQ3/f;)LQ3/b;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lf4/g;->j:Lf4/i;

    iget-object p0, p0, Lf4/i;->j:LQ3/b;

    invoke-virtual {p0, p1}, LQ3/b;->d(LQ3/f;)LQ3/b;

    move-result-object p0

    return-object p0
.end method

.method public final n()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lf4/g;->j:Lf4/i;

    iget-object p0, p0, Lf4/i;->p:LE3/h;

    invoke-virtual {p0}, Lh4/g;->e()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/v;

    invoke-virtual {v1}, Lh4/v;->q0()La4/o;

    move-result-object v1

    invoke-interface {v1}, La4/o;->e()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v0, v1}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public final o()Ljava/util/Set;
    .locals 4

    iget-object v0, p0, Lf4/g;->j:Lf4/i;

    iget-object v1, v0, Lf4/i;->p:LE3/h;

    invoke-virtual {v1}, Lh4/g;->e()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh4/v;

    invoke-virtual {v3}, Lh4/v;->q0()La4/o;

    move-result-object v3

    invoke-interface {v3}, La4/o;->a()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p0, Ld4/i;

    iget-object p0, p0, Ld4/i;->n:Lt3/b;

    invoke-interface {p0, v0}, Lt3/b;->c(Lf4/i;)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method public final p()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lf4/g;->j:Lf4/i;

    iget-object p0, p0, Lf4/i;->p:LE3/h;

    invoke-virtual {p0}, Lh4/g;->e()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/v;

    invoke-virtual {v1}, Lh4/v;->q0()La4/o;

    move-result-object v1

    invoke-interface {v1}, La4/o;->b()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final r(Lf4/s;)Z
    .locals 1

    iget-object v0, p0, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->o:Lt3/d;

    iget-object p0, p0, Lf4/g;->j:Lf4/i;

    invoke-interface {v0, p0, p1}, Lt3/d;->d(Lf4/i;Lf4/s;)Z

    move-result p0

    return p0
.end method

.method public final s(LQ3/f;Lz3/b;)V
    .locals 0

    const-string p2, "name"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p1, Ld4/i;

    iget-object p1, p1, Ld4/i;->i:Lz3/a;

    const-string p2, "<this>"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "scopeOwner"

    iget-object p0, p0, Lf4/g;->j:Lf4/i;

    invoke-static {p1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
