.class public final Lj/b;
.super Lk/o0;
.source "SourceFile"


# instance fields
.field public final synthetic l:Landroidx/appcompat/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 0

    iput-object p1, p0, Lj/b;->l:Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-direct {p0, p1}, Lk/o0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lj/y;
    .locals 1

    iget-object p0, p0, Lj/b;->l:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object p0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->o:Lj/c;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p0, Lk/g;

    iget-object p0, p0, Lk/g;->a:Lk/k;

    iget-object p0, p0, Lk/k;->v:Lk/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj/s;->a()Lj/z;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lj/b;->l:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->m:Lj/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->j:Lj/k;

    invoke-interface {v1, v0}, Lj/h;->b(Lj/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj/b;->b()Lj/y;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lj/z;

    invoke-virtual {p0}, Lj/z;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
