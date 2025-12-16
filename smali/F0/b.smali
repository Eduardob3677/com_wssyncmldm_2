.class public final LF0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LF0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget p0, p0, LF0/b;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    sget-object p0, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, LJ/I;->m(Landroid/view/View;)F

    move-result p0

    invoke-static {p2}, LJ/I;->m(Landroid/view/View;)F

    move-result p1

    cmpl-float p2, p0, p1

    if-lez p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :pswitch_0
    check-cast p1, Lr/f;

    check-cast p2, Lr/f;

    iget p0, p1, Lr/f;->b:I

    iget p1, p2, Lr/f;->b:I

    sub-int/2addr p0, p1

    return p0

    :pswitch_1
    check-cast p1, LA3/p;

    check-cast p2, LA3/p;

    invoke-static {p1, p2}, Lr3/n;->b(LA3/p;LA3/p;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Li3/k;

    check-cast p1, Ll3/T;

    invoke-virtual {p1}, Ll3/T;->b()Ljava/lang/String;

    move-result-object p0

    check-cast p2, Li3/k;

    check-cast p2, Ll3/T;

    invoke-virtual {p2}, Ll3/T;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LL2/b;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LL2/b;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Lj0/n;

    check-cast p2, Lj0/n;

    iget-object p0, p1, Lj0/n;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    iget-object v4, p2, Lj0/n;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_4

    move v4, v0

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    if-eq v3, v4, :cond_7

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v1

    :cond_6
    :goto_5
    move v2, v0

    goto :goto_7

    :cond_7
    iget-boolean p0, p1, Lj0/n;->a:Z

    iget-boolean v3, p2, Lj0/n;->a:Z

    if-eq p0, v3, :cond_8

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_8
    iget p0, p2, Lj0/n;->b:I

    iget v0, p1, Lj0/n;->b:I

    sub-int/2addr p0, v0

    if-eqz p0, :cond_9

    :goto_6
    move v2, p0

    goto :goto_7

    :cond_9
    iget p0, p1, Lj0/n;->c:I

    iget p1, p2, Lj0/n;->c:I

    sub-int/2addr p0, p1

    if-eqz p0, :cond_a

    goto :goto_6

    :cond_a
    :goto_7
    return v2

    :pswitch_5
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :pswitch_6
    check-cast p1, [I

    check-cast p2, [I

    aget p0, p1, v2

    aget p1, p2, v2

    sub-int/2addr p0, p1

    return p0

    :pswitch_7
    check-cast p1, LF0/e;

    check-cast p2, LF0/e;

    iget p0, p1, LF0/e;->b:I

    iget p1, p2, LF0/e;->b:I

    sub-int/2addr p0, p1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
