.class public final Lf4/i;
.super Lu3/b;
.source "SourceFile"

# interfaces
.implements Lr3/j;


# instance fields
.field public final g:LL3/j;

.field public final h:LN3/a;

.field public final i:Lr3/N;

.field public final j:LQ3/b;

.field public final k:I

.field public final l:LA3/p;

.field public final m:I

.field public final n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

.field public final o:La4/p;

.field public final p:LE3/h;

.field public final q:Lr3/L;

.field public final r:Lcom/google/firebase/messaging/p;

.field public final s:Lr3/j;

.field public final t:Lg4/h;

.field public final u:Lg4/i;

.field public final v:Lg4/i;

.field public final w:Lg4/h;

.field public final x:Ld4/s;

.field public final y:Ls3/h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/G4;LL3/j;LN3/f;LN3/a;Lr3/N;)V
    .locals 10

    const-string v0, "outerContext"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "classProto"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "metadataVersion"

    invoke-static {v0, p4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "sourceElement"

    invoke-static {v0, p5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->a:Lg4/o;

    iget v1, p2, LL3/j;->g:I

    invoke-static {p3, v1}, LL2/b;->l(LN3/f;I)LQ3/b;

    move-result-object v1

    invoke-virtual {v1}, LQ3/b;->j()LQ3/f;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lu3/b;-><init>(Lg4/o;LQ3/f;)V

    iput-object p2, p0, Lf4/i;->g:LL3/j;

    iput-object p4, p0, Lf4/i;->h:LN3/a;

    iput-object p5, p0, Lf4/i;->i:Lr3/N;

    iget v0, p2, LL3/j;->g:I

    invoke-static {p3, v0}, LL2/b;->l(LN3/f;I)LQ3/b;

    move-result-object v0

    iput-object v0, p0, Lf4/i;->j:LQ3/b;

    sget-object v0, LN3/e;->e:LN3/c;

    iget v1, p2, LL3/j;->f:I

    invoke-virtual {v0, v1}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL3/A;

    invoke-static {v0}, Ld4/j;->e(LL3/A;)I

    move-result v0

    iput v0, p0, Lf4/i;->k:I

    sget-object v0, LN3/e;->d:LN3/c;

    iget v1, p2, LL3/j;->f:I

    invoke-virtual {v0, v1}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL3/f0;

    invoke-static {v0}, LW1/a;->x(LL3/f0;)LA3/p;

    move-result-object v0

    iput-object v0, p0, Lf4/i;->l:LA3/p;

    sget-object v0, LN3/e;->f:LN3/c;

    iget v1, p2, LL3/j;->f:I

    invoke-virtual {v0, v1}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL3/i;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Ld4/u;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_0

    move v0, v1

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x6

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_3
    move v0, v2

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x2

    :goto_1
    iput v0, p0, Lf4/i;->m:I

    iget-object v5, p2, LL3/j;->i:Ljava/util/List;

    const-string v3, "classProto.typeParameterList"

    invoke-static {v3, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v7, Ls2/c;

    iget-object v3, p2, LL3/j;->G:LL3/X;

    const-string v4, "classProto.typeTable"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v7, v3}, Ls2/c;-><init>(LL3/X;)V

    iget-object v3, p2, LL3/j;->I:LL3/e0;

    const-string v4, "classProto.versionRequirementTable"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v3, LL3/e0;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    sget-object v3, LN3/g;->a:LN3/g;

    move-object v8, v3

    goto :goto_2

    :cond_1
    new-instance v4, LN3/g;

    iget-object v3, v3, LL3/e0;->d:Ljava/util/List;

    const-string v6, "table.requirementList"

    invoke-static {v6, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v8, v4

    :goto_2
    move-object v3, p1

    move-object v4, p0

    move-object v6, p3

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/G4;->b(Lr3/j;Ljava/util/List;LN3/f;Ls2/c;LN3/g;LN3/a;)Lcom/google/android/gms/internal/firebase-auth-api/G4;

    move-result-object p3

    iput-object p3, p0, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p4, p3, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p4, Ld4/i;

    if-ne v0, v2, :cond_2

    new-instance v3, La4/s;

    iget-object v4, p4, Ld4/i;->a:Lg4/o;

    invoke-direct {v3, v4, p0}, La4/s;-><init>(Lg4/o;Lr3/e;)V

    goto :goto_3

    :cond_2
    sget-object v3, La4/n;->b:La4/n;

    :goto_3
    iput-object v3, p0, Lf4/i;->o:La4/p;

    new-instance v3, LE3/h;

    invoke-direct {v3, p0}, LE3/h;-><init>(Lf4/i;)V

    iput-object v3, p0, Lf4/i;->p:LE3/h;

    sget-object v3, Lr3/L;->e:Lr3/O;

    iget-object v4, p4, Ld4/i;->a:Lg4/o;

    iget-object v5, p4, Ld4/i;->q:Li4/k;

    check-cast v5, Li4/l;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, LE3/l;

    const/4 v6, 0x2

    invoke-direct {v5, v1, p0, v6}, LE3/l;-><init>(ILjava/lang/Object;I)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "storageManager"

    invoke-static {v1, v4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lr3/L;

    invoke-direct {v1, p0, v4, v5}, Lr3/L;-><init>(Lr3/e;Lg4/o;Lc3/b;)V

    iput-object v1, p0, Lf4/i;->q:Lr3/L;

    const/4 v1, 0x0

    if-ne v0, v2, :cond_3

    new-instance v0, Lcom/google/firebase/messaging/p;

    invoke-direct {v0, p0}, Lcom/google/firebase/messaging/p;-><init>(Lf4/i;)V

    goto :goto_4

    :cond_3
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lf4/i;->r:Lcom/google/firebase/messaging/p;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    check-cast p1, Lr3/j;

    iput-object p1, p0, Lf4/i;->s:Lr3/j;

    new-instance v0, Lf4/h;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2}, Lf4/h;-><init>(Lf4/i;I)V

    iget-object p4, p4, Ld4/i;->a:Lg4/o;

    move-object v2, p4

    check-cast v2, Lg4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lg4/h;

    invoke-direct {v3, v2, v0}, Lg4/h;-><init>(Lg4/l;Lc3/a;)V

    iput-object v3, p0, Lf4/i;->t:Lg4/h;

    new-instance v0, Lf4/h;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Lf4/h;-><init>(Lf4/i;I)V

    move-object v2, p4

    check-cast v2, Lg4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lg4/i;

    invoke-direct {v3, v2, v0}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v3, p0, Lf4/i;->u:Lg4/i;

    new-instance v0, Lf4/h;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lf4/h;-><init>(Lf4/i;I)V

    move-object v2, p4

    check-cast v2, Lg4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lg4/h;

    invoke-direct {v3, v2, v0}, Lg4/h;-><init>(Lg4/l;Lc3/a;)V

    new-instance v0, Lf4/h;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2}, Lf4/h;-><init>(Lf4/i;I)V

    move-object v2, p4

    check-cast v2, Lg4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lg4/i;

    invoke-direct {v3, v2, v0}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v3, p0, Lf4/i;->v:Lg4/i;

    new-instance v0, Lf4/h;

    const/4 v2, 0x6

    invoke-direct {v0, p0, v2}, Lf4/h;-><init>(Lf4/i;I)V

    move-object v2, p4

    check-cast v2, Lg4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lg4/h;

    invoke-direct {v3, v2, v0}, Lg4/h;-><init>(Lg4/l;Lc3/a;)V

    iput-object v3, p0, Lf4/i;->w:Lg4/h;

    new-instance v0, Ld4/s;

    instance-of v2, p1, Lf4/i;

    if-eqz v2, :cond_4

    check-cast p1, Lf4/i;

    goto :goto_5

    :cond_4
    move-object p1, v1

    :goto_5
    if-eqz p1, :cond_5

    iget-object v1, p1, Lf4/i;->x:Ld4/s;

    :cond_5
    move-object v9, v1

    iget-object p1, p3, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, LN3/f;

    iget-object p1, p3, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Ls2/c;

    move-object v4, v0

    move-object v5, p2

    move-object v8, p5

    invoke-direct/range {v4 .. v9}, Ld4/s;-><init>(LL3/j;LN3/f;Ls2/c;Lr3/N;Ld4/s;)V

    iput-object v0, p0, Lf4/i;->x:Ld4/s;

    sget-object p1, LN3/e;->c:LN3/b;

    iget p2, p2, LL3/j;->f:I

    invoke-virtual {p1, p2}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Ls3/g;->a:Ls3/f;

    goto :goto_6

    :cond_6
    new-instance p1, Lf4/v;

    new-instance p2, Lf4/h;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lf4/h;-><init>(Lf4/i;I)V

    invoke-direct {p1, p4, p2}, Lf4/v;-><init>(Lg4/o;Lc3/a;)V

    :goto_6
    iput-object p1, p0, Lf4/i;->y:Ls3/h;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final A0()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lf4/i;->v:Lg4/i;

    invoke-virtual {p0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final D()Z
    .locals 1

    sget-object v0, LN3/e;->i:LN3/b;

    iget-object p0, p0, Lf4/i;->g:LL3/j;

    iget p0, p0, LL3/j;->f:I

    invoke-virtual {v0, p0}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final D0()Z
    .locals 1

    sget-object v0, LN3/e;->h:LN3/b;

    iget-object p0, p0, Lf4/i;->g:LL3/j;

    iget p0, p0, LL3/j;->f:I

    invoke-virtual {v0, p0}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final H()Lh4/J;
    .locals 0

    iget-object p0, p0, Lf4/i;->p:LE3/h;

    return-object p0
.end method

.method public final I0(LQ3/f;)Lh4/z;
    .locals 4

    invoke-virtual {p0}, Lf4/i;->u0()Lf4/g;

    move-result-object p0

    sget-object v0, Lz3/b;->i:Lz3/b;

    invoke-virtual {p0, p1, v0}, Lf4/g;->g(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    move-object v1, p1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lr3/K;

    invoke-interface {v3}, Lr3/b;->d0()Lu3/w;

    move-result-object v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :goto_1
    move-object v1, p1

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    move-object v1, v2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    check-cast v1, Lr3/K;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lr3/T;->e()Lh4/v;

    move-result-object p1

    :cond_4
    check-cast p1, Lh4/z;

    return-object p1
.end method

.method public final J(Li4/f;)La4/o;
    .locals 1

    iget-object p0, p0, Lf4/i;->q:Lr3/L;

    iget-object p1, p0, Lr3/L;->a:Lr3/e;

    invoke-static {p1}, LX3/f;->j(Lr3/j;)Lr3/x;

    iget-object p0, p0, Lr3/L;->d:Lg4/i;

    sget-object p1, Lr3/L;->f:[Li3/o;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La4/o;

    return-object p0
.end method

.method public final L()I
    .locals 0

    iget p0, p0, Lf4/i;->m:I

    return p0
.end method

.method public final N()Z
    .locals 1

    sget-object v0, LN3/e;->f:LN3/c;

    iget-object p0, p0, Lf4/i;->g:LL3/j;

    iget p0, p0, LL3/j;->f:I

    invoke-virtual {v0, p0}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, LL3/i;->h:LL3/i;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final S()Lr3/S;
    .locals 0

    iget-object p0, p0, Lf4/i;->w:Lg4/h;

    invoke-interface {p0}, Lc3/a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr3/S;

    return-object p0
.end method

.method public final W()Lu3/k;
    .locals 0

    iget-object p0, p0, Lf4/i;->t:Lg4/h;

    invoke-interface {p0}, Lc3/a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu3/k;

    return-object p0
.end method

.method public final X()La4/o;
    .locals 0

    iget-object p0, p0, Lf4/i;->o:La4/p;

    return-object p0
.end method

.method public final c()LA3/p;
    .locals 0

    iget-object p0, p0, Lf4/i;->l:LA3/p;

    return-object p0
.end method

.method public final h0()Z
    .locals 1

    sget-object v0, LN3/e;->l:LN3/b;

    iget-object p0, p0, Lf4/i;->g:LL3/j;

    iget p0, p0, LL3/j;->f:I

    invoke-virtual {v0, p0}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lf4/i;->k:I

    return p0
.end method

.method public final j()Z
    .locals 3

    sget-object v0, LN3/e;->k:LN3/b;

    iget-object v1, p0, Lf4/i;->g:LL3/j;

    iget v1, v1, LL3/j;->f:I

    invoke-virtual {v0, v1}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lf4/i;->h:LN3/a;

    iget v0, p0, LN3/a;->b:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    iget v2, p0, LN3/a;->c:I

    if-ge v2, v0, :cond_2

    goto :goto_1

    :cond_2
    if-le v2, v0, :cond_3

    goto :goto_0

    :cond_3
    iget p0, p0, LN3/a;->d:I

    if-gt p0, v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final j0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final k()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lf4/i;->u:Lg4/i;

    invoke-virtual {p0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final l()Lr3/j;
    .locals 0

    iget-object p0, p0, Lf4/i;->s:Lr3/j;

    return-object p0
.end method

.method public final m()Lr3/N;
    .locals 0

    iget-object p0, p0, Lf4/i;->i:Lr3/N;

    return-object p0
.end method

.method public final s()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    check-cast p0, LJ3/c;

    iget-object p0, p0, LJ3/c;->j:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final s0()Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    check-cast v1, Ls2/c;

    iget-object v2, p0, Lf4/i;->g:LL3/j;

    const-string v3, "<this>"

    invoke-static {v3, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "typeTable"

    invoke-static {v3, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v2, LL3/j;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    if-nez v3, :cond_1

    iget-object v2, v2, LL3/j;->p:Ljava/util/List;

    const-string v3, "contextReceiverTypeIdList"

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

    const-string v6, "it"

    invoke-static {v6, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ls2/c;->l(I)LL3/Q;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v3}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/Q;

    iget-object v4, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    check-cast v4, LJ3/c;

    invoke-virtual {v4, v3}, LJ3/c;->o(LL3/Q;)Lh4/v;

    move-result-object v3

    new-instance v4, Lu3/w;

    invoke-virtual {p0}, Lu3/b;->H0()Lu3/w;

    move-result-object v6

    new-instance v7, Lb4/a;

    invoke-direct {v7, p0, v3, v5}, Lb4/a;-><init>(Lr3/e;Lh4/v;LQ3/f;)V

    sget-object v3, Ls3/g;->a:Ls3/f;

    invoke-direct {v4, v6, v7, v3}, Lu3/w;-><init>(Lr3/j;LK3/c;Ls3/h;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method public final t()Ls3/h;
    .locals 0

    iget-object p0, p0, Lf4/i;->y:Ls3/h;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deserialized "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lf4/i;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "expect "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu3/b;->getName()LQ3/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u0()Lf4/g;
    .locals 2

    iget-object v0, p0, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->q:Li4/k;

    check-cast v0, Li4/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lf4/i;->q:Lr3/L;

    iget-object v0, p0, Lr3/L;->a:Lr3/e;

    invoke-static {v0}, LX3/f;->j(Lr3/j;)Lr3/x;

    iget-object p0, p0, Lr3/L;->d:Lg4/i;

    sget-object v0, Lr3/L;->f:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La4/o;

    check-cast p0, Lf4/g;

    return-object p0
.end method

.method public final v()Z
    .locals 3

    sget-object v0, LN3/e;->k:LN3/b;

    iget-object v1, p0, Lf4/i;->g:LL3/j;

    iget v1, v1, LL3/j;->f:I

    invoke-virtual {v0, v1}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x2

    iget-object p0, p0, Lf4/i;->h:LN3/a;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, LN3/a;->a(III)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final y()Z
    .locals 1

    sget-object v0, LN3/e;->j:LN3/b;

    iget-object p0, p0, Lf4/i;->g:LL3/j;

    iget p0, p0, LL3/j;->f:I

    invoke-virtual {v0, p0}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final z()Z
    .locals 1

    sget-object v0, LN3/e;->g:LN3/b;

    iget-object p0, p0, Lf4/i;->g:LL3/j;

    iget p0, p0, LL3/j;->f:I

    invoke-virtual {v0, p0}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
