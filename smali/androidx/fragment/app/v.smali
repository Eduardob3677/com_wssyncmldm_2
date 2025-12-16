.class public final Landroidx/fragment/app/v;
.super Landroidx/fragment/app/A;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Lx0/e;

    invoke-virtual {v0}, Lx0/e;->a()V

    invoke-static {p0}, Landroidx/lifecycle/S;->e(Lx0/f;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "registryState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Lx0/e;

    invoke-virtual {p0, v0}, Lx0/e;->b(Landroid/os/Bundle;)V

    return-void
.end method
