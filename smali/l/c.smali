.class public final Ll/c;
.super LL2/b;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/Object;

.field public final g:Ljava/util/concurrent/ExecutorService;

.field public volatile h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ll/c;->f:Ljava/lang/Object;

    new-instance v0, Ll/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll/b;-><init>(I)V

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ll/c;->g:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
