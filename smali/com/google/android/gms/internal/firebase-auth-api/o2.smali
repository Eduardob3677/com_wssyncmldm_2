.class public final Lcom/google/android/gms/internal/firebase-auth-api/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/y2;


# static fields
.field public static final d:Lcom/google/android/gms/internal/firebase-auth-api/t0;


# instance fields
.field public final a:Ljavax/crypto/spec/SecretKeySpec;

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/t0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t0;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/o2;->d:Lcom/google/android/gms/internal/firebase-auth-api/t0;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/D2;->b(I)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/o2;->a:Ljavax/crypto/spec/SecretKeySpec;

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/o2;->d:Lcom/google/android/gms/internal/firebase-auth-api/t0;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/o2;->c:I

    const/16 v0, 0xc

    if-lt p2, v0, :cond_0

    if-gt p2, p1, :cond_0

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/o2;->b:I

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid IV size"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a([B)[B
    .locals 11

    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/o2;->b:I

    if-lt v0, v1, :cond_1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/o2;->b:I

    sub-int/2addr v0, v6

    new-array v10, v0, [B

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/o2;->d:Lcom/google/android/gms/internal/firebase-auth-api/t0;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/Cipher;

    iget v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/o2;->c:I

    new-array v5, v5, [B

    invoke-static {v2, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/o2;->a:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x2

    invoke-virtual {v4, v2, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v9, 0x0

    move-object v5, p1

    move v7, v0

    move-object v8, v10

    invoke-virtual/range {v4 .. v9}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p0

    if-ne p0, v0, :cond_0

    return-object v10

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "stored output\'s length does not match input\'s length"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ciphertext too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
