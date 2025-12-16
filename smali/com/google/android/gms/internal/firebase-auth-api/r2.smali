.class public final Lcom/google/android/gms/internal/firebase-auth-api/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/S;


# static fields
.field public static final c:Ljava/util/List;

.field public static final d:[B


# instance fields
.field public final a:Lcom/google/android/gms/internal/firebase-auth-api/z2;

.field public final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/r2;->c:Ljava/util/List;

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/r2;->d:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/r2;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    shr-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/r2;->b:[B

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/z2;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/z2;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/r2;->a:Lcom/google/android/gms/internal/firebase-auth-api/z2;

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "invalid key size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes; key must have 64 bytes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 9

    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/x2;->e:Lcom/google/android/gms/internal/firebase-auth-api/x2;

    const-string v3, "AES/CTR/NoPadding"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/x2;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Cipher;

    const/4 v3, 0x0

    invoke-static {p1, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    const/16 v6, 0x8

    aget-byte v7, v5, v6

    and-int/lit8 v7, v7, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    const/16 v6, 0xc

    aget-byte v7, v5, v6

    and-int/lit8 v7, v7, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/r2;->b:[B

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    array-length p1, p1

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/s;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    new-array v0, v3, [B

    :cond_0
    filled-new-array {p2, v0}, [[B

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/r2;->a:Lcom/google/android/gms/internal/firebase-auth-api/z2;

    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/r2;->d:[B

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/z2;->a(I[B)[B

    move-result-object p2

    move v2, v3

    :goto_0
    const/4 v5, 0x1

    if-gtz v2, :cond_2

    aget-object v2, p1, v3

    if-nez v2, :cond_1

    new-array v2, v3, [B

    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->w([B)[B

    move-result-object p2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/z2;->a(I[B)[B

    move-result-object v2

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->J([B[B)[B

    move-result-object p2

    move v2, v5

    goto :goto_0

    :cond_2
    aget-object p1, p1, v5

    array-length v2, p1

    if-lt v2, v1, :cond_4

    array-length v5, p2

    if-lt v2, v5, :cond_3

    sub-int v5, v2, v5

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    :goto_1
    array-length v2, p2

    if-ge v3, v2, :cond_5

    add-int v2, v5, v3

    aget-byte v6, p1, v2

    aget-byte v7, p2, v3

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "xorEnd requires a.length >= b.length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    array-length v2, p1

    if-ge v2, v1, :cond_7

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/16 v3, -0x80

    aput-byte v3, p1, v2

    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->w([B)[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->J([B[B)[B

    move-result-object p1

    :cond_5
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/z2;->a(I[B)[B

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->v([B[B)Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v0

    :cond_6
    new-instance p0, Ljavax/crypto/AEADBadTagException;

    const-string p1, "Integrity check failed."

    invoke-direct {p0, p1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x must be smaller than a block."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Ciphertext too short."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
