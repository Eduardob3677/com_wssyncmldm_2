.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public c:Ljava/lang/String;

.field public d:I

.field public final e:Ljava/lang/CharSequence;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->f:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->g:I

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->e:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public abstract b(I)I
.end method

.method public final hasNext()Z
    .locals 9

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->d:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    if-eqz v2, :cond_9

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v4, :cond_8

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->f:I

    :cond_0
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->f:I

    const/4 v4, -0x1

    const/4 v6, 0x3

    if-eq v2, v4, :cond_7

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/C;->b(I)I

    move-result v2

    iget-object v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->e:Ljava/lang/CharSequence;

    if-ne v2, v4, :cond_1

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->f:I

    move v8, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/C;->a(I)I

    move-result v8

    iput v8, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->f:I

    :goto_1
    if-ne v8, v1, :cond_2

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->f:I

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v8, v2, :cond_0

    iput v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->f:I

    goto :goto_0

    :cond_2
    if-ge v1, v2, :cond_3

    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_3
    if-ge v1, v2, :cond_4

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_4
    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->g:I

    if-ne v3, v0, :cond_5

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->f:I

    if-le v2, v1, :cond_6

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    goto :goto_2

    :cond_5
    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->g:I

    :cond_6
    :goto_2
    invoke-interface {v7, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    iput v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->d:I

    :goto_3
    iput-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->c:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->d:I

    if-eq v1, v6, :cond_8

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->d:I

    return v0

    :cond_8
    return v5

    :cond_9
    return v0

    :cond_a
    throw v3

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/C;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->d:I

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/C;->c:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
