.class public final Landroidx/lifecycle/E;
.super Landroidx/lifecycle/F;
.source "SourceFile"


# instance fields
.field public l:Lm/f;


# virtual methods
.method public final g()V
    .locals 2

    iget-object p0, p0, Landroidx/lifecycle/E;->l:Lm/f;

    invoke-virtual {p0}, Lm/f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v0, p0

    check-cast v0, Lm/b;

    invoke-virtual {v0}, Lm/b;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lm/b;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/D;

    iget-object v1, v0, Landroidx/lifecycle/D;->a:Landroidx/lifecycle/C;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/C;->f(Landroidx/lifecycle/G;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    iget-object p0, p0, Landroidx/lifecycle/E;->l:Lm/f;

    invoke-virtual {p0}, Lm/f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v0, p0

    check-cast v0, Lm/b;

    invoke-virtual {v0}, Lm/b;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lm/b;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/D;

    iget-object v1, v0, Landroidx/lifecycle/D;->a:Landroidx/lifecycle/C;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/C;->j(Landroidx/lifecycle/G;)V

    goto :goto_0

    :cond_0
    return-void
.end method
