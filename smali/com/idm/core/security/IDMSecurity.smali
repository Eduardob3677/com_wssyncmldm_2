.class Lcom/idm/core/security/IDMSecurity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/security/IDMSecurityInterface;
.implements Lcom/idm/core/syncml/Constants;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertStrToUint64(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-wide/16 v0, 0x0

    if-ltz p3, :cond_f

    const/4 v2, 0x1

    if-eq p3, v2, :cond_f

    const/16 v3, 0x24

    if-le p3, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    new-array v3, p2, [C

    const/4 v4, 0x0

    invoke-virtual {p1, v4, p2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    move p1, v4

    :goto_0
    aget-char v5, v3, p1

    invoke-direct {p0, v5}, Lcom/idm/core/security/IDMSecurity;->isSpace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    if-lt p1, p2, :cond_2

    return-wide v0

    :cond_2
    aget-char p0, v3, p1

    const/16 v5, 0x2d

    if-ne p0, v5, :cond_3

    add-int/lit8 p1, p1, 0x1

    move v4, v2

    goto :goto_1

    :cond_3
    const/16 v5, 0x2b

    if-ne p0, v5, :cond_4

    add-int/lit8 p1, p1, 0x1

    :cond_4
    :goto_1
    aget-char p0, v3, p1

    const/16 v5, 0x30

    if-ne p0, v5, :cond_7

    const/16 p0, 0x10

    if-eqz p3, :cond_5

    if-ne p3, p0, :cond_6

    :cond_5
    aget-char v2, v3, v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    const/16 v6, 0x58

    if-ne v2, v6, :cond_6

    add-int/lit8 p1, p1, 0x2

    move p3, p0

    goto :goto_2

    :cond_6
    if-nez p3, :cond_8

    const/16 p3, 0x8

    goto :goto_2

    :cond_7
    if-nez p3, :cond_8

    const/16 p3, 0xa

    :cond_8
    :goto_2
    move-wide v6, v0

    :goto_3
    if-ge p1, p2, :cond_c

    add-int/lit8 p0, p1, 0x1

    aget-char p1, v3, p1

    if-lt p1, v5, :cond_9

    const/16 v2, 0x39

    if-gt p1, v2, :cond_9

    add-int/lit8 p1, p1, -0x30

    :goto_4
    int-to-char p1, p1

    goto :goto_5

    :cond_9
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    add-int/lit8 p1, p1, -0x37

    goto :goto_4

    :goto_5
    if-lt p1, p3, :cond_a

    goto :goto_6

    :cond_a
    int-to-long v8, p3

    mul-long/2addr v6, v8

    int-to-long v8, p1

    add-long/2addr v6, v8

    move p1, p0

    goto :goto_3

    :cond_b
    :goto_6
    move p1, p0

    :cond_c
    if-nez p1, :cond_d

    return-wide v0

    :cond_d
    if-eqz v4, :cond_e

    neg-long v6, v6

    :cond_e
    return-wide v6

    :cond_f
    :goto_7
    return-wide v0
.end method

.method private convertUint64ToA(J[CI)[C
    .locals 6

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    int-to-long v2, p4

    rem-long v4, p1, v2

    long-to-int v4, v4

    div-long/2addr p1, v2

    const/16 v2, 0x9

    if-le v4, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v4, v4, 0x57

    int-to-char v3, v4

    aput-char v3, p0, v1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v4, v4, 0x30

    int-to-char v3, v4

    aput-char v3, p0, v1

    goto :goto_0

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    :goto_2
    array-length p1, p3

    if-ge v1, p1, :cond_2

    const/16 p1, 0x30

    aput-char p1, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    array-length p1, p0

    new-array p1, p1, [C

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :goto_3
    if-ltz p2, :cond_3

    aget-char p3, p0, p2

    aput-char p3, p1, v0

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-object p1
.end method

.method private encodeHex([B)[C
    .locals 7

    array-length p0, p1

    mul-int/lit8 p0, p0, 0x2

    new-array p0, p0, [C

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v3, p1, v1

    add-int/lit8 v4, v2, 0x1

    sget-object v5, Lcom/idm/core/security/IDMSecurityInterface;->hexTable:[C

    and-int/lit8 v6, v3, 0xf

    aget-char v6, v5, v6

    aput-char v6, p0, v2

    add-int/lit8 v2, v2, 0x2

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, p0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static generateATTPasswordKey(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v5, v3

    move-wide v3, v1

    :goto_0
    add-int/lit8 v6, v0, -0x3

    if-ge v5, v6, :cond_0

    add-int/lit8 v6, v5, 0x3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    aget-byte v8, p1, v5

    mul-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v1, v7

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    add-int/lit8 v7, v5, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    mul-int/2addr v6, v7

    aget-byte v7, p1, v5

    mul-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private get36BasedIMEI(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0xa

    new-array v1, v0, [C

    new-array v2, v0, [C

    const-string v3, ""

    invoke-direct {p0, p1, v3, v0}, Lcom/idm/core/security/IDMSecurity;->convertStrToUint64(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v3

    const/16 p1, 0x24

    invoke-direct {p0, v3, v4, v2, p1}, Lcom/idm/core/security/IDMSecurity;->convertUint64ToA(J[CI)[C

    move-result-object p0

    array-length p1, p0

    if-ge p1, v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    rsub-int/lit8 v3, p1, 0xa

    if-ge v2, v3, :cond_0

    const/16 v3, 0x30

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method private idmFBAdpOspGenerateDevPwdKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/16 p0, 0x40

    new-array p0, p0, [C

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_1
    add-int/lit8 p1, v3, -0x1

    if-ge v1, p1, :cond_3

    aget-char p1, p0, v1

    int-to-long v8, p1

    sget-object v0, Lcom/idm/core/security/IDMSecurityInterface;->szDict:[B

    aget-byte v0, v0, v1

    int-to-long v10, v0

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    int-to-long v8, p1

    sub-int p1, v3, v1

    add-int/lit8 p1, p1, -0x1

    aget-char p1, p0, p1

    int-to-long v10, p1

    mul-long/2addr v8, v10

    int-to-long v10, v0

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private idmFBAdpShuffle(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    rem-int/lit8 v0, p0, 0x2

    div-int/lit8 v1, p0, 0x2

    if-nez v0, :cond_1

    :goto_0
    if-ge v1, p0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    sub-int v3, p0, v1

    if-nez v0, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    invoke-virtual {p1, v3, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private isSpace(C)Z
    .locals 0

    const/16 p0, 0x20

    if-eq p1, p0, :cond_1

    const/16 p0, 0xc

    if-eq p1, p0, :cond_1

    const/16 p0, 0xa

    if-eq p1, p0, :cond_1

    const/16 p0, 0xd

    if-eq p1, p0, :cond_1

    const/16 p0, 0x9

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public idmAuthGetCredTypeFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "CredType is ["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const-string p0, "BASIC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "DIGEST,BASIC"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    const-string p0, "MD5"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "DIGEST,MD5"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "DIGEST"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "HMAC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "DIGEST,HMAC"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "DIGEST,MAC"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, ""

    goto :goto_3

    :cond_3
    :goto_0
    const-string p0, "syncml:auth-MAC"

    goto :goto_3

    :cond_4
    :goto_1
    const-string p0, "syncml:auth-md5"

    goto :goto_3

    :cond_5
    :goto_2
    const-string p0, "syncml:auth-basic"

    :goto_3
    return-object p0
.end method

.method public idmMD5FileHash([B)Ljava/lang/String;
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    const-string v3, "%02x"

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmMakeATTFBDevicePassWord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x2

    sget-object v1, Lcom/idm/core/security/IDMSecurityInterface;->clientPwdDict:[B

    invoke-static {p1, v1}, Lcom/idm/core/security/IDMSecurity;->generateATTPasswordKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/idm/core/security/IDMSecurity;->get36BasedIMEI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string p2, "MD5"

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    invoke-virtual {p2}, Ljava/security/MessageDigest;->reset()V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/security/IDMSecurity;->encodeHex([B)[C

    move-result-object p1

    aget-char p2, p1, v0

    const/4 v1, 0x7

    aget-char v1, p1, v1

    const/16 v3, 0x8

    aget-char v3, p1, v3

    const/16 v4, 0xc

    aget-char v4, p1, v4

    const/16 v5, 0x19

    aget-char v5, p1, v5

    const/16 v6, 0x1e

    aget-char p1, p1, v6

    const/4 v6, 0x6

    new-array v6, v6, [C

    const/4 v7, 0x0

    aput-char p2, v6, v7

    const/4 p2, 0x1

    aput-char v1, v6, p2

    aput-char v3, v6, v0

    const/4 p2, 0x3

    aput-char v4, v6, p2

    const/4 p2, 0x4

    aput-char v5, v6, p2

    const/4 p2, 0x5

    aput-char p1, v6, p2

    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p2}, Lcom/idm/core/security/IDMSecurity;->idmFBAdpShuffle(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/security/IDMSecurity;->idmFBAdpShuffle(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/security/IDMSecurity;->idmFBAdpShuffle(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public idmMakeATTFBServerPassWord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x2

    sget-object v1, Lcom/idm/core/security/IDMSecurityInterface;->serverPwdDict:[B

    invoke-static {p1, v1}, Lcom/idm/core/security/IDMSecurity;->generateATTPasswordKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/idm/core/security/IDMSecurity;->get36BasedIMEI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string p2, "MD5"

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    invoke-virtual {p2}, Ljava/security/MessageDigest;->reset()V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/security/IDMSecurity;->encodeHex([B)[C

    move-result-object p1

    aget-char p2, p1, v0

    const/4 v1, 0x7

    aget-char v1, p1, v1

    const/16 v3, 0x8

    aget-char v3, p1, v3

    const/16 v4, 0xc

    aget-char v4, p1, v4

    const/16 v5, 0x19

    aget-char v5, p1, v5

    const/16 v6, 0x1e

    aget-char p1, p1, v6

    const/4 v6, 0x6

    new-array v6, v6, [C

    const/4 v7, 0x0

    aput-char p2, v6, v7

    const/4 p2, 0x1

    aput-char v1, v6, p2

    aput-char v3, v6, v0

    const/4 p2, 0x3

    aput-char v4, v6, p2

    const/4 p2, 0x4

    aput-char v5, v6, p2

    const/4 p2, 0x5

    aput-char p1, v6, p2

    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p2}, Lcom/idm/core/security/IDMSecurity;->idmFBAdpShuffle(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/security/IDMSecurity;->idmFBAdpShuffle(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/security/IDMSecurity;->idmFBAdpShuffle(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public idmMakeATTFactoryNone()Ljava/lang/String;
    .locals 1

    const-string p0, "null"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmMakeAuthBasic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmMakeAuthHMAC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string p2, "MD5"

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-static {p3, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p3

    invoke-virtual {p2, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p4

    invoke-static {p4, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p4

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    array-length v2, p3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    array-length v2, p4

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    aput-byte p1, v1, p0

    add-int/lit8 p0, p0, 0x1

    array-length v2, p3

    invoke-static {p3, v3, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p3

    add-int/2addr p0, p3

    aput-byte p1, v1, p0

    add-int/lit8 p0, p0, 0x1

    array-length p1, p4

    invoke-static {p4, v3, v1, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public idmMakeAuthMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const/4 p3, 0x2

    invoke-static {p2, p3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0, p3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p0

    aput-byte p1, v1, v2

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    array-length p1, p2

    invoke-static {p2, v3, v1, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public idmMakeDigest(Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/lang/String;
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string p2, "MD5"

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-virtual {p2, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p4

    invoke-static {p4, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p4

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    array-length v1, p3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    array-length v1, p4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    aput-byte p1, v0, v1

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    array-length v3, p3

    invoke-static {p3, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    array-length v3, p3

    add-int/2addr v1, v3

    aput-byte p1, v0, v1

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    array-length p1, p3

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    array-length p1, p4

    invoke-static {p4, v2, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public idmMakeDigestSHA1([BI[B)Ljava/lang/String;
    .locals 3

    const/16 p0, 0x40

    new-array v0, p0, [B

    new-array v1, p0, [B

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v2, p0, :cond_0

    aget-byte p1, v0, v2

    xor-int/lit8 p1, p1, 0x36

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    aget-byte p1, v1, v2

    xor-int/lit8 p1, p1, 0x5c

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    const-string p1, "SHA-1"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    move-object p1, p0

    :goto_1
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1, p3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/common/IDMCommonUtils;->idmLibBytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public idmMakeSECFBDevicePassWord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Lcom/idm/core/security/IDMSecurity;->idmFBAdpOspGenerateDevPwdKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v5, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/idm/core/security/IDMSecurity;->encodeHex([B)[C

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    add-int/lit8 v8, v6, -0x2

    aget-byte v7, v7, v8

    aput-byte v7, p2, v2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    sub-int/2addr v6, v4

    aget-byte v6, v7, v6

    aput-byte v6, p2, v4

    new-instance v6, Lcom/idm/core/security/IDMSecurityCrypt;

    invoke-direct {v6}, Lcom/idm/core/security/IDMSecurityCrypt;-><init>()V

    invoke-virtual {v6, p1, p2}, Lcom/idm/core/security/IDMSecurityCrypt;->idmCryptGenerate(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lcom/idm/adapter/common/IDMCommonUtils;->idmLibCharToString([C)Ljava/lang/String;

    move-result-object p1

    aget-char p2, v5, v4

    aget-char v6, v5, v1

    const/4 v7, 0x5

    aget-char v7, v5, v7

    const/4 v8, 0x7

    aget-char v5, v5, v8

    new-array v1, v1, [C

    aput-char p2, v1, v2

    aput-char v6, v1, v4

    aput-char v7, v1, v3

    aput-char v5, v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/idm/core/security/IDMSecurity;->idmFBAdpShuffle(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    add-int/2addr v2, v4

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const-string p0, ""

    :goto_3
    return-object p0
.end method

.method public idmMakeSECFactoryNone()Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance p0, Ljava/util/Random;

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "SSNextNonce"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
