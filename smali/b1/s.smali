.class public final Lb1/s;
.super Lb1/m;
.source "SourceFile"


# instance fields
.field public final a:LR3/m;

.field public final b:Lu1/i;

.field public final c:Lb1/l;


# direct methods
.method public constructor <init>(LR3/m;Lu1/i;Lb1/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb1/s;->b:Lu1/i;

    iput-object p1, p0, Lb1/s;->a:LR3/m;

    iput-object p3, p0, Lb1/s;->c:Lb1/l;

    return-void
.end method


# virtual methods
.method public final a(LA3/D;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v0, p1, LA3/D;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object p0, p0, Lb1/s;->b:Lu1/i;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lu1/i;->a:Lu1/n;

    new-instance v0, LA3/D;

    invoke-direct {v0, p1, p0}, LA3/D;-><init>(LA3/D;Lu1/i;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lu1/j;->a:LL0/i;

    invoke-virtual {p2, p0, v0}, Lu1/n;->a(Ljava/util/concurrent/Executor;Lu1/c;)Lu1/n;

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lb1/s;->c:Lb1/l;

    invoke-interface {v0, p1}, Lb1/l;->d(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    move-result-object p1

    iget-object p0, p0, Lb1/s;->b:Lu1/i;

    invoke-virtual {p0, p1}, Lu1/i;->c(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final c(Ljava/lang/RuntimeException;)V
    .locals 0

    iget-object p0, p0, Lb1/s;->b:Lu1/i;

    invoke-virtual {p0, p1}, Lu1/i;->c(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final d(Lb1/d;)[LZ0/c;
    .locals 0

    iget-object p0, p0, Lb1/s;->a:LR3/m;

    iget-object p0, p0, LR3/m;->b:Ljava/lang/Object;

    check-cast p0, [LZ0/c;

    return-object p0
.end method

.method public final f(Lb1/d;)Z
    .locals 0

    iget-object p0, p0, Lb1/s;->a:LR3/m;

    iget-boolean p0, p0, LR3/m;->a:Z

    return p0
.end method

.method public final g(Lb1/d;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lb1/s;->a:LR3/m;

    iget-object p1, p1, Lb1/d;->b:La1/b;

    iget-object v1, p0, Lb1/s;->b:Lu1/i;

    iget-object v0, v0, LR3/m;->c:Ljava/lang/Object;

    check-cast v0, LR3/m;

    iget-object v0, v0, LR3/m;->b:Ljava/lang/Object;

    check-cast v0, Lb1/k;

    invoke-interface {v0, p1, v1}, Lb1/k;->c(La1/b;Lu1/i;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    invoke-virtual {p0, p1}, Lb1/s;->c(Ljava/lang/RuntimeException;)V

    return-void

    :goto_1
    invoke-static {p1}, Lb1/m;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb1/s;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :goto_2
    throw p0
.end method
