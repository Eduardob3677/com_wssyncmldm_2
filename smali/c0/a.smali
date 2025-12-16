.class public abstract Lc0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/lifecycle/w;)Lc0/c;
    .locals 2

    new-instance v0, Lc0/c;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/d0;

    invoke-interface {v1}, Landroidx/lifecycle/d0;->getViewModelStore()Landroidx/lifecycle/c0;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc0/c;-><init>(Landroidx/lifecycle/w;Landroidx/lifecycle/c0;)V

    return-object v0
.end method
