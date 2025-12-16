.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/d;->a:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/d;->b:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    add-int/2addr v0, v0

    if-ltz v0, :cond_1

    const v1, 0x7fffffff

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->d()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/f; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/m5;
    .locals 1

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/U4;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->h(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->a(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/U4;

    iget-object p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->c:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->a(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->c()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
