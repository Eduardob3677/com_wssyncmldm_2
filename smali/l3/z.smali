.class public final Ll3/z;
.super Ll3/C;
.source "SourceFile"

# interfaces
.implements Li3/c;
.implements Ll3/n0;


# static fields
.field public static final synthetic f:I


# instance fields
.field public final d:Ljava/lang/Class;

.field public final e:Ll3/q0;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const-string v0, "jClass"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/z;->d:Ljava/lang/Class;

    new-instance p1, Ll3/t;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Ll3/t;-><init>(Ll3/z;I)V

    invoke-static {p1}, Ll3/r0;->i(Lc3/a;)Ll3/q0;

    move-result-object p1

    iput-object p1, p0, Ll3/z;->e:Ll3/q0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Ll3/z;->d:Ljava/lang/Class;

    return-object p0
.end method

.method public final d()Ljava/util/Collection;
    .locals 2

    invoke-virtual {p0}, Ll3/z;->r()Lr3/e;

    move-result-object p0

    invoke-interface {p0}, Lr3/e;->L()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-interface {p0}, Lr3/e;->L()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lr3/e;->k()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "descriptor.constructors"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public final e(LQ3/f;)Ljava/util/Collection;
    .locals 3

    invoke-virtual {p0}, Ll3/z;->r()Lr3/e;

    move-result-object v0

    invoke-interface {v0}, Lr3/e;->q()Lh4/z;

    move-result-object v0

    invoke-virtual {v0}, Lh4/v;->q0()La4/o;

    move-result-object v0

    sget-object v1, Lz3/b;->d:Lz3/b;

    invoke-interface {v0, p1, v1}, La4/o;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Ll3/z;->r()Lr3/e;

    move-result-object p0

    invoke-interface {p0}, Lr3/e;->X()La4/o;

    move-result-object p0

    const-string v2, "descriptor.staticScope"

    invoke-static {v2, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0, p1, v1}, La4/o;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {v0, p0}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ll3/z;

    if-eqz v0, :cond_0

    invoke-static {p0}, LL2/b;->r(Li3/c;)Ljava/lang/Class;

    move-result-object p0

    check-cast p1, Li3/c;

    invoke-static {p1}, LL2/b;->r(Li3/c;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(I)Lr3/K;
    .locals 9

    iget-object v0, p0, Ll3/z;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultImpls"

    invoke-static {v1, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, LL2/b;->t(Ljava/lang/Class;)Li3/c;

    move-result-object p0

    check-cast p0, Ll3/z;

    invoke-virtual {p0, p1}, Ll3/z;->f(I)Lr3/K;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ll3/z;->r()Lr3/e;

    move-result-object v0

    instance-of v1, v0, Lf4/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lf4/i;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, LO3/k;->j:LR3/p;

    const-string v3, "classLocalVariable"

    invoke-static {v3, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v0, Lf4/i;->g:LL3/j;

    invoke-static {v3, v1, p1}, Lf1/a;->D(LR3/n;LR3/p;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, LL3/G;

    if-eqz v4, :cond_2

    iget-object p1, v0, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, LN3/f;

    sget-object v8, Ll3/y;->l:Ll3/y;

    iget-object v3, p0, Ll3/z;->d:Ljava/lang/Class;

    iget-object v7, v0, Lf4/i;->h:LN3/a;

    iget-object p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Ls2/c;

    invoke-static/range {v3 .. v8}, Ll3/w0;->f(Ljava/lang/Class;LR3/n;LN3/f;Ls2/c;LN3/a;Lc3/c;)Lr3/b;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lr3/K;

    :cond_2
    return-object v2
.end method

.method public final hashCode()I
    .locals 0

    invoke-static {p0}, LL2/b;->r(Li3/c;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i(LQ3/f;)Ljava/util/Collection;
    .locals 3

    invoke-virtual {p0}, Ll3/z;->r()Lr3/e;

    move-result-object v0

    invoke-interface {v0}, Lr3/e;->q()Lh4/z;

    move-result-object v0

    invoke-virtual {v0}, Lh4/v;->q0()La4/o;

    move-result-object v0

    sget-object v1, Lz3/b;->d:Lz3/b;

    invoke-interface {v0, p1, v1}, La4/o;->g(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Ll3/z;->r()Lr3/e;

    move-result-object p0

    invoke-interface {p0}, Lr3/e;->X()La4/o;

    move-result-object p0

    const-string v2, "descriptor.staticScope"

    invoke-static {v2, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0, p1, v1}, La4/o;->g(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {v0, p0}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final k()Ljava/util/Collection;
    .locals 2

    iget-object p0, p0, Ll3/z;->e:Ll3/q0;

    invoke-virtual {p0}, Ll3/q0;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/w;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ll3/w;->l:[Li3/o;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object p0, p0, Ll3/w;->e:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-constructors>(...)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Ll3/z;->e:Ll3/q0;

    invoke-virtual {p0}, Ll3/q0;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/w;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ll3/w;->l:[Li3/o;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object p0, p0, Ll3/w;->d:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final q()LQ3/b;
    .locals 2

    sget-object v0, Ll3/u0;->a:LQ3/b;

    iget-object p0, p0, Ll3/z;->d:Ljava/lang/Class;

    const-string v0, "klass"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "klass.componentType"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LY3/c;->b(Ljava/lang/String;)LY3/c;

    move-result-object p0

    invoke-virtual {p0}, LY3/c;->d()Lo3/k;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    new-instance p0, LQ3/b;

    sget-object v0, Lo3/n;->j:LQ3/c;

    iget-object v1, v1, Lo3/k;->d:LQ3/f;

    invoke-direct {p0, v0, v1}, LQ3/b;-><init>(LQ3/c;LQ3/f;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lo3/m;->g:LQ3/e;

    invoke-virtual {p0}, LQ3/e;->g()LQ3/c;

    move-result-object p0

    invoke-static {p0}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Ll3/u0;->a:LQ3/b;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LY3/c;->b(Ljava/lang/String;)LY3/c;

    move-result-object v0

    invoke-virtual {v0}, LY3/c;->d()Lo3/k;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    new-instance p0, LQ3/b;

    sget-object v0, Lo3/n;->j:LQ3/c;

    iget-object v1, v1, Lo3/k;->c:LQ3/f;

    invoke-direct {p0, v0, v1}, LQ3/b;-><init>(LQ3/c;LQ3/f;)V

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object p0

    iget-boolean v0, p0, LQ3/b;->c:Z

    if-nez v0, :cond_6

    sget-object v0, Lq3/d;->a:Ljava/lang/String;

    invoke-virtual {p0}, LQ3/b;->b()LQ3/c;

    move-result-object v0

    const-string v1, "classId.asSingleFqName()"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lq3/d;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, LQ3/c;->i()LQ3/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ3/b;

    if-eqz v0, :cond_6

    move-object p0, v0

    :cond_6
    :goto_0
    return-object p0
.end method

.method public final r()Lr3/e;
    .locals 0

    iget-object p0, p0, Ll3/z;->e:Ll3/q0;

    invoke-virtual {p0}, Ll3/q0;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/w;

    invoke-virtual {p0}, Ll3/w;->a()Lr3/e;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll3/z;->q()LQ3/b;

    move-result-object p0

    invoke-virtual {p0}, LQ3/b;->h()LQ3/c;

    move-result-object v1

    const-string v2, "classId.packageFqName"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, LQ3/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, LQ3/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, LQ3/b;->i()LQ3/c;

    move-result-object p0

    invoke-virtual {p0}, LQ3/c;->b()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x2e

    const/16 v3, 0x24

    invoke-static {p0, v2, v3}, Ls4/h;->q(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
