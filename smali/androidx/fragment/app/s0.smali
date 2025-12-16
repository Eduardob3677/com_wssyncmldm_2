.class public final Landroidx/fragment/app/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/l;
.implements Lx0/f;
.implements Landroidx/lifecycle/d0;


# instance fields
.field public final c:Landroidx/fragment/app/Fragment;

.field public final d:Landroidx/lifecycle/c0;

.field public final e:Ljava/lang/Runnable;

.field public f:Landroidx/lifecycle/y;

.field public g:Lx0/e;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/c0;Landroidx/fragment/app/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/s0;->f:Landroidx/lifecycle/y;

    iput-object v0, p0, Landroidx/fragment/app/s0;->g:Lx0/e;

    iput-object p1, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/s0;->d:Landroidx/lifecycle/c0;

    iput-object p3, p0, Landroidx/fragment/app/s0;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/p;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/s0;->f:Landroidx/lifecycle/y;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/p;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/s0;->f:Landroidx/lifecycle/y;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/y;

    invoke-direct {v0, p0}, Landroidx/lifecycle/y;-><init>(Landroidx/lifecycle/w;)V

    iput-object v0, p0, Landroidx/fragment/app/s0;->f:Landroidx/lifecycle/y;

    new-instance v0, Lx0/e;

    invoke-direct {v0, p0}, Lx0/e;-><init>(Lx0/f;)V

    iput-object v0, p0, Landroidx/fragment/app/s0;->g:Lx0/e;

    invoke-virtual {v0}, Lx0/e;->a()V

    iget-object p0, p0, Landroidx/fragment/app/s0;->e:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final getDefaultViewModelCreationExtras()Lb0/b;
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Lb0/c;

    invoke-direct {v2}, Lb0/c;-><init>()V

    iget-object v3, v2, Lb0/b;->a:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_2

    sget-object v4, Landroidx/lifecycle/Z;->c:Landroidx/lifecycle/Z;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v1, Landroidx/lifecycle/S;->a:Landroidx/lifecycle/Z;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroidx/lifecycle/S;->b:Landroidx/lifecycle/Z;

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p0, Landroidx/lifecycle/S;->c:Landroidx/lifecycle/Z;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v2
.end method

.method public final getLifecycle()Landroidx/lifecycle/r;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/s0;->b()V

    iget-object p0, p0, Landroidx/fragment/app/s0;->f:Landroidx/lifecycle/y;

    return-object p0
.end method

.method public final getSavedStateRegistry()Lx0/d;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/s0;->b()V

    iget-object p0, p0, Landroidx/fragment/app/s0;->g:Lx0/e;

    iget-object p0, p0, Lx0/e;->b:Lx0/d;

    return-object p0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/c0;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/s0;->b()V

    iget-object p0, p0, Landroidx/fragment/app/s0;->d:Landroidx/lifecycle/c0;

    return-object p0
.end method
