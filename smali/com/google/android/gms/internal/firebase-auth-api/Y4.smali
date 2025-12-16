.class public Lcom/google/android/gms/internal/firebase-auth-api/Y4;
.super Lcom/google/android/gms/internal/firebase-auth-api/Z4;
.source "SourceFile"


# instance fields
.field public final e:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->c:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->e:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->n()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->n()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->n()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    if-eqz v1, :cond_a

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->c:I

    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    if-ne v1, v3, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->n()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->n()I

    move-result v3

    if-gt v1, v3, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->n()I

    move-result v3

    if-gt v1, v3, :cond_8

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_7

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->e:[B

    aget-byte v5, v5, v3

    iget-object v6, p1, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->e:[B

    aget-byte v6, v6, v4

    if-eq v5, v6, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return v0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->n()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ran off end of other: 0, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->n()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Length too large: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public l(I)B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->e:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public m(I)B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->e:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public n()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->e:[B

    array-length p0, p0

    return p0
.end method

.method public o(I[B)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->e:[B

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
