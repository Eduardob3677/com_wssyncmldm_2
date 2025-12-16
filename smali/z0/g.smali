.class public final Lz0/g;
.super Lz0/f;
.source "SourceFile"

# interfaces
.implements Ly0/c;


# instance fields
.field public final d:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    invoke-direct {p0, p1}, Lz0/f;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    iput-object p1, p0, Lz0/g;->d:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method
