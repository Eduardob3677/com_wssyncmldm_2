.class public final Lz0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteDatabase;


# static fields
.field public static final d:[Ljava/lang/String;


# instance fields
.field public final c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lz0/b;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lz0/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lz0/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public final c(Ly0/b;)Landroid/database/Cursor;
    .locals 3

    new-instance v0, Lz0/a;

    invoke-direct {v0, p1}, Lz0/a;-><init>(Ly0/b;)V

    invoke-interface {p1}, Ly0/b;->h()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lz0/b;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p0, p0, Lz0/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lz0/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lz0/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lz0/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public final f(Ljava/lang/String;)Lz0/g;
    .locals 1

    new-instance v0, Lz0/g;

    iget-object p0, p0, Lz0/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    invoke-direct {v0, p0}, Lz0/g;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    return-object v0
.end method

.method public final i(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    new-instance v0, Le/v;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Le/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lz0/b;->c(Ly0/b;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public final isOpen()Z
    .locals 0

    iget-object p0, p0, Lz0/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p0

    return p0
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Lz0/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p0

    return p0
.end method

.method public final k(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    iget-object p0, p0, Lz0/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 1

    new-instance v0, Le/v;

    invoke-direct {v0, p1, p2}, Le/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lz0/b;->c(Ly0/b;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
