.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/y2;


# static fields
.field public static final c:[I


# instance fields
.field public final a:[I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->h([B)[I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/t2;->c:[I

    return-void

    :array_0
    .array-data 1
        0x65t
        0x78t
        0x70t
        0x61t
        0x6et
        0x64t
        0x20t
        0x33t
        0x32t
        0x2dt
        0x62t
        0x79t
        0x74t
        0x65t
        0x20t
        0x6bt
    .end array-data
.end method

.method public constructor <init>([BI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->h([B)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/t2;->a:[I

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/t2;->b:I

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "The key length in bytes must be 32."

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(IIII[I)V
    .locals 2

    aget v0, p4, p0

    aget v1, p4, p1

    add-int/2addr v0, v1

    aput v0, p4, p0

    aget v1, p4, p3

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x10

    ushr-int/lit8 v0, v0, -0x10

    or-int/2addr v0, v1

    aput v0, p4, p3

    aget v1, p4, p2

    add-int/2addr v1, v0

    aput v1, p4, p2

    aget v0, p4, p1

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0xc

    ushr-int/lit8 v0, v0, -0xc

    or-int/2addr v0, v1

    aput v0, p4, p1

    aget v1, p4, p0

    add-int/2addr v1, v0

    aput v1, p4, p0

    aget p0, p4, p3

    xor-int/2addr p0, v1

    shl-int/lit8 v0, p0, 0x8

    ushr-int/lit8 p0, p0, -0x8

    or-int/2addr p0, v0

    aput p0, p4, p3

    aget p3, p4, p2

    add-int/2addr p3, p0

    aput p3, p4, p2

    aget p0, p4, p1

    xor-int/2addr p0, p3

    shl-int/lit8 p2, p0, 0x7

    ushr-int/lit8 p0, p0, -0x7

    or-int/2addr p0, p2

    aput p0, p4, p1

    return-void
.end method

.method public static f([I)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    const/4 v4, 0x4

    const/16 v5, 0x8

    const/16 v6, 0xc

    invoke-static {v1, v4, v5, v6, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->e(IIII[I)V

    const/4 v7, 0x1

    const/4 v8, 0x5

    const/16 v9, 0x9

    const/16 v10, 0xd

    invoke-static {v7, v8, v9, v10, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->e(IIII[I)V

    const/4 v11, 0x2

    const/4 v12, 0x6

    const/16 v13, 0xe

    invoke-static {v11, v12, v3, v13, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->e(IIII[I)V

    const/4 v14, 0x3

    const/4 v15, 0x7

    const/16 v4, 0xb

    const/16 v9, 0xf

    invoke-static {v14, v15, v4, v9, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->e(IIII[I)V

    invoke-static {v1, v8, v3, v9, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->e(IIII[I)V

    invoke-static {v7, v12, v4, v6, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->e(IIII[I)V

    invoke-static {v11, v15, v5, v10, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->e(IIII[I)V

    const/4 v3, 0x4

    const/16 v4, 0x9

    invoke-static {v14, v3, v4, v13, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->e(IIII[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static h([B)[I
    .locals 1

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object v0
.end method


# virtual methods
.method public final a([B)[B
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->g(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    return-object p0
.end method

.method public abstract b()I
.end method

.method public abstract c([II)[I
.end method

.method public final d(I[B)Ljava/nio/ByteBuffer;
    .locals 3

    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->h([B)[I

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->c([II)[I

    move-result-object p0

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->f([I)V

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x40

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p2, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-object p1
.end method

.method public final g(Ljava/nio/ByteBuffer;)[B
    .locals 8

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->b()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->b()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    div-int/lit8 v3, v2, 0x40

    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    iget v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/t2;->b:I

    add-int/2addr v6, v5

    invoke-virtual {p0, v6, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->d(I[B)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/16 v7, 0x40

    if-ne v5, v3, :cond_0

    rem-int/lit8 v7, v2, 0x40

    invoke-static {v1, p1, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/s;->m(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    goto :goto_1

    :cond_0
    invoke-static {v1, p1, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/s;->m(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ciphertext too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
