.class public Landroidx/room/Room;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static inMemoryDatabaseBuilder(Landroid/content/Context;Ljava/lang/Class;)Landroidx/room/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/room/j;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroidx/room/h;"
        }
    .end annotation

    new-instance v0, Landroidx/room/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/room/h;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method
