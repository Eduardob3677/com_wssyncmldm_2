.class public final Lcom/google/android/material/datepicker/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/google/android/material/datepicker/s;

.field public final synthetic e:Lcom/google/android/material/datepicker/l;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/s;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/material/datepicker/g;->c:I

    iput-object p1, p0, Lcom/google/android/material/datepicker/g;->e:Lcom/google/android/material/datepicker/l;

    iput-object p2, p0, Lcom/google/android/material/datepicker/g;->d:Lcom/google/android/material/datepicker/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/google/android/material/datepicker/g;->c:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->e:Lcom/google/android/material/datepicker/l;

    iget-object v0, p1, Lcom/google/android/material/datepicker/l;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lj0/J;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p1, Lcom/google/android/material/datepicker/l;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lj0/A;

    move-result-object v1

    invoke-virtual {v1}, Lj0/A;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/datepicker/g;->d:Lcom/google/android/material/datepicker/s;

    iget-object p0, p0, Lcom/google/android/material/datepicker/s;->d:Lcom/google/android/material/datepicker/b;

    iget-object p0, p0, Lcom/google/android/material/datepicker/b;->c:Lcom/google/android/material/datepicker/o;

    iget-object p0, p0, Lcom/google/android/material/datepicker/o;->c:Ljava/util/Calendar;

    invoke-static {p0}, Lcom/google/android/material/datepicker/w;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->add(II)V

    new-instance v0, Lcom/google/android/material/datepicker/o;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/o;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/l;->f(Lcom/google/android/material/datepicker/o;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->e:Lcom/google/android/material/datepicker/l;

    iget-object v0, p1, Lcom/google/android/material/datepicker/l;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lj0/J;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/datepicker/g;->d:Lcom/google/android/material/datepicker/s;

    iget-object p0, p0, Lcom/google/android/material/datepicker/s;->d:Lcom/google/android/material/datepicker/b;

    iget-object p0, p0, Lcom/google/android/material/datepicker/b;->c:Lcom/google/android/material/datepicker/o;

    iget-object p0, p0, Lcom/google/android/material/datepicker/o;->c:Ljava/util/Calendar;

    invoke-static {p0}, Lcom/google/android/material/datepicker/w;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->add(II)V

    new-instance v0, Lcom/google/android/material/datepicker/o;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/o;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/l;->f(Lcom/google/android/material/datepicker/o;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
