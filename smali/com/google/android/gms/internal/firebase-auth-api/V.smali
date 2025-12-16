.class public final Lcom/google/android/gms/internal/firebase-auth-api/V;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/firebase-auth-api/U1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/U1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/V;->a:Lcom/google/android/gms/internal/firebase-auth-api/U1;

    return-void
.end method

.method public static a([BILjava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/V;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/V;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/U1;->m()Lcom/google/android/gms/internal/firebase-auth-api/T1;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->f(Ljava/lang/String;)V

    array-length p2, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, p2}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->g(Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x2

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :cond_2
    :goto_0
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->e(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/U1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/V;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/U1;)V

    return-object v0
.end method
