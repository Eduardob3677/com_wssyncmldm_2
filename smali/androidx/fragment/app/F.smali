.class public final Landroidx/fragment/app/F;
.super Landroidx/fragment/app/L;
.source "SourceFile"

# interfaces
.implements Lz/e;
.implements Lz/f;
.implements Ly/y;
.implements Ly/z;
.implements Landroidx/lifecycle/d0;
.implements Landroidx/activity/w;
.implements Landroidx/activity/result/i;
.implements Lx0/f;
.implements Landroidx/fragment/app/d0;
.implements LJ/f;


# instance fields
.field public final synthetic g:Landroidx/fragment/app/G;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/G;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-direct {p0, p1}, Landroidx/fragment/app/L;-><init>(Landroidx/fragment/app/G;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/G;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final addMenuProvider(LJ/l;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->addMenuProvider(LJ/l;)V

    return-void
.end method

.method public final addOnConfigurationChangedListener(LI/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->addOnConfigurationChangedListener(LI/a;)V

    return-void
.end method

.method public final addOnMultiWindowModeChangedListener(LI/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->addOnMultiWindowModeChangedListener(LI/a;)V

    return-void
.end method

.method public final addOnPictureInPictureModeChangedListener(LI/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->addOnPictureInPictureModeChangedListener(LI/a;)V

    return-void
.end method

.method public final addOnTrimMemoryListener(LI/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->addOnTrimMemoryListener(LI/a;)V

    return-void
.end method

.method public final b(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getActivityResultRegistry()Landroidx/activity/result/h;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/h;

    move-result-object p0

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/r;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    iget-object p0, p0, Landroidx/fragment/app/G;->mFragmentLifecycleRegistry:Landroidx/lifecycle/y;

    return-object p0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/v;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/v;

    move-result-object p0

    return-object p0
.end method

.method public final getSavedStateRegistry()Lx0/d;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Lx0/d;

    move-result-object p0

    return-object p0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/c0;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/c0;

    move-result-object p0

    return-object p0
.end method

.method public final removeMenuProvider(LJ/l;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->removeMenuProvider(LJ/l;)V

    return-void
.end method

.method public final removeOnConfigurationChangedListener(LI/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->removeOnConfigurationChangedListener(LI/a;)V

    return-void
.end method

.method public final removeOnMultiWindowModeChangedListener(LI/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->removeOnMultiWindowModeChangedListener(LI/a;)V

    return-void
.end method

.method public final removeOnPictureInPictureModeChangedListener(LI/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->removeOnPictureInPictureModeChangedListener(LI/a;)V

    return-void
.end method

.method public final removeOnTrimMemoryListener(LI/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->removeOnTrimMemoryListener(LI/a;)V

    return-void
.end method
