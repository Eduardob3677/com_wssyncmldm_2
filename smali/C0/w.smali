.class public final LC0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public c:LC0/t;

.field public d:Landroid/view/ViewGroup;


# virtual methods
.method public final onPreDraw()Z
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, LC0/w;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object v2, LC0/x;->c:Ljava/util/ArrayList;

    iget-object v4, v0, LC0/w;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-static {}, LC0/x;->b()Lo/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v5}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v6, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iget-object v9, v0, LC0/w;->c:LC0/t;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, LC0/v;

    invoke-direct {v5, v0, v2}, LC0/v;-><init>(LC0/w;Lo/b;)V

    invoke-virtual {v9, v5}, LC0/t;->a(LC0/s;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v4, v0}, LC0/t;->i(Landroid/view/ViewGroup;Z)V

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LC0/t;

    invoke-virtual {v5, v4}, LC0/t;->y(Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v9, LC0/t;->m:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v9, LC0/t;->n:Ljava/util/ArrayList;

    iget-object v2, v9, LC0/t;->i:Lcom/google/firebase/messaging/p;

    iget-object v5, v9, LC0/t;->j:Lcom/google/firebase/messaging/p;

    new-instance v6, Lo/b;

    iget-object v7, v2, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v7, Lo/b;

    invoke-direct {v6, v7}, Lo/b;-><init>(Lo/b;)V

    new-instance v7, Lo/b;

    iget-object v8, v5, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v8, Lo/b;

    invoke-direct {v7, v8}, Lo/b;-><init>(Lo/b;)V

    move v8, v0

    :goto_2
    iget-object v10, v9, LC0/t;->l:[I

    array-length v11, v10

    if-ge v8, v11, :cond_f

    aget v10, v10, v8

    if-eq v10, v1, :cond_d

    const/4 v11, 0x2

    if-eq v10, v11, :cond_a

    const/4 v11, 0x3

    if-eq v10, v11, :cond_8

    const/4 v11, 0x4

    if-eq v10, v11, :cond_5

    :cond_4
    move v0, v1

    goto/16 :goto_7

    :cond_5
    iget-object v10, v2, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v10, Lo/e;

    invoke-virtual {v10}, Lo/e;->f()I

    move-result v11

    move v12, v0

    :goto_3
    if-ge v12, v11, :cond_4

    invoke-virtual {v10, v12}, Lo/e;->g(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    if-eqz v13, :cond_7

    invoke-virtual {v9, v13}, LC0/t;->t(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_7

    iget-boolean v14, v10, Lo/e;->c:Z

    if-eqz v14, :cond_6

    invoke-virtual {v10}, Lo/e;->c()V

    :cond_6
    iget-object v14, v10, Lo/e;->d:[J

    aget-wide v14, v14, v12

    iget-object v0, v5, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v0, Lo/e;

    invoke-virtual {v0, v14, v15, v3}, Lo/e;->d(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v9, v0}, LC0/t;->t(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v6, v13, v3}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LC0/z;

    invoke-virtual {v7, v0, v3}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LC0/z;

    if-eqz v14, :cond_7

    if-eqz v15, :cond_7

    iget-object v3, v9, LC0/t;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v9, LC0/t;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v13}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v0}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/2addr v12, v1

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_3

    :cond_8
    iget-object v0, v2, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    iget-object v3, v5, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_4

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_9

    invoke-virtual {v9, v12}, LC0/t;->t(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    if-eqz v13, :cond_9

    invoke-virtual {v9, v13}, LC0/t;->t(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    invoke-virtual {v6, v12, v14}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LC0/z;

    invoke-virtual {v7, v13, v14}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, LC0/z;

    if-eqz v15, :cond_9

    if-eqz v14, :cond_9

    iget-object v1, v9, LC0/t;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v9, LC0/t;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v12}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v13}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_9
    add-int/2addr v11, v1

    goto :goto_4

    :cond_a
    iget-object v0, v2, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v0, Lo/b;

    iget v1, v0, Lo/k;->e:I

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_c

    invoke-virtual {v0, v3}, Lo/k;->j(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-eqz v10, :cond_b

    invoke-virtual {v9, v10}, LC0/t;->t(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v0, v3}, Lo/k;->h(I)Ljava/lang/Object;

    move-result-object v11

    iget-object v12, v5, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v12, Lo/b;

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v13}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_b

    invoke-virtual {v9, v11}, LC0/t;->t(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v6, v10, v13}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LC0/z;

    invoke-virtual {v7, v11, v13}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LC0/z;

    if-eqz v12, :cond_b

    if-eqz v14, :cond_b

    iget-object v13, v9, LC0/t;->m:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v9, LC0/t;->n:Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v10}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v11}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const/4 v10, 0x1

    add-int/2addr v3, v10

    goto :goto_5

    :cond_c
    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    move v10, v1

    iget v0, v6, Lo/k;->e:I

    sub-int/2addr v0, v10

    :goto_6
    if-ltz v0, :cond_c

    invoke-virtual {v6, v0}, Lo/k;->h(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_e

    invoke-virtual {v9, v1}, LC0/t;->t(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v7, v1}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LC0/z;

    if-eqz v1, :cond_e

    iget-object v3, v1, LC0/z;->b:Landroid/view/View;

    invoke-virtual {v9, v3}, LC0/t;->t(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v6, v0}, Lo/k;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LC0/z;

    iget-object v10, v9, LC0/t;->m:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v9, LC0/t;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :goto_7
    add-int/2addr v8, v0

    move v1, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_f
    const/4 v0, 0x0

    :goto_8
    iget v1, v6, Lo/k;->e:I

    if-ge v0, v1, :cond_11

    invoke-virtual {v6, v0}, Lo/k;->j(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LC0/z;

    iget-object v2, v1, LC0/z;->b:Landroid/view/View;

    invoke-virtual {v9, v2}, LC0/t;->t(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v9, LC0/t;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v9, LC0/t;->n:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    const/4 v1, 0x1

    add-int/2addr v0, v1

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    :goto_9
    iget v1, v7, Lo/k;->e:I

    if-ge v0, v1, :cond_13

    invoke-virtual {v7, v0}, Lo/k;->j(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LC0/z;

    iget-object v2, v1, LC0/z;->b:Landroid/view/View;

    invoke-virtual {v9, v2}, LC0/t;->t(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v9, LC0/t;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v9, LC0/t;->m:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    const/4 v1, 0x1

    add-int/2addr v0, v1

    goto :goto_9

    :cond_13
    const/4 v1, 0x1

    invoke-static {}, LC0/t;->p()Lo/b;

    move-result-object v0

    iget v2, v0, Lo/k;->e:I

    sget-object v3, LC0/A;->a:LC0/c;

    invoke-virtual {v4}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v3

    sub-int/2addr v2, v1

    :goto_a
    if-ltz v2, :cond_1a

    invoke-virtual {v0, v2}, Lo/k;->h(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz v1, :cond_18

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LC0/r;

    if-eqz v6, :cond_18

    iget-object v5, v6, LC0/r;->a:Landroid/view/View;

    if-eqz v5, :cond_18

    iget-object v7, v6, LC0/r;->d:LC0/G;

    instance-of v8, v7, LC0/G;

    if-eqz v8, :cond_18

    iget-object v7, v7, LC0/G;->a:Landroid/view/WindowId;

    invoke-virtual {v7, v3}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v7, 0x1

    invoke-virtual {v9, v5, v7}, LC0/t;->r(Landroid/view/View;Z)LC0/z;

    move-result-object v8

    invoke-virtual {v9, v5, v7}, LC0/t;->o(Landroid/view/View;Z)LC0/z;

    move-result-object v10

    if-nez v8, :cond_14

    if-nez v10, :cond_14

    iget-object v7, v9, LC0/t;->j:Lcom/google/firebase/messaging/p;

    iget-object v7, v7, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v7, Lo/b;

    const/4 v11, 0x0

    invoke-virtual {v7, v5, v11}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, LC0/z;

    goto :goto_b

    :cond_14
    const/4 v11, 0x0

    :goto_b
    if-nez v8, :cond_15

    if-eqz v10, :cond_19

    :cond_15
    iget-object v5, v6, LC0/r;->e:LC0/t;

    iget-object v6, v6, LC0/r;->c:LC0/z;

    invoke-virtual {v5, v6, v10}, LC0/t;->s(LC0/z;LC0/z;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_c

    :cond_16
    invoke-virtual {v0, v1}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_17
    :goto_c
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_d

    :cond_18
    const/4 v11, 0x0

    :cond_19
    :goto_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_1a
    iget-object v5, v9, LC0/t;->i:Lcom/google/firebase/messaging/p;

    iget-object v6, v9, LC0/t;->j:Lcom/google/firebase/messaging/p;

    iget-object v7, v9, LC0/t;->m:Ljava/util/ArrayList;

    iget-object v8, v9, LC0/t;->n:Ljava/util/ArrayList;

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, LC0/t;->m(Landroid/view/ViewGroup;Lcom/google/firebase/messaging/p;Lcom/google/firebase/messaging/p;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v9}, LC0/t;->z()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, LC0/w;->d:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object p1, LC0/x;->c:Ljava/util/ArrayList;

    iget-object v0, p0, LC0/w;->d:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, LC0/x;->b()Lo/b;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LC0/t;

    invoke-virtual {v1, v0}, LC0/t;->y(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, LC0/w;->c:LC0/t;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LC0/t;->j(Z)V

    return-void
.end method
