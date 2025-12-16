.class public final Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;
.super Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao;
.source "SourceFile"


# instance fields
.field private final __db:Landroidx/room/j;

.field private final __insertionAdapterOfInjectedFeature:Landroidx/room/b;

.field private final __preparedStmtOfDelete:Landroidx/room/m;

.field private final __preparedStmtOfDeleteAll:Landroidx/room/m;


# direct methods
.method public constructor <init>(Landroidx/room/j;)V
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl$1;-><init>(Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;Landroidx/room/j;)V

    iput-object v0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__insertionAdapterOfInjectedFeature:Landroidx/room/b;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl$2;-><init>(Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;Landroidx/room/j;)V

    iput-object v0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__preparedStmtOfDelete:Landroidx/room/m;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl$3;-><init>(Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;Landroidx/room/j;)V

    iput-object v0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/m;

    return-void
.end method

.method public static synthetic access$000(Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;)Landroidx/room/j;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    return-object p0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__preparedStmtOfDelete:Landroidx/room/m;

    invoke-virtual {v0}, Landroidx/room/m;->acquire()Ly0/c;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    :try_start_0
    move-object p1, v0

    check-cast p1, Lz0/f;

    invoke-virtual {p1, v1}, Lz0/f;->m(I)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    check-cast v2, Lz0/f;

    invoke-virtual {v2, v1, p1}, Lz0/f;->n(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    if-nez p2, :cond_1

    move-object p2, v0

    check-cast p2, Lz0/f;

    invoke-virtual {p2, p1}, Lz0/f;->m(I)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    check-cast v1, Lz0/f;

    invoke-virtual {v1, p1, p2}, Lz0/f;->n(ILjava/lang/String;)V

    :goto_1
    move-object p1, v0

    check-cast p1, Lz0/g;

    iget-object p1, p1, Lz0/g;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1

    iget-object p2, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p2}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p2}, Landroidx/room/j;->endTransaction()V

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__preparedStmtOfDelete:Landroidx/room/m;

    invoke-virtual {p0, v0}, Landroidx/room/m;->release(Ly0/c;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p2}, Landroidx/room/j;->endTransaction()V

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__preparedStmtOfDelete:Landroidx/room/m;

    invoke-virtual {p0, v0}, Landroidx/room/m;->release(Ly0/c;)V

    throw p1
.end method

.method public deleteAll(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/m;

    invoke-virtual {v0}, Landroidx/room/m;->acquire()Ly0/c;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    :try_start_0
    move-object p1, v0

    check-cast p1, Lz0/f;

    invoke-virtual {p1, v1}, Lz0/f;->m(I)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    check-cast v2, Lz0/f;

    invoke-virtual {v2, v1, p1}, Lz0/f;->n(ILjava/lang/String;)V

    :goto_0
    move-object p1, v0

    check-cast p1, Lz0/g;

    iget-object p1, p1, Lz0/g;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1

    iget-object v1, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->endTransaction()V

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/m;

    invoke-virtual {p0, v0}, Landroidx/room/m;->release(Ly0/c;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->endTransaction()V

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/m;

    invoke-virtual {p0, v0}, Landroidx/room/m;->release(Ly0/c;)V

    throw p1
.end method

.method public varargs deleteCategories([Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM property WHERE category IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v1, v0}, Landroidx/room/j;->compileStatement(Ljava/lang/String;)Ly0/c;

    move-result-object v0

    array-length v1, p1

    const/4 v3, 0x1

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v4, p1, v2

    if-nez v4, :cond_2

    move-object v4, v0

    check-cast v4, Lz0/f;

    invoke-virtual {v4, v3}, Lz0/f;->m(I)V

    goto :goto_2

    :cond_2
    move-object v5, v0

    check-cast v5, Lz0/f;

    invoke-virtual {v5, v3, v4}, Lz0/f;->n(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->beginTransaction()V

    :try_start_0
    check-cast v0, Lz0/g;

    iget-object p1, v0, Lz0/g;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p0}, Landroidx/room/j;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p0}, Landroidx/room/j;->endTransaction()V

    throw p1
.end method

.method public getAllEntitiesOf(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM injected_feature WHERE category = ? ORDER BY _id ASC"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/l;->l(ILjava/lang/String;)Landroidx/room/l;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/l;->m(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/l;->n(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p0, v0}, Landroidx/room/j;->query(Ly0/b;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "_id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    const-string v1, "value_text"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "category"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "name"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "value"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    new-instance v10, Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;

    invoke-direct {v10, v7, v8, v9, v6}, Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v10, Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;->_id:J

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/l;->o()V

    return-object v5

    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/l;->o()V

    throw p1
.end method

.method public getEntityLiveDataOf(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/C;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/C;"
        }
    .end annotation

    const-string v0, "SELECT * FROM injected_feature WHERE category = ? AND name = ? LIMIT 1"

    const/4 v1, 0x2

    invoke-static {v1, v0}, Landroidx/room/l;->l(ILjava/lang/String;)Landroidx/room/l;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {v0, v2}, Landroidx/room/l;->m(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, p1}, Landroidx/room/l;->n(ILjava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    invoke-virtual {v0, v1}, Landroidx/room/l;->m(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1, p2}, Landroidx/room/l;->n(ILjava/lang/String;)V

    :goto_1
    new-instance p1, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl$4;

    iget-object p2, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p2}, Landroidx/room/j;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p1, p0, p2, v0}, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl$4;-><init>(Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;Ljava/util/concurrent/Executor;Landroidx/room/l;)V

    invoke-virtual {p1}, Landroidx/lifecycle/g;->getLiveData()Landroidx/lifecycle/C;

    move-result-object p0

    return-object p0
.end method

.method public getEntityOf(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM injected_feature WHERE category = ? AND name = ? LIMIT 1"

    const/4 v1, 0x2

    invoke-static {v1, v0}, Landroidx/room/l;->l(ILjava/lang/String;)Landroidx/room/l;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {v0, v2}, Landroidx/room/l;->m(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, p1}, Landroidx/room/l;->n(ILjava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    invoke-virtual {v0, v1}, Landroidx/room/l;->m(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1, p2}, Landroidx/room/l;->n(ILjava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p0, v0}, Landroidx/room/j;->query(Ly0/b;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "_id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    const-string p2, "value_text"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    const-string v1, "category"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "value"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    new-instance v4, Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;

    invoke-direct {v4, v1, v2, v3, p2}, Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    iput-wide p1, v4, Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;->_id:J

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/l;->o()V

    return-object p1

    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/l;->o()V

    throw p1
.end method

.method public bridge synthetic insertOrReplace(Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;)J
    .locals 0

    check-cast p1, Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->insertOrReplace(Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;)J

    move-result-wide p0

    return-wide p0
.end method

.method public insertOrReplace(Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;)J
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__insertionAdapterOfInjectedFeature:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p0}, Landroidx/room/j;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p0}, Landroidx/room/j;->endTransaction()V

    throw p1
.end method

.method public size(Ljava/lang/String;)I
    .locals 2

    const-string v0, "SELECT count(*) FROM injected_feature WHERE category = ?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/l;->l(ILjava/lang/String;)Landroidx/room/l;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/l;->m(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/l;->n(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p0, v0}, Landroidx/room/j;->query(Ly0/b;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/l;->o()V

    return v1

    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/l;->o()V

    throw p1
.end method
