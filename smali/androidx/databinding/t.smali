.class public final Landroidx/databinding/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/m;


# instance fields
.field public final synthetic a:I

.field public final b:Landroidx/databinding/w;


# direct methods
.method public constructor <init>(Landroidx/databinding/v;ILjava/lang/ref/ReferenceQueue;I)V
    .locals 0

    iput p4, p0, Landroidx/databinding/t;->a:I

    packed-switch p4, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Landroidx/databinding/w;

    invoke-direct {p4, p1, p2, p0, p3}, Landroidx/databinding/w;-><init>(Landroidx/databinding/v;ILandroidx/databinding/m;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p4, p0, Landroidx/databinding/t;->b:Landroidx/databinding/w;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Landroidx/databinding/w;

    invoke-direct {p4, p1, p2, p0, p3}, Landroidx/databinding/w;-><init>(Landroidx/databinding/v;ILandroidx/databinding/m;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p4, p0, Landroidx/databinding/t;->b:Landroidx/databinding/w;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final c(Landroidx/lifecycle/w;)V
    .locals 0

    return-void
.end method

.method private final e(Landroidx/lifecycle/w;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Landroidx/databinding/t;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    invoke-static {p1}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroidx/lifecycle/w;)V
    .locals 0

    iget p0, p0, Landroidx/databinding/t;->a:I

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Landroidx/databinding/t;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    invoke-static {p1}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
