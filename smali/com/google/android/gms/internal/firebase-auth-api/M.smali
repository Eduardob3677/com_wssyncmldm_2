.class public final Lcom/google/android/gms/internal/firebase-auth-api/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/d;
.implements Lcom/google/android/gms/internal/firebase-auth-api/P;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/M;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c([BII)Z
    .locals 8

    :goto_0
    if-ge p1, p2, :cond_0

    aget-byte v0, p0, p1

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-lt p1, p2, :cond_1

    :goto_1
    move v2, v0

    goto/16 :goto_4

    :cond_1
    :goto_2
    if-lt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, p1

    if-gez v2, :cond_c

    const/4 v3, -0x1

    const/16 v4, -0x20

    const/16 v5, -0x41

    if-ge v2, v4, :cond_4

    if-ge v1, p2, :cond_a

    const/16 v4, -0x3e

    if-lt v2, v4, :cond_3

    add-int/lit8 p1, p1, 0x2

    aget-byte v1, p0, v1

    if-le v1, v5, :cond_1

    :cond_3
    :goto_3
    move v2, v3

    goto :goto_4

    :cond_4
    const/16 v6, -0x10

    if-ge v2, v6, :cond_8

    add-int/lit8 v6, p2, -0x1

    if-lt v1, v6, :cond_5

    invoke-static {p0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/O;->a([BII)I

    move-result v2

    goto :goto_4

    :cond_5
    add-int/lit8 v6, p1, 0x2

    aget-byte v1, p0, v1

    if-gt v1, v5, :cond_3

    const/16 v7, -0x60

    if-ne v2, v4, :cond_6

    if-lt v1, v7, :cond_3

    :cond_6
    const/16 v4, -0x13

    if-ne v2, v4, :cond_7

    if-ge v1, v7, :cond_3

    :cond_7
    add-int/lit8 p1, p1, 0x3

    aget-byte v1, p0, v6

    if-le v1, v5, :cond_1

    goto :goto_3

    :cond_8
    add-int/lit8 v4, p2, -0x2

    if-lt v1, v4, :cond_9

    invoke-static {p0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/O;->a([BII)I

    move-result v2

    goto :goto_4

    :cond_9
    add-int/lit8 v4, p1, 0x2

    aget-byte v1, p0, v1

    if-gt v1, v5, :cond_3

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1e

    if-nez v1, :cond_3

    add-int/lit8 v1, p1, 0x3

    aget-byte v2, p0, v4

    if-gt v2, v5, :cond_3

    add-int/lit8 p1, p1, 0x4

    aget-byte v1, p0, v1

    if-le v1, v5, :cond_1

    goto :goto_3

    :cond_a
    :goto_4
    if-nez v2, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    return v0

    :cond_c
    move p1, v1

    goto :goto_2
.end method


# virtual methods
.method public J(Ljava/lang/Exception;)V
    .locals 2

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->d:LA/d;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "SmsRetrieverClient failed to start: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, LA/d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/firebase-auth-api/n;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/S4;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/C;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public bridge b(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/M;->c:I

    packed-switch p0, :pswitch_data_0

    if-nez p2, :cond_0

    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    if-nez p2, :cond_1

    invoke-static {p1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_1
    if-nez p2, :cond_2

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-static {p1, p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p0

    :goto_2
    return-object p0

    :pswitch_2
    if-nez p2, :cond_3

    invoke-static {p1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object p0

    goto :goto_3

    :cond_3
    invoke-static {p1, p2}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    move-result-object p0

    :goto_3
    return-object p0

    :pswitch_3
    if-nez p2, :cond_4

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    goto :goto_4

    :cond_4
    invoke-static {p1, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p0

    :goto_4
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
