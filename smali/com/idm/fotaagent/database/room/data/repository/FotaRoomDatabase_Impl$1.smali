.class Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl$1;
.super Landroidx/room/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->createOpenHelper(Landroidx/room/a;)Ly0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;I)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS `injected_feature` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `value_text` TEXT NOT NULL, `category` TEXT NOT NULL, `name` TEXT NOT NULL, `value` BLOB NOT NULL)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    const-string p0, "CREATE  INDEX `index_injected_feature_category` ON `injected_feature` (`category`)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    const-string p0, "CREATE UNIQUE INDEX `index_injected_feature_category_name` ON `injected_feature` (`category`, `name`)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `property` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `value_text` TEXT NOT NULL, `category` TEXT NOT NULL, `name` TEXT NOT NULL, `value` BLOB NOT NULL)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    const-string p0, "CREATE  INDEX `index_property_category` ON `property` (`category`)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    const-string p0, "CREATE UNIQUE INDEX `index_property_category_name` ON `property` (`category`, `name`)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"1e6c9f59400e7eb9a450db538cf0db67\")"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS `injected_feature`"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS `property`"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    iget-object p1, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->access$000(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->access$100(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;

    invoke-static {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->access$200(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;

    invoke-static {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->access$302(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;

    invoke-static {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->access$400(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object p1, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->access$500(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->access$600(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;

    invoke-static {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;->access$700(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase_Impl;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public validateMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 17

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v3, Lw0/a;

    const-string v4, "_id"

    const-string v5, "INTEGER"

    const/4 v6, 0x1

    invoke-direct {v3, v6, v4, v5, v6}, Lw0/a;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lw0/a;

    const-string v7, "value_text"

    const-string v8, "TEXT"

    const/4 v9, 0x0

    invoke-direct {v3, v9, v7, v8, v6}, Lw0/a;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lw0/a;

    const-string v10, "category"

    invoke-direct {v3, v9, v10, v8, v6}, Lw0/a;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lw0/a;

    const-string v11, "name"

    invoke-direct {v3, v9, v11, v8, v6}, Lw0/a;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lw0/a;

    const-string v12, "value"

    const-string v13, "BLOB"

    invoke-direct {v3, v9, v12, v13, v6}, Lw0/a;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v9}, Ljava/util/HashSet;-><init>(I)V

    new-instance v14, Ljava/util/HashSet;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Ljava/util/HashSet;-><init>(I)V

    new-instance v15, Lw0/d;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v6, "index_injected_feature_category"

    invoke-direct {v15, v6, v2, v9}, Lw0/d;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v2, Lw0/d;

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v15, "index_injected_feature_category_name"

    const/4 v9, 0x1

    invoke-direct {v2, v15, v6, v9}, Lw0/d;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v2, Lw0/e;

    const-string v6, "injected_feature"

    invoke-direct {v2, v6, v1, v3, v14}, Lw0/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)V

    invoke-static {v0, v6}, Lw0/e;->a(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Lw0/e;

    move-result-object v1

    invoke-virtual {v2, v1}, Lw0/e;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "\n Found:\n"

    if-eqz v3, :cond_1

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Lw0/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v4, v5, v3}, Lw0/a;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lw0/a;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v7, v8, v3}, Lw0/a;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lw0/a;

    invoke-direct {v2, v4, v10, v8, v3}, Lw0/a;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lw0/a;

    invoke-direct {v2, v4, v11, v8, v3}, Lw0/a;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lw0/a;

    invoke-direct {v2, v4, v12, v13, v3}, Lw0/a;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Lw0/d;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v8, "index_property_category"

    invoke-direct {v5, v8, v7, v4}, Lw0/d;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v4, Lw0/d;

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v7, "index_property_category_name"

    const/4 v8, 0x1

    invoke-direct {v4, v7, v5, v8}, Lw0/d;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v4, Lw0/e;

    const-string v5, "property"

    invoke-direct {v4, v5, v1, v2, v3}, Lw0/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)V

    invoke-static {v0, v5}, Lw0/e;->a(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Lw0/e;

    move-result-object v0

    invoke-virtual {v4, v0}, Lw0/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Migration didn\'t properly handle property(com.idm.fotaagent.database.room.data.entity.Property).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Migration didn\'t properly handle injected_feature(com.idm.fotaagent.database.room.data.entity.InjectedFeature).\n Expected:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
