.class Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/B;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/B;",
        "Landroidx/lifecycle/u;"
    }
.end annotation


# instance fields
.field public final e:Landroidx/lifecycle/w;

.field public final synthetic f:Landroidx/lifecycle/C;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/C;Landroidx/lifecycle/w;Landroidx/lifecycle/G;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/C;

    invoke-direct {p0, p1, p3}, Landroidx/lifecycle/B;-><init>(Landroidx/lifecycle/C;Landroidx/lifecycle/G;)V

    iput-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/w;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/w;Landroidx/lifecycle/p;)V
    .locals 2

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/w;

    invoke-interface {p1}, Landroidx/lifecycle/w;->getLifecycle()Landroidx/lifecycle/r;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/y;

    iget-object p2, p2, Landroidx/lifecycle/y;->c:Landroidx/lifecycle/q;

    sget-object v0, Landroidx/lifecycle/q;->c:Landroidx/lifecycle/q;

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/C;

    iget-object p0, p0, Landroidx/lifecycle/B;->a:Landroidx/lifecycle/G;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/C;->j(Landroidx/lifecycle/G;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p2, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/B;->b(Z)V

    invoke-interface {p1}, Landroidx/lifecycle/w;->getLifecycle()Landroidx/lifecycle/r;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/y;

    iget-object v0, v0, Landroidx/lifecycle/y;->c:Landroidx/lifecycle/q;

    move-object v1, v0

    move-object v0, p2

    move-object p2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/w;

    invoke-interface {v0}, Landroidx/lifecycle/w;->getLifecycle()Landroidx/lifecycle/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/r;->b(Landroidx/lifecycle/v;)V

    return-void
.end method

.method public final d(Landroidx/lifecycle/w;)Z
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/w;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e()Z
    .locals 1

    iget-object p0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/w;

    invoke-interface {p0}, Landroidx/lifecycle/w;->getLifecycle()Landroidx/lifecycle/r;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/y;

    iget-object p0, p0, Landroidx/lifecycle/y;->c:Landroidx/lifecycle/q;

    sget-object v0, Landroidx/lifecycle/q;->f:Landroidx/lifecycle/q;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/q;)Z

    move-result p0

    return p0
.end method
