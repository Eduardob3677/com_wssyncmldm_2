.class public final synthetic Landroidx/fragment/app/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF/e;


# instance fields
.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroidx/fragment/app/l;

.field public final synthetic e:Landroidx/fragment/app/g;

.field public final synthetic f:Landroidx/fragment/app/u0;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroidx/fragment/app/g;Landroidx/fragment/app/l;Landroidx/fragment/app/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/e;->c:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/e;->d:Landroidx/fragment/app/l;

    iput-object p2, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    iput-object p4, p0, Landroidx/fragment/app/e;->f:Landroidx/fragment/app/u0;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 4

    const-string v0, "this$0"

    iget-object v1, p0, Landroidx/fragment/app/e;->d:Landroidx/fragment/app/l;

    invoke-static {v0, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$animationInfo"

    iget-object v2, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-static {v0, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$operation"

    iget-object v3, p0, Landroidx/fragment/app/e;->f:Landroidx/fragment/app/u0;

    invoke-static {v0, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/fragment/app/e;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, v1, Landroidx/fragment/app/l;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    invoke-virtual {v2}, Landroidx/fragment/app/h;->a()V

    const-string p0, "FragmentManager"

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Animation from operation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has been cancelled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
