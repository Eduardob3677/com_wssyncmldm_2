.class public final Lcom/google/android/gms/internal/firebase-auth-api/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/Q;


# static fields
.field public static final c:[B


# instance fields
.field public final a:Lcom/google/android/gms/internal/firebase-auth-api/U1;

.field public final b:Lcom/google/android/gms/internal/firebase-auth-api/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/s0;->c:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/U1;Lcom/google/android/gms/internal/firebase-auth-api/n0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/s0;->a:Lcom/google/android/gms/internal/firebase-auth-api/U1;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/s0;->b:Lcom/google/android/gms/internal/firebase-auth-api/Q;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 5

    const-string v0, "invalid ciphertext"

    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-lez v2, :cond_0

    array-length p1, p1

    add-int/lit8 p1, p1, -0x4

    if-gt v2, p1, :cond_0

    new-array p1, v2, [B

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/s0;->b:Lcom/google/android/gms/internal/firebase-auth-api/Q;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/s0;->c:[B

    invoke-interface {v1, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/Q;->a([B[B)[B

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/s0;->a:Lcom/google/android/gms/internal/firebase-auth-api/U1;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/U1;->q()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->d(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/Q;

    invoke-interface {p0, v2, p2}, Lcom/google/android/gms/internal/firebase-auth-api/Q;->a([B[B)[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final b([B[B)[B
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
