.class public final Landroidx/room/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroidx/room/g;


# direct methods
.method public constructor <init>(Landroidx/room/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/c;->c:Landroidx/room/g;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    iget-object p0, p0, Landroidx/room/c;->c:Landroidx/room/g;

    iget-object v0, p0, Landroidx/room/g;->f:Landroidx/room/j;

    const-string v1, "SELECT * FROM room_table_modification_log WHERE version  > ? ORDER BY version ASC;"

    iget-object v2, p0, Landroidx/room/g;->d:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroidx/room/j;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iget-object v6, p0, Landroidx/room/g;->c:[J

    aput-wide v2, v6, v5

    iput-wide v2, p0, Landroidx/room/g;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v2

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/room/c;->c:Landroidx/room/g;

    iget-object v0, v0, Landroidx/room/g;->f:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->getCloseLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v2, p0, Landroidx/room/c;->c:Landroidx/room/g;

    invoke-virtual {v2}, Landroidx/room/g;->b()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroidx/room/c;->c:Landroidx/room/g;

    iget-object v2, v2, Landroidx/room/g;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :try_start_2
    iget-object v2, p0, Landroidx/room/c;->c:Landroidx/room/g;

    iget-object v2, v2, Landroidx/room/g;->f:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->inTransaction()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :try_start_3
    iget-object v2, p0, Landroidx/room/c;->c:Landroidx/room/g;

    iget-object v2, v2, Landroidx/room/g;->i:Ly0/c;

    check-cast v2, Lz0/g;

    iget-object v2, v2, Lz0/g;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    iget-object v2, p0, Landroidx/room/c;->c:Landroidx/room/g;

    iget-object v3, v2, Landroidx/room/g;->d:[Ljava/lang/Object;

    iget-wide v4, v2, Landroidx/room/g;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    iget-object v2, p0, Landroidx/room/c;->c:Landroidx/room/g;

    iget-object v2, v2, Landroidx/room/g;->f:Landroidx/room/j;

    iget-boolean v3, v2, Landroidx/room/j;->mWriteAheadLoggingEnabled:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroidx/room/j;->getOpenHelper()Ly0/a;

    move-result-object v2

    check-cast v2, Lz0/e;

    iget-object v2, v2, Lz0/e;->a:Lz0/d;

    invoke-virtual {v2}, Lz0/d;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->b()V

    invoke-virtual {p0}, Landroidx/room/c;->a()Z

    move-result v1

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->a()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->a()V

    throw v3

    :cond_3
    invoke-virtual {p0}, Landroidx/room/c;->a()Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    :try_start_6
    const-string v3, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :goto_2
    if-eqz v1, :cond_5

    iget-object v0, p0, Landroidx/room/c;->c:Landroidx/room/g;

    iget-object v0, v0, Landroidx/room/g;->k:Lm/f;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroidx/room/c;->c:Landroidx/room/g;

    iget-object v1, v1, Landroidx/room/g;->k:Lm/f;

    invoke-virtual {v1}, Lm/f;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    move-object v2, v1

    check-cast v2, Lm/b;

    invoke-virtual {v2}, Lm/b;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lm/b;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/e;

    iget-object v3, p0, Landroidx/room/c;->c:Landroidx/room/g;

    iget-object v3, v3, Landroidx/room/g;->c:[J

    invoke-virtual {v2, v3}, Landroidx/room/e;->a([J)V

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_4
    monitor-exit v0

    goto :goto_5

    :goto_4
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :cond_5
    :goto_5
    return-void

    :goto_6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method
