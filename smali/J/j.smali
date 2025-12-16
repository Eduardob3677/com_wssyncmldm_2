.class public final LJ/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, LJ/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LJ/j;->c:Ljava/util/HashMap;

    iput-object p1, p0, LJ/j;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object p0, p0, LJ/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ/l;

    check-cast v0, Landroidx/fragment/app/S;

    iget-object v0, v0, Landroidx/fragment/app/S;->a:Landroidx/fragment/app/Z;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Z;->o(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Landroid/view/Menu;)V
    .locals 1

    iget-object p0, p0, LJ/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ/l;

    check-cast v0, Landroidx/fragment/app/S;

    iget-object v0, v0, Landroidx/fragment/app/S;->a:Landroidx/fragment/app/Z;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Z;->s(Landroid/view/Menu;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(LJ/l;)V
    .locals 2

    iget-object v0, p0, LJ/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, LJ/j;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJ/i;

    if-eqz p1, :cond_0

    iget-object v0, p1, LJ/i;->a:Landroidx/lifecycle/r;

    iget-object v1, p1, LJ/i;->b:Landroidx/lifecycle/u;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->b(Landroidx/lifecycle/v;)V

    const/4 v0, 0x0

    iput-object v0, p1, LJ/i;->b:Landroidx/lifecycle/u;

    :cond_0
    iget-object p0, p0, LJ/j;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
