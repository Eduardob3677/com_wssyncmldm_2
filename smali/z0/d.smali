.class public final Lz0/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field public final c:[Lz0/b;

.field public final d:LD3/f;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lz0/b;LD3/f;)V
    .locals 6

    iget v4, p4, LD3/f;->b:I

    new-instance v5, Lz0/c;

    invoke-direct {v5, p3, p4}, Lz0/c;-><init>([Lz0/b;LD3/f;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    iput-object p4, p0, Lz0/d;->d:LD3/f;

    iput-object p3, p0, Lz0/d;->c:[Lz0/b;

    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    iget-object v0, p0, Lz0/d;->c:[Lz0/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g(Landroid/database/sqlite/SQLiteDatabase;)Lz0/b;
    .locals 2

    iget-object p0, p0, Lz0/d;->c:[Lz0/b;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-nez v1, :cond_0

    new-instance v1, Lz0/b;

    invoke-direct {v1, p1}, Lz0/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    aput-object v1, p0, v0

    :cond_0
    aget-object p0, p0, v0

    return-object p0
.end method

.method public final declared-synchronized h()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lz0/d;->e:Z

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-boolean v1, p0, Lz0/d;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lz0/d;->close()V

    invoke-virtual {p0}, Lz0/d;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lz0/d;->g(Landroid/database/sqlite/SQLiteDatabase;)Lz0/b;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-virtual {p0, p1}, Lz0/d;->g(Landroid/database/sqlite/SQLiteDatabase;)Lz0/b;

    iget-object p0, p0, Lz0/d;->d:LD3/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-virtual {p0, p1}, Lz0/d;->g(Landroid/database/sqlite/SQLiteDatabase;)Lz0/b;

    move-result-object p1

    iget-object p0, p0, Lz0/d;->d:LD3/f;

    invoke-virtual {p0, p1}, LD3/f;->o(Lz0/b;)V

    iget-object p0, p0, LD3/f;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/room/k;

    invoke-virtual {p0, p1}, Landroidx/room/k;->createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    invoke-virtual {p0, p1}, Landroidx/room/k;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz0/d;->e:Z

    invoke-virtual {p0, p1}, Lz0/d;->g(Landroid/database/sqlite/SQLiteDatabase;)Lz0/b;

    move-result-object p1

    iget-object p0, p0, Lz0/d;->d:LD3/f;

    invoke-virtual {p0, p1, p2, p3}, LD3/f;->m(Lz0/b;II)V

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    iget-boolean v0, p0, Lz0/d;->e:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Lz0/d;->g(Landroid/database/sqlite/SQLiteDatabase;)Lz0/b;

    move-result-object p1

    iget-object p0, p0, Lz0/d;->d:LD3/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    invoke-virtual {p1, v0}, Lz0/b;->i(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    new-instance v1, Le/v;

    const-string v3, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v1, v3, v0}, Le/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz0/b;->c(Ly0/b;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_2
    move-object v2, v0

    :goto_3
    iget-object v1, p0, LD3/f;->e:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, LD3/f;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_4
    iget-object v1, p0, LD3/f;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/room/k;

    invoke-virtual {v1, p1}, Landroidx/room/k;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iput-object v0, p0, LD3/f;->c:Ljava/lang/Object;

    goto :goto_6

    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_5
    :goto_6
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz0/d;->e:Z

    iget-object v0, p0, Lz0/d;->d:LD3/f;

    invoke-virtual {p0, p1}, Lz0/d;->g(Landroid/database/sqlite/SQLiteDatabase;)Lz0/b;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, LD3/f;->m(Lz0/b;II)V

    return-void
.end method
