.class Landroidx/fragment/app/FragmentManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# virtual methods
.method public final a(Landroidx/lifecycle/w;Landroidx/lifecycle/p;)V
    .locals 0

    sget-object p0, Landroidx/lifecycle/p;->ON_START:Landroidx/lifecycle/p;

    const/4 p1, 0x0

    if-eq p2, p0, :cond_1

    sget-object p0, Landroidx/lifecycle/p;->ON_DESTROY:Landroidx/lifecycle/p;

    if-eq p2, p0, :cond_0

    return-void

    :cond_0
    throw p1

    :cond_1
    throw p1
.end method
