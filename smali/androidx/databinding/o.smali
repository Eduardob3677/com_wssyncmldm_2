.class public final Landroidx/databinding/o;
.super Landroidx/databinding/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/databinding/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    iget p0, p0, Landroidx/databinding/o;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, LB/f;->F(Ljava/lang/Object;)V

    check-cast p3, Landroidx/databinding/v;

    const/4 p0, 0x1

    const/4 p1, 0x0

    if-eq p2, p0, :cond_2

    const/4 p0, 0x2

    if-eq p2, p0, :cond_1

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    return-void

    :cond_0
    throw p1

    :cond_1
    throw p1

    :cond_2
    throw p1

    :pswitch_0
    check-cast p1, Landroidx/databinding/i;

    check-cast p3, Landroidx/databinding/j;

    check-cast p1, Landroidx/databinding/u;

    iget-object p0, p1, Landroidx/databinding/u;->a:Landroidx/databinding/w;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/databinding/v;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/databinding/w;->a()Z

    :cond_3
    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/databinding/w;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/j;

    if-eq v0, p3, :cond_5

    goto :goto_0

    :cond_5
    iget p0, p0, Landroidx/databinding/w;->b:I

    invoke-virtual {p1, p0, p3, p2}, Landroidx/databinding/v;->handleFieldChange(ILjava/lang/Object;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
