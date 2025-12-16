.class public final Lcom/google/android/gms/internal/firebase-auth-api/X4;
.super Lcom/google/android/gms/internal/firebase-auth-api/Y4;
.source "SourceFile"


# instance fields
.field public final f:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/Y4;-><init>([B)V

    const/4 v0, 0x0

    array-length p1, p1

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->p(III)I

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/X4;->f:I

    return-void
.end method


# virtual methods
.method public final l(I)B
    .locals 3

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/X4;->f:I

    sub-int v0, v1, v0

    or-int/2addr v0, p1

    if-gez v0, :cond_1

    if-gez p1, :cond_0

    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Index < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index > length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->e:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public final m(I)B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->e:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public final n()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/X4;->f:I

    return p0
.end method

.method public final o(I[B)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->e:[B

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
