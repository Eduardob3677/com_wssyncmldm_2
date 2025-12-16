.class Lcom/idm/core/security/IDMSecurityCrypt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/security/IDMSecurityInterface;


# instance fields
.field private C:[B

.field private D:[B

.field private E:[B

.field private KS:[[B

.field private m_cryptCryptByte:[B

.field private m_szCryptCryptResult:Ljava/lang/String;

.field private preS:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1c

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/idm/core/security/IDMSecurityCrypt;->C:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/idm/core/security/IDMSecurityCrypt;->D:[B

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x30

    aput v2, v0, v1

    const/4 v1, 0x0

    const/16 v3, 0x10

    aput v3, v0, v1

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/idm/core/security/IDMSecurityCrypt;->KS:[[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/idm/core/security/IDMSecurityCrypt;->E:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/idm/core/security/IDMSecurityCrypt;->preS:[B

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/idm/core/security/IDMSecurityCrypt;->m_cryptCryptByte:[B

    return-void
.end method

.method private idmCryptDESEncrypt([B)[B
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x20

    new-array v2, v1, [B

    new-array v3, v1, [B

    new-array v4, v1, [B

    new-array v5, v1, [B

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v1, :cond_0

    sget-object v8, Lcom/idm/core/security/IDMSecurityInterface;->IP:[B

    aget-byte v8, v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, p1, v8

    aput-byte v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v8, 0x40

    if-ge v7, v8, :cond_1

    add-int/lit8 v8, v7, -0x20

    sget-object v9, Lcom/idm/core/security/IDMSecurityInterface;->IP:[B

    aget-byte v9, v9, v7

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, p1, v9

    aput-byte v9, v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_2
    const/16 v9, 0x10

    if-ge v7, v9, :cond_7

    move v9, v6

    :goto_3
    if-ge v9, v1, :cond_2

    aget-byte v10, v3, v9

    aput-byte v10, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    move v9, v6

    :goto_4
    const/16 v10, 0x30

    if-ge v9, v10, :cond_3

    iget-object v10, v0, Lcom/idm/core/security/IDMSecurityCrypt;->preS:[B

    iget-object v11, v0, Lcom/idm/core/security/IDMSecurityCrypt;->E:[B

    aget-byte v11, v11, v9

    add-int/lit8 v11, v11, -0x1

    aget-byte v11, v3, v11

    iget-object v12, v0, Lcom/idm/core/security/IDMSecurityCrypt;->KS:[[B

    aget-object v12, v12, v7

    aget-byte v12, v12, v9

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    move v9, v6

    :goto_5
    const/16 v10, 0x8

    if-ge v9, v10, :cond_4

    mul-int/lit8 v10, v9, 0x6

    int-to-byte v10, v10

    iget-object v11, v0, Lcom/idm/core/security/IDMSecurityCrypt;->preS:[B

    aget-byte v12, v11, v10

    shl-int/lit8 v12, v12, 0x5

    add-int/lit8 v13, v10, 0x1

    aget-byte v13, v11, v13

    shl-int/lit8 v13, v13, 0x3

    add-int/lit8 v14, v10, 0x2

    aget-byte v14, v11, v14

    shl-int/lit8 v14, v14, 0x2

    add-int/lit8 v15, v10, 0x3

    aget-byte v15, v11, v15

    shl-int/lit8 v15, v15, 0x1

    add-int/lit8 v16, v10, 0x4

    aget-byte v16, v11, v16

    add-int/lit8 v10, v10, 0x5

    aget-byte v10, v11, v10

    shl-int/lit8 v10, v10, 0x4

    add-int/2addr v12, v13

    add-int/2addr v12, v14

    add-int/2addr v12, v15

    add-int v12, v12, v16

    add-int/2addr v12, v10

    sget-object v10, Lcom/idm/core/security/IDMSecurityInterface;->S:[[B

    aget-object v10, v10, v9

    aget-byte v10, v10, v12

    mul-int/lit8 v11, v9, 0x4

    int-to-byte v11, v11

    shr-int/lit8 v12, v10, 0x3

    and-int/lit8 v12, v12, 0x1

    int-to-byte v12, v12

    aput-byte v12, v5, v11

    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v13, v10, 0x2

    and-int/lit8 v13, v13, 0x1

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    add-int/lit8 v12, v11, 0x2

    shr-int/lit8 v13, v10, 0x1

    and-int/lit8 v13, v13, 0x1

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    add-int/lit8 v11, v11, 0x3

    and-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v5, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_4
    move v9, v6

    :goto_6
    if-ge v9, v1, :cond_5

    aget-byte v10, v2, v9

    sget-object v11, Lcom/idm/core/security/IDMSecurityInterface;->P:[B

    aget-byte v11, v11, v9

    add-int/lit8 v11, v11, -0x1

    aget-byte v11, v5, v11

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_5
    move v9, v6

    :goto_7
    if-ge v9, v1, :cond_6

    aget-byte v10, v4, v9

    aput-byte v10, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_7
    move v0, v6

    :goto_8
    if-ge v0, v1, :cond_8

    aget-byte v4, v2, v0

    aget-byte v5, v3, v0

    aput-byte v5, v2, v0

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    :goto_9
    if-ge v6, v8, :cond_a

    sget-object v0, Lcom/idm/core/security/IDMSecurityInterface;->FP:[B

    aget-byte v0, v0, v6

    const/16 v1, 0x21

    if-ge v0, v1, :cond_9

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v2, v0

    aput-byte v0, p1, v6

    goto :goto_a

    :cond_9
    add-int/lit8 v0, v0, -0x21

    aget-byte v0, v3, v0

    aput-byte v0, p1, v6

    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_a
    return-object p1
.end method

.method private idmCryptEExpandsion([B)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_5

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    iget-object v4, p0, Lcom/idm/core/security/IDMSecurityCrypt;->m_cryptCryptByte:[B

    aput-byte v2, v4, v1

    const/16 v4, 0x5a

    if-le v2, v4, :cond_1

    add-int/lit8 v2, v2, -0x3b

    :goto_1
    int-to-byte v2, v2

    goto :goto_2

    :cond_1
    const/16 v4, 0x39

    if-le v2, v4, :cond_2

    add-int/lit8 v2, v2, -0x35

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x2e

    goto :goto_1

    :goto_2
    move v4, v0

    :goto_3
    const/4 v5, 0x6

    if-ge v4, v5, :cond_4

    shr-int v5, v2, v4

    and-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/idm/core/security/IDMSecurityCrypt;->E:[B

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v4

    aget-byte v7, v5, v6

    add-int/lit8 v8, v6, 0x18

    aget-byte v9, v5, v8

    aput-byte v9, v5, v6

    aput-byte v7, v5, v8

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_5
    return-void
.end method

.method private idmCryptEncrypt([B)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x19

    if-ge v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/idm/core/security/IDMSecurityCrypt;->idmCryptDESEncrypt([B)[B

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    const/16 v2, 0xb

    if-ge v1, v2, :cond_4

    move v2, v0

    move v3, v2

    :goto_2
    const/4 v4, 0x6

    if-ge v2, v4, :cond_1

    shl-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    mul-int/lit8 v4, v1, 0x6

    add-int/2addr v4, v2

    aget-byte v4, p1, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x2e

    int-to-byte v2, v3

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    add-int/lit8 v2, v2, 0x7

    int-to-byte v2, v2

    :cond_2
    const/16 v3, 0x5a

    if-le v2, v3, :cond_3

    add-int/lit8 v2, v2, 0x6

    int-to-byte v2, v2

    :cond_3
    iget-object v3, p0, Lcom/idm/core/security/IDMSecurityCrypt;->m_cryptCryptByte:[B

    add-int/lit8 v4, v1, 0x2

    aput-byte v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/idm/core/security/IDMSecurityCrypt;->m_cryptCryptByte:[B

    add-int/lit8 v1, v1, 0x2

    aput-byte v0, p0, v1

    const/4 p1, 0x1

    aget-byte v1, p0, p1

    if-nez v1, :cond_5

    aget-byte v0, p0, v0

    aput-byte v0, p0, p1

    :cond_5
    return-void
.end method

.method private idmCryptInitPassword([B[B)[B
    .locals 4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-byte v2, p1, v0

    if-eqz v2, :cond_2

    const/16 v2, 0x40

    if-ge v1, v2, :cond_2

    const/4 v2, 0x6

    :goto_1
    if-ltz v2, :cond_1

    aget-byte v3, p1, v0

    shr-int/2addr v3, v2

    and-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v1, 0x1

    aput-byte p0, p2, v1

    move v1, v2

    goto :goto_0

    :cond_2
    :goto_2
    const/16 p1, 0x42

    if-ge v1, p1, :cond_3

    add-int/lit8 p1, v1, 0x1

    aput-byte p0, p2, v1

    move v1, p1

    goto :goto_2

    :cond_3
    return-object p2

    :cond_4
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private idmCryptSetKey([B)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/idm/core/security/IDMSecurityCrypt;->C:[B

    sget-object v3, Lcom/idm/core/security/IDMSecurityInterface;->PC1_C:[B

    aget-byte v3, v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/idm/core/security/IDMSecurityCrypt;->D:[B

    sget-object v3, Lcom/idm/core/security/IDMSecurityInterface;->PC1_D:[B

    aget-byte v3, v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_1
    const/16 v1, 0x10

    if-ge p1, v1, :cond_5

    move v1, v0

    :goto_2
    sget-object v2, Lcom/idm/core/security/IDMSecurityInterface;->shifts:[B

    aget-byte v2, v2, p1

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/idm/core/security/IDMSecurityCrypt;->C:[B

    aget-byte v2, v2, v0

    move v3, v0

    :goto_3
    const/16 v4, 0x1b

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/idm/core/security/IDMSecurityCrypt;->C:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v6, v4, v5

    aput-byte v6, v4, v3

    move v3, v5

    goto :goto_3

    :cond_1
    iget-object v3, p0, Lcom/idm/core/security/IDMSecurityCrypt;->C:[B

    aput-byte v2, v3, v4

    iget-object v2, p0, Lcom/idm/core/security/IDMSecurityCrypt;->D:[B

    aget-byte v2, v2, v0

    move v3, v0

    :goto_4
    if-ge v3, v4, :cond_2

    iget-object v5, p0, Lcom/idm/core/security/IDMSecurityCrypt;->D:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v7, v5, v6

    aput-byte v7, v5, v3

    move v3, v6

    goto :goto_4

    :cond_2
    iget-object v3, p0, Lcom/idm/core/security/IDMSecurityCrypt;->D:[B

    aput-byte v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_5
    const/16 v2, 0x18

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/idm/core/security/IDMSecurityCrypt;->KS:[[B

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/idm/core/security/IDMSecurityCrypt;->C:[B

    sget-object v4, Lcom/idm/core/security/IDMSecurityInterface;->PC2_C:[B

    aget-byte v4, v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v3, v4

    aput-byte v3, v2, v1

    add-int/lit8 v3, v1, 0x18

    iget-object v4, p0, Lcom/idm/core/security/IDMSecurityCrypt;->D:[B

    sget-object v5, Lcom/idm/core/security/IDMSecurityInterface;->PC2_D:[B

    aget-byte v5, v5, v1

    add-int/lit8 v5, v5, -0x1d

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    :goto_6
    const/16 p1, 0x30

    if-ge v0, p1, :cond_6

    iget-object p1, p0, Lcom/idm/core/security/IDMSecurityCrypt;->E:[B

    sget-object v1, Lcom/idm/core/security/IDMSecurityInterface;->e2:[B

    aget-byte v1, v1, v0

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method private idmCrypttZeroPassword([B)[B
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    const/16 v1, 0x42

    if-ge v0, v1, :cond_0

    aput-byte p0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public idmCryptGenerate(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x42

    new-array v0, v0, [B

    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/idm/core/security/IDMSecurityCrypt;->idmCryptInitPassword([B[B)[B

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/idm/core/security/IDMSecurityCrypt;->idmCryptSetKey([B)V

    invoke-direct {p0, p1}, Lcom/idm/core/security/IDMSecurityCrypt;->idmCrypttZeroPassword([B)[B

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/idm/core/security/IDMSecurityCrypt;->idmCryptEExpandsion([B)V

    invoke-direct {p0, p1}, Lcom/idm/core/security/IDMSecurityCrypt;->idmCryptEncrypt([B)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/idm/core/security/IDMSecurityCrypt;->m_cryptCryptByte:[B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object p1, p0, Lcom/idm/core/security/IDMSecurityCrypt;->m_szCryptCryptResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p2, "CryptGenerate Fail"

    invoke-static {p2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    iget-object p0, p0, Lcom/idm/core/security/IDMSecurityCrypt;->m_szCryptCryptResult:Ljava/lang/String;

    return-object p0
.end method
