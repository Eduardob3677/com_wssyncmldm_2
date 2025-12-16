.class public final Lcom/google/android/gms/internal/firebase-auth-api/F3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lcom/google/android/gms/internal/firebase-auth-api/W3;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/W3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/F3;->a:Lcom/google/android/gms/internal/firebase-auth-api/W3;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/F3;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    sget-object v0, LZ0/e;->c:LZ0/e;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/F3;->b:Landroid/content/Context;

    const v2, 0xbdfcb8

    invoke-virtual {v0, v1, v2}, LZ0/e;->b(Landroid/content/Context;I)I

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/F3;->a:Lcom/google/android/gms/internal/firebase-auth-api/W3;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/W3;->d:Ljava/lang/String;

    invoke-static {p0}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/W3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/W3;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/W3;->c:Z

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/v3;

    new-instance v2, Le4/d;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Le4/d;-><init>(I)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, La1/c;

    invoke-direct {v4, v2, v3}, La1/c;-><init>(Lb1/l;Landroid/os/Looper;)V

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/s;->c:LA3/D;

    invoke-direct {p0, v1, v2, v0, v4}, La1/d;-><init>(Landroid/content/Context;LA3/D;Lcom/google/android/gms/internal/firebase-auth-api/W3;La1/c;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/u3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/u3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/v3;)V

    return-object v0
.end method
