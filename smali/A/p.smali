.class public final synthetic LA/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;I)V
    .locals 0

    iput p3, p0, LA/p;->c:I

    iput-object p2, p0, LA/p;->e:Ljava/lang/Object;

    iput p1, p0, LA/p;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, LA/p;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA/p;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;

    iget p0, p0, LA/p;->d:I

    invoke-static {v0, p0}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->a(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, LA/p;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iget p0, p0, LA/p;->d:I

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u(Landroid/view/View;IZ)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, LA/p;->e:Ljava/lang/Object;

    check-cast v0, LA/b;

    iget p0, p0, LA/p;->d:I

    invoke-virtual {v0, p0}, LA/b;->h(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
