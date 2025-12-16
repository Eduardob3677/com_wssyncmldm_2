.class public final Landroidx/activity/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/c;


# instance fields
.field public final a:Landroidx/fragment/app/Q;

.field public final synthetic b:Landroidx/activity/v;


# direct methods
.method public constructor <init>(Landroidx/activity/v;Landroidx/fragment/app/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/t;->b:Landroidx/activity/v;

    iput-object p2, p0, Landroidx/activity/t;->a:Landroidx/fragment/app/Q;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 4

    iget-object v0, p0, Landroidx/activity/t;->b:Landroidx/activity/v;

    iget-object v1, v0, Landroidx/activity/v;->b:LR2/h;

    iget-object v2, p0, Landroidx/activity/t;->a:Landroidx/fragment/app/Q;

    invoke-virtual {v1, v2}, LR2/h;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/activity/v;->c:Landroidx/fragment/app/Q;

    invoke-static {v1, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Landroidx/activity/v;->c:Landroidx/fragment/app/Q;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Landroidx/fragment/app/Q;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, v2, Landroidx/fragment/app/Q;->c:Lc3/a;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lc3/a;->a()Ljava/lang/Object;

    :cond_1
    iput-object v3, v2, Landroidx/fragment/app/Q;->c:Lc3/a;

    return-void
.end method
