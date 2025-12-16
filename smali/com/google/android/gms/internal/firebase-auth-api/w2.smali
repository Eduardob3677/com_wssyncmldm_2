.class public final Lcom/google/android/gms/internal/firebase-auth-api/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/Q;


# instance fields
.field public final a:Lcom/google/android/gms/internal/firebase-auth-api/y2;

.field public final b:Lcom/google/android/gms/internal/firebase-auth-api/b0;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/y2;Lcom/google/android/gms/internal/firebase-auth-api/b0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/w2;->a:Lcom/google/android/gms/internal/firebase-auth-api/y2;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/w2;->b:Lcom/google/android/gms/internal/firebase-auth-api/b0;

    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/w2;->c:I

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 7

    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/w2;->c:I

    if-lt v0, v1, :cond_0

    sub-int v1, v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v3, p2

    int-to-long v3, v3

    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    filled-new-array {p2, v2, v0}, [[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->C([[B)[B

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/w2;->b:Lcom/google/android/gms/internal/firebase-auth-api/b0;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/b0;->a([B[B)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/w2;->a:Lcom/google/android/gms/internal/firebase-auth-api/y2;

    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/y2;->a([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ciphertext too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b([B[B)[B
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
