.class public final Landroidx/picker/widget/P;
.super Landroidx/picker/widget/I;
.source "SourceFile"


# instance fields
.field public A:F

.field public final A0:F

.field public B:Landroidx/picker/widget/N;

.field public final B0:Landroid/animation/ValueAnimator;

.field public C:F

.field public final C0:Landroid/animation/ValueAnimator;

.field public D:J

.field public final D0:Landroid/animation/ValueAnimator;

.field public E:F

.field public final E0:Landroid/animation/ValueAnimator;

.field public F:Landroid/view/VelocityTracker;

.field public final F0:LV/e;

.field public final G:I

.field public G0:Z

.field public final H:I

.field public H0:Lc1/w;

.field public final I:I

.field public final I0:Landroid/view/accessibility/AccessibilityManager;

.field public final J:I

.field public final J0:Landroidx/picker/widget/L;

.field public K:I

.field public final K0:Landroidx/picker/widget/L;

.field public L:Z

.field public final L0:Landroidx/picker/widget/M;

.field public M:Z

.field public final M0:Landroidx/picker/widget/z;

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:Z

.field public S:Z

.field public T:I

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:I

.field public Y:Landroidx/picker/widget/A;

.field public final Z:Landroidx/picker/widget/O;

.field public final a0:Landroid/media/AudioManager;

.field public final b0:Landroidx/picker/widget/B;

.field public final c:Ljava/lang/String;

.field public final c0:I

.field public final d:Landroid/widget/EditText;

.field public final d0:I

.field public final e:I

.field public e0:Z

.field public final f:I

.field public f0:Z

.field public final g:I

.field public g0:Z

.field public h:I

.field public final h0:Landroid/widget/Scroller;

.field public final i:Z

.field public final i0:Landroid/widget/Scroller;

.field public final j:I

.field public j0:I

.field public final k:Ljava/util/Calendar;

.field public final k0:I

.field public final l:Ljava/util/Calendar;

.field public l0:Z

.field public final m:Ljava/util/Calendar;

.field public m0:Z

.field public final n:Landroidx/picker/widget/f;

.field public n0:Landroid/graphics/Typeface;

.field public o:J

.field public o0:Landroid/graphics/Typeface;

.field public final p:Ljava/util/HashMap;

.field public p0:Landroid/graphics/Typeface;

