.class public final Lcom/google/android/gms/internal/firebase-auth-api/a5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f:I

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    return-void
.end method

.method public static a(III)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p0, v2, :cond_2

    const/high16 p0, -0x80000000

    if-eq v1, p0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-ne p2, p1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static k(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static l(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public b(Ls/d;Lt/b;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v3, v1, Ls/d;->a0:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    iput v5, v2, Lt/b;->e:I

    iput v5, v2, Lt/b;->f:I

    iput v5, v2, Lt/b;->g:I

    return-void

    :cond_1
    iget-object v3, v1, Ls/d;->N:Ls/d;

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget v3, v2, Lt/b;->a:I

    iget v4, v2, Lt/b;->b:I

    iget v6, v2, Lt/b;->c:I

    iget v7, v2, Lt/b;->d:I

    iget v8, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->a:I

    iget v9, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    add-int/2addr v8, v9

    iget v9, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->c:I

    iget-object v10, v1, Ls/d;->Z:Ljava/lang/Object;

    check-cast v10, Landroid/view/View;

    invoke-static {v3}, Lk/Q0;->f(I)I

    move-result v11

    iget-object v12, v1, Ls/d;->E:Ls/c;

    iget-object v13, v1, Ls/d;->C:Ls/c;

    const/4 v14, 0x1

    const/4 v15, 0x3

    const/4 v5, 0x2

    if-eqz v11, :cond_d

    if-eq v11, v14, :cond_c

    if-eq v11, v5, :cond_6

    if-eq v11, v15, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    iget v6, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e:I

    if-eqz v13, :cond_4

    iget v11, v13, Ls/c;->g:I

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    :goto_0
    if-eqz v12, :cond_5

    iget v15, v12, Ls/c;->g:I

    add-int/2addr v11, v15

    :cond_5
    add-int/2addr v9, v11

    const/4 v11, -0x1

    invoke-static {v6, v9, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_3

    :cond_6
    iget v6, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e:I

    const/4 v11, -0x2

    invoke-static {v6, v9, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget v9, v1, Ls/d;->l:I

    if-ne v9, v14, :cond_7

    move v9, v14

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    :goto_1
    iget v11, v2, Lt/b;->j:I

    if-eq v11, v14, :cond_8

    if-ne v11, v5, :cond_e

    :cond_8
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ls/d;->k()I

    move-result v15

    if-ne v11, v15, :cond_9

    move v11, v14

    goto :goto_2

    :cond_9
    const/4 v11, 0x0

    :goto_2
    iget v15, v2, Lt/b;->j:I

    if-eq v15, v5, :cond_b

    if-eqz v9, :cond_b

    if-eqz v9, :cond_a

    if-nez v11, :cond_b

    :cond_a
    invoke-virtual/range {p1 .. p1}, Ls/d;->w()Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_b
    invoke-virtual/range {p1 .. p1}, Ls/d;->n()I

    move-result v6

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_3

    :cond_c
    const/high16 v11, 0x40000000    # 2.0f

    iget v6, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e:I

    const/4 v15, -0x2

    invoke-static {v6, v9, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_3

    :cond_d
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :cond_e
    :goto_3
    invoke-static {v4}, Lk/Q0;->f(I)I

    move-result v9

    if-eqz v9, :cond_19

    if-eq v9, v14, :cond_18

    if-eq v9, v5, :cond_12

    const/4 v7, 0x3

    if-eq v9, v7, :cond_f

    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_f
    iget v7, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f:I

    if-eqz v13, :cond_10

    iget-object v9, v1, Ls/d;->D:Ls/c;

    iget v9, v9, Ls/c;->g:I

    goto :goto_4

    :cond_10
    const/4 v9, 0x0

    :goto_4
    if-eqz v12, :cond_11

    iget-object v11, v1, Ls/d;->F:Ls/c;

    iget v11, v11, Ls/c;->g:I

    add-int/2addr v9, v11

    :cond_11
    add-int/2addr v8, v9

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_7

    :cond_12
    iget v7, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f:I

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    iget v8, v1, Ls/d;->m:I

    if-ne v8, v14, :cond_13

    move v8, v14

    goto :goto_5

    :cond_13
    const/4 v8, 0x0

    :goto_5
    iget v9, v2, Lt/b;->j:I

    if-eq v9, v14, :cond_14

    if-ne v9, v5, :cond_1a

    :cond_14
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ls/d;->n()I

    move-result v11

    if-ne v9, v11, :cond_15

    move v9, v14

    goto :goto_6

    :cond_15
    const/4 v9, 0x0

    :goto_6
    iget v11, v2, Lt/b;->j:I

    if-eq v11, v5, :cond_17

    if-eqz v8, :cond_17

    if-eqz v8, :cond_16

    if-nez v9, :cond_17

    :cond_16
    invoke-virtual/range {p1 .. p1}, Ls/d;->x()Z

    move-result v8

    if-eqz v8, :cond_1a

    :cond_17
    invoke-virtual/range {p1 .. p1}, Ls/d;->k()I

    move-result v7

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_7

    :cond_18
    const/high16 v9, 0x40000000    # 2.0f

    iget v7, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f:I

    const/4 v11, -0x2

    invoke-static {v7, v8, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_7

    :cond_19
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :cond_1a
    :goto_7
    iget-object v8, v1, Ls/d;->N:Ls/d;

    check-cast v8, Ls/e;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_1b

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/16 v11, 0x100

    invoke-static {v9, v11}, Ls/j;->c(II)Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ls/d;->n()I

    move-result v11

    if-ne v9, v11, :cond_1b

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8}, Ls/d;->n()I

    move-result v11

    if-ge v9, v11, :cond_1b

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ls/d;->k()I

    move-result v11

    if-ne v9, v11, :cond_1b

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8}, Ls/d;->k()I

    move-result v8

    if-ge v9, v8, :cond_1b

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v8

    iget v9, v1, Ls/d;->U:I

    if-ne v8, v9, :cond_1b

    invoke-virtual/range {p1 .. p1}, Ls/d;->v()Z

    move-result v8

    if-nez v8, :cond_1b

    iget v8, v1, Ls/d;->A:I

    invoke-virtual/range {p1 .. p1}, Ls/d;->n()I

    move-result v9

    invoke-static {v8, v6, v9}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->a(III)Z

    move-result v8

    if-eqz v8, :cond_1b

    iget v8, v1, Ls/d;->B:I

    invoke-virtual/range {p1 .. p1}, Ls/d;->k()I

    move-result v9

    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->a(III)Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-virtual/range {p1 .. p1}, Ls/d;->n()I

    move-result v0

    iput v0, v2, Lt/b;->e:I

    invoke-virtual/range {p1 .. p1}, Ls/d;->k()I

    move-result v0

    iput v0, v2, Lt/b;->f:I

    iget v0, v1, Ls/d;->U:I

    iput v0, v2, Lt/b;->g:I

    return-void

    :cond_1b
    const/4 v8, 0x3

    if-ne v3, v8, :cond_1c

    move v9, v14

    goto :goto_8

    :cond_1c
    const/4 v9, 0x0

    :goto_8
    if-ne v4, v8, :cond_1d

    move v8, v14

    goto :goto_9

    :cond_1d
    const/4 v8, 0x0

    :goto_9
    const/4 v11, 0x4

    if-eq v4, v11, :cond_1f

    if-ne v4, v14, :cond_1e

    goto :goto_a

    :cond_1e
    const/4 v4, 0x0

    goto :goto_b

    :cond_1f
    :goto_a
    move v4, v14

    :goto_b
    if-eq v3, v11, :cond_21

    if-ne v3, v14, :cond_20

    goto :goto_c

    :cond_20
    const/4 v3, 0x0

    goto :goto_d

    :cond_21
    :goto_c
    move v3, v14

    :goto_d
    const/4 v11, 0x0

    if-eqz v9, :cond_22

    iget v12, v1, Ls/d;->Q:F

    cmpl-float v12, v12, v11

    if-lez v12, :cond_22

    move v12, v14

    goto :goto_e

    :cond_22
    const/4 v12, 0x0

    :goto_e
    if-eqz v8, :cond_23

    iget v13, v1, Ls/d;->Q:F

    cmpl-float v11, v13, v11

    if-lez v11, :cond_23

    move v11, v14

    goto :goto_f

    :cond_23
    const/4 v11, 0x0

    :goto_f
    if-nez v10, :cond_24

    return-void

    :cond_24
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lu/e;

    iget v15, v2, Lt/b;->j:I

    if-eq v15, v14, :cond_26

    if-eq v15, v5, :cond_26

    if-eqz v9, :cond_26

    iget v5, v1, Ls/d;->l:I

    if-nez v5, :cond_26

    if-eqz v8, :cond_26

    iget v5, v1, Ls/d;->m:I

    if-eqz v5, :cond_25

    goto :goto_10

    :cond_25
    const/4 v0, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_17

    :cond_26
    :goto_10
    instance-of v5, v10, Lu/p;

    if-eqz v5, :cond_27

    instance-of v5, v1, Ls/g;

    if-eqz v5, :cond_27

    move-object v5, v1

    check-cast v5, Ls/g;

    move-object v8, v10

    check-cast v8, Lu/p;

    invoke-virtual {v8, v5, v6, v7}, Lu/p;->i(Ls/g;II)V

    goto :goto_11

    :cond_27
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    :goto_11
    iput v6, v1, Ls/d;->A:I

    iput v7, v1, Ls/d;->B:I

    const/4 v5, 0x0

    iput-boolean v5, v1, Ls/d;->g:Z

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v9

    iget v15, v1, Ls/d;->o:I

    if-lez v15, :cond_28

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_12

    :cond_28
    move v15, v5

    :goto_12
    iget v14, v1, Ls/d;->p:I

    if-lez v14, :cond_29

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_29
    iget v14, v1, Ls/d;->r:I

    if-lez v14, :cond_2a

    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    move/from16 v16, v6

    goto :goto_13

    :cond_2a
    move/from16 v16, v6

    move v14, v8

    :goto_13
    iget v6, v1, Ls/d;->s:I

    if-lez v6, :cond_2b

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    :cond_2b
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/4 v6, 0x1

    invoke-static {v0, v6}, Ls/j;->c(II)Z

    move-result v0

    if-nez v0, :cond_2d

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v12, :cond_2c

    if-eqz v4, :cond_2c

    iget v3, v1, Ls/d;->Q:F

    int-to-float v4, v14

    mul-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v15, v0

    goto :goto_14

    :cond_2c
    if-eqz v11, :cond_2d

    if-eqz v3, :cond_2d

    iget v3, v1, Ls/d;->Q:F

    int-to-float v4, v15

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v14, v0

    :cond_2d
    :goto_14
    if-ne v5, v15, :cond_2f

    if-eq v8, v14, :cond_2e

    goto :goto_15

    :cond_2e
    move v4, v9

    const/4 v0, -0x1

    const/4 v5, 0x0

    goto :goto_17

    :cond_2f
    :goto_15
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v5, v15, :cond_30

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_16

    :cond_30
    move/from16 v6, v16

    :goto_16
    if-eq v8, v14, :cond_31

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :cond_31
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    iput v6, v1, Ls/d;->A:I

    iput v7, v1, Ls/d;->B:I

    const/4 v5, 0x0

    iput-boolean v5, v1, Ls/d;->g:Z

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v4

    move v15, v0

    move v14, v3

    const/4 v0, -0x1

    :goto_17
    if-eq v4, v0, :cond_32

    const/4 v0, 0x1

    goto :goto_18

    :cond_32
    move v0, v5

    :goto_18
    iget v3, v2, Lt/b;->c:I

    if-ne v15, v3, :cond_33

    iget v3, v2, Lt/b;->d:I

    if-eq v14, v3, :cond_34

    :cond_33
    const/4 v5, 0x1

    :cond_34
    iput-boolean v5, v2, Lt/b;->i:Z

    iget-boolean v3, v13, Lu/e;->X:Z

    if-eqz v3, :cond_35

    const/4 v6, 0x1

    goto :goto_19

    :cond_35
    move v6, v0

    :goto_19
    if-eqz v6, :cond_36

    const/4 v0, -0x1

    if-eq v4, v0, :cond_36

    iget v0, v1, Ls/d;->U:I

    if-eq v0, v4, :cond_36

    const/4 v0, 0x1

    iput-boolean v0, v2, Lt/b;->i:Z

    :cond_36
    iput v15, v2, Lt/b;->e:I

    iput v14, v2, Lt/b;->f:I

    iput-boolean v6, v2, Lt/b;->h:Z

    iput v4, v2, Lt/b;->g:I

    return-void
.end method

.method public c(I)I
    .locals 3

    if-ltz p1, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr p1, v0

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f:I

    if-gt p1, v0, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    if-le v1, p1, :cond_0

    sub-int p1, v1, p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->c:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->c:I

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->d()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->c()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0
.end method

.method public d()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h:Ljava/lang/Object;

    check-cast p0, [B

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x3

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v1

    return p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0
.end method

.method public e()I
    .locals 7

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h:Ljava/lang/Object;

    check-cast v3, [B

    aget-byte v4, v3, v0

    if-ltz v4, :cond_1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    return v4

    :cond_1
    sub-int/2addr v1, v2

    const/16 v5, 0x9

    if-lt v1, v5, :cond_7

    add-int/lit8 v1, v0, 0x2

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v4

    if-gez v2, :cond_2

    xor-int/lit8 v0, v2, -0x80

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v2

    if-ltz v1, :cond_3

    xor-int/lit16 v0, v1, 0x3f80

    :goto_0
    move v1, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v0, 0x4

    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_4

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v0, 0x5

    aget-byte v2, v3, v2

    shl-int/lit8 v5, v2, 0x1c

    xor-int/2addr v1, v5

    const v5, 0xfe03f80

    xor-int/2addr v1, v5

    if-gez v2, :cond_5

    add-int/lit8 v2, v0, 0x6

    aget-byte v4, v3, v4

    if-gez v4, :cond_6

    add-int/lit8 v4, v0, 0x7

    aget-byte v2, v3, v2

    if-gez v2, :cond_5

    add-int/lit8 v2, v0, 0x8

    aget-byte v4, v3, v4

    if-gez v4, :cond_6

    add-int/lit8 v4, v0, 0x9

    aget-byte v2, v3, v2

    if-gez v2, :cond_5

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v3, v4

    if-ltz v2, :cond_7

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :goto_2
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    return v0

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->i()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e:I

    ushr-int/lit8 p0, v0, 0x3

    if-eqz p0, :cond_1

    return v0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/f;

    const-string v0, "Protocol message contained an invalid tag (zero)."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g()J
    .locals 9

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x8

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h:Ljava/lang/Object;

    check-cast p0, [B

    aget-byte v1, p0, v0

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    shl-long v1, v7, v2

    or-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x10

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, p0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x18

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x4

    aget-byte v3, p0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x20

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x5

    aget-byte v3, p0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x28

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x6

    aget-byte v3, p0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x30

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x7

    aget-byte p0, p0, v0

    int-to-long v3, p0

    and-long/2addr v3, v5

    const/16 p0, 0x38

    shl-long/2addr v3, p0

    or-long v0, v1, v3

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0
.end method

.method public h()J
    .locals 12

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h:Ljava/lang/Object;

    check-cast v3, [B

    aget-byte v4, v3, v0

    if-ltz v4, :cond_1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    int-to-long v0, v4

    return-wide v0

    :cond_1
    sub-int/2addr v1, v2

    const/16 v5, 0x9

    if-lt v1, v5, :cond_a

    add-int/lit8 v1, v0, 0x2

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v4

    if-gez v2, :cond_2

    xor-int/lit8 v0, v2, -0x80

    int-to-long v2, v0

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v2

    if-ltz v1, :cond_3

    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    :goto_0
    move v1, v4

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v2, v0, 0x4

    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_4

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    move-wide v10, v0

    move v1, v2

    move-wide v2, v10

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v4, v0, 0x5

    int-to-long v5, v1

    aget-byte v1, v3, v2

    int-to-long v1, v1

    const/16 v7, 0x1c

    shl-long/2addr v1, v7

    xor-long/2addr v1, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-ltz v7, :cond_5

    const-wide/32 v5, 0xfe03f80

    :goto_1
    xor-long v2, v1, v5

    goto :goto_0

    :cond_5
    add-int/lit8 v7, v0, 0x6

    aget-byte v4, v3, v4

    int-to-long v8, v4

    const/16 v4, 0x23

    shl-long/2addr v8, v4

    xor-long/2addr v1, v8

    cmp-long v4, v1, v5

    if-gez v4, :cond_6

    const-wide v3, -0x7f01fc080L

    :goto_2
    xor-long v2, v1, v3

    move v1, v7

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v0, 0x7

    aget-byte v7, v3, v7

    int-to-long v7, v7

    const/16 v9, 0x2a

    shl-long/2addr v7, v9

    xor-long/2addr v1, v7

    cmp-long v7, v1, v5

    if-ltz v7, :cond_7

    const-wide v5, 0x3f80fe03f80L

    goto :goto_1

    :cond_7
    add-int/lit8 v7, v0, 0x8

    aget-byte v4, v3, v4

    int-to-long v8, v4

    const/16 v4, 0x31

    shl-long/2addr v8, v4

    xor-long/2addr v1, v8

    cmp-long v4, v1, v5

    if-gez v4, :cond_8

    const-wide v3, -0x1fc07f01fc080L

    goto :goto_2

    :cond_8
    add-int/lit8 v4, v0, 0x9

    aget-byte v7, v3, v7

    int-to-long v7, v7

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    xor-long/2addr v1, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v1, v7

    cmp-long v7, v1, v5

    if-gez v7, :cond_9

    add-int/lit8 v0, v0, 0xa

    aget-byte v3, v3, v4

    int-to-long v3, v3

    cmp-long v3, v3, v5

    if-ltz v3, :cond_a

    move-wide v2, v1

    move v1, v0

    goto :goto_3

    :cond_9
    move-wide v2, v1

    goto/16 :goto_0

    :goto_3
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    return-wide v2

    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    iget v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    if-eq v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h:Ljava/lang/Object;

    check-cast v4, [B

    aget-byte v3, v4, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/f;

    const-string v0, "CodedInputStream encountered a malformed varint."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public j()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
