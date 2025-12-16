.class public final Lcom/google/android/gms/internal/firebase-auth-api/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/Q;


# instance fields
.field public final a:Lcom/google/android/gms/internal/firebase-auth-api/t2;

.field public final b:Lcom/google/android/gms/internal/firebase-auth-api/t2;

.field public final synthetic c:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/u2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/u2;->c(I[B)Lcom/google/android/gms/internal/firebase-auth-api/t2;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/u2;->a:Lcom/google/android/gms/internal/firebase-auth-api/t2;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/u2;->c(I[B)Lcom/google/android/gms/internal/firebase-auth-api/t2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/u2;->b:Lcom/google/android/gms/internal/firebase-auth-api/t2;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 9

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/u2;->a:Lcom/google/android/gms/internal/firebase-auth-api/t2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->b()I

    move-result v2

    const/16 v3, 0x10

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    new-array v2, v3, [B

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    add-int/lit8 v3, v3, -0x10

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    add-int/lit8 v3, v3, -0x10

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->b()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/u2;->b:Lcom/google/android/gms/internal/firebase-auth-api/t2;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->d(I[B)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/16 v3, 0x20

    new-array v3, v3, [B

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    array-length p0, p2

    and-int/lit8 v4, p0, 0xf

    if-nez v4, :cond_0

    move v5, p0

    goto :goto_0

    :cond_0
    add-int/lit8 v5, p0, 0x10

    sub-int/2addr v5, v4

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    rem-int/lit8 v6, v4, 0x10

    if-nez v6, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v4, 0x10

    sub-int/2addr v7, v6

    :goto_1
    add-int/2addr v7, v5

    add-int/lit8 v6, v7, 0x10

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v6, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-long v7, p0

    invoke-virtual {v6, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    int-to-long v4, v4

    invoke-virtual {v6, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->n([B[B)[B

    move-result-object p0

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->v([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->g(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    return-object p0

    :cond_2
    :try_start_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid MAC"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/crypto/AEADBadTagException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
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

.method public final c(I[B)Lcom/google/android/gms/internal/firebase-auth-api/t2;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/u2;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/E2;

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t2;-><init>([BI)V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/s2;

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t2;-><init>([BI)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
