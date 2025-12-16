.class public final LC0/D;
.super LC0/u;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:LC0/j;


# direct methods
.method public constructor <init>(LC0/j;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC0/D;->d:LC0/j;

    iput-object p2, p0, LC0/D;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, LC0/D;->b:Landroid/view/View;

    iput-object p4, p0, LC0/D;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, LC0/D;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object p0, p0, LC0/D;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public final c(LC0/t;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, LC0/D;->c:Landroid/view/View;

    const v2, 0x7f0a01cb

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, LC0/D;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, LC0/D;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    invoke-virtual {p1, p0}, LC0/t;->w(LC0/s;)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, LC0/D;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p0, p0, LC0/D;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, LC0/D;->d:LC0/j;

    invoke-virtual {p0}, LC0/t;->d()V

    :goto_0
    return-void
.end method
