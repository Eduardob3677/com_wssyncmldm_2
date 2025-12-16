.class public final Lf3/b;
.super Lf3/a;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/internal/firebase-auth-api/t0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lf3/d;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/t0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t0;-><init>(I)V

    iput-object v0, p0, Lf3/b;->e:Lcom/google/android/gms/internal/firebase-auth-api/t0;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Random;
    .locals 1

    iget-object p0, p0, Lf3/b;->e:Lcom/google/android/gms/internal/firebase-auth-api/t0;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "implStorage.get()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/Random;

    return-object p0
.end method
