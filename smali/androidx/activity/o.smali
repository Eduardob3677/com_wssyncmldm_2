.class public final Landroidx/activity/o;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroidx/activity/v;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/v;I)V
    .locals 0

    iput p2, p0, Landroidx/activity/o;->d:I

    iput-object p1, p0, Landroidx/activity/o;->e:Landroidx/activity/v;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/activity/o;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/activity/o;->e:Landroidx/activity/v;

    invoke-virtual {p0}, Landroidx/activity/v;->b()V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/activity/o;->e:Landroidx/activity/v;

    iget-object v0, p0, Landroidx/activity/v;->b:LR2/h;

    invoke-virtual {v0}, LR2/e;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/fragment/app/Q;

    iget-boolean v3, v3, Landroidx/fragment/app/Q;->a:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Landroidx/fragment/app/Q;

    iput-object v2, p0, Landroidx/activity/v;->c:Landroidx/fragment/app/Q;

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Landroidx/activity/o;->e:Landroidx/activity/v;

    invoke-virtual {p0}, Landroidx/activity/v;->b()V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
