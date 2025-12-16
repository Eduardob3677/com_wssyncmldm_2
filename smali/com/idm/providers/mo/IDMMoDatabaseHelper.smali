.class public Lcom/idm/providers/mo/IDMMoDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"

# interfaces
.implements Lcom/idm/providers/mo/IDMMoInterface;
.implements Lcom/idm/providers/mo/IDMMoDatabaseConstants;
.implements Lcom/idm/core/syncml/Constants;


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "idmsdk.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static instance:Lcom/idm/providers/mo/IDMMoDatabaseHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "idmsdk.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static synthetic g(Landroid/content/Context;)Lcom/idm/providers/mo/IDMMoDatabaseHelper;
    .locals 0

    invoke-static {p0}, Lcom/idm/providers/mo/IDMMoDatabaseHelper;->lambda$getInstance$0(Landroid/content/Context;)Lcom/idm/providers/mo/IDMMoDatabaseHelper;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/idm/providers/mo/IDMMoDatabaseHelper;
    .locals 4

    const-class v0, Lcom/idm/providers/mo/IDMMoDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/idm/providers/mo/IDMMoDatabaseHelper;->instance:Lcom/idm/providers/mo/IDMMoDatabaseHelper;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LG2/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, LG2/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/providers/mo/IDMMoDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private idmMoDatabaseCreateTableToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "CREATE TABLE IF NOT EXISTS \'"

    const-string v0, "\' (path TEXT NOT NULL PRIMARY KEY, name TEXT NOT NULL, acl TEXT, scope INTEGER  NOT NULL, format TEXT, type TEXT, depth INTEGER NOT NULL, value TEXT, largeobjsize INTEGER NOT NULL DEFAULT 0);"

    invoke-static {p0, p1, v0}, LB/f;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private idmMoDropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS xnode"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private idmMoInitTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/providers/mo/IDMMoDatabaseHelper;->idmMoMakeNodeRoot(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/idm/providers/mo/IDMMoDatabaseHelper;->makeNodeInbox(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private idmMoMakeNode(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string p0, "/"

    const-string v0, "Already Exist path : "

    const-string v1, "SELECT name FROM \'"

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "path"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "acl"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "scope"

    invoke-virtual {v2, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p4, "format"

    invoke-virtual {v2, p4, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "type"

    invoke-virtual {v2, p4, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "value"

    invoke-virtual {v2, p4, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "path = \'"

    const-string p5, "\'"

    invoke-static {p4, p3, p5}, LB/f;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :try_start_0
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, "\' WHERE "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 p6, 0x0

    invoke-virtual {p1, p4, p6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result p7

    if-lez p7, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p7

    array-length p8, p7

    add-int/lit8 p8, p8, -0x1

    aget-object p7, p7, p8

    const-string p8, "name"

    invoke-virtual {v2, p8, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    const-string p3, "depth"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-interface {p4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    if-eqz p4, :cond_1

    :try_start_3
    invoke-interface {p4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method private idmMoMakeNodeRoot(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "."

    const-string v4, "Get=*&Add=*"

    const/4 v5, 0x1

    const-string v6, "node"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/idm/providers/mo/IDMMoDatabaseHelper;->idmMoMakeNode(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$getInstance$0(Landroid/content/Context;)Lcom/idm/providers/mo/IDMMoDatabaseHelper;
    .locals 1

    new-instance v0, Lcom/idm/providers/mo/IDMMoDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/idm/providers/mo/IDMMoDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/idm/providers/mo/IDMMoDatabaseHelper;->instance:Lcom/idm/providers/mo/IDMMoDatabaseHelper;

    return-object v0
.end method

.method private makeNodeInbox(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 9

    const-string v7, "urn:oma:mo:oma-dm-inbox:1.0"

    const/4 v8, 0x0

    const-string v3, "./Inbox"

    const-string v4, "Add=*"

    const/4 v5, 0x1

    const-string v6, "node"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/idm/providers/mo/IDMMoDatabaseHelper;->idmMoMakeNode(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public idmMoCreateTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS xnode (server_id TEXT NOT NULL PRIMARY KEY, xdmacc TEXT NOT NULL, xcon TEXT, xaddr TEXT NOT NULL, xport TEXT, xclientaddr TEXT NOT NULL, xserveraddr TEXT NOT NULL, xfumo TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS xfumo (server_id TEXT NOT NULL PRIMARY KEY, xfumo TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public idmMoDatabaseCreate(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseHelper;->idmMoDatabaseCreateTableToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/idm/providers/mo/IDMMoDatabaseHelper;->idmMoInitTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public idmMoDatabaseCreate(Ljava/util/ArrayList;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/idm/providers/mo/IDMMoDatabaseHelper;->idmMoDatabaseCreateTableToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/idm/providers/mo/IDMMoDatabaseHelper;->idmMoInitTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :goto_1
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public idmMoDatabaseDelete(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    const-string p0, "DROP TABLE IF EXISTS \'"

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public idmMoDatabaseDelete(Ljava/util/ArrayList;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :goto_1
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "Create database. version: 1"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseHelper;->idmMoCreateTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "oldVersion : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", newVersion : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseHelper;->idmMoDropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
