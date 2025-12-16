.class public final Lcom/google/android/gms/internal/firebase-auth-api/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/T;


# static fields
.field public static final g:[B


# instance fields
.field public final a:Ljava/security/interfaces/ECPrivateKey;

.field public final b:Lcom/google/android/gms/internal/firebase-auth-api/n;

.field public final c:Ljava/lang/String;

.field public final d:[B

.field public final e:Lb2/b;

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/v2;->g:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;ILb2/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/v2;->a:Ljava/security/interfaces/ECPrivateKey;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/n;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/v2;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/v2;->d:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/v2;->c:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/v2;->f:I

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/v2;->e:Lb2/b;

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/v2;->a:Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v2}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->q(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    iget v4, v0, Lcom/google/android/gms/internal/firebase-auth-api/v2;->f:I

    const/4 v5, -0x1

    add-int/2addr v4, v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v4, :cond_1

    if-eq v4, v7, :cond_0

    :goto_0
    add-int/2addr v2, v6

    goto :goto_1

    :cond_0
    add-int/2addr v2, v2

    goto :goto_1

    :cond_1
    add-int/2addr v2, v2

    goto :goto_0

    :goto_1
    array-length v8, v1

    if-lt v8, v2, :cond_1d

    const/4 v9, 0x0

    invoke-static {v1, v9, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/gms/internal/firebase-auth-api/v2;->e:Lb2/b;

    iget v12, v11, Lb2/b;->a:I

    iget-object v13, v0, Lcom/google/android/gms/internal/firebase-auth-api/v2;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object v13, v13, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v13, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v13}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v14

    invoke-virtual {v14}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/gms/internal/firebase-auth-api/s;->q(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    const-string v5, "invalid point size"

    if-eqz v4, :cond_8

    if-eq v4, v7, :cond_6

    invoke-static {v15}, Lcom/google/android/gms/internal/firebase-auth-api/s;->q(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object v4

    array-length v5, v10

    add-int/2addr v3, v6

    if-ne v5, v3, :cond_5

    aget-byte v3, v10, v9

    if-ne v3, v7, :cond_2

    move v3, v9

    goto :goto_2

    :cond_2
    const/4 v7, 0x3

    if-ne v3, v7, :cond_4

    move v3, v6

    :goto_2
    new-instance v7, Ljava/math/BigInteger;

    invoke-static {v10, v6, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-direct {v7, v6, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v7}, Ljava/math/BigInteger;->signum()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_3

    invoke-static {v7, v3, v15}, Lcom/google/android/gms/internal/firebase-auth-api/s;->B(Ljava/math/BigInteger;ZLjava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Ljava/security/spec/ECPoint;

    invoke-direct {v4, v7, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "x is out of range"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid format"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "compressed point has wrong length"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    array-length v4, v10

    add-int v6, v3, v3

    if-ne v4, v6, :cond_7

    new-instance v5, Ljava/math/BigInteger;

    invoke-static {v10, v9, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v7, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v6, Ljava/math/BigInteger;

    invoke-static {v10, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v6, v7, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/security/spec/ECPoint;

    invoke-direct {v4, v5, v6}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v4, v15}, Lcom/google/android/gms/internal/firebase-auth-api/s;->G(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v7, v6

    array-length v4, v10

    add-int v6, v3, v3

    add-int/2addr v6, v7

    if-ne v4, v6, :cond_1c

    aget-byte v5, v10, v9

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1b

    add-int/2addr v3, v7

    new-instance v5, Ljava/math/BigInteger;

    invoke-static {v10, v7, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-direct {v5, v7, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v6, Ljava/math/BigInteger;

    invoke-static {v10, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v6, v7, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/security/spec/ECPoint;

    invoke-direct {v4, v5, v6}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v4, v15}, Lcom/google/android/gms/internal/firebase-auth-api/s;->G(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    :goto_3
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v3, v4, v14}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/x2;->i:Lcom/google/android/gms/internal/firebase-auth-api/x2;

    const-string v5, "EC"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/x2;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/KeyFactory;

    invoke-virtual {v6, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    :try_start_0
    invoke-interface {v3}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v6

    invoke-interface {v13}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v7

    invoke-virtual {v6}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v14

    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-virtual {v6}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v14

    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-virtual {v6}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-virtual {v6}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v6

    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v6, v7, :cond_1a

    invoke-interface {v3}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-interface {v13}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/firebase-auth-api/s;->G(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    invoke-interface {v13}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v6

    new-instance v7, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v7, v3, v6}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/x2;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/KeyFactory;

    invoke-virtual {v3, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/x2;->g:Lcom/google/android/gms/internal/firebase-auth-api/x2;

    const-string v5, "ECDH"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/x2;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/KeyAgreement;

    invoke-virtual {v4, v13}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v4, v3, v5}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {v4}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v3

    invoke-interface {v13}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v4

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v7

    const/4 v13, -0x1

    if-eq v7, v13, :cond_19

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/s;->q(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_19

    invoke-static {v6, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/s;->B(Ljava/math/BigInteger;ZLjava/security/spec/EllipticCurve;)Ljava/math/BigInteger;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    filled-new-array {v10, v3}, [[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/s;->C([[B)[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/x2;->f:Lcom/google/android/gms/internal/firebase-auth-api/x2;

    iget-object v6, v0, Lcom/google/android/gms/internal/firebase-auth-api/v2;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/x2;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/Mac;

    invoke-virtual {v4}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v7

    mul-int/lit16 v7, v7, 0xff

    if-gt v12, v7, :cond_18

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/v2;->d:[B

    if-eqz v0, :cond_a

    array-length v7, v0

    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v7, v0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_5

    :cond_a
    :goto_4
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v7

    new-array v7, v7, [B

    invoke-direct {v0, v7, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    :goto_5
    invoke-virtual {v4, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    new-array v3, v12, [B

    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v7, v0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    new-array v0, v9, [B

    move v6, v5

    move v5, v9

    :goto_6
    invoke-virtual {v4, v0}, Ljavax/crypto/Mac;->update([B)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljavax/crypto/Mac;->update([B)V

    int-to-byte v0, v6

    invoke-virtual {v4, v0}, Ljavax/crypto/Mac;->update(B)V

    invoke-virtual {v4}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    array-length v7, v0

    add-int v10, v5, v7

    if-ge v10, v12, :cond_b

    invoke-static {v0, v9, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    move v5, v10

    goto :goto_6

    :cond_b
    sub-int v4, v12, v5

    invoke-static {v0, v9, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v11, Lb2/b;->a:I

    if-ne v12, v0, :cond_17

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/l0;->b:Ljava/lang/String;

    iget-object v5, v11, Lb2/b;->c:Ljava/io/Serializable;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-class v6, Lcom/google/android/gms/internal/firebase-auth-api/Q;

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/h1;->n()Lcom/google/android/gms/internal/firebase-auth-api/g1;

    move-result-object v4

    iget-object v7, v11, Lb2/b;->d:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/firebase-auth-api/h1;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->a(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    invoke-static {v3, v9, v0}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object v0

    iget-boolean v3, v4, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v3, :cond_c

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v9, v4, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_c
    iget-object v3, v4, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/h1;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/h1;->r(Lcom/google/android/gms/internal/firebase-auth-api/h1;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/h1;

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/U;

    invoke-static {v5, v0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->c(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/m5;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/Q;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q;)V

    goto/16 :goto_7

    :cond_d
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/l0;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget v4, v11, Lb2/b;->b:I

    invoke-static {v3, v9, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v3, v4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/V0;->n()Lcom/google/android/gms/internal/firebase-auth-api/U0;

    move-result-object v3

    iget-object v4, v11, Lb2/b;->e:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/R0;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/R0;->p()Lcom/google/android/gms/internal/firebase-auth-api/V0;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->a(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    array-length v10, v7

    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object v7

    iget-boolean v10, v3, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v10, :cond_e

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v9, v3, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_e
    iget-object v10, v3, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v10, Lcom/google/android/gms/internal/firebase-auth-api/V0;

    invoke-static {v10, v7}, Lcom/google/android/gms/internal/firebase-auth-api/V0;->u(Lcom/google/android/gms/internal/firebase-auth-api/V0;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/V0;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/L1;->n()Lcom/google/android/gms/internal/firebase-auth-api/K1;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/R0;->q()Lcom/google/android/gms/internal/firebase-auth-api/L1;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->a(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    array-length v10, v0

    invoke-static {v0, v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object v0

    iget-boolean v10, v7, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v10, :cond_f

    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v9, v7, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_f
    iget-object v10, v7, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v10, Lcom/google/android/gms/internal/firebase-auth-api/L1;

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/firebase-auth-api/L1;->u(Lcom/google/android/gms/internal/firebase-auth-api/L1;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/L1;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/R0;->n()Lcom/google/android/gms/internal/firebase-auth-api/Q0;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/R0;->m()I

    move-result v4

    iget-boolean v10, v7, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v10, :cond_10

    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v9, v7, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_10
    iget-object v10, v7, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v10, Lcom/google/android/gms/internal/firebase-auth-api/R0;

    invoke-static {v10, v4}, Lcom/google/android/gms/internal/firebase-auth-api/R0;->r(Lcom/google/android/gms/internal/firebase-auth-api/R0;I)V

    iget-boolean v4, v7, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v4, :cond_11

    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v9, v7, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_11
    iget-object v4, v7, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/R0;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/R0;->s(Lcom/google/android/gms/internal/firebase-auth-api/R0;Lcom/google/android/gms/internal/firebase-auth-api/V0;)V

    iget-boolean v3, v7, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v3, :cond_12

    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v9, v7, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_12
    iget-object v3, v7, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/R0;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/R0;->t(Lcom/google/android/gms/internal/firebase-auth-api/R0;Lcom/google/android/gms/internal/firebase-auth-api/L1;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/R0;

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/U;

    invoke-static {v5, v0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->c(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/m5;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/Q;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q;)V

    goto :goto_7

    :cond_13
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/v0;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/p1;->n()Lcom/google/android/gms/internal/firebase-auth-api/o1;

    move-result-object v4

    iget-object v6, v11, Lb2/b;->f:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/p1;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->a(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    invoke-static {v3, v9, v0}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object v0

    iget-boolean v3, v4, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v3, :cond_14

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v9, v4, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_14
    iget-object v3, v4, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/p1;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/p1;->r(Lcom/google/android/gms/internal/firebase-auth-api/p1;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/p1;

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/U;

    const-class v4, Lcom/google/android/gms/internal/firebase-auth-api/S;

    invoke-static {v5, v0, v4}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->c(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/m5;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/S;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/S;)V

    :goto_7
    invoke-static {v1, v2, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/v2;->g:[B

    iget-object v2, v3, Lcom/google/android/gms/internal/firebase-auth-api/U;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/Q;

    if-eqz v2, :cond_15

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Q;->a([B[B)[B

    move-result-object v0

    goto :goto_8

    :cond_15
    iget-object v2, v3, Lcom/google/android/gms/internal/firebase-auth-api/U;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/S;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/S;->a([B[B)[B

    move-result-object v0

    :goto_8
    return-object v0

    :cond_16
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "unknown DEM key type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Symmetric key has incorrect length"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "size too large"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_19
    :try_start_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "shared secret is out of range"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_9
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_a

    :cond_1a
    :try_start_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid public key spec"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_a
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid point format"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "ciphertext too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
