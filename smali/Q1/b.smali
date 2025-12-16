.class public final synthetic LQ1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK/r;


# instance fields
.field public final synthetic c:Lcom/google/android/material/sidesheet/SideSheetBehavior;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ1/b;->c:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iput p2, p0, LQ1/b;->d:I

    return-void
.end method


# virtual methods
.method public final i(Landroid/view/View;)Z
    .locals 3

    const/4 p1, 0x1

    iget-object v0, p0, LQ1/b;->c:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, LQ1/b;->d:I

    if-eq p0, p1, :cond_4

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, LA/p;

    invoke-direct {v2, p0, v0, p1}, LA/p;-><init>(ILjava/lang/Object;I)V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, LA/p;->run()V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s(I)V

    :goto_1
    return p1

    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STATE_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p0, p1, :cond_5

    const-string p0, "DRAGGING"

    goto :goto_3

    :cond_5
    const-string p0, "SETTLING"

    :goto_3
    const-string p1, " should not be set externally."

    invoke-static {v1, p0, p1}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