.field public final q:[Ljava/util/Calendar;

.field public final q0:Landroid/graphics/Typeface;

.field public final r:Landroid/graphics/Paint;

.field public final r0:F

.field public final s:Landroid/graphics/drawable/ColorDrawable;

.field public s0:I

.field public t:I

.field public t0:I

.field public u:I

.field public u0:Z

.field public v:I

.field public final v0:Landroid/view/animation/PathInterpolator;

.field public w:Landroid/widget/Scroller;

.field public final w0:Landroid/view/animation/PathInterpolator;

.field public final x:Landroid/widget/OverScroller;

.field public final x0:F

.field public final y:Landroid/widget/Scroller;

.field public final y0:F

.field public z:I

.field public z0:F


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinner;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    iput-object v2, v0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    const-wide/16 v7, 0x12c

    iput-wide v7, v0, Landroidx/picker/widget/P;->o:J

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Landroidx/picker/widget/P;->p:Ljava/util/HashMap;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/util/Calendar;

    iput-object v7, v0, Landroidx/picker/widget/P;->q:[Ljava/util/Calendar;

    const/high16 v7, -0x80000000

    iput v7, v0, Landroidx/picker/widget/P;->u:I

    iput v6, v0, Landroidx/picker/widget/P;->K:I

    iput v5, v0, Landroidx/picker/widget/P;->Q:I

    iput-boolean v6, v0, Landroidx/picker/widget/P;->e0:Z

    iput-boolean v6, v0, Landroidx/picker/widget/P;->f0:Z

    iput-boolean v6, v0, Landroidx/picker/widget/P;->g0:Z

    iput-boolean v6, v0, Landroidx/picker/widget/P;->l0:Z

    iput-boolean v6, v0, Landroidx/picker/widget/P;->u0:Z

    new-instance v7, Landroid/view/animation/PathInterpolator;

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const v10, 0x3ecccccd    # 0.4f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v7, v0, Landroidx/picker/widget/P;->v0:Landroid/view/animation/PathInterpolator;

    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v8, 0x3e2e147b    # 0.17f

    const v12, 0x3f547ae1    # 0.83f

    invoke-direct {v7, v8, v8, v12, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v7, v0, Landroidx/picker/widget/P;->w0:Landroid/view/animation/PathInterpolator;

    iput v10, v0, Landroidx/picker/widget/P;->x0:F

    const v7, 0x3dcccccd    # 0.1f

    iput v7, v0, Landroidx/picker/widget/P;->y0:F

    iput v7, v0, Landroidx/picker/widget/P;->z0:F

    iput v11, v0, Landroidx/picker/widget/P;->A0:F

    new-instance v7, Landroidx/picker/widget/L;

    invoke-direct {v7, v0, v6}, Landroidx/picker/widget/L;-><init>(Landroidx/picker/widget/P;I)V

    iput-object v7, v0, Landroidx/picker/widget/P;->J0:Landroidx/picker/widget/L;

    new-instance v7, Landroidx/picker/widget/L;

    invoke-direct {v7, v0, v5}, Landroidx/picker/widget/L;-><init>(Landroidx/picker/widget/P;I)V

    iput-object v7, v0, Landroidx/picker/widget/P;->K0:Landroidx/picker/widget/L;

    new-instance v7, Landroidx/picker/widget/M;

    invoke-direct {v7, v6, v0}, Landroidx/picker/widget/M;-><init>(ILjava/lang/Object;)V

    iput-object v7, v0, Landroidx/picker/widget/P;->L0:Landroidx/picker/widget/M;

    new-instance v7, Landroidx/picker/widget/z;

    invoke-direct {v7, v5, v0}, Landroidx/picker/widget/z;-><init>(ILjava/lang/Object;)V

    iput-object v7, v0, Landroidx/picker/widget/P;->M0:Landroidx/picker/widget/z;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070442

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v12, 0x7f070443

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v13, 0x7f070441

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v8

    div-float/2addr v13, v14

    iput v13, v0, Landroidx/picker/widget/P;->r0:F

    sget-object v13, Le0/a;->b:[I

    invoke-virtual {v2, v3, v13, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    iput v15, v0, Landroidx/picker/widget/P;->e:I

    invoke-virtual {v13, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Landroidx/picker/widget/P;->f:I

    const/4 v9, 0x3

    invoke-virtual {v13, v9, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, v0, Landroidx/picker/widget/P;->g:I

    invoke-virtual {v13, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Landroidx/picker/widget/P;->h:I

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v12, v0, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-static {v12, v13}, Landroidx/picker/widget/P;->f(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v12

    iput-object v12, v0, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    iget-object v12, v0, Landroidx/picker/widget/P;->k:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-static {v12, v13}, Landroidx/picker/widget/P;->f(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v12

    iput-object v12, v0, Landroidx/picker/widget/P;->k:Ljava/util/Calendar;

    iget-object v13, v0, Landroidx/picker/widget/P;->l:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v13, v10}, Landroidx/picker/widget/P;->f(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/P;->l:Ljava/util/Calendar;

    sget-object v13, Le0/a;->a:[I

    invoke-virtual {v2, v3, v13, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v13, 0x76e

    :try_start_0
    invoke-virtual {v3, v6, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    invoke-virtual {v12, v13, v6, v5}, Ljava/util/Calendar;->set(III)V

    const/16 v12, 0x834

    invoke-virtual {v3, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    const/16 v13, 0xb

    const/16 v11, 0x1f

    invoke-virtual {v10, v12, v13, v11}, Ljava/util/Calendar;->set(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v15, v14, :cond_1

    if-eq v8, v14, :cond_1

    if-gt v15, v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight > maxHeight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eq v9, v14, :cond_3

    iget v3, v0, Landroidx/picker/widget/P;->h:I

    if-eq v3, v14, :cond_3

    if-gt v9, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minWidth > maxWidth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v5, v8, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroidx/picker/widget/P;->J:I

    iget v3, v0, Landroidx/picker/widget/P;->h:I

    if-ne v3, v14, :cond_4

    move v3, v5

    goto :goto_2

    :cond_4
    move v3, v6

    :goto_2
    iput-boolean v3, v0, Landroidx/picker/widget/P;->i:Z

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x7f040111

    invoke-virtual {v9, v10, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v9, v3, Landroid/util/TypedValue;->resourceId:I

    const/4 v10, 0x0

    const/high16 v11, 0x33000000

    const v12, 0xffffff

    if-eqz v9, :cond_5

    sget-object v3, LA/r;->a:Ljava/lang/ThreadLocal;

    invoke-static {v7, v9, v10}, LA/l;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    :goto_3
    and-int/2addr v3, v12

    or-int/2addr v3, v11

    goto :goto_4

    :cond_5
    iget v3, v3, Landroid/util/TypedValue;->data:I

    goto :goto_3

    :goto_4
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v9, v0, Landroidx/picker/widget/P;->s:Landroid/graphics/drawable/ColorDrawable;

    invoke-static/range {p2 .. p2}, LW1/a;->S(Landroid/content/Context;)Z

    move-result v3

    const v9, 0x3e4ccccd    # 0.2f

    if-nez v3, :cond_6

    iput v9, v0, Landroidx/picker/widget/P;->y0:F

    iput v9, v0, Landroidx/picker/widget/P;->z0:F

    :cond_6
    new-instance v3, Landroidx/picker/widget/O;

    invoke-direct {v3, v6, v0}, Landroidx/picker/widget/O;-><init>(ILjava/lang/Object;)V

    iput-object v3, v0, Landroidx/picker/widget/P;->Z:Landroidx/picker/widget/O;

    invoke-virtual {v1, v6}, Landroid/view/View;->setWillNotDraw(Z)V

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v11, 0x7f0d00b9

    invoke-virtual {v3, v11, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v3, 0x7f0a00b2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroidx/picker/widget/P;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/P;->q0:Landroid/graphics/Typeface;

    const-string v3, "sec-roboto-condensed-light"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x22

    if-lt v11, v12, :cond_7

    const-string v11, "sec"

    invoke-static {v11, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    const/16 v12, 0x258

    invoke-static {v11, v12, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v11

    iput-object v11, v0, Landroidx/picker/widget/P;->n0:Landroid/graphics/Typeface;

    goto :goto_5

    :cond_7
    const-string v11, "sec-roboto-light"

    invoke-static {v11, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    iput-object v11, v0, Landroidx/picker/widget/P;->n0:Landroid/graphics/Typeface;

    :goto_5
    iget-object v11, v0, Landroidx/picker/widget/P;->n0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v11}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroidx/picker/widget/P;->n0:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iput-object v3, v0, Landroidx/picker/widget/P;->n0:Landroid/graphics/Typeface;

    goto :goto_6

    :cond_8
    const-string v1, "sans-serif-thin"

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/P;->n0:Landroid/graphics/Typeface;

    :cond_9
    :goto_6
    iget-object v1, v0, Landroidx/picker/widget/P;->n0:Landroid/graphics/Typeface;

    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/P;->o0:Landroid/graphics/Typeface;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, LZ0/j;->R(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "theme_font_clock"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    :try_start_1
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    :cond_a
    move-object v1, v10

    :goto_7
    iput-object v1, v0, Landroidx/picker/widget/P;->n0:Landroid/graphics/Typeface;

    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/P;->o0:Landroid/graphics/Typeface;

    goto :goto_8

    :cond_b
    iput v9, v0, Landroidx/picker/widget/P;->y0:F

    iput v9, v0, Landroidx/picker/widget/P;->z0:F

    :cond_c
    :goto_8
    invoke-static {}, Landroidx/picker/widget/P;->i()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Landroidx/picker/widget/P;->q0:Landroid/graphics/Typeface;

    iput-object v1, v0, Landroidx/picker/widget/P;->n0:Landroid/graphics/Typeface;

    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/P;->o0:Landroid/graphics/Typeface;

    :cond_d
    iget-object v1, v0, Landroidx/picker/widget/P;->d:Landroid/widget/EditText;

    invoke-static {v1}, Lp0/a;->l(Landroid/view/View;)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/picker/widget/P;->m0:Z

    iget-object v1, v0, Landroidx/picker/widget/P;->n0:Landroid/graphics/Typeface;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/P;->p0:Landroid/graphics/Typeface;

    iget-object v1, v0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v5, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/P;->p()V

    iget-object v1, v0, Landroidx/picker/widget/P;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v3, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v3, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->a()[I

    move-result-object v3

    invoke-virtual {v1, v3, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v8, LA/r;->a:Ljava/lang/ThreadLocal;

    const v8, 0x7f0603d5

    invoke-static {v7, v8, v3}, LA/l;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, v0, Landroidx/picker/widget/P;->k0:I

    iput v1, v0, Landroidx/picker/widget/P;->j0:I

    invoke-static/range {p2 .. p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, v0, Landroidx/picker/widget/P;->G:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v7

    mul-int/2addr v7, v4

    iput v7, v0, Landroidx/picker/widget/P;->H:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroidx/picker/widget/P;->I:I

    iget-object v2, v0, Landroidx/picker/widget/P;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroidx/picker/widget/P;->j:I

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    int-to-float v2, v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Landroidx/picker/widget/P;->n0:Landroid/graphics/Typeface;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v2, v0, Landroidx/picker/widget/P;->j0:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v7, v0, Landroidx/picker/widget/P;->r:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v2, v7

    iput v2, v0, Landroidx/picker/widget/P;->A0:F

    new-instance v2, Landroid/widget/Scroller;

    iget-object v7, v0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    iget-object v8, v0, Landroidx/picker/widget/P;->v0:Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v7, v8, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v2, v0, Landroidx/picker/widget/P;->h0:Landroid/widget/Scroller;

    new-instance v2, Landroid/widget/Scroller;

    iget-object v7, v0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-direct {v2, v7, v10, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v2, v0, Landroidx/picker/widget/P;->i0:Landroid/widget/Scroller;

    iput-object v2, v0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    new-instance v2, Landroid/widget/Scroller;

    iget-object v7, v0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3e99999a    # 0.3f

    const/4 v11, 0x0

    const v12, 0x3ecccccd    # 0.4f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v8, v12, v11, v9, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {v2, v7, v8}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, v0, Landroidx/picker/widget/P;->y:Landroid/widget/Scroller;

    new-instance v2, Landroid/widget/OverScroller;

    iget-object v7, v0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v2, v7, v8}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, v0, Landroidx/picker/widget/P;->x:Landroid/widget/OverScroller;

    new-instance v2, LV/d;

    invoke-direct {v2}, LV/d;-><init>()V

    new-instance v7, LV/e;

    invoke-direct {v7, v2}, LV/e;-><init>(LV/d;)V

    iput-object v7, v0, Landroidx/picker/widget/P;->F0:LV/e;

    new-instance v2, LV/f;

    invoke-direct {v2}, LV/f;-><init>()V

    iput-object v2, v7, LV/e;->j:LV/f;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v7, LV/e;->g:F

    iget-object v2, v0, Landroidx/picker/widget/P;->L0:Landroidx/picker/widget/M;

    iget-boolean v8, v7, LV/e;->e:Z

    if-nez v8, :cond_14

    iget-object v8, v7, LV/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v2, v0, Landroidx/picker/widget/P;->M0:Landroidx/picker/widget/z;

    iget-object v8, v7, LV/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v2, v7, LV/e;->j:LV/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v8, 0x40e00000    # 7.0f

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iput-wide v8, v2, LV/f;->a:D

    iput-boolean v6, v2, LV/f;->c:Z

    iget-object v2, v7, LV/e;->j:LV/f;

    const v7, 0x3f7d70a4    # 0.99f

    float-to-double v7, v7

    iput-wide v7, v2, LV/f;->b:D

    iput-boolean v6, v2, LV/f;->c:Z

    sget-object v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->d:Landroidx/picker/widget/f;

    iget-object v7, v0, Landroidx/picker/widget/P;->n:Landroidx/picker/widget/f;

    if-ne v2, v7, :cond_10

    goto :goto_9

    :cond_10
    iput-object v2, v0, Landroidx/picker/widget/P;->n:Landroidx/picker/widget/f;

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/P;->h()V

    :goto_9
    iget-object v2, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_11
    iget-object v2, v0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, v0, Landroidx/picker/widget/P;->a0:Landroid/media/AudioManager;

    new-instance v2, Landroidx/picker/widget/B;

    invoke-direct {v2, v5}, Landroidx/picker/widget/B;-><init>(I)V

    iput-boolean v6, v2, Landroidx/picker/widget/B;->d:Z

    iput-object v2, v0, Landroidx/picker/widget/P;->b0:Landroidx/picker/widget/B;

    const/16 v2, 0x20

    invoke-static {v2}, Lo3/f;->s(I)I

    move-result v2

    iput v2, v0, Landroidx/picker/widget/P;->c0:I

    const-string v2, "SOUND_TIME_PICKER_SCROLL"

    invoke-static {v2}, Li3/x;->L(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-static {v10, v2}, Li3/x;->A(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    instance-of v7, v2, Ljava/lang/Integer;

    if-eqz v7, :cond_12

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_a

    :cond_12
    move v2, v6

    :goto_a
    iput v2, v0, Landroidx/picker/widget/P;->d0:I

    iget-object v2, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v2, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    const/high16 v7, 0x20000

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v2, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2, v6}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    const-string v2, ""

    iput-object v2, v0, Landroidx/picker/widget/P;->c:Ljava/lang/String;

    iget-object v2, v0, Landroidx/picker/widget/P;->d:Landroid/widget/EditText;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    const-class v8, Landroid/view/View;

    const-string v9, "hidden_semSetDirectPenInputEnabled"

    invoke-static {v8, v9, v7}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    if-eqz v7, :cond_13

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v7, v8}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iget-object v2, v0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    const-string v7, "accessibility"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, v0, Landroidx/picker/widget/P;->I0:Landroid/view/accessibility/AccessibilityManager;

    iget v2, v0, Landroidx/picker/widget/P;->x0:F

    iget v7, v0, Landroidx/picker/widget/P;->y0:F

    new-array v8, v4, [F

    aput v2, v8, v6

    aput v7, v8, v5

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker/widget/P;->C0:Landroid/animation/ValueAnimator;

    iget-object v7, v0, Landroidx/picker/widget/P;->w0:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v9, 0x64

    invoke-virtual {v2, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v11, v0, Landroidx/picker/widget/P;->J0:Landroidx/picker/widget/L;

    invoke-virtual {v2, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v2, v0, Landroidx/picker/widget/P;->y0:F

    iget v11, v0, Landroidx/picker/widget/P;->x0:F

    new-array v4, v4, [F

    aput v2, v4, v6

    aput v11, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker/widget/P;->B0:Landroid/animation/ValueAnimator;

    iget-object v4, v0, Landroidx/picker/widget/P;->w0:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, v0, Landroidx/picker/widget/P;->J0:Landroidx/picker/widget/L;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker/widget/P;->D0:Landroid/animation/ValueAnimator;

    iget-object v4, v0, Landroidx/picker/widget/P;->w0:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, v0, Landroidx/picker/widget/P;->K0:Landroidx/picker/widget/L;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/P;->E0:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Landroidx/picker/widget/P;->w0:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, v0, Landroidx/picker/widget/P;->K0:Landroidx/picker/widget/L;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    return-void

    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static f(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/16 p0, 0xb

    const/16 v0, 0xc

    invoke-virtual {p1, p0, v0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p1, v0, p0}, Ljava/util/Calendar;->set(II)V

    return-object p1
.end method

.method public static i()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "my"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static j(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown measure mode: "

    invoke-static {v1, p1}, LB/f;->t(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 7

    iget-object v0, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Landroidx/picker/widget/P;->k(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/P;->y:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Landroidx/picker/widget/P;->k(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/picker/widget/P;->z:I

    const/4 v1, 0x1

    iput v1, p0, Landroidx/picker/widget/P;->Q:I

    iget-boolean v2, p0, Landroidx/picker/widget/P;->U:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Landroidx/picker/widget/P;->U:Z

    iput-boolean v1, p0, Landroidx/picker/widget/P;->V:Z

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Landroidx/picker/widget/P;->V:Z

    const/16 v3, 0xa

    if-eqz v2, :cond_4

    iput-boolean v0, p0, Landroidx/picker/widget/P;->V:Z

    iput-boolean v1, p0, Landroidx/picker/widget/P;->W:Z

    iget-object v0, p0, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rem-int/2addr v4, v3

    if-nez v4, :cond_2

    iput v3, p0, Landroidx/picker/widget/P;->Q:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/2addr v0, v3

    sub-int/2addr v3, v0

    iput v3, p0, Landroidx/picker/widget/P;->Q:I

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/2addr v0, v3

    iput v0, p0, Landroidx/picker/widget/P;->Q:I

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Landroidx/picker/widget/P;->W:Z

    if-eqz v0, :cond_5

    iput v3, p0, Landroidx/picker/widget/P;->Q:I

    :cond_5
    :goto_0
    iget-boolean v0, p0, Landroidx/picker/widget/P;->l0:Z

    if-eqz v0, :cond_6

    iput v1, p0, Landroidx/picker/widget/P;->Q:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroidx/picker/widget/P;->o:J

    const/16 v0, 0x64

    :goto_1
    move v6, v0

    goto :goto_2

    :cond_6
    const/16 v0, 0x1f4

    goto :goto_1

    :goto_2
    iget v0, p0, Landroidx/picker/widget/P;->Q:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroidx/picker/widget/P;->X:I

    if-eqz p1, :cond_7

    iget-object v1, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    iget p1, p0, Landroidx/picker/widget/P;->t:I

    neg-int p1, p1

    mul-int v5, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    iget p1, p0, Landroidx/picker/widget/P;->t:I

    mul-int v5, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_3
    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final b(Ljava/util/Calendar;)V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/P;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/P;->k:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v1, p0, Landroidx/picker/widget/P;->l:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/P;->n:Landroidx/picker/widget/f;

    if-nez v1, :cond_2

    new-instance p0, Landroid/icu/text/SimpleDateFormat;

    const-string v1, "EEE, MMM d"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    iget-object v1, v1, Landroidx/picker/widget/f;->a:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const v3, 0x8001a

    invoke-static {p0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, ""

    :goto_1
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(I)Z
    .locals 9

    iget v0, p0, Landroidx/picker/widget/P;->u:I

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Landroidx/picker/widget/P;->v:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_4

    iput v2, p0, Landroidx/picker/widget/P;->z:I

    iget-boolean v1, p0, Landroidx/picker/widget/P;->u0:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v1, p0, Landroidx/picker/widget/P;->t:I

    if-ge p1, v1, :cond_3

    if-lez v0, :cond_1

    :goto_0
    neg-int v1, v1

    :cond_1
    add-int/2addr v0, v1

    :cond_2
    move v7, v0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v1, p0, Landroidx/picker/widget/P;->t:I

    div-int/lit8 v3, v1, 0x2

    if-le p1, v3, :cond_2

    if-lez v0, :cond_1

    goto :goto_0

    :goto_1
    iget-object v3, p0, Landroidx/picker/widget/P;->y:Landroid/widget/Scroller;

    const/4 v6, 0x0

    const/16 v8, 0x12c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object p1, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iput-boolean v2, p0, Landroidx/picker/widget/P;->u0:Z

    const/4 p0, 0x1

    return p0

    :cond_4
    iput-boolean v2, p0, Landroidx/picker/widget/P;->u0:Z

    return v2
.end method

.method public final d(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/P;->n:Landroidx/picker/widget/f;

    if-nez v0, :cond_0

    new-instance p0, Landroid/icu/text/SimpleDateFormat;

    const-string v0, "EEE, MMM d"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/16 p1, 0x1a

    invoke-static {p0, v0, v1, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()Landroidx/picker/widget/A;
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/P;->Y:Landroidx/picker/widget/A;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/picker/widget/A;

    invoke-direct {v0, p0}, Landroidx/picker/widget/A;-><init>(Landroidx/picker/widget/P;)V

    iput-object v0, p0, Landroidx/picker/widget/P;->Y:Landroidx/picker/widget/A;

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/P;->Y:Landroidx/picker/widget/A;

    return-object p0
.end method

.method public final g(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 8

    iget-object v0, p0, Landroidx/picker/widget/P;->l:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    const/4 v2, 0x5

    iget-object p0, p0, Landroidx/picker/widget/P;->k:Ljava/util/Calendar;

    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    long-to-int p1, v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    long-to-int p0, v3

    add-int/lit8 p0, p0, 0x1

    rem-int/2addr p1, p0

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->add(II)V

    return-object v1

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    long-to-int p1, v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    long-to-int p0, v3

    add-int/lit8 p0, p0, 0x1

    rem-int/2addr p1, p0

    neg-int p0, p1

    invoke-virtual {v1, v2, p0}, Ljava/util/Calendar;->add(II)V

    return-object v1

    :cond_1
    return-object p1
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Landroidx/picker/widget/P;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/picker/widget/P;->q:[Ljava/util/Calendar;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    add-int/lit8 v3, v0, -0x2

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    aput-object v2, v1, v0

    invoke-virtual {p0, v2}, Landroidx/picker/widget/P;->b(Ljava/util/Calendar;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k(Landroid/widget/Scroller;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    iget p1, p0, Landroidx/picker/widget/P;->t:I

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget v3, p0, Landroidx/picker/widget/P;->v:I

    add-int/2addr v3, v1

    iget v4, p0, Landroidx/picker/widget/P;->u:I

    sub-int/2addr v4, v3

    if-eqz v4, :cond_3

    rem-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v2, p0, Landroidx/picker/widget/P;->t:I

    div-int/lit8 v3, v2, 0x2

    if-le p1, v3, :cond_2

    if-lez v4, :cond_1

    sub-int/2addr v4, v2

    goto :goto_0

    :cond_1
    add-int/2addr v4, v2

    :cond_2
    :goto_0
    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Landroidx/picker/widget/P;->o(I)V

    return v0

    :cond_3
    return v2
.end method

.method public final l(I)V
    .locals 1

    iget v0, p0, Landroidx/picker/widget/P;->K:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/picker/widget/P;->K:I

    return-void
.end method

.method public final m(JZ)V
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/P;->B:Landroidx/picker/widget/N;

    iget-object v1, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/picker/widget/N;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0}, Landroidx/picker/widget/N;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/picker/widget/P;->B:Landroidx/picker/widget/N;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/picker/widget/P;->l0:Z

    iput-boolean v0, p0, Landroidx/picker/widget/P;->U:Z

    iget-object p0, p0, Landroidx/picker/widget/P;->B:Landroidx/picker/widget/N;

    iput-boolean p3, p0, Landroidx/picker/widget/N;->d:Z

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final n()V
    .locals 2

    iget-boolean v0, p0, Landroidx/picker/widget/P;->l0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/picker/widget/P;->l0:Z

    iget v0, p0, Landroidx/picker/widget/P;->u:I

    iput v0, p0, Landroidx/picker/widget/P;->v:I

    :cond_0
    iput-boolean v1, p0, Landroidx/picker/widget/P;->U:Z

    iput-boolean v1, p0, Landroidx/picker/widget/P;->V:Z

    iput-boolean v1, p0, Landroidx/picker/widget/P;->W:Z

    const/4 v0, 0x1

    iput v0, p0, Landroidx/picker/widget/P;->Q:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroidx/picker/widget/P;->o:J

    iget-object v0, p0, Landroidx/picker/widget/P;->B:Landroidx/picker/widget/N;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/P;->Z:Landroidx/picker/widget/O;

    invoke-virtual {p0}, Landroidx/picker/widget/O;->a()V

    return-void
.end method

.method public final o(I)V
    .locals 9

    if-eqz p1, :cond_9

    iget v0, p0, Landroidx/picker/widget/P;->t:I

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v0, p0, Landroidx/picker/widget/P;->v:I

    add-int/2addr v0, p1

    iget v1, p0, Landroidx/picker/widget/P;->u:I

    iget-object v2, p0, Landroidx/picker/widget/P;->k:Ljava/util/Calendar;

    iget-object v3, p0, Landroidx/picker/widget/P;->y:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-object v6, p0, Landroidx/picker/widget/P;->q:[Ljava/util/Calendar;

    if-le v0, v1, :cond_1

    aget-object v0, v6, v5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object p1, p0, Landroidx/picker/widget/P;->x:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object p1, p0, Landroidx/picker/widget/P;->F0:LV/e;

    invoke-virtual {p1}, LV/e;->b()V

    iput-boolean v4, p0, Landroidx/picker/widget/P;->G0:Z

    iget p1, p0, Landroidx/picker/widget/P;->u:I

    iget v0, p0, Landroidx/picker/widget/P;->v:I

    sub-int/2addr p1, v0

    :cond_1
    iget v0, p0, Landroidx/picker/widget/P;->v:I

    add-int/2addr v0, p1

    iget v1, p0, Landroidx/picker/widget/P;->u:I

    iget-object v7, p0, Landroidx/picker/widget/P;->l:Ljava/util/Calendar;

    if-ge v0, v1, :cond_2

    aget-object v0, v6, v5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object p1, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object p1, p0, Landroidx/picker/widget/P;->x:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object p1, p0, Landroidx/picker/widget/P;->F0:LV/e;

    invoke-virtual {p1}, LV/e;->b()V

    iput-boolean v4, p0, Landroidx/picker/widget/P;->G0:Z

    iget p1, p0, Landroidx/picker/widget/P;->u:I

    iget v0, p0, Landroidx/picker/widget/P;->v:I

    sub-int/2addr p1, v0

    :cond_2
    iget v0, p0, Landroidx/picker/widget/P;->v:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/picker/widget/P;->v:I

    :cond_3
    :goto_0
    iget p1, p0, Landroidx/picker/widget/P;->v:I

    iget v0, p0, Landroidx/picker/widget/P;->u:I

    sub-int v0, p1, v0

    iget v1, p0, Landroidx/picker/widget/P;->t0:I

    const/4 v3, 0x1

    const/4 v8, 0x5

    if-lt v0, v1, :cond_6

    iget v0, p0, Landroidx/picker/widget/P;->t:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/picker/widget/P;->v:I

    array-length p1, v6

    sub-int/2addr p1, v3

    invoke-static {v6, v4, v6, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p1, v6, v3

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    const/4 v0, -0x1

    invoke-virtual {p1, v8, v0}, Ljava/util/Calendar;->add(II)V

    aput-object p1, v6, v4

    invoke-virtual {p0, p1}, Landroidx/picker/widget/P;->b(Ljava/util/Calendar;)V

    iget-boolean p1, p0, Landroidx/picker/widget/P;->f0:Z

    if-nez p1, :cond_5

    aget-object p1, v6, v5

    invoke-virtual {p0, p1}, Landroidx/picker/widget/P;->q(Ljava/util/Calendar;)V

    iput-boolean v3, p0, Landroidx/picker/widget/P;->u0:Z

    iget p1, p0, Landroidx/picker/widget/P;->X:I

    if-lez p1, :cond_4

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/picker/widget/P;->X:I

    goto :goto_1

    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/P;->a0:Landroid/media/AudioManager;

    iget v0, p0, Landroidx/picker/widget/P;->d0:I

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object p1, p0, Landroidx/picker/widget/P;->b0:Landroidx/picker/widget/B;

    iget-boolean v0, p1, Landroidx/picker/widget/B;->d:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget v1, p0, Landroidx/picker/widget/P;->c0:I

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    iput-boolean v3, p1, Landroidx/picker/widget/B;->d:Z

    :cond_5
    :goto_1
    aget-object p1, v6, v5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    if-gtz p1, :cond_3

    iget p1, p0, Landroidx/picker/widget/P;->u:I

    iput p1, p0, Landroidx/picker/widget/P;->v:I

    goto :goto_0

    :cond_6
    :goto_2
    iget p1, p0, Landroidx/picker/widget/P;->v:I

    iget v0, p0, Landroidx/picker/widget/P;->u:I

    sub-int v0, p1, v0

    iget v1, p0, Landroidx/picker/widget/P;->t0:I

    neg-int v1, v1

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroidx/picker/widget/P;->t:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/picker/widget/P;->v:I

    array-length p1, v6

    sub-int/2addr p1, v3

    invoke-static {v6, v3, v6, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v6

    sub-int/2addr p1, v5

    aget-object p1, v6, p1

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1, v8, v3}, Ljava/util/Calendar;->add(II)V

    array-length v0, v6

    sub-int/2addr v0, v3

    aput-object p1, v6, v0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/P;->b(Ljava/util/Calendar;)V

    iget-boolean p1, p0, Landroidx/picker/widget/P;->f0:Z

    if-nez p1, :cond_8

    aget-object p1, v6, v5

    invoke-virtual {p0, p1}, Landroidx/picker/widget/P;->q(Ljava/util/Calendar;)V

    iput-boolean v3, p0, Landroidx/picker/widget/P;->u0:Z

    iget p1, p0, Landroidx/picker/widget/P;->X:I

    if-lez p1, :cond_7

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/picker/widget/P;->X:I

    goto :goto_3

    :cond_7
    iget-object p1, p0, Landroidx/picker/widget/P;->a0:Landroid/media/AudioManager;

    iget v0, p0, Landroidx/picker/widget/P;->d0:I

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object p1, p0, Landroidx/picker/widget/P;->b0:Landroidx/picker/widget/B;

    iget-boolean v0, p1, Landroidx/picker/widget/B;->d:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget v1, p0, Landroidx/picker/widget/P;->c0:I

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    iput-boolean v3, p1, Landroidx/picker/widget/B;->d:Z

    :cond_8
    :goto_3
    aget-object p1, v6, v5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    if-ltz p1, :cond_6

    iget p1, p0, Landroidx/picker/widget/P;->u:I

    iput p1, p0, Landroidx/picker/widget/P;->v:I

    goto :goto_2

    :cond_9
    :goto_4
    return-void
.end method

.method public final p()V
    .locals 2

    iget-boolean v0, p0, Landroidx/picker/widget/P;->m0:Z

    iget-object v1, p0, Landroidx/picker/widget/P;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/P;->p0:Landroid/graphics/Typeface;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/P;->n0:Landroid/graphics/Typeface;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method

.method public final q(Ljava/util/Calendar;)V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/P;->k:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/picker/widget/P;->l:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Ljava/util/Calendar;

    iget-object v1, p0, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget-object v2, p0, Landroidx/picker/widget/P;->I0:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroidx/picker/widget/P;->f0:Z

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Landroidx/picker/widget/P;->g(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p0, v1}, Landroidx/picker/widget/P;->d(Ljava/util/Calendar;)Ljava/lang/String;

    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_3
    invoke-virtual {p0}, Landroidx/picker/widget/P;->h()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final r(Z)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/picker/widget/P;->E0:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroidx/picker/widget/P;->C0:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getDuration()I

    move-result p1

    add-int/lit8 p1, p1, 0x64

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x64

    int-to-long p0, v0

    invoke-virtual {v1, p0, p1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_1
    iget p1, p0, Landroidx/picker/widget/P;->z0:F

    iget v3, p0, Landroidx/picker/widget/P;->x0:F

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput p1, v4, v0

    const/4 p1, 0x1

    aput v3, v4, p1

    iget-object p1, p0, Landroidx/picker/widget/P;->B0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget v0, p0, Landroidx/picker/widget/P;->j0:I

    iget v3, p0, Landroidx/picker/widget/P;->k0:I

    filled-new-array {v0, v3}, [I

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/widget/P;->D0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void
.end method

.method public final s()V
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/P;->y:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v1, p0, Landroidx/picker/widget/P;->x:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v1, p0, Landroidx/picker/widget/P;->F0:LV/e;

    invoke-virtual {v1}, LV/e;->b()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/picker/widget/P;->G0:Z

    iget-boolean v2, p0, Landroidx/picker/widget/P;->f0:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {p0, v2}, Landroidx/picker/widget/P;->k(Landroid/widget/Scroller;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/P;->k(Landroid/widget/Scroller;)Z

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/picker/widget/P;->c(I)Z

    return-void
.end method
