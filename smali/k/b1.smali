.class public final synthetic Lk/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/ViewGroup;I)V
    .locals 0

    iput p3, p0, Lk/b1;->c:I

    iput-object p1, p0, Lk/b1;->d:Ljava/lang/Object;

    iput-object p2, p0, Lk/b1;->e:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lk/b1;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lk/b1;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

    iget-object p0, p0, Lk/b1;->e:Landroid/view/ViewGroup;

    check-cast p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;

    invoke-static {v0, p0, p1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->a(Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;Lcom/google/android/material/appbar/model/view/SuggestAppBarView;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lk/b1;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/appbar/model/ButtonModel;

    iget-object p0, p0, Lk/b1;->e:Landroid/view/ViewGroup;

    check-cast p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;

    invoke-static {v0, p0, p1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->b(Lcom/google/android/material/appbar/model/ButtonModel;Lcom/google/android/material/appbar/model/view/SuggestAppBarView;Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lk/b1;->d:Ljava/lang/Object;

    check-cast v0, Lk/c1;

    const-string v1, "$itemClickListener"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lk/b1;->e:Landroid/view/ViewGroup;

    check-cast p0, Lk/f1;

    const-string v1, "this$0"

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lk/f1;->c:Ljava/util/ArrayList;

    const-string v1, "<this>"

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    check-cast v0, Lc1/w;

    iget-object p1, v0, Lc1/w;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getViewpager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/viewpager2/widget/ViewPager2;->c(I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
