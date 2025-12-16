.class public final Lk/B0;
.super Lk/x0;
.source "SourceFile"

# interfaces
.implements Lk/y0;


# virtual methods
.method public final a(Lj/i;Lj/k;)V
    .locals 0

    return-void
.end method

.method public final f(Lj/i;Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method public final p(Landroid/content/Context;Z)Lk/l0;
    .locals 1

    new-instance v0, Lk/A0;

    invoke-direct {v0, p1, p2}, Lk/A0;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Lk/A0;->setHoverListener(Lk/y0;)V

    return-object v0
.end method
