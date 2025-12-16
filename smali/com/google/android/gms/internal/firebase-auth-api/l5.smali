.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/l5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final c:Lcom/google/android/gms/internal/firebase-auth-api/m5;

.field public d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->c:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->h(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/x;->c:Lcom/google/android/gms/internal/firebase-auth-api/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/x;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/A;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/firebase-auth-api/m5;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->c()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, LA0/c;

    invoke-direct {p0}, LA0/c;-><init>()V

    throw p0
.end method

.method public final c()Lcom/google/android/gms/internal/firebase-auth-api/m5;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/x;->c:Lcom/google/android/gms/internal/firebase-auth-api/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/x;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/A;->b(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->c:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->h(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->c()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->a(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    return-object v0
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->h(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/x;->c:Lcom/google/android/gms/internal/firebase-auth-api/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/x;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/A;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    return-void
.end method
