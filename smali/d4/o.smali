.class public final Ld4/o;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:Ld4/r;

.field public final synthetic e:Z

.field public final synthetic f:LL3/G;


# direct methods
.method public constructor <init>(Ld4/r;ZLL3/G;)V
    .locals 0

    iput-object p1, p0, Ld4/o;->d:Ld4/r;

    iput-boolean p2, p0, Ld4/o;->e:Z

    iput-object p3, p0, Ld4/o;->f:LL3/G;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ld4/o;->d:Ld4/r;

    iget-object v1, v0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    check-cast v1, Lr3/j;

    invoke-virtual {v0, v1}, Ld4/r;->a(Lr3/j;)Lcom/google/android/gms/internal/firebase-auth-api/X;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-boolean v2, p0, Ld4/o;->e:Z

    iget-object p0, p0, Ld4/o;->f:LL3/G;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->e:Ld4/a;

    invoke-interface {v0, v1, p0}, Ld4/c;->V(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->e:Ld4/a;

    invoke-interface {v0, v1, p0}, Ld4/c;->u(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    sget-object p0, LR2/u;->c:LR2/u;

    :cond_2
    return-object p0
.end method
