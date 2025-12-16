.class Lcom/samsung/android/fotaagent/common/cipher/AES;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEY_LENGTH:I = 0x80

.field private static final RANDOM_ALGORITHM:Ljava/lang/String; = "SHA1PRNG"


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private key:Ljava/security/Key;

.field private sr:Ljava/security/SecureRandom;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/fotaagent/common/cipher/AES;->cipher:Ljavax/crypto/Cipher;

    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/fotaagent/common/cipher/AES;->sr:Ljava/security/SecureRandom;

    return-void
.end method

.method public static newWithGeneratedKey()Lcom/samsung/android/fotaagent/common/cipher/AES;
    .locals 1

    new-instance v0, Lcom/samsung/android/fotaagent/common/cipher/AES;

    invoke-direct {v0}, Lcom/samsung/android/fotaagent/common/cipher/AES;-><init>()V

    invoke-direct {v0}, Lcom/samsung/android/fotaagent/common/cipher/AES;->withGeneratedKey()Lcom/samsung/android/fotaagent/common/cipher/AES;

    move-result-object v0

    return-object v0
.end method

.method private withGeneratedKey()Lcom/samsung/android/fotaagent/common/cipher/AES;
    .locals 3

    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x80

    iget-object v2, p0, Lcom/samsung/android/fotaagent/common/cipher/AES;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/fotaagent/common/cipher/AES;->key:Ljava/security/Key;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized decrypt([B)[B
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/fotaagent/common/cipher/AES;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/fotaagent/common/cipher/Bytes;->splitBytes([BI)[[B

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/fotaagent/common/cipher/AES;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/samsung/android/fotaagent/common/cipher/AES;->key:Ljava/security/Key;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v0, p0, Lcom/samsung/android/fotaagent/common/cipher/AES;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized encrypt([B)[B
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/fotaagent/common/cipher/AES;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/samsung/android/fotaagent/common/cipher/AES;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v1, p0, Lcom/samsung/android/fotaagent/common/cipher/AES;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/samsung/android/fotaagent/common/cipher/AES;->key:Ljava/security/Key;

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v1, p0, Lcom/samsung/android/fotaagent/common/cipher/AES;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/fotaagent/common/cipher/Bytes;->mergeBytes([B[B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getKey()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/cipher/AES;->key:Ljava/security/Key;

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method
