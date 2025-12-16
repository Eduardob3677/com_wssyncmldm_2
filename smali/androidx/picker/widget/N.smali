.class public final Landroidx/picker/widget/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public d:Z

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/picker/widget/N;->c:I

    iput-object p2, p0, Landroidx/picker/widget/N;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/picker/widget/N;->c:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Landroidx/picker/widget/N;->d:Z

    iget-object v1, p0, Landroidx/picker/widget/N;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/SeslDatePicker;

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->R:Landroidx/viewpager/widget/ViewPager;

    iget v2, v1, Landroidx/picker/widget/SeslDatePicker;->K:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->R:Landroidx/viewpager/widget/ViewPager;

    iget v2, v1, Landroidx/picker/widget/SeslDatePicker;->K:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :goto_0
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    iget-boolean v0, p0, Landroidx/picker/widget/N;->d:Z

    iget-object v1, p0, Landroidx/picker/widget/N;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/P;

    invoke-virtual {v1, v0}, Landroidx/picker/widget/P;->a(Z)V

    iget-object v0, v1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget-wide v1, v1, Landroidx/picker/widget/P;->o:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
