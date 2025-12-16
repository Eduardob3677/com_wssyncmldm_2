.class public abstract Lc1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Z

.field public final synthetic c:Lc1/k;

.field public final d:I

.field public final e:Landroid/os/Bundle;

.field public final synthetic f:Lc1/k;


# direct methods
.method public constructor <init>(Lc1/k;ILandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/c;->f:Lc1/k;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lc1/c;->c:Lc1/k;

    iput-object v0, p0, Lc1/c;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc1/c;->b:Z

    iput p2, p0, Lc1/c;->d:I

    iput-object p3, p0, Lc1/c;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lc1/c;->a:Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lc1/c;->c:Lc1/k;

    iget-object v0, v0, Lc1/k;->j:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lc1/c;->c:Lc1/k;

    iget-object v1, v1, Lc1/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public abstract b(LZ0/a;)V
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Boolean;

    const/4 p1, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lc1/c;->f:Lc1/k;

    iget v2, p0, Lc1/c;->d:I

    if-eqz v2, :cond_2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    invoke-virtual {v1, p1, v0}, Lc1/k;->m(ILandroid/os/IInterface;)V

    iget-object p1, p0, Lc1/c;->e:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "pendingIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/app/PendingIntent;

    :cond_0
    new-instance p1, LZ0/a;

    invoke-direct {p1, v2, v0}, LZ0/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lc1/c;->b(LZ0/a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1, v0}, Lc1/k;->m(ILandroid/os/IInterface;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lc1/k;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lc1/k;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "A fatal developer error has occurred. Class name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Start service action: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Service Descriptor: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". "

    invoke-static {v2, v1, p0}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p0}, Lc1/c;->d()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, p1, v0}, Lc1/k;->m(ILandroid/os/IInterface;)V

    new-instance p1, LZ0/a;

    const/16 v1, 0x8

    invoke-direct {p1, v1, v0}, LZ0/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lc1/c;->b(LZ0/a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public abstract d()Z
.end method
