.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/c4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/firebase-auth-api/b4;

.field public c:LW1/g;

.field public d:La2/s;

.field public e:Ljava/lang/Object;

.field public f:LY1/t;

.field public g:Lcom/google/android/gms/internal/firebase-auth-api/y4;

.field public h:Lcom/google/android/gms/internal/firebase-auth-api/v4;

.field public i:LY1/c;

.field public j:Lcom/google/android/gms/internal/firebase-auth-api/p3;

.field public k:Z

.field public l:Ljava/lang/Object;

.field public m:Lcom/google/android/gms/internal/firebase-auth-api/U;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/b4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/b4;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/c4;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->b:Lcom/google/android/gms/internal/firebase-auth-api/b4;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->a:I

    return-void
.end method

.method public static synthetic e(Lcom/google/android/gms/internal/firebase-auth-api/c4;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->c()V

    iget-boolean p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->k:Z

    const-string v0, "no success or failure set on method implementation"

    invoke-static {v0, p0}, Lc1/D;->g(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public abstract a()LR3/m;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()V
.end method

.method public final d(LW1/g;)V
    .locals 1

    const-string v0, "firebaseApp cannot be null"

    invoke-static {v0, p1}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->c:LW1/g;

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->k:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->m:Lcom/google/android/gms/internal/firebase-auth-api/U;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/U;->c(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->k:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->l:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->m:Lcom/google/android/gms/internal/firebase-auth-api/U;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/U;->c(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
