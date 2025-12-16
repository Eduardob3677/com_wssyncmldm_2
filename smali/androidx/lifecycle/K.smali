.class public final Landroidx/lifecycle/K;
.super Landroidx/lifecycle/j;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/L;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/L;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/K;->this$0:Landroidx/lifecycle/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/K;->this$0:Landroidx/lifecycle/L;

    iget p1, p0, Landroidx/lifecycle/L;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/L;->d:I

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/L;->g:Landroid/os/Handler;

    invoke-static {p1}, Ld3/i;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/L;->i:LD1/b;

    const-wide/16 v0, 0x2bc

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Landroidx/lifecycle/J;

    iget-object p0, p0, Landroidx/lifecycle/K;->this$0:Landroidx/lifecycle/L;

    invoke-direct {p2, p0}, Landroidx/lifecycle/J;-><init>(Landroidx/lifecycle/L;)V

    invoke-static {p1, p2}, Landroidx/lifecycle/I;->a(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/K;->this$0:Landroidx/lifecycle/L;

    iget p1, p0, Landroidx/lifecycle/L;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/L;->c:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/lifecycle/L;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/L;->h:Landroidx/lifecycle/y;

    sget-object v0, Landroidx/lifecycle/p;->ON_STOP:Landroidx/lifecycle/p;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/p;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/lifecycle/L;->f:Z

    :cond_0
    return-void
.end method
