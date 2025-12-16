.class public final Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao;


# instance fields
.field private final __db:Landroidx/room/j;

.field private final __insertionAdapterOfPostponeReason:Landroidx/room/b;

.field private final __preparedStmtOfDeleteAll:Landroidx/room/m;


# direct methods
.method public constructor <init>(Landroidx/room/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__db:Landroidx/room/j;

    new-instance v0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl$1;-><init>(Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;Landroidx/room/j;)V

    iput-object v0, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__insertionAdapterOfPostponeReason:Landroidx/room/b;

    new-instance v0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl$2;-><init>(Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;Landroidx/room/j;)V

    iput-object v0, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/m;

    return-void
.end method


# virtual methods
.method public deleteAll()I
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/m;

    invoke-virtual {v0}, Landroidx/room/m;->acquire()Ly0/c;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->beginTransaction()V

    :try_start_0
    move-object v1, v0

    check-cast v1, Lz0/g;

    iget-object v1, v1, Lz0/g;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v1

    iget-object v2, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->endTransaction()V

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/m;

    invoke-virtual {p0, v0}, Landroidx/room/m;->release(Ly0/c;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->endTransaction()V

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/m;

    invoke-virtual {p0, v0}, Landroidx/room/m;->release(Ly0/c;)V

    throw v1
.end method

.method public getLimitedPostponeReasons()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT [postpone_reason] FROM postpone_reason ORDER BY _id DESC  LIMIT 5"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/l;->l(ILjava/lang/String;)Landroidx/room/l;

    move-result-object v0

    iget-object v2, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->beginTransaction()V

    :try_start_0
    iget-object v2, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v2, v0}, Landroidx/room/j;->query(Ly0/b;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/l;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p0}, Landroidx/room/j;->endTransaction()V

    return-object v3

    :catchall_1
    move-exception v0

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/l;->o()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    iget-object p0, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p0}, Landroidx/room/j;->endTransaction()V

    throw v0
.end method

.method public insertOrReplace(Lcom/idm/fotaagent/database/room/debug/entity/PostponeReason;)J
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__insertionAdapterOfPostponeReason:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p0}, Landroidx/room/j;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p0}, Landroidx/room/j;->endTransaction()V

    throw p1
.end method
