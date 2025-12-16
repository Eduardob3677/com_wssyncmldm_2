.class public final synthetic LJ/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:LJ/j;

.field public final synthetic b:Landroidx/lifecycle/q;

.field public final synthetic c:LJ/l;


# direct methods
.method public synthetic constructor <init>(LJ/j;Landroidx/lifecycle/q;LJ/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/g;->a:LJ/j;

    iput-object p2, p0, LJ/g;->b:Landroidx/lifecycle/q;

    iput-object p3, p0, LJ/g;->c:LJ/l;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/w;Landroidx/lifecycle/p;)V
    .locals 4

    iget-object p1, p0, LJ/g;->a:LJ/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/lifecycle/p;->Companion:Landroidx/lifecycle/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LJ/g;->b:Landroidx/lifecycle/q;

    invoke-static {v0}, Landroidx/lifecycle/n;->c(Landroidx/lifecycle/q;)Landroidx/lifecycle/p;

    move-result-object v1

    iget-object v2, p1, LJ/j;->a:Ljava/lang/Runnable;

    iget-object v3, p1, LJ/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, LJ/g;->c:LJ/l;

    if-ne p2, v1, :cond_0

    invoke-virtual {v3, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/p;->ON_DESTROY:Landroidx/lifecycle/p;

    if-ne p2, v1, :cond_1

    invoke-virtual {p1, p0}, LJ/j;->c(LJ/l;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/q;)Landroidx/lifecycle/p;

    move-result-object p1

    if-ne p2, p1, :cond_2

    invoke-virtual {v3, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method
