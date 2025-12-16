.class public final synthetic Landroidx/fragment/app/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroidx/fragment/app/u0;

.field public final synthetic d:Landroidx/fragment/app/u0;

.field public final synthetic e:Z

.field public final synthetic f:Lo/b;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;ZLo/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/f;->c:Landroidx/fragment/app/u0;

    iput-object p2, p0, Landroidx/fragment/app/f;->d:Landroidx/fragment/app/u0;

    iput-boolean p3, p0, Landroidx/fragment/app/f;->e:Z

    iput-object p4, p0, Landroidx/fragment/app/f;->f:Lo/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "$lastInViews"

    iget-object v1, p0, Landroidx/fragment/app/f;->f:Lo/b;

    invoke-static {v0, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/fragment/app/f;->c:Landroidx/fragment/app/u0;

    iget-object v0, v0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/f;->d:Landroidx/fragment/app/u0;

    iget-object v1, v1, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    sget-object v2, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/p0;

    const-string v2, "inFragment"

    invoke-static {v2, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "outFragment"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, p0, Landroidx/fragment/app/f;->e:Z

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ly/B;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ly/B;

    :goto_0
    return-void
.end method
