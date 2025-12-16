.class Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl$1;
.super Landroidx/room/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;->createOpenHelper(Landroidx/room/a;)Ly0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;I)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS `postpone_reason` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `postpone_reason` TEXT NOT NULL)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    const-string p0, "CREATE  INDEX `index_postpone_reason_postpone_reason` ON `postpone_reason` (`postpone_reason`)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"0b559636cdff94a9e0af2b8c72ffd905\")"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS `postpone_reason`"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    iget-object p1, p0, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;->access$000(Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;->access$100(Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;

    invoke-static {p0}, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;->access$200(Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;)Ljava/util/List;

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

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;

    invoke-static {v0, p1}, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;->access$302(Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;

    invoke-static {v0, p1}, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;->access$400(Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object p1, p0, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;->access$500(Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;->access$600(Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;

    invoke-static {p0}, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;->access$700(Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase_Impl;)Ljava/util/List;

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
    .locals 7

    new-instance p0, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    new-instance v0, Lw0/a;

    const-string v1, "_id"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2, v3}, Lw0/a;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lw0/a;

    const-string v1, "postpone_reason"

    const-string v2, "TEXT"

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lw0/a;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Lw0/d;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v6, "index_postpone_reason_postpone_reason"

    invoke-direct {v3, v6, v5, v4}, Lw0/d;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Lw0/e;

    invoke-direct {v3, v1, p0, v0, v2}, Lw0/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)V

    invoke-static {p1, v1}, Lw0/e;->a(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Lw0/e;

    move-result-object p0

    invoke-virtual {v3, p0}, Lw0/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Migration didn\'t properly handle postpone_reason(com.idm.fotaagent.database.room.debug.entity.PostponeReason).\n Expected:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n Found:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
