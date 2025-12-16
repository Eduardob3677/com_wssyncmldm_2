.class public final LS2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Le3/a;


# instance fields
.field public c:[Ljava/lang/Object;

.field public d:[Ljava/lang/Object;

.field public e:[I

.field public f:[I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:LS2/f;

.field public l:LS2/g;

.field public m:LS2/f;

.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/Object;

    new-array v0, v0, [I

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    new-array v3, v2, [I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LS2/e;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, LS2/e;->d:[Ljava/lang/Object;

    iput-object v0, p0, LS2/e;->e:[I

    iput-object v3, p0, LS2/e;->f:[I

    const/4 v0, 0x2

    iput v0, p0, LS2/e;->g:I

    const/4 v0, 0x0

    iput v0, p0, LS2/e;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LS2/e;->i:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 7

    invoke-virtual {p0}, LS2/e;->c()V

    :goto_0
    invoke-virtual {p0, p1}, LS2/e;->j(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, LS2/e;->g:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, LS2/e;->f:[I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, LS2/e;->f:[I

    aget v4, v3, v0

    const/4 v5, 0x1

    if-gtz v4, :cond_3

    iget v1, p0, LS2/e;->h:I

    iget-object v4, p0, LS2/e;->c:[Ljava/lang/Object;

    array-length v6, v4

    if-lt v1, v6, :cond_1

    invoke-virtual {p0, v5}, LS2/e;->g(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v1, 0x1

    iput v6, p0, LS2/e;->h:I

    aput-object p1, v4, v1

    iget-object p1, p0, LS2/e;->e:[I

    aput v0, p1, v1

    aput v6, v3, v0

    iget p1, p0, LS2/e;->j:I

    add-int/2addr p1, v5

    iput p1, p0, LS2/e;->j:I

    iget p1, p0, LS2/e;->g:I

    if-le v2, p1, :cond_2

    iput v2, p0, LS2/e;->g:I

    :cond_2
    return v1

    :cond_3
    iget-object v3, p0, LS2/e;->c:[Ljava/lang/Object;

    add-int/lit8 v6, v4, -0x1

    aget-object v3, v3, v6

    invoke-static {v3, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    neg-int p0, v4

    return p0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    if-le v2, v1, :cond_5

    iget-object v0, p0, LS2/e;->f:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, LS2/e;->k(I)V

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v0, -0x1

    if-nez v0, :cond_6

    iget-object v0, p0, LS2/e;->f:[I

    array-length v0, v0

    sub-int/2addr v0, v5

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_1
.end method

.method public final c()V
    .locals 0

    iget-boolean p0, p0, LS2/e;->n:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final clear()V
    .locals 9

    invoke-virtual {p0}, LS2/e;->c()V

    new-instance v0, Lh3/c;

    iget v1, p0, LS2/e;->h:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lh3/a;-><init>(III)V

    iget v1, v0, Lh3/a;->d:I

    iget v0, v0, Lh3/a;->e:I

    if-lez v0, :cond_1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    if-gtz v1, :cond_0

    :goto_0
    if-eqz v2, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v2, :cond_6

    if-ne v4, v1, :cond_4

    if-eqz v2, :cond_3

    move v2, v3

    move v5, v4

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_4
    add-int v5, v4, v0

    :goto_2
    iget-object v6, p0, LS2/e;->e:[I

    aget v7, v6, v4

    if-ltz v7, :cond_5

    iget-object v8, p0, LS2/e;->f:[I

    aput v3, v8, v7

    const/4 v7, -0x1

    aput v7, v6, v4

    :cond_5
    move v4, v5

    goto :goto_1

    :cond_6
    iget-object v0, p0, LS2/e;->c:[Ljava/lang/Object;

    iget v1, p0, LS2/e;->h:I

    invoke-static {v0, v3, v1}, LL2/b;->D([Ljava/lang/Object;II)V

    iget-object v0, p0, LS2/e;->d:[Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget v1, p0, LS2/e;->h:I

    invoke-static {v0, v3, v1}, LL2/b;->D([Ljava/lang/Object;II)V

    :cond_7
    iput v3, p0, LS2/e;->j:I

    iput v3, p0, LS2/e;->h:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, LS2/e;->h(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, LS2/e;->i(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d(Ljava/util/Collection;)Z
    .locals 2

    const-string v0, "m"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, LS2/e;->e(Ljava/util/Map$Entry;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    nop

    :catch_0
    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final e(Ljava/util/Map$Entry;)Z
    .locals 1

    const-string v0, "entry"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, LS2/e;->h(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, LS2/e;->d:[Ljava/lang/Object;

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    aget-object p0, p0, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, LS2/e;->m:LS2/f;

    if-nez v0, :cond_0

    new-instance v0, LS2/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LS2/f;-><init>(LS2/e;I)V

    iput-object v0, p0, LS2/e;->m:LS2/f;

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    iget v0, p0, LS2/e;->j:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, LS2/e;->d(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final g(I)V
    .locals 4

    iget-object v0, p0, LS2/e;->c:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, LS2/e;->h:I

    sub-int/2addr v1, v2

    iget v3, p0, LS2/e;->j:I

    sub-int v3, v2, v3

    if-ge v1, p1, :cond_0

    add-int/2addr v1, v3

    if-lt v1, p1, :cond_0

    array-length v1, v0

    div-int/lit8 v1, v1, 0x4

    if-lt v3, v1, :cond_0

    iget-object p1, p0, LS2/e;->f:[I

    array-length p1, p1

    invoke-virtual {p0, p1}, LS2/e;->k(I)V

    goto :goto_2

    :cond_0
    add-int/2addr v2, p1

    if-ltz v2, :cond_5

    array-length p1, v0

    if-le v2, p1, :cond_4

    array-length p1, v0

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x2

    if-le v2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, LS2/e;->c:[Ljava/lang/Object;

    iget-object p1, p0, LS2/e;->d:[Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, LS2/e;->d:[Ljava/lang/Object;

    iget-object p1, p0, LS2/e;->e:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, LS2/e;->e:[I

    const/4 p1, 0x1

    if-ge v2, p1, :cond_3

    move v2, p1

    :cond_3
    mul-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    iget-object v0, p0, LS2/e;->f:[I

    array-length v0, v0

    if-le p1, v0, :cond_4

    invoke-virtual {p0, p1}, LS2/e;->k(I)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LS2/e;->h(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, LS2/e;->d:[Ljava/lang/Object;

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 5

    invoke-virtual {p0, p1}, LS2/e;->j(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, LS2/e;->g:I

    :goto_0
    iget-object v2, p0, LS2/e;->f:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    if-lez v2, :cond_1

    iget-object v4, p0, LS2/e;->c:[Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    aget-object v4, v4, v2

    invoke-static {v4, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/2addr v1, v3

    if-gez v1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_3

    iget-object v0, p0, LS2/e;->f:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    new-instance v0, LS2/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LS2/c;-><init>(LS2/e;I)V

    const/4 p0, 0x0

    move v1, p0

    :goto_0
    invoke-virtual {v0}, LS2/c;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, LS2/c;->d:I

    iget-object v3, v0, LS2/c;->c:LS2/e;

    iget v4, v3, LS2/e;->h:I

    if-ge v2, v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, LS2/c;->d:I

    iput v2, v0, LS2/c;->e:I

    iget-object v4, v3, LS2/e;->c:[Ljava/lang/Object;

    aget-object v2, v4, v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_0
    move v2, p0

    :goto_1
    iget-object v3, v3, LS2/e;->d:[Ljava/lang/Object;

    invoke-static {v3}, Ld3/i;->b(Ljava/lang/Object;)V

    iget v4, v0, LS2/c;->e:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_1
    move v3, p0

    :goto_2
    xor-int/2addr v2, v3

    invoke-virtual {v0}, LS2/c;->a()V

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_3
    return v1
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, LS2/e;->h:I

    :cond_0
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    iget-object v1, p0, LS2/e;->e:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, LS2/e;->d:[Ljava/lang/Object;

    invoke-static {v1}, Ld3/i;->b(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_1
    return v1
.end method

.method public final isEmpty()Z
    .locals 0

    iget p0, p0, LS2/e;->j:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, -0x61c88647

    mul-int/2addr p1, v0

    iget p0, p0, LS2/e;->i:I

    ushr-int p0, p1, p0

    return p0
.end method

.method public final k(I)V
    .locals 6

    iget v0, p0, LS2/e;->h:I

    iget v1, p0, LS2/e;->j:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_4

    iget-object v0, p0, LS2/e;->d:[Ljava/lang/Object;

    move v1, v2

    move v3, v1

    :goto_0
    iget v4, p0, LS2/e;->h:I

    if-ge v1, v4, :cond_2

    iget-object v4, p0, LS2/e;->e:[I

    aget v4, v4, v1

    if-ltz v4, :cond_1

    iget-object v4, p0, LS2/e;->c:[Ljava/lang/Object;

    aget-object v5, v4, v1

    aput-object v5, v4, v3

    if-eqz v0, :cond_0

    aget-object v4, v0, v1

    aput-object v4, v0, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, LS2/e;->c:[Ljava/lang/Object;

    invoke-static {v1, v3, v4}, LL2/b;->D([Ljava/lang/Object;II)V

    if-eqz v0, :cond_3

    iget v1, p0, LS2/e;->h:I

    invoke-static {v0, v3, v1}, LL2/b;->D([Ljava/lang/Object;II)V

    :cond_3
    iput v3, p0, LS2/e;->h:I

    :cond_4
    iget-object v0, p0, LS2/e;->f:[I

    array-length v1, v0

    if-eq p1, v1, :cond_5

    new-array v0, p1, [I

    iput-object v0, p0, LS2/e;->f:[I

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LS2/e;->i:I

    goto :goto_1

    :cond_5
    array-length p1, v0

    const-string v1, "<this>"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v2, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    :goto_1
    iget p1, p0, LS2/e;->h:I

    if-ge v2, p1, :cond_9

    add-int/lit8 p1, v2, 0x1

    iget-object v0, p0, LS2/e;->c:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, LS2/e;->j(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, LS2/e;->g:I

    :goto_2
    iget-object v3, p0, LS2/e;->f:[I

    aget v4, v3, v0

    if-nez v4, :cond_6

    aput p1, v3, v0

    iget-object v1, p0, LS2/e;->e:[I

    aput v0, v1, v2

    move v2, p1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_8

    add-int/lit8 v4, v0, -0x1

    if-nez v0, :cond_7

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    move v0, v4

    goto :goto_2

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    return-void
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, LS2/e;->k:LS2/f;

    if-nez v0, :cond_0

    new-instance v0, LS2/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LS2/f;-><init>(LS2/e;I)V

    iput-object v0, p0, LS2/e;->k:LS2/f;

    :cond_0
    return-object v0
.end method

.method public final l(I)V
    .locals 11

    iget-object v0, p0, LS2/e;->c:[Ljava/lang/Object;

    const-string v1, "<this>"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object v0, p0, LS2/e;->e:[I

    aget v0, v0, p1

    iget v1, p0, LS2/e;->g:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, LS2/e;->f:[I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v1, v0

    :cond_1
    add-int/lit8 v5, v0, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, LS2/e;->f:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    add-int/lit8 v4, v4, 0x1

    iget v5, p0, LS2/e;->g:I

    const/4 v6, -0x1

    if-le v4, v5, :cond_3

    iget-object v0, p0, LS2/e;->f:[I

    aput v2, v0, v1

    goto :goto_3

    :cond_3
    iget-object v5, p0, LS2/e;->f:[I

    aget v7, v5, v0

    if-nez v7, :cond_4

    aput v2, v5, v1

    goto :goto_3

    :cond_4
    if-gez v7, :cond_5

    aput v6, v5, v1

    :goto_1
    move v1, v0

    move v4, v2

    goto :goto_2

    :cond_5
    iget-object v5, p0, LS2/e;->c:[Ljava/lang/Object;

    add-int/lit8 v8, v7, -0x1

    aget-object v5, v5, v8

    invoke-virtual {p0, v5}, LS2/e;->j(Ljava/lang/Object;)I

    move-result v5

    sub-int/2addr v5, v0

    iget-object v9, p0, LS2/e;->f:[I

    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    and-int/2addr v5, v10

    if-lt v5, v4, :cond_6

    aput v7, v9, v1

    iget-object v4, p0, LS2/e;->e:[I

    aput v1, v4, v8

    goto :goto_1

    :cond_6
    :goto_2
    add-int/2addr v3, v6

    if-gez v3, :cond_1

    iget-object v0, p0, LS2/e;->f:[I

    aput v6, v0, v1

    :goto_3
    iget-object v0, p0, LS2/e;->e:[I

    aput v6, v0, p1

    iget p1, p0, LS2/e;->j:I

    add-int/2addr p1, v6

    iput p1, p0, LS2/e;->j:I

    return-void
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LS2/e;->c()V

    invoke-virtual {p0, p1}, LS2/e;->a(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, LS2/e;->d:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LS2/e;->c:[Ljava/lang/Object;

    array-length v0, v0

    if-ltz v0, :cond_2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, LS2/e;->d:[Ljava/lang/Object;

    :goto_0
    if-gez p1, :cond_1

    neg-int p0, p1

    add-int/lit8 p0, p0, -0x1

    aget-object p1, v0, p0

    aput-object p2, v0, p0

    return-object p1

    :cond_1
    aput-object p2, v0, p1

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "capacity must be non-negative."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 5

    const-string v0, "from"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, LS2/e;->c()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, v0}, LS2/e;->g(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, LS2/e;->a(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, LS2/e;->d:[Ljava/lang/Object;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, LS2/e;->c:[Ljava/lang/Object;

    array-length v2, v2

    if-ltz v2, :cond_4

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, LS2/e;->d:[Ljava/lang/Object;

    :goto_1
    if-ltz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_0

    :cond_3
    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v3, v2, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "capacity must be non-negative."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, LS2/e;->c()V

    invoke-virtual {p0, p1}, LS2/e;->h(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LS2/e;->l(I)V

    :goto_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, LS2/e;->d:[Ljava/lang/Object;

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    aget-object v1, p0, p1

    aput-object v0, p0, p1

    return-object v1
.end method

.method public final size()I
    .locals 0

    iget p0, p0, LS2/e;->j:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, LS2/e;->j:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, LS2/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LS2/c;-><init>(LS2/e;I)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1}, LS2/c;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    if-lez p0, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v2, v1, LS2/c;->d:I

    iget-object v3, v1, LS2/c;->c:LS2/e;

    iget v4, v3, LS2/e;->h:I

    if-ge v2, v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    iput v4, v1, LS2/c;->d:I

    iput v2, v1, LS2/c;->e:I

    iget-object v4, v3, LS2/e;->c:[Ljava/lang/Object;

    aget-object v2, v4, v2

    invoke-static {v2, v3}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "(this Map)"

    if-eqz v4, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v3, LS2/e;->d:[Ljava/lang/Object;

    invoke-static {v2}, Ld3/i;->b(Ljava/lang/Object;)V

    iget v4, v1, LS2/c;->e:I

    aget-object v2, v2, v4

    invoke-static {v2, v3}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v1}, LS2/c;->a()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_4
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sb.toString()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, LS2/e;->l:LS2/g;

    if-nez v0, :cond_0

    new-instance v0, LS2/g;

    invoke-direct {v0, p0}, LS2/g;-><init>(LS2/e;)V

    iput-object v0, p0, LS2/e;->l:LS2/g;

    :cond_0
    return-object v0
.end method
