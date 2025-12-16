.class public final Lcom/google/android/gms/internal/firebase-auth-api/K3;
.super Lcom/google/android/gms/internal/firebase-auth-api/S3;
.source "SourceFile"


# static fields
.field public static final d:LA/d;


# instance fields
.field public final b:Lcom/google/android/gms/internal/firebase-auth-api/n;

.field public final c:Lcom/google/android/gms/internal/firebase-auth-api/k4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LA/d;

    const-string v1, "FirebaseAuthFallback:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseAuth"

    invoke-direct {v0, v2, v1}, LA/d;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/auth/api/fallback/service/FirebaseAuthFallbackService;Ljava/lang/String;)V
    .locals 3

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Z;-><init>(Ljava/lang/String;I)V

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/Z3;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/Z3;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Z3;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/n;

    new-instance v2, LJ3/c;

    invoke-static {p2}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-direct {v2, p1, p2, v0}, LJ3/c;-><init>(Lcom/google/firebase/auth/api/fallback/service/FirebaseAuthFallbackService;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/Z3;)V

    const/16 p2, 0xb

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/k4;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/k4;-><init>(Lcom/google/firebase/auth/api/fallback/service/FirebaseAuthFallbackService;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->c:Lcom/google/android/gms/internal/firebase-auth-api/k4;

    return-void
.end method

.method public static q(JZ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    new-array p1, p0, [Ljava/lang/Object;

    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    iget-object v0, p2, LA/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "App hash will not be appended to the request."

    invoke-virtual {p2, v1, p1}, LA/d;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/firebase-auth-api/e3;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V
    .locals 3

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/e3;->c:LY1/d;

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {p2}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p2, p1, LY1/d;->g:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, LY1/d;->f:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/z2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/n;->h(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/q4;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/q4;-><init>(LY1/d;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/n;->i(Lcom/google/android/gms/internal/firebase-auth-api/q4;Lcom/google/android/gms/internal/firebase-auth-api/G3;)V

    :goto_0
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/firebase-auth-api/T2;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V
    .locals 3

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/T2;->c:Ljava/lang/String;

    invoke-static {v0}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/T2;->d:Lcom/google/android/gms/internal/firebase-auth-api/N4;

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {p2}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/z2;

    const/4 v2, 0x4

    invoke-direct {p2, p0, p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/n;->h(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/firebase-auth-api/d3;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V
    .locals 4

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/d3;->c:Ljava/lang/String;

    invoke-static {v0}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/d3;->d:Ljava/lang/String;

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {p2}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/o4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/d3;->e:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-direct {p2, v3, v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/o4;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, LJ3/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v1, "/verifyPassword"

    iget-object p0, p0, LJ3/c;->i:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/Q4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {p0, p2, p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/firebase-auth-api/S2;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V
    .locals 4

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/S2;->c:Ljava/lang/String;

    invoke-static {v0}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/S2;->d:Ljava/lang/String;

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/S2;->e:Ljava/lang/String;

    invoke-static {p1}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {p2}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance p2, Lcom/google/firebase/messaging/p;

    invoke-direct {p2, p0, v0, v1, v2}, Lcom/google/firebase/messaging/p;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/G3;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/n;->h(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/firebase-auth-api/b3;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V
    .locals 2

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/b3;->c:Lcom/google/android/gms/internal/firebase-auth-api/N4;

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {p2}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/N4;->q:Z

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/16 v1, 0xe

    invoke-direct {p2, p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, LJ3/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v1, "/verifyAssertion"

    iget-object p0, p0, LJ3/c;->i:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/O4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    return-void
.end method

.method public final r(Lcom/google/android/gms/internal/firebase-auth-api/Q2;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V
    .locals 2

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {p2}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/Q2;->c:Ljava/lang/String;

    invoke-static {p1}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/m4;

    const/4 v1, 0x2

    invoke-direct {p2, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/m4;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/4 v1, 0x6

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, LJ3/c;

    iget-object v0, p0, LJ3/c;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v1, "/token"

    iget-object p0, p0, LJ3/c;->i:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {p0, p2, p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    return-void
.end method

.method public final t(Lcom/google/android/gms/internal/firebase-auth-api/f3;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V
    .locals 2

    invoke-static {p2}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/f3;->c:LY1/j;

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->b(LY1/j;)Lb1/e;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/16 v1, 0x9

    invoke-direct {p2, p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, LJ3/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v1, "/verifyPhoneNumber"

    iget-object p0, p0, LJ3/c;->i:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/R4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    return-void
.end method

.method public final x(Lcom/google/android/gms/internal/firebase-auth-api/U2;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V
    .locals 3

    invoke-static {p2}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/U2;->d:LY1/j;

    invoke-static {v0}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/U2;->c:Ljava/lang/String;

    invoke-static {p1}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->b(LY1/j;)Lb1/e;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/z2;

    const/4 v2, 0x3

    invoke-direct {p2, p0, v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/n;->h(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    return-void
.end method
