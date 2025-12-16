.class public final Lj/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public final a:Landroid/view/ActionProvider;

.field public final synthetic b:Lj/p;

.field public c:Lc1/w;


# direct methods
.method public constructor <init>(Lj/p;Landroid/view/ActionProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/l;->b:Lj/p;

    iput-object p2, p0, Lj/l;->a:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lj/l;->a:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result p0

    return p0
.end method

.method public final b(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lj/l;->a:Landroid/view/ActionProvider;

    invoke-virtual {p0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lj/l;->a:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result p0

    return p0
.end method

.method public final d(Lc1/w;)V
    .locals 0

    iput-object p1, p0, Lj/l;->c:Lc1/w;

    iget-object p1, p0, Lj/l;->a:Landroid/view/ActionProvider;

    invoke-virtual {p1, p0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public final onActionProviderVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lj/l;->c:Lc1/w;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lc1/w;->c:Ljava/lang/Object;

    check-cast p0, Lj/k;

    iget-object p0, p0, Lj/k;->n:Lj/i;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj/i;->h:Z

    invoke-virtual {p0, p1}, Lj/i;->p(Z)V

    :cond_0
    return-void
.end method
