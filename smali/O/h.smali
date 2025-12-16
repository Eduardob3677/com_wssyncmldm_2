.class public final LO/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Landroidx/core/widget/NestedScrollView;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/widget/NestedScrollView;I)V
    .locals 0

    iput p2, p0, LO/h;->c:I

    iput-object p1, p0, LO/h;->d:Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, LO/h;->d:Landroidx/core/widget/NestedScrollView;

    iget p0, p0, LO/h;->c:I

    packed-switch p0, :pswitch_data_0

    iput-boolean v2, v3, Landroidx/core/widget/NestedScrollView;->C:Z

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "remove_animations"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_0

    invoke-virtual {v3, v1, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result p0

    rsub-int/lit8 p0, p0, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr v1, v0

    const/16 v0, 0x2bc

    invoke-virtual {v3, p0, v1, v0}, Landroidx/core/widget/NestedScrollView;->w(III)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {v3}, Landroidx/core/widget/NestedScrollView;->g(Landroidx/core/widget/NestedScrollView;)V

    return-void

    :pswitch_1
    sget p0, Landroidx/core/widget/NestedScrollView;->h0:F

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0

    :pswitch_2
    sget p0, Landroidx/core/widget/NestedScrollView;->h0:F

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0

    :pswitch_3
    sget p0, Landroidx/core/widget/NestedScrollView;->h0:F

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p0, v3, Landroidx/core/widget/NestedScrollView;->I:Z

    if-eqz p0, :cond_5

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-lez p0, :cond_4

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p0, p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_4

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    const-string v5, "NestedScrollView"

    if-ge v0, v4, :cond_1

    const-string p0, "GTT HSC not support : Small Height child"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_3

    invoke-virtual {v4, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "GTT HSC not support : Some child view can scroll index: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    add-int/2addr v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_2
    iput-boolean v1, v3, Landroidx/core/widget/NestedScrollView;->H:Z

    iput-boolean v1, v3, Landroidx/core/widget/NestedScrollView;->E:Z

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
