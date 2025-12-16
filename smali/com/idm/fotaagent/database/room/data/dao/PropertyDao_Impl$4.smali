.class Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl$4;
.super Landroidx/lifecycle/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl;->getEntityLiveDataOf(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/g;"
    }
.end annotation


# instance fields
.field private _observer:Landroidx/room/d;

.field final synthetic this$0:Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl;

.field final synthetic val$_statement:Landroidx/room/l;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl;Ljava/util/concurrent/Executor;Landroidx/room/l;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl$4;->this$0:Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl;

    iput-object p3, p0, Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl$4;->val$_statement:Landroidx/room/l;

    invoke-direct {p0, p2}, Landroidx/lifecycle/g;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public compute()Lcom/idm/fotaagent/database/room/data/entity/Property;
    .locals 6

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl$4;->_observer:Landroidx/room/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl$4$1;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "property"

    invoke-direct {v0, p0, v2, v1}, Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl$4$1;-><init>(Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl$4;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl$4;->_observer:Landroidx/room/d;

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl$4;->this$0:Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl;

    invoke-static {v0}, Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl;->access$000(Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl;)Landroidx/room/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/j;->getInvalidationTracker()Landroidx/room/g;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl$4;->_observer:Landroidx/room/d;

    invoke-virtual {v0, v1}, Landroidx/room/g;->a(Landroidx/room/d;)V

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl$4;->this$0:Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl;

    invoke-static {v0}, Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl;->access$000(Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl;)Landroidx/room/j;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl$4;->val$_statement:Landroidx/room/l;

    invoke-virtual {v0, p0}, Landroidx/room/j;->query(Ly0/b;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

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

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    new-instance v5, Lcom/idm/fotaagent/database/room/data/entity/Property;

    invoke-direct {v5, v2, v3, v4, v1}, Lcom/idm/fotaagent/database/room/data/entity/Property;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;->_id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v5

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public bridge synthetic compute()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl$4;->compute()Lcom/idm/fotaagent/database/room/data/entity/Property;

    move-result-object p0

    return-object p0
.end method

.method public finalize()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/dao/PropertyDao_Impl$4;->val$_statement:Landroidx/room/l;

    invoke-virtual {p0}, Landroidx/room/l;->o()V

    return-void
.end method
