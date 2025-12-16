.class public final LS2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Le3/a;


# instance fields
.field public final c:LS2/e;

.field public d:I

.field public e:I

.field public final synthetic f:I


# direct methods
.method public constructor <init>(LS2/e;I)V
    .locals 0

    iput p2, p0, LS2/c;->f:I

    const-string p2, "map"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS2/c;->c:LS2/e;

    const/4 p1, -0x1

    iput p1, p0, LS2/c;->e:I

    invoke-virtual {p0}, LS2/c;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :goto_0
    iget v0, p0, LS2/c;->d:I

    iget-object v1, p0, LS2/c;->c:LS2/e;

    iget v2, v1, LS2/e;->h:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, LS2/e;->e:[I

    aget v1, v1, v0

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LS2/c;->d:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, LS2/c;->d:I

    iget-object p0, p0, LS2/c;->c:LS2/e;

    iget p0, p0, LS2/e;->h:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LS2/c;->f:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LS2/c;->d:I

    iget-object v1, p0, LS2/c;->c:LS2/e;

    iget v2, v1, LS2/e;->h:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, LS2/c;->d:I

    iput v0, p0, LS2/c;->e:I

    iget-object v0, v1, LS2/e;->d:[Ljava/lang/Object;

    invoke-static {v0}, Ld3/i;->b(Ljava/lang/Object;)V

    iget v1, p0, LS2/c;->e:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, LS2/c;->a()V

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_0
    iget v0, p0, LS2/c;->d:I

    iget-object v1, p0, LS2/c;->c:LS2/e;

    iget v2, v1, LS2/e;->h:I

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, LS2/c;->d:I

    iput v0, p0, LS2/c;->e:I

    iget-object v1, v1, LS2/e;->c:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-virtual {p0}, LS2/c;->a()V

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_1
    iget v0, p0, LS2/c;->d:I

    iget-object v1, p0, LS2/c;->c:LS2/e;

    iget v2, v1, LS2/e;->h:I

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, LS2/c;->d:I

    iput v0, p0, LS2/c;->e:I

    new-instance v2, LS2/d;

    invoke-direct {v2, v1, v0}, LS2/d;-><init>(LS2/e;I)V

    invoke-virtual {p0}, LS2/c;->a()V

    return-object v2

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    iget v0, p0, LS2/c;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LS2/c;->c:LS2/e;

    invoke-virtual {v0}, LS2/e;->c()V

    iget v2, p0, LS2/c;->e:I

    invoke-virtual {v0, v2}, LS2/e;->l(I)V

    iput v1, p0, LS2/c;->e:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() before removing element from the iterator."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
