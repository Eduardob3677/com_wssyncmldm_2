.class public final Landroidx/databinding/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/G;
.implements Landroidx/databinding/m;


# instance fields
.field public final a:Landroidx/databinding/w;

.field public b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/databinding/v;ILjava/lang/ref/ReferenceQueue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/databinding/r;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroidx/databinding/w;

    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/databinding/w;-><init>(Landroidx/databinding/v;ILandroidx/databinding/m;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Landroidx/databinding/r;->a:Landroidx/databinding/w;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/lifecycle/C;

    iget-object v0, p0, Landroidx/databinding/r;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/w;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/C;->e(Landroidx/lifecycle/w;Landroidx/lifecycle/G;)V

    :cond_1
    return-void
.end method

.method public final b(Landroidx/lifecycle/w;)V
    .locals 2

    iget-object v0, p0, Landroidx/databinding/r;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/w;

    :goto_0
    iget-object v1, p0, Landroidx/databinding/r;->a:Landroidx/databinding/w;

    iget-object v1, v1, Landroidx/databinding/w;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/C;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v1, p0}, Landroidx/lifecycle/C;->j(Landroidx/lifecycle/G;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v1, p1, p0}, Landroidx/lifecycle/C;->e(Landroidx/lifecycle/w;Landroidx/lifecycle/G;)V

    :cond_2
    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/databinding/r;->b:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Landroidx/databinding/r;->a:Landroidx/databinding/w;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/databinding/v;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/databinding/w;->a()Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/databinding/w;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iget p0, p0, Landroidx/databinding/w;->b:I

    invoke-virtual {p1, p0, v0, v1}, Landroidx/databinding/v;->handleFieldChange(ILjava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/lifecycle/C;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/C;->j(Landroidx/lifecycle/G;)V

    return-void
.end method
