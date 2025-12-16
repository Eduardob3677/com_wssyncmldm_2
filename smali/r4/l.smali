.class public final Lr4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements LU2/a;
.implements Le3/a;


# instance fields
.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Ljava/util/Iterator;

.field public f:LU2/a;


# virtual methods
.method public final a()LU2/d;
    .locals 0

    sget-object p0, LU2/e;->c:LU2/e;

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Li3/x;->g1(Ljava/lang/Object;)V

    const/4 p1, 0x4

    iput p1, p0, Lr4/l;->c:I

    return-void
.end method

.method public final d()Ljava/lang/RuntimeException;
    .locals 3

    iget v0, p0, Lr4/l;->c:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state of the iterator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lr4/l;->c:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string p0, "Iterator has failed."

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    :goto_0
    iget v0, p0, Lr4/l;->c:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lr4/l;->d()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    return v3

    :cond_2
    iget-object v0, p0, Lr4/l;->e:Ljava/util/Iterator;

    invoke-static {v0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iput v2, p0, Lr4/l;->c:I

    return v3

    :cond_3
    iput-object v1, p0, Lr4/l;->e:Ljava/util/Iterator;

    :cond_4
    const/4 v0, 0x5

    iput v0, p0, Lr4/l;->c:I

    iget-object v0, p0, Lr4/l;->f:LU2/a;

    invoke-static {v0}, Ld3/i;->b(Ljava/lang/Object;)V

    iput-object v1, p0, Lr4/l;->f:LU2/a;

    sget-object v1, LQ2/k;->a:LQ2/k;

    invoke-interface {v0, v1}, LU2/a;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lr4/l;->c:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lr4/l;->c:I

    iget-object v0, p0, Lr4/l;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lr4/l;->d:Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lr4/l;->d()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    iput v1, p0, Lr4/l;->c:I

    iget-object p0, p0, Lr4/l;->e:Ljava/util/Iterator;

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lr4/l;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lr4/l;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
