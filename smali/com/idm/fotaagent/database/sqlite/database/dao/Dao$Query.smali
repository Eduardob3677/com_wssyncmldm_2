.class Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Query"
.end annotation


# static fields
.field static final ALL_COLUMNS:Ljava/lang/String; = "com.wssyncmldm:all_columns"


# instance fields
.field private final columns:[Ljava/lang/String;

.field private final db:Landroid/database/sqlite/SQLiteDatabase;

.field private distinct:Z

.field private groupBy:Ljava/lang/String;

.field private having:Ljava/lang/String;

.field private limit:Ljava/lang/String;

.field private orderBy:Ljava/lang/String;

.field final synthetic this$0:Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;

.field private where:Ljava/lang/String;

.field private whereArgs:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p3, p4}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->access$000(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;-><init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->this$0:Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->distinct:Z

    const-string p1, "rowid desc"

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->orderBy:Ljava/lang/String;

    iput-object p2, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->columns:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;-><init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;[Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;-><init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public distinct(Z)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/idm/fotaagent/database/sqlite/database/dao/Dao<",
            "TE;>.Query;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->distinct:Z

    return-object p0
.end method

.method public execute()Landroid/database/Cursor;
    .locals 10

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v1, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->distinct:Z

    iget-object v2, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->this$0:Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getTableName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->columns:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "com.wssyncmldm:all_columns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->columns:[Ljava/lang/String;

    :goto_0
    iget-object v4, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->where:Ljava/lang/String;

    iget-object v5, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->whereArgs:[Ljava/lang/String;

    iget-object v6, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->groupBy:Ljava/lang/String;

    iget-object v7, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->having:Ljava/lang/String;

    iget-object v8, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->orderBy:Ljava/lang/String;

    iget-object v9, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->limit:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public limit(I)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/idm/fotaagent/database/sqlite/database/dao/Dao<",
            "TE;>.Query;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->limit:Ljava/lang/String;

    return-object p0
.end method

.method public orderBy(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/idm/fotaagent/database/sqlite/database/dao/Dao<",
            "TE;>.Query;"
        }
    .end annotation

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->orderBy:Ljava/lang/String;

    return-object p0
.end method

.method public where(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/idm/fotaagent/database/sqlite/database/dao/Dao<",
            "TE;>.Query;"
        }
    .end annotation

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->where:Ljava/lang/String;

    return-object p0
.end method

.method public whereArgs([Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/idm/fotaagent/database/sqlite/database/dao/Dao<",
            "TE;>.Query;"
        }
    .end annotation

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->whereArgs:[Ljava/lang/String;

    return-object p0
.end method
