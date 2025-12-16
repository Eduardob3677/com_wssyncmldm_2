.class public Landroidx/activity/l;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/w;
.implements Landroidx/activity/w;
.implements Lx0/f;


# instance fields
.field public c:Landroidx/lifecycle/y;

.field public final d:Lx0/e;

.field public final e:Landroidx/activity/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lx0/e;

    invoke-direct {p1, p0}, Lx0/e;-><init>(Lx0/f;)V

    iput-object p1, p0, Landroidx/activity/l;->d:Lx0/e;

    new-instance p1, Landroidx/activity/v;

    new-instance p2, LD1/b;

    const/16 v0, 0x9

    invoke-direct {p2, v0, p0}, LD1/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p2}, Landroidx/activity/v;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Landroidx/activity/l;->e:Landroidx/activity/v;

    return-void
.end method

.method public static a(Landroidx/activity/l;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/activity/l;->c()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()Landroidx/lifecycle/y;
    .locals 1

    iget-object v0, p0, Landroidx/activity/l;->c:Landroidx/lifecycle/y;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/y;

    invoke-direct {v0, p0}, Landroidx/lifecycle/y;-><init>(Landroidx/lifecycle/w;)V

    iput-object v0, p0, Landroidx/activity/l;->c:Landroidx/lifecycle/y;

    :cond_0
    return-object v0
.end method

.method public final c()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window!!.decorView"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, p0}, Landroidx/lifecycle/S;->h(Landroid/view/View;Landroidx/lifecycle/w;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v2, 0x7f0a02b5

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lp0/a;->r(Landroid/view/View;Lx0/f;)V

    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/r;
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/l;->b()Landroidx/lifecycle/y;

    move-result-object p0

    return-object p0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/v;
    .locals 0

    iget-object p0, p0, Landroidx/activity/l;->e:Landroidx/activity/v;

    return-object p0
.end method

.method public final getSavedStateRegistry()Lx0/d;
    .locals 0

    iget-object p0, p0, Landroidx/activity/l;->d:Lx0/e;

    iget-object p0, p0, Lx0/e;->b:Lx0/d;

    return-object p0
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/l;->e:Landroidx/activity/v;

    invoke-virtual {p0}, Landroidx/activity/v;->b()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    const-string v1, "onBackInvokedDispatcher"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/activity/l;->e:Landroidx/activity/v;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v1, Landroidx/activity/v;->e:Landroid/window/OnBackInvokedDispatcher;

    iget-boolean v0, v1, Landroidx/activity/v;->g:Z

    invoke-virtual {v1, v0}, Landroidx/activity/v;->c(Z)V

    iget-object v0, p0, Landroidx/activity/l;->d:Lx0/e;

    invoke-virtual {v0, p1}, Lx0/e;->b(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/activity/l;->b()Landroidx/lifecycle/y;

    move-result-object p0

    sget-object p1, Landroidx/lifecycle/p;->ON_CREATE:Landroidx/lifecycle/p;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/p;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "super.onSaveInstanceState()"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/activity/l;->d:Lx0/e;

    invoke-virtual {p0, v0}, Lx0/e;->c(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Landroidx/activity/l;->b()Landroidx/lifecycle/y;

    move-result-object p0

    sget-object v0, Landroidx/lifecycle/p;->ON_RESUME:Landroidx/lifecycle/p;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/p;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Landroidx/activity/l;->b()Landroidx/lifecycle/y;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/p;->ON_DESTROY:Landroidx/lifecycle/p;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/p;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/l;->c:Landroidx/lifecycle/y;

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/l;->c()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/activity/l;->c()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/activity/l;->c()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
