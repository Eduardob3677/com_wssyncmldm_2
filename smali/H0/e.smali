.class public final LH0/e;
.super Lj0/C;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LH0/e;->a:I

    iput-object p2, p0, LH0/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, LH0/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LH0/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/p;

    invoke-virtual {p0}, Lcom/google/firebase/messaging/p;->L()V

    return-void

    :pswitch_0
    iget-object p0, p0, LH0/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Z

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->n:LH0/d;

    iput-boolean v0, p0, LH0/d;->l:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(ILjava/lang/Object;I)V
    .locals 0

    invoke-virtual {p0}, Lj0/C;->a()V

    return-void
.end method
