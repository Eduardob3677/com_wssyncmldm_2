.class public abstract Landroidx/lifecycle/C;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lm/f;

.field public c:I

.field public d:Z

.field public volatile e:Ljava/lang/Object;

.field public volatile f:Ljava/lang/Object;

.field public g:I

.field public h:Z

.field public i:Z

.field public final j:LB1/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/C;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/C;->a:Ljava/lang/Object;

    new-instance v0, Lm/f;

    invoke-direct {v0}, Lm/f;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/C;->b:Lm/f;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/C;->c:I

    sget-object v0, Landroidx/lifecycle/C;->k:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/C;->f:Ljava/lang/Object;

    new-instance v1, LB1/h;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0}, LB1/h;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/lifecycle/C;->j:LB1/h;

    iput-object v0, p0, Landroidx/lifecycle/C;->e:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/C;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/C;->a:Ljava/lang/Object;

    new-instance v0, Lm/f;

    invoke-direct {v0}, Lm/f;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/C;->b:Lm/f;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/C;->c:I

    sget-object v1, Landroidx/lifecycle/C;->k:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/lifecycle/C;->f:Ljava/lang/Object;

    new-instance v1, LB1/h;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0}, LB1/h;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/lifecycle/C;->j:LB1/h;

    iput-object p1, p0, Landroidx/lifecycle/C;->e:Ljava/lang/Object;

    iput v0, p0, Landroidx/lifecycle/C;->g:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Ll/a;->R()Ll/a;

    move-result-object v0

    iget-object v0, v0, Ll/a;->f:Ll/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot invoke "

    const-string v2, " on a background thread"

    invoke-static {v1, p0, v2}, LB/f;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/B;)V
    .locals 2

    iget-boolean v0, p1, Landroidx/lifecycle/B;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/B;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/B;->b(Z)V

    return-void

    :cond_1
    iget v0, p1, Landroidx/lifecycle/B;->c:I

    iget v1, p0, Landroidx/lifecycle/C;->g:I

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    iput v1, p1, Landroidx/lifecycle/B;->c:I

    iget-object p1, p1, Landroidx/lifecycle/B;->a:Landroidx/lifecycle/G;

    iget-object p0, p0, Landroidx/lifecycle/C;->e:Ljava/lang/Object;

    invoke-interface {p1, p0}, Landroidx/lifecycle/G;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Landroidx/lifecycle/B;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/lifecycle/C;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/lifecycle/C;->i:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/C;->h:Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/C;->i:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/lifecycle/C;->b(Landroidx/lifecycle/B;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/C;->b:Lm/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lm/d;

    invoke-direct {v2, v1}, Lm/d;-><init>(Lm/f;)V

    iget-object v1, v1, Lm/f;->e:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v2}, Lm/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lm/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/B;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/C;->b(Landroidx/lifecycle/B;)V

    iget-boolean v1, p0, Landroidx/lifecycle/C;->i:Z

    if-eqz v1, :cond_3

    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/lifecycle/C;->i:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Landroidx/lifecycle/C;->h:Z

    return-void
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Landroidx/lifecycle/C;->e:Ljava/lang/Object;

    sget-object v0, Landroidx/lifecycle/C;->k:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e(Landroidx/lifecycle/w;Landroidx/lifecycle/G;)V
    .locals 2

    const-string v0, "observe"

    invoke-static {v0}, Landroidx/lifecycle/C;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/w;->getLifecycle()Landroidx/lifecycle/r;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/y;

    iget-object v0, v0, Landroidx/lifecycle/y;->c:Landroidx/lifecycle/q;

    sget-object v1, Landroidx/lifecycle/q;->c:Landroidx/lifecycle/q;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/C;Landroidx/lifecycle/w;Landroidx/lifecycle/G;)V

    iget-object p0, p0, Landroidx/lifecycle/C;->b:Lm/f;

    invoke-virtual {p0, p2, v0}, Lm/f;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/B;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/lifecycle/B;->d(Landroidx/lifecycle/w;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add the same observer with different lifecycles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Landroidx/lifecycle/w;->getLifecycle()Landroidx/lifecycle/r;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/v;)V

    return-void
.end method

.method public final f(Landroidx/lifecycle/G;)V
    .locals 1

    const-string v0, "observeForever"

    invoke-static {v0}, Landroidx/lifecycle/C;->a(Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/A;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/B;-><init>(Landroidx/lifecycle/C;Landroidx/lifecycle/G;)V

    iget-object p0, p0, Landroidx/lifecycle/C;->b:Lm/f;

    invoke-virtual {p0, p1, v0}, Lm/f;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/B;

    instance-of p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/lifecycle/B;->b(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add the same observer with different lifecycles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/C;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/C;->f:Ljava/lang/Object;

    sget-object v2, Landroidx/lifecycle/C;->k:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/C;->f:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ll/a;->R()Ll/a;

    move-result-object p1

    iget-object p0, p0, Landroidx/lifecycle/C;->j:LB1/h;

    invoke-virtual {p1, p0}, Ll/a;->T(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final j(Landroidx/lifecycle/G;)V
    .locals 1

    const-string v0, "removeObserver"

    invoke-static {v0}, Landroidx/lifecycle/C;->a(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/C;->b:Lm/f;

    invoke-virtual {p0, p1}, Lm/f;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/B;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/B;->c()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/B;->b(Z)V

    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "setValue"

    invoke-static {v0}, Landroidx/lifecycle/C;->a(Ljava/lang/String;)V

    iget v0, p0, Landroidx/lifecycle/C;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/C;->g:I

    iput-object p1, p0, Landroidx/lifecycle/C;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/C;->c(Landroidx/lifecycle/B;)V

    return-void
.end method
