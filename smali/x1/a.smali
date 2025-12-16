.class public final Lx1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/a;->a:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    return-void
.end method


# virtual methods
.method public final onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1

    iget-object p0, p0, Lx1/a;->a:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->k:Landroid/view/WindowInsetsAnimationController;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->l:Z

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->j:Landroid/os/CancellationSignal;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->k:Landroid/view/WindowInsetsAnimationController;

    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->j:Landroid/os/CancellationSignal;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->l:Z

    return-void
.end method

.method public final onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    iget-object p0, p0, Lx1/a;->a:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->k:Landroid/view/WindowInsetsAnimationController;

    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->j:Landroid/os/CancellationSignal;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->l:Z

    return-void
.end method

.method public final onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 0

    iget-object p0, p0, Lx1/a;->a:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
