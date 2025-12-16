.class public final Lcom/google/android/gms/internal/firebase-auth-api/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/Q;


# static fields
.field public static final b:Lcom/google/android/gms/internal/firebase-auth-api/t0;


# instance fields
.field public final a:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/t0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t0;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/u0;->b:Lcom/google/android/gms/internal/firebase-auth-api/t0;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/D2;->b(I)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/u0;->a:Ljavax/crypto/spec/SecretKeySpec;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 5

    array-length v0, p1

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    const/16 v1, 0xc

    :try_start_0
    const-string v2, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v3, 0x80

    invoke-direct {v2, v3, p1, v0, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/s;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p1, v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/u0;->b:Lcom/google/android/gms/internal/firebase-auth-api/t0;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/crypto/Cipher;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/u0;->a:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    array-length p0, p2

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/crypto/Cipher;

    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/crypto/Cipher;

    array-length p2, p1

    add-int/lit8 p2, p2, -0xc

    invoke-virtual {p0, p1, v1, p2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ciphertext too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b([B[B)[B
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
