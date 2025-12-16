.class public final Lcom/google/android/gms/internal/firebase-auth-api/e5;
.super Lcom/google/android/gms/internal/firebase-auth-api/f5;
.source "SourceFile"


# instance fields
.field public final g:[B

.field public final h:I

.field public i:I

.field public final j:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_0

    const/16 v0, 0x14

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->g:[B

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->h:I

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->j:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bufferSize must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A0(J)V
    .locals 9

    sget-boolean v0, Lcom/google/android/gms/internal/firebase-auth-api/f5;->f:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->g:[B

    if-eqz v0, :cond_1

    :goto_0
    and-long v7, p1, v4

    cmp-long v0, v7, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    int-to-long v0, v0

    long-to-int p0, p1

    int-to-byte p0, p0

    invoke-static {v6, v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/L;->m([BJB)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    int-to-long v7, v0

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v6, v7, v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/L;->m([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v7, p1, v4

    cmp-long v0, v7, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    long-to-int p0, p1

    int-to-byte p0, p0

    aput-byte p0, v6, v0

    return-void

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    ushr-long/2addr p1, v1

    goto :goto_1
.end method

.method public final B0(I[B)V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->h:I

    sub-int v2, v1, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->g:[B

    const/4 v4, 0x0

    if-lt v2, p1, :cond_0

    invoke-static {p2, v4, v3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    return-void

    :cond_0
    invoke-static {p2, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p1, v2

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->v0()V

    if-gt p1, v1, :cond_1

    invoke-static {p2, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->j:Ljava/io/OutputStream;

    invoke-virtual {p0, p2, v2, p1}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public final d0(B)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->h:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->v0()V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->g:[B

    aput-byte p1, p0, v0

    return-void
.end method

.method public final e0(IZ)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->w0(I)V

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->z0(I)V

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->g:[B

    aput-byte p2, p0, p1

    return-void
.end method

.method public final f0(ILcom/google/android/gms/internal/firebase-auth-api/Z4;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->q0(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->n()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->q0(I)V

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->n()I

    move-result p1

    iget-object p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->e:[B

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->k(I[B)V

    return-void
.end method

.method public final g0(II)V
    .locals 1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->w0(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->z0(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->x0(I)V

    return-void
.end method

.method public final h0(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->w0(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->x0(I)V

    return-void
.end method

.method public final i0(IJ)V
    .locals 1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->w0(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->z0(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->y0(J)V

    return-void
.end method

.method public final j0(J)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->w0(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->y0(J)V

    return-void
.end method

.method public final k(I[B)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->B0(I[B)V

    return-void
.end method

.method public final k0(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->w0(I)V

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->z0(I)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->z0(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->A0(J)V

    return-void
.end method

.method public final l0(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->q0(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->s0(J)V

    return-void
.end method

.method public final m0(ILcom/google/android/gms/internal/firebase-auth-api/U4;Lcom/google/android/gms/internal/firebase-auth-api/A;)V
    .locals 2

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->q0(I)V

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/A;->e(Ljava/lang/Object;)I

    move-result v0

    iput v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzd:I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->q0(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;->d:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-interface {p3, p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/A;->g(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/n;)V

    return-void
.end method

.method public final n0(ILjava/lang/String;)V
    .locals 4

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->q0(I)V

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/N; {:try_start_0 .. :try_end_0} :catch_0

    add-int v1, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->h:I

    if-le v1, v2, :cond_0

    :try_start_1
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/O;->b(Ljava/lang/CharSequence;[BII)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->q0(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->B0(I[B)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    sub-int p1, v2, p1

    if-le v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->v0()V

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/N; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->g:[B

    if-ne p1, v0, :cond_2

    add-int v0, v1, p1

    :try_start_2
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    sub-int/2addr v2, v0

    invoke-static {p2, v3, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/O;->b(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    sub-int v2, v0, v1

    sub-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->z0(I)V

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/O;->c(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->z0(I)V

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    invoke-static {p2, v3, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/O;->b(Ljava/lang/CharSequence;[BII)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I
    :try_end_2
    .catch Lcom/google/android/gms/internal/firebase-auth-api/N; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :goto_0
    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/d5;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d5;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v0

    :goto_1
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    throw p1
    :try_end_3
    .catch Lcom/google/android/gms/internal/firebase-auth-api/N; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->c0(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/N;)V

    :goto_3
    return-void
.end method

.method public final o0(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->q0(I)V

    return-void
.end method

.method public final p0(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->w0(I)V

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->z0(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->z0(I)V

    return-void
.end method

.method public final q0(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->w0(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->z0(I)V

    return-void
.end method

.method public final r0(IJ)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->w0(I)V

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->z0(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->A0(J)V

    return-void
.end method

.method public final s0(J)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->w0(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->A0(J)V

    return-void
.end method

.method public final v0()V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->j:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->g:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    return-void
.end method

.method public final w0(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->v0()V

    :cond_0
    return-void
.end method

.method public final x0(I)V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    add-int/lit8 v1, v0, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->g:[B

    aput-byte v2, v3, v0

    add-int/lit8 v2, v0, 0x2

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v0, 0x3

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    shr-int/lit8 p0, p1, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v3, v1

    return-void
.end method

.method public final y0(J)V
    .locals 9

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    add-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->g:[B

    aput-byte v4, v5, v0

    add-int/lit8 v4, v0, 0x2

    const/16 v6, 0x8

    shr-long v7, p1, v6

    and-long/2addr v7, v2

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v1

    add-int/lit8 v1, v0, 0x3

    const/16 v7, 0x10

    shr-long v7, p1, v7

    and-long/2addr v7, v2

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v4

    add-int/lit8 v4, v0, 0x4

    const/16 v7, 0x18

    shr-long v7, p1, v7

    and-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    add-int/lit8 v1, v0, 0x5

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v5, v4

    add-int/lit8 v2, v0, 0x6

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v0, 0x7

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    add-int/2addr v0, v6

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    const/16 p0, 0x38

    shr-long p0, p1, p0

    long-to-int p0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v5, v1

    return-void
.end method

.method public final z0(I)V
    .locals 4

    sget-boolean v0, Lcom/google/android/gms/internal/firebase-auth-api/f5;->f:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->g:[B

    if-eqz v0, :cond_1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    int-to-long v2, v0

    int-to-byte p0, p1

    invoke-static {v1, v2, v3, p0}, Lcom/google/android/gms/internal/firebase-auth-api/L;->m([BJB)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    int-to-long v2, v0

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/L;->m([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    int-to-byte p0, p1

    aput-byte p0, v1, v0

    return-void

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1
.end method
