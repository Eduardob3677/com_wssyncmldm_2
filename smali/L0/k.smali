.class public final LL0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile e:LL0/d;


# instance fields
.field public final a:LT0/b;

.field public final b:LT0/b;

.field public final c:LP0/d;

.field public final d:LQ0/j;


# direct methods
.method public constructor <init>(LT0/b;LT0/b;LP0/d;LQ0/j;LQ0/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL0/k;->a:LT0/b;

    iput-object p2, p0, LL0/k;->b:LT0/b;

    iput-object p3, p0, LL0/k;->c:LP0/d;

    iput-object p4, p0, LL0/k;->d:LQ0/j;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, LD1/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, LD1/b;-><init>(ILjava/lang/Object;)V

    iget-object p1, p5, LQ0/k;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()LL0/k;
    .locals 2

    sget-object v0, LL0/k;->e:LL0/d;

    if-eqz v0, :cond_0

    iget-object v0, v0, LL0/d;->g:LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL0/k;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    sget-object v0, LL0/k;->e:LL0/d;

    if-nez v0, :cond_1

    const-class v0, LL0/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, LL0/k;->e:LL0/d;

    if-nez v1, :cond_0

    new-instance v1, LL0/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v1, LL0/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, LL0/c;->b()LL0/d;

    move-result-object p0

    sput-object p0, LL0/k;->e:LL0/d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method
