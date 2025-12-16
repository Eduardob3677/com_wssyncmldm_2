.class public final Landroidx/room/f;
.super Landroidx/room/d;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/room/g;

.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/room/g;Landroidx/room/d;)V
    .locals 1

    iget-object v0, p2, Landroidx/room/d;->mTables:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/room/d;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/f;->a:Landroidx/room/g;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/room/f;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onInvalidated(Ljava/util/Set;)V
    .locals 12

    iget-object v0, p0, Landroidx/room/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/d;

    if-nez v0, :cond_3

    iget-object p1, p0, Landroidx/room/f;->a:Landroidx/room/g;

    iget-object v1, p1, Landroidx/room/g;->k:Lm/f;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Landroidx/room/g;->k:Lm/f;

    invoke-virtual {v0, p0}, Lm/f;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/room/e;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_4

    iget-object v0, p1, Landroidx/room/g;->j:LI3/p;

    iget-object p0, p0, Landroidx/room/e;->a:[I

    monitor-enter v0

    :try_start_1
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, p0, v2

    iget-object v5, v0, LI3/p;->c:Ljava/lang/Object;

    check-cast v5, [J

    aget-wide v6, v5, v4

    const-wide/16 v8, 0x1

    sub-long v10, v6, v8

    aput-wide v10, v5, v4

    cmp-long v4, v6, v8

    if-nez v4, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v0, LI3/p;->a:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    iget-object p0, p1, Landroidx/room/g;->f:Landroidx/room/j;

    invoke-virtual {p0}, Landroidx/room/j;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroidx/room/j;->getOpenHelper()Ly0/a;

    move-result-object p0

    check-cast p0, Lz0/e;

    iget-object p0, p0, Lz0/e;->a:Lz0/d;

    invoke-virtual {p0}, Lz0/d;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/room/g;->d(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    goto :goto_3

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_3
    invoke-virtual {v0, p1}, Landroidx/room/d;->onInvalidated(Ljava/util/Set;)V

    :cond_4
    :goto_3
    return-void
.end method
