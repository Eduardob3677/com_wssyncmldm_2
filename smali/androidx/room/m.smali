.class public abstract Landroidx/room/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDatabase:Landroidx/room/j;

.field private final mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mStmt:Ly0/c;


# direct methods
.method public constructor <init>(Landroidx/room/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/m;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Landroidx/room/m;->mDatabase:Landroidx/room/j;

    return-void
.end method


# virtual methods
.method public acquire()Ly0/c;
    .locals 3

    invoke-virtual {p0}, Landroidx/room/m;->assertNotMainThread()V

    iget-object v0, p0, Landroidx/room/m;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/room/m;->mStmt:Ly0/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/room/m;->createQuery()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/m;->mDatabase:Landroidx/room/j;

    invoke-virtual {v1, v0}, Landroidx/room/j;->compileStatement(Ljava/lang/String;)Ly0/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/m;->mStmt:Ly0/c;

    :cond_0
    iget-object p0, p0, Landroidx/room/m;->mStmt:Ly0/c;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/room/m;->createQuery()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/room/m;->mDatabase:Landroidx/room/j;

    invoke-virtual {p0, v0}, Landroidx/room/j;->compileStatement(Ljava/lang/String;)Ly0/c;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public assertNotMainThread()V
    .locals 0

    iget-object p0, p0, Landroidx/room/m;->mDatabase:Landroidx/room/j;

    invoke-virtual {p0}, Landroidx/room/j;->assertNotMainThread()V

    return-void
.end method

.method public abstract createQuery()Ljava/lang/String;
.end method

.method public release(Ly0/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/room/m;->mStmt:Ly0/c;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroidx/room/m;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
