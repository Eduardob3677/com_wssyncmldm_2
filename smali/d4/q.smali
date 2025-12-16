.class public final Ld4/q;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:Ld4/r;

.field public final synthetic e:Lcom/google/android/gms/internal/firebase-auth-api/X;

.field public final synthetic f:LR3/b;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:LL3/Z;


# direct methods
.method public constructor <init>(Ld4/r;Lcom/google/android/gms/internal/firebase-auth-api/X;LR3/b;IILL3/Z;)V
    .locals 0

    iput-object p1, p0, Ld4/q;->d:Ld4/r;

    iput-object p2, p0, Ld4/q;->e:Lcom/google/android/gms/internal/firebase-auth-api/X;

    iput-object p3, p0, Ld4/q;->f:LR3/b;

    iput p4, p0, Ld4/q;->g:I

    iput p5, p0, Ld4/q;->h:I

    iput-object p6, p0, Ld4/q;->i:LL3/Z;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Ld4/q;->d:Ld4/r;

    iget-object v0, v0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v1, v0, Ld4/i;->e:Ld4/a;

    iget v5, p0, Ld4/q;->h:I

    iget-object v6, p0, Ld4/q;->i:LL3/Z;

    iget-object v2, p0, Ld4/q;->e:Lcom/google/android/gms/internal/firebase-auth-api/X;

    iget-object v3, p0, Ld4/q;->f:LR3/b;

    iget v4, p0, Ld4/q;->g:I

    invoke-interface/range {v1 .. v6}, Ld4/c;->s(Lcom/google/android/gms/internal/firebase-auth-api/X;LR3/b;IILL3/Z;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
