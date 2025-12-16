.class public Lcom/idm/core/security/IDMSecurityAESCrypt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CRYPTO_KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final CRYPTO_KEY_SIZE:I = 0x80

.field private static key:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private idmDeriveKey(Ljava/lang/String;I)Ljavax/crypto/SecretKey;
    .locals 0

    sget-object p0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, p2}, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->deriveInsecureKey([BI)[B

    move-result-object p0

    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string p2, "AES"

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method private idmIsValidBlobData([B)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    aget-byte p1, p1, p0

    if-nez p1, :cond_1

    return p0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return p0
.end method

.method private idmMealyMachine(II)Ljava/lang/String;
    .locals 24

    move/from16 v0, p2

    new-array v1, v0, [B

    const/16 v2, 0xb

    const/4 v3, 0x0

    filled-new-array {v2, v3}, [I

    move-result-object v4

    const/4 v5, 0x4

    filled-new-array {v3, v5}, [I

    move-result-object v5

    const/16 v6, 0x8

    const/16 v7, 0xf

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const/4 v15, 0x2

    filled-new-array {v2, v15}, [I

    move-result-object v2

    const/4 v8, 0x3

    filled-new-array {v3, v8}, [I

    move-result-object v9

    const/16 v10, 0x9

    filled-new-array {v10, v3}, [I

    move-result-object v10

    filled-new-array {v7, v3}, [I

    move-result-object v11

    filled-new-array {v3, v3}, [I

    move-result-object v12

    const/4 v7, 0x5

    filled-new-array {v7, v3}, [I

    move-result-object v13

    filled-new-array {v3, v3}, [I

    move-result-object v14

    filled-new-array {v3, v3}, [I

    move-result-object v16

    const/4 v7, 0x6

    const/4 v15, 0x1

    filled-new-array {v15, v7}, [I

    move-result-object v17

    filled-new-array {v3, v3}, [I

    move-result-object v18

    const/16 v7, 0xd

    filled-new-array {v8, v7}, [I

    move-result-object v19

    filled-new-array {v3, v3}, [I

    move-result-object v20

    const/4 v8, 0x2

    filled-new-array {v8, v7}, [I

    move-result-object v21

    move-object v7, v2

    move v2, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v16

    move/from16 v22, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    filled-new-array/range {v4 .. v19}, [[I

    move-result-object v4

    new-array v5, v2, [C

    fill-array-data v5, :array_0

    new-array v6, v2, [C

    fill-array-data v6, :array_1

    new-array v7, v2, [C

    fill-array-data v7, :array_2

    new-array v8, v2, [C

    fill-array-data v8, :array_3

    new-array v9, v2, [C

    fill-array-data v9, :array_4

    new-array v10, v2, [C

    fill-array-data v10, :array_5

    new-array v11, v2, [C

    fill-array-data v11, :array_6

    new-array v12, v2, [C

    fill-array-data v12, :array_7

    new-array v13, v2, [C

    fill-array-data v13, :array_8

    new-array v14, v2, [C

    fill-array-data v14, :array_9

    new-array v15, v2, [C

    fill-array-data v15, :array_a

    new-array v3, v2, [C

    fill-array-data v3, :array_b

    move-object/from16 v21, v4

    new-array v4, v2, [C

    fill-array-data v4, :array_c

    move-object/from16 v23, v1

    new-array v1, v2, [C

    fill-array-data v1, :array_d

    new-array v0, v2, [C

    fill-array-data v0, :array_e

    new-array v2, v2, [C

    fill-array-data v2, :array_f

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v1

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    filled-new-array/range {v5 .. v20}, [[C

    move-result-object v0

    move/from16 v1, p1

    move/from16 v4, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    and-int/lit8 v5, v1, 0x1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v3, 0x1

    aget-object v7, v0, v2

    aget-char v7, v7, v5

    int-to-byte v7, v7

    aput-byte v7, v23, v3

    aget-object v2, v21, v2

    aget v2, v2, v5

    move v3, v6

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    nop

    :array_0
    .array-data 2
        0x73s
        0x33s
    .end array-data

    :array_1
    .array-data 2
        0x76s
        0x6es
    .end array-data

    :array_2
    .array-data 2
        0x31s
        0x39s
    .end array-data

    :array_3
    .array-data 2
        0x6ds
        0x30s
    .end array-data

    :array_4
    .array-data 2
        0x65s
        0x63s
    .end array-data

    :array_5
    .array-data 2
        0x33s
        0x42s
    .end array-data

    :array_6
    .array-data 2
        0x37s
        0x4es
    .end array-data

    :array_7
    .array-data 2
        0x6bs
        0x32s
    .end array-data

    :array_8
    .array-data 2
        0x32s
        0x43s
    .end array-data

    :array_9
    .array-data 2
        0x61s
        0x43s
    .end array-data

    :array_a
    .array-data 2
        0x4as
        0x32s
    .end array-data

    :array_b
    .array-data 2
        0x79s
        0x6cs
    .end array-data

    :array_c
    .array-data 2
        0x38s
        0x64s
    .end array-data

    :array_d
    .array-data 2
        0x31s
        0x30s
    .end array-data

    :array_e
    .array-data 2
        0x41s
        0x5es
    .end array-data

    :array_f
    .array-data 2
        0x37s
        0x30s
    .end array-data
.end method


# virtual methods
.method public idmDecryptor([B)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmGetCryptionResult([BILjava/lang/String;)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public idmDecryptor([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmIsValidBlobData([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmGetCryptionResult([BILjava/lang/String;)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public idmDecryptorStrBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmGetCryptionResult([BILjava/lang/String;)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public idmEncryptor(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmGetCryptionResult([BILjava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public idmEncryptor(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmGetCryptionResult([BILjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public idmEncryptorStrBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmGetCryptionResult([BILjava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public idmGetCryptionResult([BILjava/lang/String;)[B
    .locals 4

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x10

    const-string v2, "AES"

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v3, 0x172c

    invoke-direct {p0, v3, v1}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmMealyMachine(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p3, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, v1}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmDeriveKey(Ljava/lang/String;I)Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    invoke-virtual {p3, p2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :goto_0
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
