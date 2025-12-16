.class public final synthetic Landroidx/fragment/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/l;Landroid/view/View;Landroidx/fragment/app/g;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/fragment/app/d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/d;->f:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/d;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/d;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Landroidx/fragment/app/d;->c:I

    iput-object p1, p0, Landroidx/fragment/app/d;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/d;->e:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/d;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/d;->c:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "this$0"

    iget-object v1, p0, Landroidx/fragment/app/d;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/l;

    invoke-static {v0, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$animationInfo"

    iget-object v2, p0, Landroidx/fragment/app/d;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/g;

    invoke-static {v0, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Landroidx/fragment/app/l;->a:Landroid/view/ViewGroup;

    iget-object p0, p0, Landroidx/fragment/app/d;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    invoke-virtual {v2}, Landroidx/fragment/app/h;->a()V

    return-void

    :pswitch_0
    const-string v0, "$impl"

    iget-object v1, p0, Landroidx/fragment/app/d;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/r0;

    invoke-static {v0, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->f:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    const-string v1, "$lastInEpicenterRect"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/fragment/app/d;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/fragment/app/r0;->g(Landroid/graphics/Rect;Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/fragment/app/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const-string v1, "$awaitingContainerChanges"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/fragment/app/d;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/u0;

    const-string v2, "$operation"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "this$0"

    iget-object p0, p0, Landroidx/fragment/app/d;->f:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/l;

    invoke-static {v2, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, v1, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v0, v1, Landroidx/fragment/app/u0;->a:I

    const-string v1, "view"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, p0}, LB/f;->a(ILandroid/view/View;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
