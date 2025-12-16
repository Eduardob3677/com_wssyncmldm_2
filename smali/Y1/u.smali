.class public final LY1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/l;


# instance fields
.field public final synthetic a:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(La2/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY1/u;->a:Lcom/google/firebase/auth/FirebaseAuth;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/firebase-auth-api/y4;La2/s;)V
    .locals 2

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {p2}, Lc1/D;->e(Ljava/lang/Object;)V

    iput-object p1, p2, La2/s;->c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object p0, p0, LY1/u;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p2, p1, v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->d(Lcom/google/firebase/auth/FirebaseAuth;La2/s;Lcom/google/android/gms/internal/firebase-auth-api/y4;ZZ)V

    return-void
.end method
