.class public final synthetic Landroidx/fragment/app/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroidx/fragment/app/u0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/fragment/app/u0;I)V
    .locals 0

    iput p3, p0, Landroidx/fragment/app/t0;->c:I

    iput-object p1, p0, Landroidx/fragment/app/t0;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/t0;->e:Landroidx/fragment/app/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/t0;->c:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "$transitionInfo"

    iget-object v1, p0, Landroidx/fragment/app/t0;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/i;

    invoke-static {v0, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$operation"

    iget-object p0, p0, Landroidx/fragment/app/t0;->e:Landroidx/fragment/app/u0;

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/fragment/app/h;->a()V

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transition for operation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has completed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/t0;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/l;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/fragment/app/t0;->e:Landroidx/fragment/app/u0;

    const-string v1, "$operation"

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Landroidx/fragment/app/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroidx/fragment/app/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/fragment/app/t0;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/l;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/fragment/app/t0;->e:Landroidx/fragment/app/u0;

    const-string v1, "$operation"

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Landroidx/fragment/app/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/fragment/app/u0;->a:I

    iget-object p0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const-string v1, "operation.fragment.mView"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, p0}, LB/f;->a(ILandroid/view/View;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
