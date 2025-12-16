.class public final LH0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK/r;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/google/firebase/messaging/p;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/p;I)V
    .locals 0

    iput p2, p0, LH0/k;->c:I

    iput-object p1, p0, LH0/k;->d:Lcom/google/firebase/messaging/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final i(Landroid/view/View;)Z
    .locals 2

    iget v0, p0, LH0/k;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iget-object p0, p0, LH0/k;->d:Lcom/google/firebase/messaging/p;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->d(I)V

    :cond_0
    return v0

    :pswitch_0
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object p0, p0, LH0/k;->d:Lcom/google/firebase/messaging/p;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->d(I)V

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
