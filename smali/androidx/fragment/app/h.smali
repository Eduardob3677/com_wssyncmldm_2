.class public abstract Landroidx/fragment/app/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/u0;

.field public final b:LF/f;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/u0;LF/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/u0;

    iput-object p2, p0, Landroidx/fragment/app/h;->b:LF/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/u0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:LF/f;

    const-string v1, "signal"

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Landroidx/fragment/app/u0;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/u0;->b()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/u0;

    iget-object v0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const-string v1, "operation.fragment.mView"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, LW1/a;->b(Landroid/view/View;)I

    move-result v0

    iget p0, p0, Landroidx/fragment/app/u0;->a:I

    if-eq v0, p0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
