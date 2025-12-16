.class public final Lb1/t;
.super Lb1/m;
.source "SourceFile"


# instance fields
.field public final a:Lu1/i;


# direct methods
.method public constructor <init>(Lu1/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/t;->a:Lu1/i;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(LA3/D;Z)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    new-instance v0, LW1/h;

    invoke-direct {v0, p1}, LW1/h;-><init>(Lcom/google/android/gms/common/api/Status;)V

    iget-object p0, p0, Lb1/t;->a:Lu1/i;

    invoke-virtual {p0, v0}, Lu1/i;->c(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final c(Ljava/lang/RuntimeException;)V
    .locals 0

    iget-object p0, p0, Lb1/t;->a:Lu1/i;

    invoke-virtual {p0, p1}, Lu1/i;->c(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final d(Lb1/d;)[LZ0/c;
    .locals 0

    iget-object p0, p1, Lb1/d;->f:Ljava/util/HashMap;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final f(Lb1/d;)Z
    .locals 0

    iget-object p0, p1, Lb1/d;->f:Ljava/util/HashMap;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final g(Lb1/d;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lb1/t;->h(Lb1/d;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lb1/t;->c(Ljava/lang/RuntimeException;)V

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lb1/m;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb1/t;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Lb1/m;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb1/t;->b(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method

.method public final h(Lb1/d;)V
    .locals 1

    iget-object p1, p1, Lb1/d;->f:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LB/f;->F(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lb1/t;->a:Lu1/i;

    invoke-virtual {p0, p1}, Lu1/i;->d(Ljava/lang/Object;)V

    return-void
.end method
