.class public final Ln4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Le3/a;


# instance fields
.field public c:I

.field public d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Ln4/c;


# direct methods
.method public constructor <init>(Ln4/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln4/b;->f:Ln4/c;

    const/4 p1, 0x2

    iput p1, p0, Ln4/b;->c:I

    const/4 p1, -0x1

    iput p1, p0, Ln4/b;->e:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 5

    iget v0, p0, Ln4/b;->c:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    invoke-static {v0}, Lk/Q0;->f(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    iput v1, p0, Ln4/b;->c:I

    :cond_0
    iget v0, p0, Ln4/b;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Ln4/b;->e:I

    iget-object v1, p0, Ln4/b;->f:Ln4/c;

    iget-object v1, v1, Ln4/c;->c:[Ljava/lang/Object;

    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    :cond_1
    array-length v3, v1

    if-lt v0, v3, :cond_2

    const/4 v0, 0x3

    iput v0, p0, Ln4/b;->c:I

    goto :goto_0

    :cond_2
    aget-object v0, v1, v0

    const-string v1, "null cannot be cast to non-null type T of org.jetbrains.kotlin.util.ArrayMapImpl"

    invoke-static {v1, v0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ln4/b;->d:Ljava/lang/Object;

    iput v2, p0, Ln4/b;->c:I

    :goto_0
    iget p0, p0, Ln4/b;->c:I

    if-ne p0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v4

    :cond_4
    :goto_1
    return v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ln4/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Ln4/b;->c:I

    iget-object p0, p0, Ln4/b;->d:Ljava/lang/Object;

    return-object p0

    :cond_0
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
