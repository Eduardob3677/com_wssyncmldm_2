.class public final LV/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LV/a;->a:I

    iput-object p2, p0, LV/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 26

    move-object/from16 v0, p0

    iget v1, v0, LV/a;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, LV/a;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/v;

    invoke-static {v0}, Landroidx/databinding/v;->access$100(Landroidx/databinding/v;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_0
    iget-object v0, v0, LV/a;->b:Ljava/lang/Object;

    check-cast v0, LJ/r0;

    iget-object v0, v0, LJ/r0;->c:Ljava/lang/Object;

    check-cast v0, Ls2/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v0, v0, Ls2/c;->c:Ljava/lang/Object;

    check-cast v0, LV/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, LV/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v6, v8, :cond_7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LV/e;

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    move/from16 p1, v6

    goto/16 :goto_5

    :cond_1
    iget-object v8, v0, LV/b;->a:Lo/k;

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v10}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v10, v3

    if-gez v10, :cond_0

    invoke-virtual {v8, v7}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-wide v10, v7, LV/e;->f:J

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-nez v8, :cond_3

    iput-wide v1, v7, LV/e;->f:J

    iget v8, v7, LV/e;->b:F

    invoke-virtual {v7, v8}, LV/e;->d(F)V

    goto :goto_1

    :cond_3
    sub-long v15, v1, v10

    iput-wide v1, v7, LV/e;->f:J

    iget v8, v7, LV/e;->k:F

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v8, v8, v13

    if-eqz v8, :cond_4

    iget-object v8, v7, LV/e;->j:LV/f;

    iget-wide v10, v8, LV/f;->i:D

    iget v10, v7, LV/e;->b:F

    float-to-double v10, v10

    iget v12, v7, LV/e;->a:F

    move/from16 p1, v6

    float-to-double v5, v12

    const-wide/16 v17, 0x2

    div-long v24, v15, v17

    move-object/from16 v17, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v5

    move-wide/from16 v22, v24

    invoke-virtual/range {v17 .. v23}, LV/f;->a(DDJ)LV/c;

    move-result-object v5

    iget-object v6, v7, LV/e;->j:LV/f;

    iget v8, v7, LV/e;->k:F

    float-to-double v10, v8

    iput-wide v10, v6, LV/f;->i:D

    iput v13, v7, LV/e;->k:F

    iget v8, v5, LV/c;->a:F

    float-to-double v10, v8

    iget v5, v5, LV/c;->b:F

    float-to-double v14, v5

    move-object/from16 v19, v6

    move-wide/from16 v20, v10

    move-wide/from16 v22, v14

    invoke-virtual/range {v19 .. v25}, LV/f;->a(DDJ)LV/c;

    move-result-object v5

    iget v6, v5, LV/c;->a:F

    iput v6, v7, LV/e;->b:F

    iget v5, v5, LV/c;->b:F

    iput v5, v7, LV/e;->a:F

    move v8, v13

    goto :goto_3

    :cond_4
    move/from16 p1, v6

    iget-object v10, v7, LV/e;->j:LV/f;

    iget v5, v7, LV/e;->b:F

    float-to-double v11, v5

    iget v5, v7, LV/e;->a:F

    float-to-double v5, v5

    move v8, v13

    move-wide v13, v5

    invoke-virtual/range {v10 .. v16}, LV/f;->a(DDJ)LV/c;

    move-result-object v5

    iget v6, v5, LV/c;->a:F

    iput v6, v7, LV/e;->b:F

    iget v5, v5, LV/c;->b:F

    iput v5, v7, LV/e;->a:F

    :goto_3
    iget v5, v7, LV/e;->b:F

    const v6, -0x800001

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v7, LV/e;->b:F

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v7, LV/e;->b:F

    iget v10, v7, LV/e;->a:F

    iget-object v11, v7, LV/e;->j:LV/f;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v12, v10

    iget-wide v14, v11, LV/f;->e:D

    cmpg-double v10, v12, v14

    if-gez v10, :cond_5

    iget-wide v12, v11, LV/f;->i:D

    double-to-float v10, v12

    sub-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v12, v5

    iget-wide v10, v11, LV/f;->d:D

    cmpg-double v5, v12, v10

    if-gez v5, :cond_5

    iget-object v5, v7, LV/e;->j:LV/f;

    iget-wide v10, v5, LV/f;->i:D

    double-to-float v5, v10

    iput v5, v7, LV/e;->b:F

    const/4 v5, 0x0

    iput v5, v7, LV/e;->a:F

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    iget v5, v7, LV/e;->b:F

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v7, LV/e;->b:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v7, LV/e;->b:F

    invoke-virtual {v7, v5}, LV/e;->d(F)V

    if-eqz v9, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, LV/e;->c(Z)V

    :cond_6
    :goto_5
    add-int/lit8 v6, p1, 0x1

    goto/16 :goto_0

    :cond_7
    iget-boolean v1, v0, LV/b;->e:Z

    if-eqz v1, :cond_a

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v9

    :goto_6
    if-ltz v1, :cond_9

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, v0, LV/b;->e:Z

    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c

    iget-object v1, v0, LV/b;->d:LJ/r0;

    if-nez v1, :cond_b

    new-instance v1, LJ/r0;

    iget-object v2, v0, LV/b;->c:Ls2/c;

    invoke-direct {v1, v2}, LJ/r0;-><init>(Ls2/c;)V

    iput-object v1, v0, LV/b;->d:LJ/r0;

    :cond_b
    iget-object v0, v0, LV/b;->d:LJ/r0;

    iget-object v1, v0, LJ/r0;->e:Ljava/lang/Object;

    check-cast v1, LV/a;

    iget-object v0, v0, LJ/r0;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/Choreographer;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
