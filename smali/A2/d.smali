.class public final synthetic LA2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LA2/d;->c:I

    iput-object p2, p0, LA2/d;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, LA2/d;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LA2/d;->d:Ljava/lang/Object;

    check-cast p0, Lk/f1;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lk/f1;->d:Lk/c1;

    if-eqz v0, :cond_0

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

    :pswitch_0
    iget-object p0, p0, LA2/d;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/datepicker/m;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/m;->g()V

    const/4 p0, 0x0

    throw p0

    :pswitch_1
    iget-object p0, p0, LA2/d;->d:Ljava/lang/Object;

    check-cast p0, LS1/v;

    iget-object p1, p0, LS1/v;->f:Landroid/widget/EditText;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    iget-object v0, p0, LS1/v;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_2

    iget-object v0, p0, LS1/v;->f:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, LS1/v;->f:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    if-ltz p1, :cond_3

    iget-object v0, p0, LS1/v;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    invoke-virtual {p0}, LS1/o;->q()V

    :goto_1
    return-void

    :pswitch_2
    iget-object p0, p0, LA2/d;->d:Ljava/lang/Object;

    check-cast p0, LS1/j;

    invoke-virtual {p0}, LS1/j;->u()V

    return-void

    :pswitch_3
    iget-object p0, p0, LA2/d;->d:Ljava/lang/Object;

    check-cast p0, LS1/d;

    iget-object p1, p0, LS1/d;->i:Landroid/widget/EditText;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_5
    invoke-virtual {p0}, LS1/o;->q()V

    :goto_2
    return-void

    :pswitch_4
    iget-object p0, p0, LA2/d;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/chip/SeslExpandableContainer;

    iget-boolean p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->g:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->g:Z

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->a()V

    new-instance p1, LF1/t;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, LF1/t;-><init>(Lcom/google/android/material/chip/SeslExpandableContainer;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_5
    iget-object p0, p0, LA2/d;->d:Ljava/lang/Object;

    check-cast p0, Lf0/b;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->g(Lf0/b;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
