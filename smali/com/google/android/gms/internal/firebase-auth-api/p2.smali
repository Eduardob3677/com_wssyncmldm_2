.class public final Lcom/google/android/gms/internal/firebase-auth-api/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/Q;


# static fields
.field public static final e:Lcom/google/android/gms/internal/firebase-auth-api/t0;

.field public static final f:Lcom/google/android/gms/internal/firebase-auth-api/t0;


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:Ljavax/crypto/spec/SecretKeySpec;

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/t0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t0;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/p2;->e:Lcom/google/android/gms/internal/firebase-auth-api/t0;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/t0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t0;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/p2;->f:Lcom/google/android/gms/internal/firebase-auth-api/t0;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    const/16 v1, 0x10

    if-eq p2, v0, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IV size should be either 12 or 16 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/p2;->d:I

    array-length p2, p1

    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/D2;->b(I)V

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/p2;->c:Ljavax/crypto/spec/SecretKeySpec;

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/p2;->e:Lcom/google/android/gms/internal/firebase-auth-api/t0;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-array p2, v1, [B

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/p2;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/p2;->a:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/p2;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/p2;->b:[B

    return-void
.end method

.method public static c([B)[B
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xf

    if-ge v2, v3, :cond_0

    aget-byte v3, p0, v2

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v3, v3

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x7

    xor-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    aget-byte v2, p0, v3

    add-int/2addr v2, v2

    aget-byte p0, p0, v1

    shr-int/lit8 p0, p0, 0x7

    and-int/lit16 p0, p0, 0x87

    xor-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, v0, v3

    return-object v0
.end method

.method public static e([B[B)[B
    .locals 5

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    array-length v8, v7

    iget v9, v6, Lcom/google/android/gms/internal/firebase-auth-api/p2;->d:I

    sub-int v0, v8, v9

    add-int/lit8 v10, v0, -0x10

    if-ltz v10, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/p2;->e:Lcom/google/android/gms/internal/firebase-auth-api/t0;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljavax/crypto/Cipher;

    iget-object v12, v6, Lcom/google/android/gms/internal/firebase-auth-api/p2;->c:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v13, 0x1

    invoke-virtual {v11, v13, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iget v5, v6, Lcom/google/android/gms/internal/firebase-auth-api/p2;->d:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/p2;->d(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v14

    move-object/from16 v3, p2

    array-length v5, v3

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/p2;->d(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v15

    const/4 v2, 0x2

    iget v4, v6, Lcom/google/android/gms/internal/firebase-auth-api/p2;->d:I

    move-object/from16 v3, p1

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/p2;->d(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v0

    add-int/lit8 v8, v8, -0x10

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    add-int v3, v8, v1

    aget-byte v3, v7, v3

    aget-byte v4, v15, v1

    xor-int/2addr v3, v4

    aget-byte v4, v14, v1

    xor-int/2addr v3, v4

    aget-byte v4, v0, v1

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/p2;->f:Lcom/google/android/gms/internal/firebase-auth-api/t0;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v14}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v13, v12, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v7, v9, v10}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljavax/crypto/AEADBadTagException;

    const-string v1, "tag mismatch"

    invoke-direct {v0, v1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "ciphertext too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b([B[B)[B
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Ljavax/crypto/Cipher;I[BII)[B
    .locals 7

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/16 v2, 0xf

    int-to-byte p2, p2

    aput-byte p2, v1, v2

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/p2;->a:[B

    if-nez p5, :cond_0

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/p2;->e([B[B)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    sub-int v4, p5, v3

    if-le v4, v0, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_1

    aget-byte v5, v1, v4

    add-int v6, p4, v3

    add-int/2addr v6, v4

    aget-byte v6, p3, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    add-int/lit8 v3, v3, 0x10

    goto :goto_0

    :cond_2
    add-int/2addr v3, p4

    add-int/2addr p4, p5

    invoke-static {p3, v3, p4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p3

    array-length p4, p3

    if-ne p4, v0, :cond_3

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/p2;->e([B[B)[B

    move-result-object p0

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/p2;->b:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    :goto_2
    array-length p2, p3

    if-ge v2, p2, :cond_4

    aget-byte p2, p0, v2

    aget-byte p4, p3, v2

    xor-int/2addr p2, p4

    int-to-byte p2, p2

    aput-byte p2, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    aget-byte p3, p0, p2

    xor-int/lit16 p3, p3, 0x80

    int-to-byte p3, p3

    aput-byte p3, p0, p2

    :goto_3
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/p2;->e([B[B)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method
