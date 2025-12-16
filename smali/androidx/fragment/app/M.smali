.class public final Landroidx/fragment/app/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic c:Landroidx/fragment/app/g0;

.field public final synthetic d:Landroidx/fragment/app/N;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/N;Landroidx/fragment/app/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/M;->d:Landroidx/fragment/app/N;

    iput-object p2, p0, Landroidx/fragment/app/M;->c:Landroidx/fragment/app/g0;

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/M;->c:Landroidx/fragment/app/g0;

    iget-object v0, p1, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/g0;->k()V

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Landroidx/fragment/app/M;->d:Landroidx/fragment/app/N;

    iget-object p0, p0, Landroidx/fragment/app/N;->c:Landroidx/fragment/app/Z;

    invoke-static {p1, p0}, Landroidx/fragment/app/l;->l(Landroid/view/ViewGroup;Landroidx/fragment/app/Z;)Landroidx/fragment/app/l;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/l;->k()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
