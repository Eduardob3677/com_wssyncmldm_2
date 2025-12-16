.class public final LJ3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/Set;

.field public static final c:Ljava/util/Set;

.field public static final d:LP3/f;

.field public static final e:LP3/f;


# instance fields
.field public a:Ld4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, LK3/a;->f:LK3/a;

    invoke-static {v0}, LL2/b;->I(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LJ3/f;->b:Ljava/util/Set;

    sget-object v0, LK3/a;->g:LK3/a;

    sget-object v1, LK3/a;->j:LK3/a;

    filled-new-array {v0, v1}, [LK3/a;

    move-result-object v0

    invoke-static {v0}, LR2/B;->T([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LJ3/f;->c:Ljava/util/Set;

    new-instance v0, LP3/f;

    const/4 v1, 0x1

    const/4 v2, 0x2

    filled-new-array {v1, v1, v2}, [I

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, LP3/f;-><init>([IZ)V

    new-instance v0, LP3/f;

    const/16 v2, 0xb

    filled-new-array {v1, v1, v2}, [I

    move-result-object v2

    invoke-direct {v0, v2, v3}, LP3/f;-><init>([IZ)V

    sput-object v0, LJ3/f;->d:LP3/f;

    new-instance v0, LP3/f;

    const/16 v2, 0xd

    filled-new-array {v1, v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, v1, v3}, LP3/f;-><init>([IZ)V

    sput-object v0, LJ3/f;->e:LP3/f;

    return-void
.end method


# virtual methods
.method public final a(Lu3/E;Lw3/b;)Lf4/q;
    .locals 12

    const-string v0, "Could not read data from "

    const-string v1, "descriptor"

    invoke-static {v1, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "kotlinClass"

    invoke-static {v1, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p2, Lw3/b;->b:LK3/b;

    iget-object v2, v1, LK3/b;->f:Ljava/io/Serializable;

    check-cast v2, [Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, v1, LK3/b;->g:Ljava/io/Serializable;

    check-cast v2, [Ljava/lang/String;

    :cond_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, v1, LK3/b;->d:Ljava/lang/Object;

    check-cast v4, LK3/a;

    sget-object v5, LJ3/f;->c:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_2

    return-object v3

    :cond_2
    iget-object v4, v1, LK3/b;->h:Ljava/io/Serializable;

    check-cast v4, [Ljava/lang/String;

    if-nez v4, :cond_3

    return-object v3

    :cond_3
    :try_start_0
    invoke-static {v2, v4}, LP3/h;->h([Ljava/lang/String;[Ljava/lang/String;)LQ2/e;

    move-result-object v0
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lw3/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, LJ3/f;->c()Ld4/i;

    move-result-object v2

    iget-object v2, v2, Ld4/i;->c:Ld4/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, LJ3/f;->c()Ld4/i;

    move-result-object v2

    const-string v4, "<this>"

    iget-object v2, v2, Ld4/i;->c:Ld4/j;

    invoke-static {v4, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, LP3/f;->g:LP3/f;

    iget-object v4, v1, LK3/b;->e:Ljava/lang/Object;

    check-cast v4, LP3/f;

    invoke-virtual {v4, v2}, LP3/f;->b(LP3/f;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v0, v3

    :goto_2
    if-nez v0, :cond_4

    return-object v3

    :cond_4
    iget-object v2, v0, LQ2/e;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, LP3/g;

    iget-object v0, v0, LQ2/e;->d:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, LL3/C;

    new-instance v8, LJ3/h;

    invoke-virtual {p0, p2}, LJ3/f;->d(Lw3/b;)Ld4/m;

    invoke-virtual {p0, p2}, LJ3/f;->e(Lw3/b;)Z

    invoke-virtual {p0, p2}, LJ3/f;->b(Lw3/b;)I

    move-result v0

    invoke-direct {v8, p2, v5, v6, v0}, LJ3/h;-><init>(Lw3/b;LL3/C;LP3/g;I)V

    new-instance p2, Lf4/q;

    invoke-virtual {p0}, LJ3/f;->c()Ld4/i;

    move-result-object v9

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "scope for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, LJ3/e;->d:LJ3/e;

    iget-object p0, v1, LK3/b;->e:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, LP3/f;

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v11}, Lf4/q;-><init>(Lr3/C;LL3/C;LN3/f;LN3/a;Lf4/j;Ld4/i;Ljava/lang/String;Lc3/a;)V

    return-object p2

    :cond_5
    throw v0
.end method

.method public final b(Lw3/b;)I
    .locals 1

    invoke-virtual {p0}, LJ3/f;->c()Ld4/i;

    move-result-object p0

    iget-object p0, p0, Ld4/i;->c:Ld4/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lw3/b;->b:LK3/b;

    iget p0, p0, LK3/b;->c:I

    and-int/lit8 p1, p0, 0x40

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    and-int/lit8 p1, p0, 0x20

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    goto :goto_2

    :cond_2
    :goto_1
    and-int/lit8 p1, p0, 0x10

    if-eqz p1, :cond_4

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x3

    :cond_4
    :goto_2
    return v0
.end method

.method public final c()Ld4/i;
    .locals 0

    iget-object p0, p0, LJ3/f;->a:Ld4/i;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "components"

    invoke-static {p0}, Ld3/i;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Lw3/b;)Ld4/m;
    .locals 10

    invoke-virtual {p0}, LJ3/f;->c()Ld4/i;

    move-result-object v0

    iget-object v0, v0, Ld4/i;->c:Ld4/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lw3/b;->b:LK3/b;

    iget-object v0, v0, LK3/b;->e:Ljava/lang/Object;

    check-cast v0, LP3/f;

    invoke-virtual {p0}, LJ3/f;->c()Ld4/i;

    move-result-object v1

    iget-object v1, v1, Ld4/i;->c:Ld4/j;

    const-string v2, "<this>"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, LP3/f;->g:LP3/f;

    invoke-virtual {v0, v6}, LP3/f;->b(LP3/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ld4/m;

    iget-object v1, p1, Lw3/b;->b:LK3/b;

    iget-object v3, v1, LK3/b;->e:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, LP3/f;

    invoke-virtual {p0}, LJ3/f;->c()Ld4/i;

    move-result-object v3

    iget-object v3, v3, Ld4/i;->c:Ld4/j;

    invoke-static {v2, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, LJ3/f;->c()Ld4/i;

    move-result-object p0

    iget-object p0, p0, Ld4/i;->c:Ld4/j;

    invoke-static {v2, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v1, LK3/b;->e:Ljava/lang/Object;

    check-cast p0, LP3/f;

    iget-boolean p0, p0, LP3/f;->f:Z

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_1

    move-object p0, v6

    goto :goto_0

    :cond_1
    sget-object p0, LP3/f;->h:LP3/f;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v6, LN3/a;->b:I

    iget v2, p0, LN3/a;->b:I

    if-le v2, v1, :cond_2

    goto :goto_1

    :cond_2
    if-ge v2, v1, :cond_3

    goto :goto_2

    :cond_3
    iget v1, p0, LN3/a;->c:I

    iget v2, v6, LN3/a;->c:I

    if-le v1, v2, :cond_4

    :goto_1
    move-object v7, p0

    goto :goto_3

    :cond_4
    :goto_2
    move-object v7, v6

    :goto_3
    invoke-virtual {p1}, Lw3/b;->a()Ljava/lang/String;

    move-result-object v8

    iget-object p0, p1, Lw3/b;->a:Ljava/lang/Class;

    invoke-static {p0}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v9

    move-object v3, v0

    move-object v5, v6

    invoke-direct/range {v3 .. v9}, Ld4/m;-><init>(LP3/f;LP3/f;LP3/f;LP3/f;Ljava/lang/String;LQ3/b;)V

    return-object v0
.end method

.method public final e(Lw3/b;)Z
    .locals 1

    invoke-virtual {p0}, LJ3/f;->c()Ld4/i;

    move-result-object v0

    iget-object v0, v0, Ld4/i;->c:Ld4/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, LJ3/f;->c()Ld4/i;

    move-result-object p0

    iget-object p0, p0, Ld4/i;->c:Ld4/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lw3/b;->b:LK3/b;

    iget p1, p0, LK3/b;->c:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    iget-object p0, p0, LK3/b;->e:Ljava/lang/Object;

    check-cast p0, LP3/f;

    sget-object p1, LJ3/f;->d:LP3/f;

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

.method public final f(Lw3/b;)Ld4/d;
    .locals 6

    const-string v0, "Could not read data from "

    iget-object v1, p1, Lw3/b;->b:LK3/b;

    iget-object v2, v1, LK3/b;->f:Ljava/io/Serializable;

    check-cast v2, [Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, v1, LK3/b;->g:Ljava/io/Serializable;

    check-cast v2, [Ljava/lang/String;

    :cond_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, v1, LK3/b;->d:Ljava/lang/Object;

    check-cast v4, LK3/a;

    sget-object v5, LJ3/f;->b:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_2

    return-object v3

    :cond_2
    iget-object v4, v1, LK3/b;->h:Ljava/io/Serializable;

    check-cast v4, [Ljava/lang/String;

    iget-object v1, v1, LK3/b;->e:Ljava/lang/Object;

    check-cast v1, LP3/f;

    if-nez v4, :cond_3

    return-object v3

    :cond_3
    :try_start_0
    invoke-static {v2, v4}, LP3/h;->f([Ljava/lang/String;[Ljava/lang/String;)LQ2/e;

    move-result-object v0
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lw3/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, LJ3/f;->c()Ld4/i;

    move-result-object v2

    iget-object v2, v2, Ld4/i;->c:Ld4/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, LJ3/f;->c()Ld4/i;

    move-result-object v2

    const-string v4, "<this>"

    iget-object v2, v2, Ld4/i;->c:Ld4/j;

    invoke-static {v4, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, LP3/f;->g:LP3/f;

    invoke-virtual {v1, v2}, LP3/f;->b(LP3/f;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v0, v3

    :goto_2
    if-nez v0, :cond_4

    return-object v3

    :cond_4
    iget-object v2, v0, LQ2/e;->c:Ljava/lang/Object;

    check-cast v2, LP3/g;

    iget-object v0, v0, LQ2/e;->d:Ljava/lang/Object;

    check-cast v0, LL3/j;

    new-instance v3, LJ3/q;

    invoke-virtual {p0, p1}, LJ3/f;->d(Lw3/b;)Ld4/m;

    invoke-virtual {p0, p1}, LJ3/f;->e(Lw3/b;)Z

    invoke-virtual {p0, p1}, LJ3/f;->b(Lw3/b;)I

    move-result p0

    invoke-direct {v3, p1, p0}, LJ3/q;-><init>(Lw3/b;I)V

    new-instance p0, Ld4/d;

    invoke-direct {p0, v2, v0, v1, v3}, Ld4/d;-><init>(LN3/f;LL3/j;LN3/a;Lr3/N;)V

    return-object p0

    :cond_5
    throw v0
.end method
