.class public final synthetic Lcom/google/android/gms/internal/firebase-auth-api/g4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/firebase-auth-api/k4;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/k4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/g4;->c:Lcom/google/android/gms/internal/firebase-auth-api/k4;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/g4;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/g4;->c:Lcom/google/android/gms/internal/firebase-auth-api/k4;

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/g4;->d:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/j4;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/j4;->i:Z

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->g(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
