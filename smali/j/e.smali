.class public final Lj/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/u;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public c:Landroid/content/Context;

.field public d:Landroid/view/LayoutInflater;

.field public e:Lj/i;

.field public f:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public g:Lj/t;

.field public h:Lj/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/e;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lj/e;->d:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(Lj/i;Z)V
    .locals 0

    iget-object p0, p0, Lj/e;->g:Lj/t;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lj/t;->a(Lj/i;Z)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/content/Context;Lj/i;)V
    .locals 1

    iget-object v0, p0, Lj/e;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lj/e;->c:Landroid/content/Context;

    iget-object v0, p0, Lj/e;->d:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lj/e;->d:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Lj/e;->e:Lj/i;

    iget-object p0, p0, Lj/e;->h:Lj/d;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lj/d;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e(Lj/k;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lj/e;->h:Lj/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj/d;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final g(Lj/k;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h(Lj/A;)Z
    .locals 6

    invoke-virtual {p1}, Lj/i;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lj/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lj/j;->c:Lj/i;

    new-instance v1, Le/j;

    iget-object v2, p1, Lj/i;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Le/j;-><init>(Landroid/content/Context;)V

    new-instance v3, Lj/e;

    iget-object v4, v1, Le/j;->a:Le/g;

    iget-object v5, v4, Le/g;->a:Landroid/content/Context;

    invoke-direct {v3, v5}, Lj/e;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lj/j;->e:Lj/e;

    iput-object v0, v3, Lj/e;->g:Lj/t;

    invoke-virtual {p1, v3, v2}, Lj/i;->b(Lj/u;Landroid/content/Context;)V

    iget-object v2, v0, Lj/j;->e:Lj/e;

    iget-object v3, v2, Lj/e;->h:Lj/d;

    if-nez v3, :cond_1

    new-instance v3, Lj/d;

    invoke-direct {v3, v2}, Lj/d;-><init>(Lj/e;)V

    iput-object v3, v2, Lj/e;->h:Lj/d;

    :cond_1
    iget-object v2, v2, Lj/e;->h:Lj/d;

    iput-object v2, v4, Le/g;->o:Landroid/widget/ListAdapter;

    iput-object v0, v4, Le/g;->p:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p1, Lj/i;->o:Landroid/view/View;

    if-eqz v2, :cond_2

    iput-object v2, v4, Le/g;->e:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lj/i;->n:Landroid/graphics/drawable/Drawable;

    iput-object v2, v4, Le/g;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lj/i;->m:Ljava/lang/CharSequence;

    iput-object v2, v4, Le/g;->d:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v4, Le/g;->m:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1}, Le/j;->a()Le/k;

    move-result-object v1

    iput-object v1, v0, Lj/j;->d:Le/k;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Lj/j;->d:Le/k;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, Lj/j;->d:Le/k;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object p0, p0, Lj/e;->g:Lj/t;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lj/t;->b(Lj/i;)Z

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lj/e;->e:Lj/i;

    iget-object p2, p0, Lj/e;->h:Lj/d;

    invoke-virtual {p2, p3}, Lj/d;->b(I)Lj/k;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lj/i;->q(Landroid/view/MenuItem;Lj/u;I)Z

    return-void
.end method
