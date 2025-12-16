.class public final Lcom/google/android/gms/internal/firebase-auth-api/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/p0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/p0;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/L1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/L1;->q()Lcom/google/android/gms/internal/firebase-auth-api/P1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/P1;->n()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/L1;->r()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->r()[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HMAC"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/L1;->q()Lcom/google/android/gms/internal/firebase-auth-api/P1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/P1;->m()I

    move-result p1

    invoke-static {p0}, Lk/Q0;->f(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/B2;

    new-instance v0, LY0/j;

    const-string v2, "HMACSHA224"

    invoke-direct {v0, v2, v1}, LY0/j;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/B2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/J0;I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "unknown hash"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/B2;

    new-instance v0, LY0/j;

    const-string v2, "HMACSHA512"

    invoke-direct {v0, v2, v1}, LY0/j;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/B2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/J0;I)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/B2;

    new-instance v0, LY0/j;

    const-string v2, "HMACSHA256"

    invoke-direct {v0, v2, v1}, LY0/j;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/B2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/J0;I)V

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/B2;

    new-instance v0, LY0/j;

    const-string v2, "HMACSHA384"

    invoke-direct {v0, v2, v1}, LY0/j;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/B2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/J0;I)V

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/B2;

    new-instance v0, LY0/j;

    const-string v2, "HMACSHA1"

    invoke-direct {v0, v2, v1}, LY0/j;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/B2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/J0;I)V

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/L0;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/B2;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/z2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/L0;->q()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->r()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/z2;-><init>([B)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/L0;->p()Lcom/google/android/gms/internal/firebase-auth-api/P0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/P0;->m()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/B2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/J0;I)V

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/F1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/F1;->n()Lcom/google/android/gms/internal/firebase-auth-api/B1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/B1;->q()Lcom/google/android/gms/internal/firebase-auth-api/H1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/H1;->o()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->x(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/F1;->r()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->r()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/F1;->s()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->r()[B

    move-result-object p1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->O(I)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/security/spec/ECPoint;

    invoke-direct {p1, v3, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->G(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v2, p1, v1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/x2;->i:Lcom/google/android/gms/internal/firebase-auth-api/x2;

    const-string v1, "EC"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/x2;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/KeyFactory;

    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    new-instance v1, Lb2/b;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/B1;->n()Lcom/google/android/gms/internal/firebase-auth-api/x1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/x1;->o()Lcom/google/android/gms/internal/firebase-auth-api/U1;

    move-result-object v2

    invoke-direct {v1, v2}, Lb2/b;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/U1;)V

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/M;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/H1;->q()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->r()[B

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/H1;->p()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->g(I)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/B1;->m()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->D(I)I

    const/4 p0, 0x3

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/M;-><init>(I)V

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p0

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->G(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    return-object v1

    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/D1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/D1;->p()Lcom/google/android/gms/internal/firebase-auth-api/F1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/F1;->n()Lcom/google/android/gms/internal/firebase-auth-api/B1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/B1;->q()Lcom/google/android/gms/internal/firebase-auth-api/H1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/H1;->o()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->x(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/D1;->q()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->r()[B

    move-result-object p1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->O(I)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {p1, v2, v1}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/x2;->i:Lcom/google/android/gms/internal/firebase-auth-api/x2;

    const-string v2, "EC"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/x2;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyFactory;

    invoke-virtual {v1, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/security/interfaces/ECPrivateKey;

    new-instance v6, Lb2/b;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/B1;->n()Lcom/google/android/gms/internal/firebase-auth-api/x1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/x1;->o()Lcom/google/android/gms/internal/firebase-auth-api/U1;

    move-result-object p1

    invoke-direct {v6, p1}, Lb2/b;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/U1;)V

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/v2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/H1;->q()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->r()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/H1;->p()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/B1;->m()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->D(I)I

    move-result v5

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/v2;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;ILb2/b;)V

    return-object p1

    :pswitch_3
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/p1;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/r2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/p1;->p()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->r()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/r2;-><init>([B)V

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/m2;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/u2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/m2;->p()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->r()[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/u2;-><init>([BI)V

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/i2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/i2;->p()Lcom/google/android/gms/internal/firebase-auth-api/j2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/j2;->p()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/F0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/F0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/n0;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/s0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/i2;->p()Lcom/google/android/gms/internal/firebase-auth-api/j2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/j2;->m()Lcom/google/android/gms/internal/firebase-auth-api/U1;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/s0;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/U1;Lcom/google/android/gms/internal/firebase-auth-api/n0;)V

    return-object v0

    :pswitch_6
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/f2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/f2;->p()Lcom/google/android/gms/internal/firebase-auth-api/g2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/g2;->o()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/F0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/F0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/n0;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/t1;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/u2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/t1;->p()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->r()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/u2;-><init>([BI)V

    return-object p0

    :pswitch_8
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/l1;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/u0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/l1;->p()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->r()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/u0;-><init>([B)V

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/h1;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/q2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/h1;->p()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->r()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/q2;-><init>([B)V

    return-object p0

    :pswitch_a
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/b1;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/p2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/b1;->q()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->r()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/b1;->p()Lcom/google/android/gms/internal/firebase-auth-api/f1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/f1;->m()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/p2;-><init>([BI)V

    return-object p0

    :pswitch_b
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/V0;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/o2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/V0;->r()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->r()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/V0;->q()Lcom/google/android/gms/internal/firebase-auth-api/Z0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/Z0;->m()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/o2;-><init>([BI)V

    return-object p0

    :pswitch_c
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/R0;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/w2;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/z0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/z0;-><init>(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/R0;->p()Lcom/google/android/gms/internal/firebase-auth-api/V0;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/y2;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/X;->q(Lcom/google/android/gms/internal/firebase-auth-api/U4;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/y2;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/z0;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/z0;-><init>(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/R0;->q()Lcom/google/android/gms/internal/firebase-auth-api/L1;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/b0;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/X;->q(Lcom/google/android/gms/internal/firebase-auth-api/U4;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/b0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/R0;->q()Lcom/google/android/gms/internal/firebase-auth-api/L1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/L1;->q()Lcom/google/android/gms/internal/firebase-auth-api/P1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/P1;->m()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/w2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/y2;Lcom/google/android/gms/internal/firebase-auth-api/b0;I)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
