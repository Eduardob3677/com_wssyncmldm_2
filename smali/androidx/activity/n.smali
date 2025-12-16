.class public final Landroidx/activity/n;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroidx/activity/v;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/v;I)V
    .locals 0

    iput p2, p0, Landroidx/activity/n;->d:I

    iput-object p1, p0, Landroidx/activity/n;->e:Landroidx/activity/v;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/activity/n;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/activity/b;

    const-string v0, "backEvent"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/activity/n;->e:Landroidx/activity/v;

    iget-object p0, p0, Landroidx/activity/v;->b:LR2/h;

    invoke-virtual {p0}, LR2/e;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Q;

    iget-boolean v0, v0, Landroidx/fragment/app/Q;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroidx/fragment/app/Q;

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/activity/b;

    const-string v0, "backEvent"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/activity/n;->e:Landroidx/activity/v;

    iget-object p1, p0, Landroidx/activity/v;->b:LR2/h;

    invoke-virtual {p1}, LR2/e;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Q;

    iget-boolean v1, v1, Landroidx/fragment/app/Q;->a:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Landroidx/fragment/app/Q;

    iput-object v0, p0, Landroidx/activity/v;->c:Landroidx/fragment/app/Q;

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
