.class public final LF0/h;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LF0/h;->a:I

    iput-object p2, p0, LF0/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    iget v0, p0, LF0/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LF0/h;->b:Ljava/lang/Object;

    check-cast p0, Lk/x0;

    iget-object v0, p0, Lk/x0;->z:Lk/z;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lk/x0;->r()V

    :cond_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iget-object p0, p0, LF0/h;->b:Ljava/lang/Object;

    check-cast p0, LP/b;

    iput-boolean v0, p0, LP/b;->c:Z

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :pswitch_1
    iget-object p0, p0, LF0/h;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onInvalidated()V
    .locals 1

    iget v0, p0, LF0/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LF0/h;->b:Ljava/lang/Object;

    check-cast p0, Lk/x0;

    invoke-virtual {p0}, Lk/x0;->dismiss()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object p0, p0, LF0/h;->b:Ljava/lang/Object;

    check-cast p0, LP/b;

    iput-boolean v0, p0, LP/b;->c:Z

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void

    :pswitch_1
    iget-object p0, p0, LF0/h;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
