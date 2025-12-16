.class public final Lcom/google/android/gms/internal/firebase-auth-api/c5;
.super Lcom/google/android/gms/internal/firebase-auth-api/f5;
.source "SourceFile"


# instance fields
.field public final g:[B

.field public final h:I

.field public i:I


# direct methods
.method public constructor <init>([BI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    sub-int v1, v0, p2

    or-int/2addr v1, p2

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->g:[B

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->h:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d0(B)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->g:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/d5;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->h:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d5;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final e0(IZ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->q0(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->d0(B)V

    return-void
.end method

.method public final f0(ILcom/google/android/gms/internal/firebase-auth-api/Z4;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->q0(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->n()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->q0(I)V

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->n()I

    move-result p1

    iget-object p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->e:[B

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->k(I[B)V

    return-void
.end method

.method public final g0(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->q0(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->h0(I)V

    return-void
.end method

.method public final h0(I)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->g:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/d5;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->h:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d5;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final i0(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->q0(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->j0(J)V

    return-void
.end method

.method public final j0(J)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->g:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    add-int/lit8 v2, v1, 0x1

    long-to-int v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    const/16 v4, 0x8

    shr-long v5, p1, v4

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v5, 0x10

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x4

    const/16 v5, 0x18

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x5

    const/16 v5, 0x20

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x6

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x7

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/d5;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->h:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d5;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final k(I[B)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->g:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/d5;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->h:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Pos: %d, limit: %d, len: %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/d5;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final k0(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->q0(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->l0(I)V

    return-void
.end method

.method public final l0(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->q0(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->s0(J)V

    return-void
.end method

.method public final m0(ILcom/google/android/gms/internal/firebase-auth-api/U4;Lcom/google/android/gms/internal/firebase-auth-api/A;)V
    .locals 2

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->q0(I)V

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/A;->e(Ljava/lang/Object;)I

    move-result v0

    iput v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzd:I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->q0(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;->d:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-interface {p3, p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/A;->g(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/n;)V

    return-void
.end method

.method public final n0(ILjava/lang/String;)V
    .locals 4

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->q0(I)V

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/N; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->h:I

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->g:[B

    if-ne v1, v0, :cond_0

    add-int v0, p1, v1

    :try_start_1
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    sub-int/2addr v2, v0

    invoke-static {p2, v3, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/O;->b(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    sub-int v2, v0, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->q0(I)V

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/O;->c(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->q0(I)V

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    sub-int/2addr v2, v0

    invoke-static {p2, v3, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/O;->b(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/N; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/d5;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/d5;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p1

    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->c0(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/N;)V

    :goto_2
    return-void
.end method

.method public final o0(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->q0(I)V

    return-void
.end method

.method public final p0(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->q0(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->q0(I)V

    return-void
.end method

.method public final q0(I)V
    .locals 4

    const/4 v0, 0x1

    sget-boolean v1, Lcom/google/android/gms/internal/firebase-auth-api/f5;->f:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/google/android/gms/internal/firebase-auth-api/W4;->a:I

    :cond_0
    :goto_0
    and-int/lit8 v1, p1, -0x80

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->g:[B

    if-nez v1, :cond_1

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/d5;

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->h:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d5;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v1
.end method

.method public final r0(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->q0(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->s0(J)V

    return-void
.end method

.method public final s0(J)V
    .locals 10

    sget-boolean v0, Lcom/google/android/gms/internal/firebase-auth-api/f5;->f:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    iget v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->h:I

    iget-object v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->g:[B

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    sub-int v0, v6, v0

    const/16 v8, 0xa

    if-lt v0, v8, :cond_1

    :goto_0
    and-long v8, p1, v4

    cmp-long v0, v8, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    int-to-long v0, v0

    long-to-int p0, p1

    int-to-byte p0, p0

    invoke-static {v7, v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/L;->m([BJB)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    int-to-long v8, v0

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v7, v8, v9, v0}, Lcom/google/android/gms/internal/firebase-auth-api/L;->m([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v8, p1, v4

    cmp-long v0, v8, v2

    if-nez v0, :cond_2

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v7, v0

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    add-int/lit8 v8, v0, 0x1

    iput v8, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v7, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :goto_2
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/d5;

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d5;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final v0()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->h:I

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c5;->i:I

    sub-int/2addr v0, p0

    return v0
.end method
