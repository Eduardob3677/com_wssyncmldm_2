.class public final Landroidx/activity/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic a:Lc3/b;

.field public final synthetic b:Lc3/b;

.field public final synthetic c:Lc3/a;

.field public final synthetic d:Lc3/a;


# direct methods
.method public constructor <init>(Lc3/b;Lc3/b;Lc3/a;Lc3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/r;->a:Lc3/b;

    iput-object p2, p0, Landroidx/activity/r;->b:Lc3/b;

    iput-object p3, p0, Landroidx/activity/r;->c:Lc3/a;

    iput-object p4, p0, Landroidx/activity/r;->d:Lc3/a;

    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/r;->d:Lc3/a;

    invoke-interface {p0}, Lc3/a;->a()Ljava/lang/Object;

    return-void
.end method

.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/r;->c:Lc3/a;

    invoke-interface {p0}, Lc3/a;->a()Ljava/lang/Object;

    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/activity/r;->b:Lc3/b;

    new-instance v0, Landroidx/activity/b;

    invoke-direct {v0, p1}, Landroidx/activity/b;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {p0, v0}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/activity/r;->a:Lc3/b;

    new-instance v0, Landroidx/activity/b;

    invoke-direct {v0, p1}, Landroidx/activity/b;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {p0, v0}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
