.class public abstract Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;,
        Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Getter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static synthetic a(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->lambda$getCount$1(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->merge(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->lambda$getCount$0(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->lambda$getEntity$2(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/idm/fotaagent/database/sqlite/database/dao/Dao<",
            "TE;>.Query;"
        }
    .end annotation

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, p0, p2, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;-><init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getColumnNameForId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=?"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->where(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->whereArgs([Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    move-result-object p0

    return-object p0
.end method

.method public static getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getCount$0(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getCount$1(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getEntity$2(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->createEntityFrom(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static varargs merge(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length p0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public abstract createContValuesFrom(Ljava/lang/Object;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method public abstract createEntityFrom(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TE;"
        }
    .end annotation
.end method

.method public deleteAllEntities()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getTableName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method public deleteEntity(J)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->deleteEntity(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public deleteEntity(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getTableName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getColumnNameForId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=?"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method public deleteTable()V
    .locals 3

    const-string v0, "DROP TABLE IF EXISTS "

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getTableName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public exists(J)Z
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->exists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getCount(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract getColumnNameForId()Ljava/lang/String;
.end method

.method public getCount()I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getColumnNameForId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, p0, v1, v3}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;-><init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/b;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/idm/fotaagent/database/sqlite/database/dao/b;-><init>(I)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getValue(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Getter;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getCount(J)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getCount(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getCount(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getColumnNameForId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, p0, v1, v3}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;-><init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getColumnNameForId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->where(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->whereArgs([Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    move-result-object p1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/b;-><init>(I)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getValue(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Getter;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method public getEntity()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.wssyncmldm:all_columns"

    invoke-direct {v0, p0, v2, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;-><init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getOrderBy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->orderBy(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getEntity(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getEntity(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/idm/fotaagent/database/sqlite/database/dao/Dao<",
            "TE;>.Query;TE;)TE;"
        }
    .end annotation

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/c;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/c;-><init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getValue(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Getter;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getEntity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.wssyncmldm:all_columns"

    invoke-direct {v0, p0, v2, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;-><init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getColumnNameForId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->where(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->whereArgs([Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->createQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    move-result-object p1

    new-instance p2, Lcom/idm/fotaagent/database/sqlite/database/dao/b;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/b;-><init>(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getValue(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Getter;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getIntNullable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->createQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    move-result-object p1

    new-instance p2, Lcom/idm/fotaagent/database/sqlite/database/dao/b;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/b;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getValue(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Getter;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->createQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    move-result-object p1

    new-instance p2, Lcom/idm/fotaagent/database/sqlite/database/dao/b;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/b;-><init>(I)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getValue(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Getter;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getOrderBy()Ljava/lang/String;
    .locals 0

    const-string p0, "rowid desc"

    return-object p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->createQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    move-result-object p1

    new-instance p2, Lcom/idm/fotaagent/database/sqlite/database/dao/b;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/b;-><init>(I)V

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getValue(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Getter;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStringNullable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->createQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    move-result-object p1

    new-instance p2, Lcom/idm/fotaagent/database/sqlite/database/dao/b;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/b;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getValue(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Getter;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public getValue(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Getter;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/idm/fotaagent/database/sqlite/database/dao/Dao<",
            "TE;>.Query;",
            "Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Getter<",
            "TT;>;ITT;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->execute()Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p0, p3}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Getter;->getAt(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p4

    :goto_1
    if-eqz p0, :cond_2

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return-object p4
.end method

.method public insertEntity(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)J"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->createContValuesFrom(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getTableName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public replaceEntity(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)J"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->createContValuesFrom(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getTableName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getTableName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getColumnNameForId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=?"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p2, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;J)I
    .locals 1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public updateEntity(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->createContValuesFrom(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getColumnNameForId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method
