.class public final Landroidx/fragment/app/q;
.super Landroidx/fragment/app/J;
.source "SourceFile"


# instance fields
.field public final synthetic c:Landroidx/fragment/app/J;

.field public final synthetic d:Landroidx/fragment/app/r;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/r;Landroidx/fragment/app/J;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/q;->d:Landroidx/fragment/app/r;

    iput-object p2, p0, Landroidx/fragment/app/q;->c:Landroidx/fragment/app/J;

    return-void
.end method


# virtual methods
.method public final b(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/q;->c:Landroidx/fragment/app/J;

    invoke-virtual {v0}, Landroidx/fragment/app/J;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/J;->b(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/q;->d:Landroidx/fragment/app/r;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/r;->onFindViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/q;->c:Landroidx/fragment/app/J;

    invoke-virtual {v0}, Landroidx/fragment/app/J;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/q;->d:Landroidx/fragment/app/r;

    invoke-virtual {p0}, Landroidx/fragment/app/r;->onHasView()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
