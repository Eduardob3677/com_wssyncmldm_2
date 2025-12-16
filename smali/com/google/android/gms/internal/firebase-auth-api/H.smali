.class public final Lcom/google/android/gms/internal/firebase-auth-api/H;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/firebase-auth-api/i;


# instance fields
.field public final c:Lcom/google/android/gms/internal/firebase-auth-api/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/H;->c:Lcom/google/android/gms/internal/firebase-auth-api/i;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/firebase-auth-api/i;
    .locals 0

    return-object p0
.end method

.method public final e(Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/H;->c:Lcom/google/android/gms/internal/firebase-auth-api/i;

    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/i;->g()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/H;->c:Lcom/google/android/gms/internal/firebase-auth-api/i;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/h;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/h;->n(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/G;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/G;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/H;)V

    return-object v0
.end method

.method public final k(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/H;->c:Lcom/google/android/gms/internal/firebase-auth-api/i;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/i;->k(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/F;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/F;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/H;I)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/H;->c:Lcom/google/android/gms/internal/firebase-auth-api/i;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
