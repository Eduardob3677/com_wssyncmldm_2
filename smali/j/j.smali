.class public final Lj/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lj/t;


# instance fields
.field public c:Lj/i;

.field public d:Le/k;

.field public e:Lj/e;


# virtual methods
.method public final a(Lj/i;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Lj/j;->c:Lj/i;

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p0, p0, Lj/j;->d:Le/k;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Le/k;->dismiss()V

    :cond_1
    return-void
.end method

.method public final b(Lj/i;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lj/j;->e:Lj/e;

    iget-object v0, p1, Lj/e;->h:Lj/d;

    if-nez v0, :cond_0

    new-instance v0, Lj/d;

    invoke-direct {v0, p1}, Lj/d;-><init>(Lj/e;)V

    iput-object v0, p1, Lj/e;->h:Lj/d;

    :cond_0
    iget-object p1, p1, Lj/e;->h:Lj/d;

    invoke-virtual {p1, p2}, Lj/d;->b(I)Lj/k;

    move-result-object p1

    iget-object p0, p0, Lj/j;->c:Lj/i;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lj/i;->q(Landroid/view/MenuItem;Lj/u;I)Z

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lj/j;->e:Lj/e;

    iget-object p0, p0, Lj/j;->c:Lj/i;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lj/e;->a(Lj/i;Z)V

    return-void
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x52

    iget-object v1, p0, Lj/j;->c:Lj/i;

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lj/j;->d:Le/k;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v2

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lj/j;->d:Le/k;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1, v2}, Lj/i;->c(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v2

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v1, p2, p3, p0}, Lj/i;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0
.end method
