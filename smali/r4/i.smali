.class public final Lr4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Le3/a;


# instance fields
.field public c:Ljava/lang/Object;

.field public d:I

.field public final synthetic e:Lr4/j;


# direct methods
.method public constructor <init>(Lr4/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/i;->e:Lr4/j;

    const/4 p1, -0x2

    iput p1, p0, Lr4/i;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Lr4/i;->d:I

    const/4 v1, -0x2

    iget-object v2, p0, Lr4/i;->e:Lr4/j;

    if-ne v0, v1, :cond_0

    iget-object v0, v2, Lr4/j;->c:Ljava/lang/Object;

    check-cast v0, Lc3/a;

    invoke-interface {v0}, Lc3/a;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lr4/j;->b:Lc3/b;

    iget-object v1, p0, Lr4/i;->c:Ljava/lang/Object;

    invoke-static {v1}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lr4/i;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lr4/i;->d:I

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lr4/i;->d:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lr4/i;->a()V

    :cond_0
    iget p0, p0, Lr4/i;->d:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lr4/i;->d:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lr4/i;->a()V

    :cond_0
    iget v0, p0, Lr4/i;->d:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/i;->c:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence"

    invoke-static {v1, v0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, -0x1

    iput v1, p0, Lr4/i;->d:I

    return-object v0

    :cond_1
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
