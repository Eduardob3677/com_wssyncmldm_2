.class public final Landroidx/lifecycle/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/q;

.field public b:Landroidx/lifecycle/u;


# virtual methods
.method public final a(Landroidx/lifecycle/w;Landroidx/lifecycle/p;)V
    .locals 3

    invoke-virtual {p2}, Landroidx/lifecycle/p;->a()Landroidx/lifecycle/q;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/q;

    const-string v2, "state1"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_0

    move-object v1, v0

    :cond_0
    iput-object v1, p0, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/q;

    iget-object v1, p0, Landroidx/lifecycle/x;->b:Landroidx/lifecycle/u;

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/u;->a(Landroidx/lifecycle/w;Landroidx/lifecycle/p;)V

    iput-object v0, p0, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/q;

    return-void
.end method
