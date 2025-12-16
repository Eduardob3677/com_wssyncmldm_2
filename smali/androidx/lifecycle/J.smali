.class public final Landroidx/lifecycle/J;
.super Landroidx/lifecycle/j;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/L;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/L;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/J;->this$0:Landroidx/lifecycle/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/J;->this$0:Landroidx/lifecycle/L;

    invoke-virtual {p0}, Landroidx/lifecycle/L;->a()V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/J;->this$0:Landroidx/lifecycle/L;

    iget p1, p0, Landroidx/lifecycle/L;->c:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/lifecycle/L;->c:I

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Landroidx/lifecycle/L;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/L;->h:Landroidx/lifecycle/y;

    sget-object v0, Landroidx/lifecycle/p;->ON_START:Landroidx/lifecycle/p;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/p;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/L;->f:Z

    :cond_0
    return-void
.end method
