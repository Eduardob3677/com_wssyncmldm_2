.class public Lcom/samsung/android/fotaagent/common/cipher/AESWithRSA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aes:Lcom/samsung/android/fotaagent/common/cipher/AES;

.field private static encryptedKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/fotaagent/common/cipher/AES;->newWithGeneratedKey()Lcom/samsung/android/fotaagent/common/cipher/AES;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/fotaagent/common/cipher/AESWithRSA;->aes:Lcom/samsung/android/fotaagent/common/cipher/AES;

    invoke-virtual {v0}, Lcom/samsung/android/fotaagent/common/cipher/AES;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/cipher/RSA;->encrypt([B)[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/fotaagent/common/cipher/AESWithRSA;->encryptedKey:[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IDM_FOTA"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/cipher/AESWithRSA;->encrypt([B)[B

    move-result-object p0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static encrypt([B)[B
    .locals 1

    sget-object v0, Lcom/samsung/android/fotaagent/common/cipher/AESWithRSA;->aes:Lcom/samsung/android/fotaagent/common/cipher/AES;

    invoke-virtual {v0, p0}, Lcom/samsung/android/fotaagent/common/cipher/AES;->encrypt([B)[B

    move-result-object p0

    sget-object v0, Lcom/samsung/android/fotaagent/common/cipher/AESWithRSA;->encryptedKey:[B

    invoke-static {v0, p0}, Lcom/samsung/android/fotaagent/common/cipher/Bytes;->mergeBytes([B[B)[B

    move-result-object p0

    return-object p0
.end method
