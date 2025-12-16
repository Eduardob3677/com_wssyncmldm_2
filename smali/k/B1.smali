.class public final Lk/B1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/n;
.implements Lj/g;


# instance fields
.field public final synthetic c:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lk/B1;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lj/i;)V
    .locals 1

    iget-object p0, p0, Lk/B1;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk/k;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->I:LJ/j;

    invoke-virtual {v0, p1}, LJ/j;->b(Landroid/view/Menu;)V

    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->R:Lj/g;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lj/g;->c(Lj/i;)V

    :cond_1
    return-void
.end method

.method public d(Lj/i;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lk/B1;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->R:Lj/g;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lj/g;->d(Lj/i;Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
