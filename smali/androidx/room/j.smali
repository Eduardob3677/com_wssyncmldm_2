.class public abstract Landroidx/room/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DB_IMPL_SUFFIX:Ljava/lang/String; = "_Impl"

.field public static final MAX_BIND_PARAMETER_CNT:I = 0x3e7


# instance fields
.field private mAllowMainThreadQueries:Z

.field protected mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected volatile mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

.field private final mInvalidationTracker:Landroidx/room/g;

.field private mOpenHelper:Ly0/a;

.field private mQueryExecutor:Ljava/util/concurrent/Executor;

.field mWriteAheadLoggingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/room/j;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Landroidx/room/j;->createInvalidationTracker()Landroidx/room/g;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/j;->mInvalidationTracker:Landroidx/room/g;

    return-void
.end method


# virtual methods
.method public assertNotMainThread()V
    .locals 1

    iget-boolean p0, p0, Landroidx/room/j;->mAllowMainThreadQueries:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p0, v0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public beginTransaction()V
    .locals 1

    invoke-virtual {p0}, Landroidx/room/j;->assertNotMainThread()V

    iget-object v0, p0, Landroidx/room/j;->mOpenHelper:Ly0/a;

    check-cast v0, Lz0/e;

    iget-object v0, v0, Lz0/e;->a:Lz0/d;

    invoke-virtual {v0}, Lz0/d;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    iget-object p0, p0, Landroidx/room/j;->mInvalidationTracker:Landroidx/room/g;

    invoke-virtual {p0, v0}, Landroidx/room/g;->d(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->b()V

    return-void
.end method

.method public abstract clearAllTables()V
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Landroidx/room/j;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroidx/room/j;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Landroidx/room/j;->mOpenHelper:Ly0/a;

    check-cast v0, Lz0/e;

    iget-object v0, v0, Lz0/e;->a:Lz0/d;

    invoke-virtual {v0}, Lz0/d;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/room/j;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/room/j;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Ly0/c;
    .locals 0

    invoke-virtual {p0}, Landroidx/room/j;->assertNotMainThread()V

    iget-object p0, p0, Landroidx/room/j;->mOpenHelper:Ly0/a;

    check-cast p0, Lz0/e;

    iget-object p0, p0, Lz0/e;->a:Lz0/d;

    invoke-virtual {p0}, Lz0/d;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->f(Ljava/lang/String;)Lz0/g;

    move-result-object p0

    return-object p0
.end method

.method public abstract createInvalidationTracker()Landroidx/room/g;
.end method

.method public abstract createOpenHelper(Landroidx/room/a;)Ly0/a;
.end method

.method public endTransaction()V
    .locals 3

    iget-object v0, p0, Landroidx/room/j;->mOpenHelper:Ly0/a;

    check-cast v0, Lz0/e;

    iget-object v0, v0, Lz0/e;->a:Lz0/d;

    invoke-virtual {v0}, Lz0/d;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->a()V

    invoke-virtual {p0}, Landroidx/room/j;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/room/j;->mInvalidationTracker:Landroidx/room/g;

    iget-object v0, p0, Landroidx/room/g;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/room/g;->f:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Landroidx/room/g;->l:Landroidx/room/c;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getCloseLock()Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public getInvalidationTracker()Landroidx/room/g;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mInvalidationTracker:Landroidx/room/g;

    return-object p0
.end method

.method public getOpenHelper()Ly0/a;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mOpenHelper:Ly0/a;

    return-object p0
.end method

.method public getQueryExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mQueryExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public inTransaction()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mOpenHelper:Ly0/a;

    check-cast p0, Lz0/e;

    iget-object p0, p0, Lz0/e;->a:Lz0/d;

    invoke-virtual {p0}, Lz0/d;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->j()Z

    move-result p0

    return p0
.end method

.method public init(Landroidx/room/a;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/room/j;->createOpenHelper(Landroidx/room/a;)Ly0/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/j;->mOpenHelper:Ly0/a;

    iget v1, p1, Landroidx/room/a;->f:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    check-cast v0, Lz0/e;

    iget-object v0, v0, Lz0/e;->a:Lz0/d;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    iget-object v0, p1, Landroidx/room/a;->g:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/room/j;->mQueryExecutor:Ljava/util/concurrent/Executor;

    iget-boolean p1, p1, Landroidx/room/a;->e:Z

    iput-boolean p1, p0, Landroidx/room/j;->mAllowMainThreadQueries:Z

    iput-boolean v1, p0, Landroidx/room/j;->mWriteAheadLoggingEnabled:Z

    return-void
.end method

.method public internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    iget-object p0, p0, Landroidx/room/j;->mInvalidationTracker:Landroidx/room/g;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/room/g;->h:Z

    if-eqz v0, :cond_0

    const-string p1, "ROOM"

    const-string v0, "Invalidation tracker is initialized twice :/."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "PRAGMA temp_store = MEMORY;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    const-string v0, "PRAGMA recursive_triggers=\'ON\';"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TEMP TABLE room_table_modification_log(version INTEGER PRIMARY KEY AUTOINCREMENT, table_id INTEGER)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->a()V

    invoke-virtual {p0, p1}, Landroidx/room/g;->d(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    const-string v0, "DELETE FROM room_table_modification_log WHERE version NOT IN( SELECT MAX(version) FROM room_table_modification_log GROUP BY table_id)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->f(Ljava/lang/String;)Lz0/g;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/g;->i:Ly0/c;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/room/g;->h:Z

    monitor-exit p0

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->a()V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public isOpen()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 1

    iget-object p0, p0, Landroidx/room/j;->mOpenHelper:Ly0/a;

    check-cast p0, Lz0/e;

    iget-object p0, p0, Lz0/e;->a:Lz0/d;

    invoke-virtual {p0}, Lz0/d;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    new-instance v0, Le/v;

    invoke-direct {v0, p1, p2}, Le/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->c(Ly0/b;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public query(Ly0/b;)Landroid/database/Cursor;
    .locals 0

    invoke-virtual {p0}, Landroidx/room/j;->assertNotMainThread()V

    iget-object p0, p0, Landroidx/room/j;->mOpenHelper:Ly0/a;

    check-cast p0, Lz0/e;

    iget-object p0, p0, Lz0/e;->a:Lz0/d;

    invoke-virtual {p0}, Lz0/d;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->c(Ly0/b;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/room/j;->beginTransaction()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/room/j;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception in transaction"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {p0}, Landroidx/room/j;->endTransaction()V

    throw p1
.end method

.method public runInTransaction(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/room/j;->beginTransaction()V

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/room/j;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/room/j;->endTransaction()V

    throw p1
.end method

.method public setTransactionSuccessful()V
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mOpenHelper:Ly0/a;

    check-cast p0, Lz0/e;

    iget-object p0, p0, Lz0/e;->a:Lz0/d;

    invoke-virtual {p0}, Lz0/d;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->e()V

    return-void
.end method
