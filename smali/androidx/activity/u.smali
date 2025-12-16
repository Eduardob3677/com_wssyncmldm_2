.class public final synthetic Landroidx/activity/u;
.super Ld3/h;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput p7, p0, Landroidx/activity/u;->l:I

    invoke-direct/range {p0 .. p6}, Ld3/g;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/activity/u;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ld3/b;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/v;

    invoke-virtual {p0}, Landroidx/activity/v;->d()V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Ld3/b;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/v;

    invoke-virtual {p0}, Landroidx/activity/v;->d()V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
