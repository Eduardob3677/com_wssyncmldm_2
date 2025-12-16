.class public final Lj0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Lj0/k;


# direct methods
.method public synthetic constructor <init>(Lj0/k;Ljava/util/ArrayList;I)V
    .locals 0

    iput p3, p0, Lj0/d;->c:I

    iput-object p1, p0, Lj0/d;->e:Lj0/k;

    iput-object p2, p0, Lj0/d;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lj0/d;->c:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lj0/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, v0, Lj0/d;->e:Lj0/k;

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj0/b0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v3, Lj0/b0;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "preferencecategory"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-wide/16 v7, 0x0

    goto :goto_1

    :cond_0
    const-wide/16 v7, 0xc8

    :goto_1
    iget-object v9, v4, Lj0/k;->l:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v8, Lj0/e;

    invoke-direct {v8, v4, v3, v5, v6}, Lj0/e;-><init>(Lj0/k;Lj0/b0;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v4, Lj0/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v1, v0, Lj0/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v10, v0, Lj0/d;->e:Lj0/k;

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj0/i;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lj0/i;->a:Lj0/b0;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move-object v8, v5

    goto :goto_3

    :cond_2
    iget-object v4, v4, Lj0/b0;->a:Landroid/view/View;

    move-object v8, v4

    :goto_3
    iget-object v4, v3, Lj0/i;->b:Lj0/b0;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lj0/b0;->a:Landroid/view/View;

    move-object v11, v4

    goto :goto_4

    :cond_3
    move-object v11, v5

    :goto_4
    sget-object v12, Lj0/k;->s:Landroid/view/animation/PathInterpolator;

    iget-object v13, v10, Lj0/k;->o:Ljava/util/ArrayList;

    const/4 v14, 0x0

    const-wide/16 v6, 0x190

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget-object v4, v3, Lj0/i;->a:Lj0/b0;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v3, Lj0/i;->e:I

    iget v5, v3, Lj0/i;->c:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    iget v4, v3, Lj0/i;->f:I

    iget v5, v3, Lj0/i;->d:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v9, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    new-instance v5, Lj0/h;

    const/16 v16, 0x0

    move-object v4, v5

    move-object v14, v5

    move-object v5, v10

    move-object/from16 v17, v1

    move-wide v0, v6

    move-object v6, v3

    move-object v7, v9

    move/from16 v9, v16

    invoke-direct/range {v4 .. v9}, Lj0/h;-><init>(Lj0/k;Lj0/i;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    invoke-virtual {v15, v14}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5

    :cond_4
    move-object/from16 v17, v1

    move-wide v0, v6

    :goto_5
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    iget-object v4, v3, Lj0/i;->b:Lj0/b0;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lj0/h;

    const/4 v9, 0x1

    move-object v4, v1

    move-object v5, v10

    move-object v6, v3

    move-object v8, v11

    invoke-direct/range {v4 .. v9}, Lj0/h;-><init>(Lj0/k;Lj0/i;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto/16 :goto_2

    :cond_6
    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v10, Lj0/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    iget-object v1, v0, Lj0/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v5, v0, Lj0/d;->e:Lj0/k;

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj0/j;

    iget-object v6, v3, Lj0/j;->a:Lj0/b0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v6, Lj0/b0;->a:Landroid/view/View;

    iget v4, v3, Lj0/j;->d:I

    iget v7, v3, Lj0/j;->b:I

    sub-int v7, v4, v7

    iget v4, v3, Lj0/j;->e:I

    iget v3, v3, Lj0/j;->c:I

    sub-int v9, v4, v3

    const/4 v3, 0x0

    if-eqz v7, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_7
    if-eqz v9, :cond_8

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    sget-object v3, Lj0/k;->s:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v10, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v3, v5, Lj0/k;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v5, Lj0/F;->c:Landroid/view/View;

    instance-of v4, v3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_9

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView;->r1:I

    const/4 v11, -0x1

    if-eq v4, v11, :cond_9

    invoke-virtual {v6}, Lj0/b0;->c()I

    move-result v4

    iget-object v11, v3, Landroidx/recyclerview/widget/RecyclerView;->h:LD3/f;

    invoke-virtual {v11}, LD3/f;->g()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v4, v11, :cond_9

    new-instance v4, Lj0/f;

    const/4 v11, 0x0

    invoke-direct {v4, v3, v11}, Lj0/f;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    invoke-virtual {v10, v4}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_9
    const-wide/16 v3, 0x190

    invoke-virtual {v10, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v11, Lj0/g;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lj0/g;-><init>(Lj0/k;Lj0/b0;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v3, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_6

    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v5, Lj0/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
