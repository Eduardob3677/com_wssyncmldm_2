.class public final Landroidx/picker/widget/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Looper;I)V
    .locals 0

    iput p3, p0, Landroidx/picker/widget/c;->a:I

    iput-object p1, p0, Landroidx/picker/widget/c;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/picker/widget/c;->a:I

    packed-switch v2, :pswitch_data_0

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Landroidx/picker/widget/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void

    :pswitch_0
    iget v1, v1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_1

    goto/16 :goto_f

    :cond_1
    iget-object v1, v0, Landroidx/picker/widget/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->o:Lj0/A;

    if-nez v2, :cond_2

    const-string v0, "SeslRecyclerView"

    const-string v1, "No adapter attached; skipping MSG_HOVERSCROLL_MOVE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v1, Landroidx/recyclerview/widget/RecyclerView;->F1:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v1, Landroidx/recyclerview/widget/RecyclerView;->E1:J

    iget-boolean v4, v1, Landroidx/recyclerview/widget/RecyclerView;->x1:Z

    if-eqz v4, :cond_3

    iget-wide v5, v1, Landroidx/recyclerview/widget/RecyclerView;->I1:J

    sub-long v5, v2, v5

    iget-wide v7, v1, Landroidx/recyclerview/widget/RecyclerView;->G1:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    goto/16 :goto_f

    :cond_3
    iget-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->Q0:Z

    if-eqz v5, :cond_4

    iget-wide v5, v1, Landroidx/recyclerview/widget/RecyclerView;->I1:J

    sub-long/2addr v2, v5

    iget-wide v5, v1, Landroidx/recyclerview/widget/RecyclerView;->H1:J

    cmp-long v2, v2, v5

    if-gez v2, :cond_4

    goto/16 :goto_f

    :cond_4
    const/4 v2, 0x1

    if-eqz v4, :cond_6

    iget-boolean v3, v1, Landroidx/recyclerview/widget/RecyclerView;->L1:Z

    if-nez v3, :cond_6

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->m0:Lj0/M;

    if-eqz v3, :cond_5

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView;->M1:I

    invoke-virtual {v3, v1, v2}, Lj0/M;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_5
    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->L1:Z

    :cond_6
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->p:Lj0/J;

    invoke-virtual {v3}, Lj0/J;->e()Z

    move-result v3

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->p:Lj0/J;

    invoke-virtual {v4}, Lj0/J;->d()Z

    move-result v4

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->p:Lj0/J;

    invoke-virtual {v5}, Lj0/J;->A()I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v2, :cond_7

    move v5, v2

    goto :goto_0

    :cond_7
    move v5, v6

    :goto_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->o()Z

    move-result v7

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->p()Z

    move-result v8

    sget v9, Landroidx/recyclerview/widget/RecyclerView;->s2:F

    iget-object v10, v1, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v2, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->C1:I

    iget-wide v10, v1, Landroidx/recyclerview/widget/RecyclerView;->E1:J

    const-wide/16 v12, 0x2

    cmp-long v12, v10, v12

    const-wide/16 v13, 0x4

    if-lez v12, :cond_8

    cmp-long v12, v10, v13

    if-gez v12, :cond_8

    int-to-double v10, v9

    const-wide v12, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v10, v12

    double-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->C1:I

    goto :goto_1

    :cond_8
    cmp-long v12, v10, v13

    const-wide/16 v13, 0x5

    if-ltz v12, :cond_9

    cmp-long v12, v10, v13

    if-gez v12, :cond_9

    int-to-double v10, v9

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v10, v12

    double-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->C1:I

    goto :goto_1

    :cond_9
    cmp-long v10, v10, v13

    if-ltz v10, :cond_a

    int-to-double v10, v9

    const-wide v12, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v10, v12

    double-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->C1:I

    :cond_a
    :goto_1
    iget v9, v1, Landroidx/recyclerview/widget/RecyclerView;->J1:I

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-ne v9, v11, :cond_c

    if-eqz v4, :cond_b

    if-eqz v5, :cond_b

    iget v12, v1, Landroidx/recyclerview/widget/RecyclerView;->C1:I

    goto :goto_2

    :cond_b
    iget v12, v1, Landroidx/recyclerview/widget/RecyclerView;->C1:I

    mul-int/lit8 v12, v12, -0x1

    :goto_2
    iget v13, v1, Landroidx/recyclerview/widget/RecyclerView;->V1:I

    if-eq v13, v9, :cond_e

    iget-boolean v13, v1, Landroidx/recyclerview/widget/RecyclerView;->U1:Z

    if-ne v13, v2, :cond_e

    iput-object v10, v1, Landroidx/recyclerview/widget/RecyclerView;->b1:Landroid/view/View;

    iput v6, v1, Landroidx/recyclerview/widget/RecyclerView;->d1:I

    iget v13, v1, Landroidx/recyclerview/widget/RecyclerView;->X1:I

    iput v13, v1, Landroidx/recyclerview/widget/RecyclerView;->c1:I

    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->V1:I

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->U1:Z

    goto :goto_4

    :cond_c
    if-eqz v4, :cond_d

    if-eqz v5, :cond_d

    iget v12, v1, Landroidx/recyclerview/widget/RecyclerView;->C1:I

    mul-int/lit8 v12, v12, -0x1

    goto :goto_3

    :cond_d
    iget v12, v1, Landroidx/recyclerview/widget/RecyclerView;->C1:I

    :goto_3
    iget v13, v1, Landroidx/recyclerview/widget/RecyclerView;->V1:I

    if-eq v13, v9, :cond_e

    iget-boolean v13, v1, Landroidx/recyclerview/widget/RecyclerView;->U1:Z

    if-ne v13, v2, :cond_e

    iput-object v10, v1, Landroidx/recyclerview/widget/RecyclerView;->b1:Landroid/view/View;

    iput v6, v1, Landroidx/recyclerview/widget/RecyclerView;->d1:I

    iget v13, v1, Landroidx/recyclerview/widget/RecyclerView;->W1:I

    iput v13, v1, Landroidx/recyclerview/widget/RecyclerView;->c1:I

    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->V1:I

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->U1:Z

    :cond_e
    :goto_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_f

    goto/16 :goto_f

    :cond_f
    if-gez v12, :cond_10

    if-nez v8, :cond_11

    :cond_10
    if-lez v12, :cond_1a

    if-eqz v7, :cond_1a

    :cond_11
    if-eqz v4, :cond_12

    move v11, v2

    :cond_12
    invoke-virtual {v1, v11, v2}, Landroidx/recyclerview/widget/RecyclerView;->D0(II)V

    if-eqz v4, :cond_14

    if-eqz v5, :cond_13

    neg-int v7, v12

    move v14, v7

    goto :goto_5

    :cond_13
    move v14, v12

    goto :goto_5

    :cond_14
    move v14, v6

    :goto_5
    if-eqz v3, :cond_15

    move v15, v12

    goto :goto_6

    :cond_15
    move v15, v6

    :goto_6
    iget-object v0, v0, Landroidx/picker/widget/c;->b:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v13 .. v18}, Landroidx/recyclerview/widget/RecyclerView;->A(II[I[II)Z

    move-result v0

    if-nez v0, :cond_19

    if-eqz v4, :cond_17

    if-eqz v5, :cond_16

    neg-int v0, v12

    goto :goto_7

    :cond_16
    move v0, v12

    goto :goto_7

    :cond_17
    move v0, v6

    :goto_7
    if-eqz v3, :cond_18

    goto :goto_8

    :cond_18
    move v12, v6

    :goto_8
    invoke-virtual {v1, v0, v12, v10, v6}, Landroidx/recyclerview/widget/RecyclerView;->t0(IILandroid/view/MotionEvent;I)Z

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    goto :goto_9

    :cond_19
    invoke-virtual {v1, v12}, Landroidx/recyclerview/widget/RecyclerView;->m(I)V

    :goto_9
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->c2:Landroidx/picker/widget/c;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_f

    :cond_1a
    invoke-virtual {v1}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_1e

    if-ne v0, v2, :cond_1d

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_a

    :cond_1b
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->o:Lj0/A;

    invoke-virtual {v3}, Lj0/A;->a()I

    move-result v3

    if-eq v0, v3, :cond_1c

    goto :goto_b

    :cond_1c
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->S1:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-lt v3, v7, :cond_1e

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    if-gt v0, v3, :cond_1e

    :cond_1d
    :goto_a
    move v0, v6

    goto :goto_c

    :cond_1e
    :goto_b
    move v0, v2

    :goto_c
    if-eqz v0, :cond_24

    iget-boolean v3, v1, Landroidx/recyclerview/widget/RecyclerView;->K1:Z

    if-nez v3, :cond_24

    if-eqz v4, :cond_1f

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->D()V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->E()V

    goto :goto_d

    :cond_1f
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->F()V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->C()V

    :goto_d
    iget v3, v1, Landroidx/recyclerview/widget/RecyclerView;->J1:I

    const/16 v5, 0x2710

    if-ne v3, v11, :cond_21

    if-eqz v4, :cond_20

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->M:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->M:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_e

    :cond_20
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->L:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_e

    :cond_21
    if-ne v3, v2, :cond_23

    if-eqz v4, :cond_22

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->M:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_e

    :cond_22
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    invoke-static {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->L:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->L:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_23
    :goto_e
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->K1:Z

    :cond_24
    iget v3, v1, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    if-ne v3, v2, :cond_25

    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    :cond_25
    if-nez v0, :cond_26

    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->K1:Z

    if-nez v0, :cond_26

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->K1:Z

    :cond_26
    :goto_f
    return-void

    :pswitch_1
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_27

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_11

    :cond_27
    iget-object v0, v0, Landroidx/picker/widget/c;->b:Ljava/lang/Object;

    check-cast v0, Ld0/a;

    :goto_10
    iget-object v2, v0, Ld0/a;->b:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, v0, Ld0/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_28

    monitor-exit v2

    :goto_11
    return-void

    :catchall_0
    move-exception v0

    goto :goto_12

    :cond_28
    new-array v3, v1, [LZ0/j;

    iget-object v4, v0, Ld0/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v4, v0, Ld0/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_29

    goto :goto_10

    :cond_29
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/4 v0, 0x0

    throw v0

    :goto_12
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_2
    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    goto :goto_13

    :cond_2a
    iget-object v0, v0, Landroidx/picker/widget/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/z;

    invoke-virtual {v0}, Landroidx/preference/z;->bindPreferences()V

    :goto_13
    return-void

    :pswitch_3
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    iget-object v0, v0, Landroidx/picker/widget/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslDatePicker;

    if-eq v1, v2, :cond_31

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_2b

    goto/16 :goto_15

    :cond_2b
    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->t:I

    const/4 v2, 0x0

    if-ne v1, v3, :cond_2c

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Landroidx/picker/widget/SeslDatePicker;->c(Landroidx/picker/widget/SeslDatePicker;FZ)V

    invoke-static {v0, v1, v2}, Landroidx/picker/widget/SeslDatePicker;->d(Landroidx/picker/widget/SeslDatePicker;FZ)V

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->g0:Landroid/widget/ImageButton;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->h0:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, v0, Landroidx/picker/widget/SeslDatePicker;->U:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/16 :goto_15

    :cond_2c
    invoke-static {}, Lo4/a;->m()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2d

    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker;->g0:Landroid/widget/ImageButton;

    invoke-static {v1, v4}, Lp0/a;->p(ILandroid/view/View;)V

    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker;->h0:Landroid/widget/ImageButton;

    invoke-static {v1, v4}, Lp0/a;->p(ILandroid/view/View;)V

    :cond_2d
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->g0:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1301b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lk/J1;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->h0:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1301b7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lk/J1;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->g0:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->h0:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->K:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v1, :cond_2e

    iget v5, v0, Landroidx/picker/widget/SeslDatePicker;->L:I

    sub-int/2addr v5, v3

    if-ge v1, v5, :cond_2e

    invoke-static {v0, v4, v3}, Landroidx/picker/widget/SeslDatePicker;->c(Landroidx/picker/widget/SeslDatePicker;FZ)V

    invoke-static {v0, v4, v3}, Landroidx/picker/widget/SeslDatePicker;->d(Landroidx/picker/widget/SeslDatePicker;FZ)V

    goto/16 :goto_15

    :cond_2e
    iget v5, v0, Landroidx/picker/widget/SeslDatePicker;->L:I

    const v6, 0x3ecccccd    # 0.4f

    if-ne v5, v3, :cond_2f

    invoke-static {v0, v6, v2}, Landroidx/picker/widget/SeslDatePicker;->c(Landroidx/picker/widget/SeslDatePicker;FZ)V

    invoke-static {v0, v6, v2}, Landroidx/picker/widget/SeslDatePicker;->d(Landroidx/picker/widget/SeslDatePicker;FZ)V

    invoke-virtual {v0}, Landroidx/picker/widget/SeslDatePicker;->l()V

    goto/16 :goto_15

    :cond_2f
    if-nez v1, :cond_30

    invoke-static {v0, v6, v2}, Landroidx/picker/widget/SeslDatePicker;->c(Landroidx/picker/widget/SeslDatePicker;FZ)V

    invoke-static {v0, v4, v3}, Landroidx/picker/widget/SeslDatePicker;->d(Landroidx/picker/widget/SeslDatePicker;FZ)V

    invoke-virtual {v0}, Landroidx/picker/widget/SeslDatePicker;->l()V

    goto/16 :goto_15

    :cond_30
    sub-int/2addr v5, v3

    if-ne v1, v5, :cond_35

    invoke-static {v0, v4, v3}, Landroidx/picker/widget/SeslDatePicker;->c(Landroidx/picker/widget/SeslDatePicker;FZ)V

    invoke-static {v0, v6, v2}, Landroidx/picker/widget/SeslDatePicker;->d(Landroidx/picker/widget/SeslDatePicker;FZ)V

    invoke-virtual {v0}, Landroidx/picker/widget/SeslDatePicker;->l()V

    goto :goto_15

    :cond_31
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0}, Landroidx/picker/widget/SeslDatePicker;->getMaxYear()I

    move-result v2

    if-gt v1, v2, :cond_35

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    if-ge v1, v2, :cond_32

    goto :goto_15

    :cond_32
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslDatePicker;->a(Landroidx/picker/widget/SeslDatePicker;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker;->U:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    invoke-static {v0, v2}, Landroidx/picker/widget/SeslDatePicker;->a(Landroidx/picker/widget/SeslDatePicker;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-static {v0, v3}, Landroidx/picker/widget/SeslDatePicker;->a(Landroidx/picker/widget/SeslDatePicker;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker;->R:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->U:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_33
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker;->d:Landroid/content/Context;

    iget v3, v0, Landroidx/picker/widget/SeslDatePicker;->t:I

    if-nez v3, :cond_34

    const v3, 0x7f1301ba

    goto :goto_14

    :cond_34
    const v3, 0x7f1301b9

    :goto_14
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/picker/widget/SeslDatePicker;->U:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_35
    :goto_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
