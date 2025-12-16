.class public final Landroidx/room/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public d:Lh0/d;

.field public e:LP1/e;

.field public f:Z

.field public final g:Landroidx/room/i;

.field public h:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/h;->c:Landroid/content/Context;

    iput-object p2, p0, Landroidx/room/h;->a:Ljava/lang/Class;

    iput-object p3, p0, Landroidx/room/h;->b:Ljava/lang/String;

    new-instance p1, Landroidx/room/i;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lo/l;

    invoke-direct {p2}, Lo/l;-><init>()V

    iput-object p2, p1, Landroidx/room/i;->a:Lo/l;

    iput-object p1, p0, Landroidx/room/h;->g:Landroidx/room/i;

    return-void
.end method


# virtual methods
.method public final varargs a([Lv0/a;)V
    .locals 8

    iget-object v0, p0, Landroidx/room/h;->h:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/h;->h:Ljava/util/HashSet;

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, Landroidx/room/h;->h:Ljava/util/HashSet;

    iget v5, v3, Lv0/a;->startVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroidx/room/h;->h:Ljava/util/HashSet;

    iget v3, v3, Lv0/a;->endVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/room/h;->g:Landroidx/room/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    iget v3, v2, Lv0/a;->startVersion:I

    iget v4, v2, Lv0/a;->endVersion:I

    iget-object v5, p0, Landroidx/room/i;->a:Lo/l;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Lo/l;->c(Ljava/lang/Integer;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/l;

    if-nez v7, :cond_2

    new-instance v7, Lo/l;

    invoke-direct {v7}, Lo/l;-><init>()V

    invoke-virtual {v5, v3, v7}, Lo/l;->e(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v7, v6, v4}, Lo/l;->c(Ljava/lang/Integer;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv0/a;

    if-eqz v3, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Overriding migration "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ROOM"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v7, v4, v2}, Lo/l;->a(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final b()Landroidx/room/j;
    .locals 10

    iget-object v1, p0, Landroidx/room/h;->c:Landroid/content/Context;

    if-eqz v1, :cond_6

    iget-object v8, p0, Landroidx/room/h;->a:Ljava/lang/Class;

    if-eqz v8, :cond_5

    iget-object v0, p0, Landroidx/room/h;->d:Lh0/d;

    if-nez v0, :cond_0

    sget-object v0, Ll/a;->h:Lh0/d;

    iput-object v0, p0, Landroidx/room/h;->d:Lh0/d;

    :cond_0
    iget-object v0, p0, Landroidx/room/h;->e:LP1/e;

    if-nez v0, :cond_1

    new-instance v0, LP1/e;

    const/16 v2, 0x12

    invoke-direct {v0, v2}, LP1/e;-><init>(I)V

    iput-object v0, p0, Landroidx/room/h;->e:LP1/e;

    :cond_1
    new-instance v9, Landroidx/room/a;

    iget-object v3, p0, Landroidx/room/h;->e:LP1/e;

    iget-boolean v5, p0, Landroidx/room/h;->f:Z

    const-string v0, "activity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :goto_1
    iget-object v7, p0, Landroidx/room/h;->d:Lh0/d;

    iget-object v2, p0, Landroidx/room/h;->b:Ljava/lang/String;

    iget-object v4, p0, Landroidx/room/h;->g:Landroidx/room/i;

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Landroidx/room/a;-><init>(Landroid/content/Context;Ljava/lang/String;LP1/e;Landroidx/room/i;ZILjava/util/concurrent/Executor;)V

    invoke-virtual {v8}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_Impl"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p0, v0

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p0, Landroidx/room/j;

    invoke-virtual {p0, v9}, Landroidx/room/j;->init(Landroidx/room/a;)V

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create an instance of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot access the constructor"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot find implementation for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not exist"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot provide null context for the database."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
