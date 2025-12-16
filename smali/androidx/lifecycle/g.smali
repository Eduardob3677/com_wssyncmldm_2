.class public abstract Landroidx/lifecycle/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _liveData:Landroidx/lifecycle/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/C;"
        }
    .end annotation
.end field

.field private final computing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final invalidationRunnable:Ljava/lang/Runnable;

.field private final liveData:Landroidx/lifecycle/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/C;"
        }
    .end annotation
.end field

.field public final refreshRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "executor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/g;->executor:Ljava/util/concurrent/Executor;

    new-instance p1, Landroidx/lifecycle/f;

    invoke-direct {p1, p0}, Landroidx/lifecycle/f;-><init>(Landroidx/lifecycle/g;)V

    iput-object p1, p0, Landroidx/lifecycle/g;->_liveData:Landroidx/lifecycle/C;

    iput-object p1, p0, Landroidx/lifecycle/g;->liveData:Landroidx/lifecycle/C;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/lifecycle/g;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/lifecycle/g;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Landroidx/lifecycle/e;

    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/e;-><init>(Landroidx/lifecycle/g;I)V

    iput-object p1, p0, Landroidx/lifecycle/g;->refreshRunnable:Ljava/lang/Runnable;

    new-instance p1, Landroidx/lifecycle/e;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/e;-><init>(Landroidx/lifecycle/g;I)V

    iput-object p1, p0, Landroidx/lifecycle/g;->invalidationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Landroidx/lifecycle/g;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/g;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v3, v1

    :goto_0
    :try_start_0
    iget-object v4, p0, Landroidx/lifecycle/g;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/g;->compute()Ljava/lang/Object;

    move-result-object v0

    move v3, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroidx/lifecycle/g;->getLiveData()Landroidx/lifecycle/C;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/lifecycle/C;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/g;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v1, v3

    goto :goto_2

    :goto_1
    iget-object p0, p0, Landroidx/lifecycle/g;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    iget-object v0, p0, Landroidx/lifecycle/g;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    return-void
.end method

.method public static b(Landroidx/lifecycle/g;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/lifecycle/g;->getLiveData()Landroidx/lifecycle/C;

    move-result-object v0

    iget v0, v0, Landroidx/lifecycle/C;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/lifecycle/g;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/g;->executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/lifecycle/g;->refreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static synthetic getInvalidationRunnable$lifecycle_livedata_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRefreshRunnable$lifecycle_livedata_release$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract compute()Ljava/lang/Object;
.end method

.method public final getComputing$lifecycle_livedata_release()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/g;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final getExecutor$lifecycle_livedata_release()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/g;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getInvalid$lifecycle_livedata_release()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/g;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public getLiveData()Landroidx/lifecycle/C;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/C;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/lifecycle/g;->liveData:Landroidx/lifecycle/C;

    return-object p0
.end method

.method public invalidate()V
    .locals 2

    invoke-static {}, Ll/a;->R()Ll/a;

    move-result-object v0

    iget-object p0, p0, Landroidx/lifecycle/g;->invalidationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ll/a;->S()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Ll/a;->T(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
