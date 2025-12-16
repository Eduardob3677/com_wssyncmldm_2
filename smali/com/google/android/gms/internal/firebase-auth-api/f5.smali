.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/f5;
.super Lcom/google/android/gms/internal/firebase-auth-api/s;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/logging/Logger;

.field public static final f:Z


# instance fields
.field public d:Lcom/google/android/gms/internal/firebase-auth-api/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/f5;->e:Ljava/util/logging/Logger;

    sget-boolean v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->e:Z

    sput-boolean v0, Lcom/google/android/gms/internal/firebase-auth-api/f5;->f:Z

    return-void
.end method

.method public static Y(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/O;->c(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/N; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static Z(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result p0

    return p0
.end method

.method public static a0(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static b0(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v4, -0x800000000L

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v4, 0xe

    ushr-long/2addr p0, v4

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public static t0(ILcom/google/android/gms/internal/firebase-auth-api/U4;Lcom/google/android/gms/internal/firebase-auth-api/A;)I
    .locals 3

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result p0

    add-int/2addr p0, p0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzd:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/A;->e(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzd:I

    :cond_0
    add-int/2addr p0, v1

    return p0
.end method

.method public static u0(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method


# virtual methods
.method public final c0(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/N;)V
    .locals 6

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/f5;->e:Ljava/util/logging/Logger;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->q0(I)V

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->k(I[B)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/d5; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/d5;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/d5;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p1
.end method

.method public abstract d0(B)V
.end method

.method public abstract e0(IZ)V
.end method

.method public abstract f0(ILcom/google/android/gms/internal/firebase-auth-api/Z4;)V
.end method

.method public abstract g0(II)V
.end method

.method public abstract h0(I)V
.end method

.method public abstract i0(IJ)V
.end method

.method public abstract j0(J)V
.end method

.method public abstract k0(II)V
.end method

.method public abstract l0(I)V
.end method

.method public abstract m0(ILcom/google/android/gms/internal/firebase-auth-api/U4;Lcom/google/android/gms/internal/firebase-auth-api/A;)V
.end method

.method public abstract n0(ILjava/lang/String;)V
.end method

.method public abstract o0(II)V
.end method

.method public abstract p0(II)V
.end method

.method public abstract q0(I)V
.end method

.method public abstract r0(IJ)V
.end method

.method public abstract s0(J)V
.end method
