.class public final Lu1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu1/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu1/n;

    invoke-direct {v0}, Lu1/n;-><init>()V

    iput-object v0, p0, Lu1/i;->a:Lu1/n;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lu1/i;->a:Lu1/n;

    invoke-virtual {p0, p1}, Lu1/n;->j(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lu1/i;->a:Lu1/n;

    invoke-virtual {p0, p1}, Lu1/n;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Exception;)Z
    .locals 2

    iget-object p0, p0, Lu1/i;->a:Lu1/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Exception must not be null"

    invoke-static {v0, p1}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lu1/n;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lu1/n;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lu1/n;->c:Z

    iput-object p1, p0, Lu1/n;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lu1/n;->b:LR3/m;

    invoke-virtual {p1, p0}, LR3/m;->e(Lu1/h;)V

    move p0, v1

    :goto_0
    return p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lu1/i;->a:Lu1/n;

    iget-object v0, p0, Lu1/n;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lu1/n;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lu1/n;->c:Z

    iput-object p1, p0, Lu1/n;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lu1/n;->b:LR3/m;

    invoke-virtual {p1, p0}, LR3/m;->e(Lu1/h;)V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
