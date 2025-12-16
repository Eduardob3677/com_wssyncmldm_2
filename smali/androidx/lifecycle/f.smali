.class public final Landroidx/lifecycle/f;
.super Landroidx/lifecycle/C;
.source "SourceFile"


# instance fields
.field public final synthetic l:Landroidx/lifecycle/g;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/g;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/f;->l:Landroidx/lifecycle/g;

    invoke-direct {p0}, Landroidx/lifecycle/C;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 1

    iget-object p0, p0, Landroidx/lifecycle/f;->l:Landroidx/lifecycle/g;

    invoke-virtual {p0}, Landroidx/lifecycle/g;->getExecutor$lifecycle_livedata_release()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Landroidx/lifecycle/g;->refreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
