.class public final Landroidx/room/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final m:[Ljava/lang/String;


# instance fields
.field public final a:Lo/b;

.field public final b:[Ljava/lang/String;

.field public final c:[J

.field public final d:[Ljava/lang/Object;

.field public e:J

.field public final f:Landroidx/room/j;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile h:Z

.field public volatile i:Ly0/c;

.field public final j:LI3/p;

.field public final k:Lm/f;

.field public final l:Landroidx/room/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "DELETE"

    const-string v1, "INSERT"

    const-string v2, "UPDATE"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/room/g;->m:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Landroidx/room/j;[Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/room/g;->d:[Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/room/g;->e:J

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Landroidx/room/g;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v3, p0, Landroidx/room/g;->h:Z

    new-instance v2, Lm/f;

    invoke-direct {v2}, Lm/f;-><init>()V

    iput-object v2, p0, Landroidx/room/g;->k:Lm/f;

    new-instance v2, Landroidx/room/c;

    invoke-direct {v2, p0}, Landroidx/room/c;-><init>(Landroidx/room/g;)V

    iput-object v2, p0, Landroidx/room/g;->l:Landroidx/room/c;

    iput-object p1, p0, Landroidx/room/g;->f:Landroidx/room/j;

    new-instance p1, LI3/p;

    array-length v2, p2

    invoke-direct {p1, v2}, LI3/p;-><init>(I)V

    iput-object p1, p0, Landroidx/room/g;->j:LI3/p;

    new-instance p1, Lo/b;

    invoke-direct {p1}, Lo/k;-><init>()V

    iput-object p1, p0, Landroidx/room/g;->a:Lo/b;

    array-length p1, p2

    new-array v2, p1, [Ljava/lang/String;

    iput-object v2, p0, Landroidx/room/g;->b:[Ljava/lang/String;

    :goto_0
    if-ge v3, p1, :cond_0

    aget-object v2, p2, v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroidx/room/g;->a:Lo/b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Landroidx/room/g;->b:[Ljava/lang/String;

    aput-object v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p2

    new-array p1, p1, [J

    iput-object p1, p0, Landroidx/room/g;->c:[J

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/room/d;)V
    .locals 10

    new-instance v0, Landroidx/room/f;

    invoke-direct {v0, p0, p1}, Landroidx/room/f;-><init>(Landroidx/room/g;Landroidx/room/d;)V

    iget-object p1, v0, Landroidx/room/d;->mTables:[Ljava/lang/String;

    array-length v1, p1

    new-array v2, v1, [I

    array-length v3, p1

    array-length v4, p1

    new-array v4, v4, [J

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_1

    iget-object v7, p0, Landroidx/room/g;->a:Lo/b;

    aget-object v8, p1, v6

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v6

    iget-wide v7, p0, Landroidx/room/g;->e:J

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "There is no table with name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p1, v6

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v3, Landroidx/room/e;

    invoke-direct {v3, v0, v2, p1, v4}, Landroidx/room/e;-><init>(Landroidx/room/f;[I[Ljava/lang/String;[J)V

    iget-object p1, p0, Landroidx/room/g;->k:Lm/f;

    monitor-enter p1

    :try_start_0
    iget-object v4, p0, Landroidx/room/g;->k:Lm/f;

    invoke-virtual {v4, v0, v3}, Lm/f;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/e;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_5

    iget-object p1, p0, Landroidx/room/g;->j:LI3/p;

    monitor-enter p1

    move v0, v5

    :goto_1
    if-ge v5, v1, :cond_3

    :try_start_1
    aget v3, v2, v5

    iget-object v4, p1, LI3/p;->c:Ljava/lang/Object;

    check-cast v4, [J

    aget-wide v6, v4, v3

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    aput-wide v8, v4, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v6, v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p1, LI3/p;->a:Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    iget-object p1, p0, Landroidx/room/g;->f:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->isOpen()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroidx/room/j;->getOpenHelper()Ly0/a;

    move-result-object p1

    check-cast p1, Lz0/e;

    iget-object p1, p1, Lz0/e;->a:Lz0/d;

    invoke-virtual {p1}, Lz0/d;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/room/g;->d(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    goto :goto_4

    :goto_3
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_5
    :goto_4
    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Landroidx/room/g;->f:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/room/g;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/room/g;->f:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->getOpenHelper()Ly0/a;

    move-result-object v0

    check-cast v0, Lz0/e;

    iget-object v0, v0, Lz0/e;->a:Lz0/d;

    invoke-virtual {v0}, Lz0/d;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    :cond_1
    iget-boolean p0, p0, Landroidx/room/g;->h:Z

    if-nez p0, :cond_2

    const-string p0, "ROOM"

    const-string v0, "database is not initialized even though it is open"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final c(Landroidx/sqlite/db/SupportSQLiteDatabase;I)V
    .locals 7

    iget-object p0, p0, Landroidx/room/g;->b:[Ljava/lang/String;

    aget-object p0, p0, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroidx/room/g;->m:[Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v5, "CREATE TEMP TRIGGER IF NOT EXISTS "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "`"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "room_table_modification_trigger_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AFTER "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ON `"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "` BEGIN INSERT OR REPLACE INTO "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "room_table_modification_log"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " VALUES(null, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "); END"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 12

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroidx/room/g;->f:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->getCloseLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroidx/room/g;->j:LI3/p;

    invoke-virtual {v1}, LI3/p;->h()[I

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v1, :cond_1

    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    :try_start_3
    array-length v2, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->b()V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_5

    aget v5, v1, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    goto :goto_3

    :cond_2
    iget-object v5, p0, Landroidx/room/g;->b:[Ljava/lang/String;

    aget-object v5, v5, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroidx/room/g;->m:[Ljava/lang/String;

    move v8, v3

    :goto_2
    const/4 v9, 0x3

    if-ge v8, v9, :cond_4

    aget-object v9, v7, v8

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v10, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "`"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "room_table_modification_trigger_"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, v4}, Landroidx/room/g;->c(Landroidx/sqlite/db/SupportSQLiteDatabase;I)V

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_5
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->a()V

    iget-object v1, p0, Landroidx/room/g;->j:LI3/p;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iput-boolean v3, v1, LI3/p;->b:Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p0

    :catchall_2
    move-exception p0

    goto :goto_5

    :goto_4
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->a()V

    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_5
    :try_start_a
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0

    :goto_6
    const-string p1, "ROOM"

    const-string v0, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
