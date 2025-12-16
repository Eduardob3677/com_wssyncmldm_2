.class public Lcom/google/android/gms/internal/firebase-auth-api/G3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/firebase-auth-api/Q3;

.field public final b:LA/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;->a:Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    invoke-static {p2}, Lc1/D;->e(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b:LA/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;->a:Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/Q3;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b:LA/d;

    const-string v1, "RemoteException when sending send verification code response."

    invoke-virtual {p0, v1, p1, v0}, LA/d;->d(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;->a:Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/Q3;->i(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b:LA/d;

    const-string v1, "RemoteException when sending failure result."

    invoke-virtual {p0, v1, p1, v0}, LA/d;->d(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/firebase-auth-api/D4;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;->a:Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/Q3;->m(Lcom/google/android/gms/internal/firebase-auth-api/D4;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b:LA/d;

    const-string v1, "RemoteException when sending password reset response."

    invoke-virtual {p0, v1, p1, v0}, LA/d;->d(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method
