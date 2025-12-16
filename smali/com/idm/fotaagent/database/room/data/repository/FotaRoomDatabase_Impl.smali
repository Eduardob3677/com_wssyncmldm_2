.class public final Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;
.super Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;
.source "SourceFile"


# instance fields
.field private volatile _injectedFeatureDao:Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao;

.field private volatile _propertyDao:Lcom/idm/fotaagent/database/room/data/dao/PropertyDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    iput-object p1, p0, Landroidx/room/j;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/j;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Landroidx/room/j;->assertNotMainThread()V

    invoke-super {p0}, Landroidx/room/j;->getOpenHelper()Ly0/a;

    move-result-object v2

    check-cast v2, Lz0/e;

    iget-object v2, v2, Lz0/e;->a:Lz0/d;

    invoke-virtual {v2}, Lz0/d;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    :try_start_0
    invoke-super {p0}, Landroidx/room/j;->beginTransaction()V

    const-string v3, "DELETE FROM `injected_feature`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `property`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroidx/room/j;->endTransaction()V

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->i(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->j()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    invoke-super {p0}, Landroidx/room/j;->endTransaction()V

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->i(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->j()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    :cond_1
    throw v3
.end method

.method public createInvalidationTracker()Landroidx/room/g;
    .locals 3

    new-instance v0, Landroidx/room/g;

    const-string v1, "injected_feature"

    const-string v2, "property"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/room/g;-><init>(Landroidx/room/j;[Ljava/lang/String;)V

    return-object v0
.end method

.method public createOpenHelper(Landroidx/room/a;)Ly0/a;
    .locals 3

    new-instance v0, LD3/f;

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl$1;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl$1;-><init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;I)V

    const-string p0, "1e6c9f59400e7eb9a450db538cf0db67"

    const-string v2, "81209fcad839e3eb54dfe4ee31feaa41"

    invoke-direct {v0, p1, v1, p0, v2}, LD3/f;-><init>(Landroidx/room/a;Landroidx/room/k;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Landroidx/room/a;->b:Landroid/content/Context;

    if-eqz p0, :cond_0

    new-instance v1, LJ/r0;

    iget-object v2, p1, Landroidx/room/a;->c:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, LJ/r0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p1, Landroidx/room/a;->a:LP1/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lz0/e;

    iget-object p1, v1, LJ/r0;->e:Ljava/lang/Object;

    check-cast p1, LD3/f;

    iget-object v0, v1, LJ/r0;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, v1, LJ/r0;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lz0/e;-><init>(Landroid/content/Context;Ljava/lang/String;LD3/f;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must set a non-null context to create the configuration."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public injectedFeatureDao()Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao;
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->_injectedFeatureDao:Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->_injectedFeatureDao:Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->_injectedFeatureDao:Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl;-><init>(Landroidx/room/j;)V

    iput-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->_injectedFeatureDao:Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->_injectedFeatureDao:Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public propertyDao()Lcom/idm/fotaagent/database/room/data/dao/PropertyDao;
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->_propertyDao:Lcom/idm/fotaagent/database/room/data/dao/PropertyDao;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->_propertyDao:Lcom/idm/fotaagent/database/room/data/dao/PropertyDao;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->_propertyDao:Lcom/idm/fotaagent/database/room/data/dao/PropertyDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl;-><init>(Landroidx/room/j;)V

    iput-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->_propertyDao:Lcom/idm/fotaagent/database/room/data/dao/PropertyDao;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->_propertyDao:Lcom/idm/fotaagent/database/room/data/dao/PropertyDao;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
