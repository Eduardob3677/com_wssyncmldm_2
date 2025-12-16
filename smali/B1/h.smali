.class public final LB1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LB1/h;->c:I

    iput-object p2, p0, LB1/h;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget v4, v1, LB1/h;->c:I

    packed-switch v4, :pswitch_data_0

    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, Lu1/l;

    iget-object v2, v0, Lu1/l;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, Lu1/l;

    iget-object v0, v0, Lu1/l;->f:Ljava/lang/Object;

    check-cast v0, Lu1/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu1/b;->H()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, Lt1/a;

    invoke-virtual {v0}, Lt1/a;->d()V

    return-void

    :pswitch_1
    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D0()Z

    return-void

    :pswitch_2
    iget-object v1, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v1, Lj0/m;

    iget v4, v1, Lj0/m;->A:I

    iget-object v5, v1, Lj0/m;->z:Landroid/animation/ValueAnimator;

    if-eq v4, v0, :cond_1

    if-eq v4, v2, :cond_2

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v4, 0x3

    iput v4, v1, Lj0/m;->A:I

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    new-array v2, v2, [F

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v1, v2, v0

    invoke-virtual {v5, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/16 v0, 0x1f4

    int-to-long v0, v0

    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void

    :pswitch_3
    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, Le/L;

    iget-object v1, v0, Le/L;->b:Landroid/view/Window$Callback;

    invoke-virtual {v0}, Le/L;->r()Landroid/view/Menu;

    move-result-object v0

    instance-of v2, v0, Lj/i;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lj/i;

    goto :goto_3

    :cond_3
    move-object v2, v4

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lj/i;->w()V

    :cond_4
    :try_start_1
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    invoke-interface {v1, v3, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1, v3, v4, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_4
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lj/i;->v()V

    :cond_7
    return-void

    :goto_5
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lj/i;->v()V

    :cond_8
    throw v0

    :pswitch_4
    iget-object v1, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v1, Le/c;

    iget-object v2, v1, Le/c;->b:Le/i;

    iget-object v2, v2, Le/i;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iget-object v4, v1, Le/c;->b:Le/i;

    iget v5, v4, Le/i;->K:I

    if-eq v2, v5, :cond_14

    iget-object v2, v4, Le/i;->c:Landroid/view/Window;

    const v5, 0x7f0a019d

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0a0292

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a01d2

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a0296

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a0076

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0a00ad

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0a00a0

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v11, :cond_9

    move v9, v0

    goto :goto_6

    :cond_9
    move v9, v3

    :goto_6
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v11, :cond_a

    move v7, v0

    goto :goto_7

    :cond_a
    move v7, v3

    :goto_7
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v11, :cond_b

    move v10, v0

    goto :goto_8

    :cond_b
    move v10, v3

    :goto_8
    iget-object v12, v4, Le/i;->C:Landroid/view/View;

    if-eqz v12, :cond_c

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v11, :cond_c

    goto :goto_9

    :cond_c
    move v0, v3

    :goto_9
    iget-object v4, v4, Le/i;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v9, :cond_d

    if-nez v7, :cond_d

    if-eqz v10, :cond_e

    :cond_d
    if-eqz v0, :cond_f

    :cond_e
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_a

    :cond_f
    const v0, 0x7f0703ca

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v2, v3, v0, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    :goto_a
    if-eqz v5, :cond_11

    const v0, 0x7f0703c6

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz v9, :cond_10

    if-eqz v7, :cond_10

    if-nez v10, :cond_10

    invoke-virtual {v5, v0, v3, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b

    :cond_10
    const v2, 0x7f0703c9

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v5, v0, v3, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_11
    :goto_b
    if-eqz v6, :cond_12

    const v0, 0x7f0703ab

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f0703aa

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v5, 0x7f0703a6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v6, v0, v3, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_12
    if-eqz v8, :cond_13

    const v0, 0x7f0703af

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f0703ae

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v8, v0, v3, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_13
    iget-object v0, v1, Le/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_14
    iget-object v0, v1, Le/c;->b:Le/i;

    iget-object v1, v0, Le/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Le/i;->K:I

    return-void

    :pswitch_5
    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, Lb1/q;

    iget-object v0, v0, Lb1/q;->g:Lb1/e;

    new-instance v1, LZ0/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LZ0/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lb1/e;->b(LZ0/a;)V

    return-void

    :pswitch_6
    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, Ls2/c;

    iget-object v0, v0, Ls2/c;->c:Ljava/lang/Object;

    check-cast v0, Lb1/d;

    iget-object v0, v0, Lb1/d;->b:La1/b;

    check-cast v0, Lc1/k;

    invoke-virtual {v0}, Lc1/k;->d()V

    return-void

    :pswitch_7
    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/C;

    iget-object v2, v0, Landroidx/lifecycle/C;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/C;

    iget-object v0, v0, Landroidx/lifecycle/C;->f:Ljava/lang/Object;

    iget-object v3, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/C;

    sget-object v4, Landroidx/lifecycle/C;->k:Ljava/lang/Object;

    iput-object v4, v3, Landroidx/lifecycle/C;->f:Ljava/lang/Object;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/C;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/C;->k(Ljava/lang/Object;)V

    return-void

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :pswitch_8
    monitor-enter p0

    :try_start_4
    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/v;

    invoke-static {v0, v3}, Landroidx/databinding/v;->access$202(Landroidx/databinding/v;Z)Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {}, Landroidx/databinding/v;->access$300()V

    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/v;

    invoke-static {v0}, Landroidx/databinding/v;->access$400(Landroidx/databinding/v;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/v;

    invoke-static {v0}, Landroidx/databinding/v;->access$400(Landroidx/databinding/v;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroidx/databinding/v;->access$500()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/v;

    invoke-static {v0}, Landroidx/databinding/v;->access$400(Landroidx/databinding/v;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroidx/databinding/v;->access$500()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_c

    :cond_15
    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/v;

    invoke-virtual {v0}, Landroidx/databinding/v;->executePendingBindings()V

    :goto_c
    return-void

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :pswitch_9
    :try_start_6
    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentActivity;

    invoke-static {v0}, Landroidx/activity/ComponentActivity;->access$001(Landroidx/activity/ComponentActivity;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_e

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Attempt to invoke virtual method \'android.os.Handler android.app.FragmentHostCallback.getHandler()\' on a null object reference"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_f

    :cond_16
    throw v0

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can not perform this action after onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_f
    return-void

    :cond_17
    throw v0

    :pswitch_a
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TIMEOUT"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v1, Lu1/i;

    invoke-virtual {v1, v0}, Lu1/i;->c(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "Rpc"

    const-string v1, "No response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-void

    :pswitch_b
    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:LS1/n;

    iget-object v0, v0, LS1/n;->i:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    return-void

    :pswitch_c
    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, LS/d;

    invoke-virtual {v0, v3}, LS/d;->n(I)V

    return-void

    :pswitch_d
    new-instance v0, LJ/y;

    iget-object v1, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v1, LR1/e;

    iget-object v3, v1, LR1/e;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object v3, v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->g:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-direct {v0, v3}, LJ/y;-><init>(Landroid/view/View;)V

    iget-object v1, v1, LR1/e;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object v3, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->d:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v2

    iget-object v2, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->d:Landroid/widget/Button;

    invoke-static {v3, v3, v3, v3}, LJ/w;->a(IIII)LJ/w;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, LJ/y;->a(Landroid/view/View;LJ/w;)V

    iget-object v1, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->g:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void

    :pswitch_e
    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, LO/g;

    iget-boolean v2, v0, LO/g;->q:Z

    if-nez v2, :cond_19

    goto/16 :goto_11

    :cond_19
    iget-boolean v2, v0, LO/g;->o:Z

    iget-object v4, v0, LO/g;->c:LO/a;

    if-eqz v2, :cond_1a

    iput-boolean v3, v0, LO/g;->o:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, LO/a;->e:J

    const-wide/16 v7, -0x1

    iput-wide v7, v4, LO/a;->g:J

    iput-wide v5, v4, LO/a;->f:J

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v4, LO/a;->h:F

    :cond_1a
    iget-wide v5, v4, LO/a;->g:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_1b

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-wide v9, v4, LO/a;->g:J

    iget v2, v4, LO/a;->i:I

    int-to-long v11, v2

    add-long/2addr v9, v11

    cmp-long v2, v5, v9

    if-lez v2, :cond_1b

    goto :goto_10

    :cond_1b
    invoke-virtual {v0}, LO/g;->e()Z

    move-result v2

    if-nez v2, :cond_1c

    :goto_10
    iput-boolean v3, v0, LO/g;->q:Z

    goto :goto_11

    :cond_1c
    iget-boolean v2, v0, LO/g;->p:Z

    iget-object v5, v0, LO/g;->e:Landroid/view/View;

    if-eqz v2, :cond_1d

    iput-boolean v3, v0, LO/g;->p:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-wide v9, v11

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_1d
    iget-wide v2, v4, LO/a;->f:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_1e

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, LO/a;->a(J)F

    move-result v6

    const/high16 v7, -0x3f800000    # -4.0f

    mul-float/2addr v7, v6

    mul-float/2addr v7, v6

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    iget-wide v7, v4, LO/a;->f:J

    sub-long v7, v2, v7

    iput-wide v2, v4, LO/a;->f:J

    long-to-float v2, v7

    mul-float/2addr v2, v6

    iget v3, v4, LO/a;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v0, v0, LO/g;->s:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    sget-object v0, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_11
    return-void

    :cond_1e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, LK2/b;

    invoke-interface {v0}, LK2/b;->run()V

    invoke-interface {v0}, LK2/b;->onFinish()I

    return-void

    :pswitch_10
    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->o()V

    return-void

    :pswitch_11
    iget-object v0, v1, LB1/h;->d:Ljava/lang/Object;

    check-cast v0, LB1/i;

    iput-boolean v3, v0, LB1/i;->c:Z

    iget-object v1, v0, LB1/i;->e:Lw/a;

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v3, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:LS/d;

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, LS/d;->f()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget v1, v0, LB1/i;->b:I

    invoke-virtual {v0, v1}, LB1/i;->a(I)V

    goto :goto_12

    :cond_1f
    iget v3, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I

    if-ne v3, v2, :cond_20

    iget v0, v0, LB1/i;->b:I

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D(I)V

    :cond_20
    :goto_12
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
