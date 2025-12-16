.class public Landroidx/picker/widget/SeslDatePicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/picker/widget/F;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroidx/picker/widget/G;


# static fields
.field public static final u0:Landroid/view/animation/PathInterpolator;


# instance fields
.field public A:I

.field public final B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public final G:I

.field public H:I

.field public I:I

.field public final J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public final O:Ljava/lang/String;

.field public final Q:Landroidx/picker/widget/g;

.field public final R:Landroidx/viewpager/widget/ViewPager;

.field public final T:Landroid/widget/RelativeLayout;

.field public final U:Landroid/widget/TextView;

.field public final V:Landroid/widget/LinearLayout;

.field public final W:Landroidx/picker/widget/i;

.field public final a0:Landroid/widget/ViewAnimator;

.field public final b0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

.field public c:Landroidx/picker/widget/N;

.field public final c0:Landroid/widget/LinearLayout;

.field public final d:Landroid/content/Context;

.field public final d0:Landroid/widget/RelativeLayout;

.field public e:Ljava/util/Locale;

.field public final e0:Landroid/widget/LinearLayout;

.field public f:Z

.field public f0:Ljava/text/SimpleDateFormat;

.field public g:Z

.field public final g0:Landroid/widget/ImageButton;

.field public h:Z

.field public final h0:Landroid/widget/ImageButton;

.field public i:Z

.field public final i0:Landroid/view/View;

.field public j:Z

.field public final j0:Landroid/view/View;

.field public k:Z

.field public final k0:Landroid/view/View;

.field public l:Z

.field public final l0:Landroid/animation/ObjectAnimator;

.field public final m:Ljava/util/Calendar;

.field public final m0:Landroid/animation/ObjectAnimator;

.field public final n:Ljava/util/Calendar;

.field public n0:Z

.field public final o:Ljava/util/Calendar;

.field public o0:Landroid/widget/FrameLayout;

.field public final p:Ljava/util/Calendar;

.field public p0:Landroid/view/Window;

.field public final q:Ljava/util/Calendar;

.field public q0:I

.field public final r:Ljava/util/Calendar;

.field public r0:I

.field public final s:Ljava/util/Calendar;

.field public final s0:Landroidx/picker/widget/c;

.field public t:I

.field public final t0:Landroidx/picker/widget/e;

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/picker/widget/SeslDatePicker;->u0:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0x101035c

    invoke-direct {v0, v1, v2, v6, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v5, v0, Landroidx/picker/widget/SeslDatePicker;->g:Z

    iput-boolean v4, v0, Landroidx/picker/widget/SeslDatePicker;->i:Z

    iput-boolean v4, v0, Landroidx/picker/widget/SeslDatePicker;->k:Z

    const/4 v7, -0x1

    iput v7, v0, Landroidx/picker/widget/SeslDatePicker;->t:I

    iput v7, v0, Landroidx/picker/widget/SeslDatePicker;->A:I

    iput v5, v0, Landroidx/picker/widget/SeslDatePicker;->B:I

    iput v7, v0, Landroidx/picker/widget/SeslDatePicker;->J:I

    iput v5, v0, Landroidx/picker/widget/SeslDatePicker;->M:I

    iput v5, v0, Landroidx/picker/widget/SeslDatePicker;->N:I

    const/4 v7, 0x0

    iput-object v7, v0, Landroidx/picker/widget/SeslDatePicker;->O:Ljava/lang/String;

    iput-boolean v5, v0, Landroidx/picker/widget/SeslDatePicker;->n0:Z

    new-instance v7, Landroidx/picker/widget/b;

    invoke-direct {v7, v5, v0}, Landroidx/picker/widget/b;-><init>(ILjava/lang/Object;)V

    new-instance v8, Landroidx/picker/widget/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v0, v9, v5}, Landroidx/picker/widget/c;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object v8, v0, Landroidx/picker/widget/SeslDatePicker;->s0:Landroidx/picker/widget/c;

    new-instance v8, Landroidx/picker/widget/d;

    invoke-direct {v8, v5, v0}, Landroidx/picker/widget/d;-><init>(ILjava/lang/Object;)V

    new-instance v9, Landroidx/picker/widget/p;

    invoke-direct {v9, v4, v0}, Landroidx/picker/widget/p;-><init>(ILjava/lang/Object;)V

    new-instance v10, Landroidx/picker/widget/e;

    invoke-direct {v10, v0}, Landroidx/picker/widget/e;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    iput-object v10, v0, Landroidx/picker/widget/SeslDatePicker;->t0:Landroidx/picker/widget/e;

    iput-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->d:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    iput-object v11, v0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->g()Z

    move-result v11

    iput-boolean v11, v0, Landroidx/picker/widget/SeslDatePicker;->j:Z

    iget-object v11, v0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    const-string v12, "fa"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, v0, Landroidx/picker/widget/SeslDatePicker;->h:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->h()Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "EEEEE"

    iget-object v13, v0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-direct {v11, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v11, v0, Landroidx/picker/widget/SeslDatePicker;->f0:Ljava/text/SimpleDateFormat;

    goto :goto_0

    :cond_0
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "EEE"

    iget-object v13, v0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-direct {v11, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v11, v0, Landroidx/picker/widget/SeslDatePicker;->f0:Ljava/text/SimpleDateFormat;

    :goto_0
    iget-object v11, v0, Landroidx/picker/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    iget-object v12, v0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-static {v11, v12}, Landroidx/picker/widget/SeslDatePicker;->f(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v11

    iput-object v11, v0, Landroidx/picker/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    iget-object v12, v0, Landroidx/picker/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    iget-object v13, v0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-static {v12, v13}, Landroidx/picker/widget/SeslDatePicker;->f(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v12

    iput-object v12, v0, Landroidx/picker/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    iget-object v13, v0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-static {v12, v13}, Landroidx/picker/widget/SeslDatePicker;->f(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v13

    iput-object v13, v0, Landroidx/picker/widget/SeslDatePicker;->s:Ljava/util/Calendar;

    iget-object v13, v0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    iget-object v14, v0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-static {v13, v14}, Landroidx/picker/widget/SeslDatePicker;->f(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v13

    iput-object v13, v0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    iget-object v14, v0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-static {v13, v14}, Landroidx/picker/widget/SeslDatePicker;->f(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v14

    iput-object v14, v0, Landroidx/picker/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget-object v15, Le0/a;->a:[I

    invoke-virtual {v1, v2, v15, v6, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v6, 0x76e

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v11, v6, v5, v4}, Ljava/util/Calendar;->set(III)V

    const/16 v6, 0x834

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    const/16 v11, 0xb

    const/16 v5, 0x1f

    invoke-virtual {v12, v6, v11, v5}, Ljava/util/Calendar;->set(III)V

    const-string v5, "layout_inflater"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v6, 0x7f0d0086

    invoke-virtual {v5, v6, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v0, v11}, Landroidx/picker/widget/SeslDatePicker;->setFirstDayOfWeek(I)V

    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMonthViewColorStringForSpecific()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->O:Ljava/lang/String;

    const v3, 0x101035c

    invoke-virtual {v1, v2, v15, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    :try_start_0
    new-instance v3, Landroidx/picker/widget/i;

    invoke-direct {v3, v0, v1, v2}, Landroidx/picker/widget/i;-><init>(Landroidx/picker/widget/SeslDatePicker;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->W:Landroidx/picker/widget/i;

    const v5, 0x7f060344

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/4 v6, 0x7

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    const v6, 0x7f060341

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v11, 0x3

    invoke-virtual {v2, v11, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Landroidx/picker/widget/g;

    invoke-direct {v2, v0}, Landroidx/picker/widget/g;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    iput-object v2, v0, Landroidx/picker/widget/SeslDatePicker;->Q:Landroidx/picker/widget/g;

    const v11, 0x7f0a01f2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroidx/viewpager/widget/ViewPager;

    iput-object v11, v0, Landroidx/picker/widget/SeslDatePicker;->R:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v11, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(LF0/a;)V

    new-instance v2, Landroidx/picker/widget/f;

    invoke-direct {v2, v0}, Landroidx/picker/widget/f;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    invoke-virtual {v11, v2}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(LF0/g;)V

    iput-boolean v4, v11, Landroidx/viewpager/widget/ViewPager;->a0:Z

    iput-boolean v4, v11, Landroidx/viewpager/widget/ViewPager;->e0:Z

    const v2, 0x7f07037e

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroidx/picker/widget/SeslDatePicker;->B:I

    const v2, 0x7f0a01f3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Landroidx/picker/widget/SeslDatePicker;->T:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a01f9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Landroidx/picker/widget/SeslDatePicker;->e0:Landroid/widget/LinearLayout;

    const v11, 0x7f0a01f7

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, v0, Landroidx/picker/widget/SeslDatePicker;->k0:Landroid/view/View;

    const v12, 0x7f0a01f8

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    iput-object v15, v0, Landroidx/picker/widget/SeslDatePicker;->U:Landroid/widget/TextView;

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-static {v13, v5}, Landroidx/picker/widget/SeslDatePicker;->f(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, v0, Landroidx/picker/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    iget-object v5, v0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-static {v13, v5}, Landroidx/picker/widget/SeslDatePicker;->f(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, v0, Landroidx/picker/widget/SeslDatePicker;->o:Ljava/util/Calendar;

    const v5, 0x7f0a0204

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewAnimator;

    iput-object v5, v0, Landroidx/picker/widget/SeslDatePicker;->a0:Landroid/widget/ViewAnimator;

    const v5, 0x7f0a0201

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iput-object v5, v0, Landroidx/picker/widget/SeslDatePicker;->b0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    new-instance v13, Landroidx/picker/widget/f;

    invoke-direct {v13, v0}, Landroidx/picker/widget/f;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    iget-object v15, v5, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k:Landroidx/picker/widget/SeslDatePicker;

    if-nez v15, :cond_2

    iput-object v0, v5, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k:Landroidx/picker/widget/SeslDatePicker;

    :cond_2
    iput-object v13, v5, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->x:Landroidx/picker/widget/f;

    const/4 v5, 0x0

    iput v5, v0, Landroidx/picker/widget/SeslDatePicker;->t:I

    invoke-virtual {v2, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Landroidx/picker/widget/b;

    invoke-direct {v10, v4, v0}, Landroidx/picker/widget/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v10, 0x7f070372

    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v0, Landroidx/picker/widget/SeslDatePicker;->H:I

    const v10, 0x7f07037f

    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    iput v13, v0, Landroidx/picker/widget/SeslDatePicker;->E:I

    const v13, 0x7f07037c

    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    iput v13, v0, Landroidx/picker/widget/SeslDatePicker;->G:I

    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v0, Landroidx/picker/widget/SeslDatePicker;->I:I

    const v10, 0x7f0a01fb

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, v0, Landroidx/picker/widget/SeslDatePicker;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v3, 0x7f0a01fc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->c0:Landroid/widget/LinearLayout;

    const v3, 0x7f0a01f4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->d0:Landroid/widget/RelativeLayout;

    iget-boolean v3, v0, Landroidx/picker/widget/SeslDatePicker;->j:Z

    const v10, 0x7f0a01f6

    const v13, 0x7f0a01f5

    if-eqz v3, :cond_3

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->g0:Landroid/widget/ImageButton;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    iput-object v15, v0, Landroidx/picker/widget/SeslDatePicker;->h0:Landroid/widget/ImageButton;

    const v5, 0x7f1301b6

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f1301b7

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->g0:Landroid/widget/ImageButton;

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->h0:Landroid/widget/ImageButton;

    :goto_1
    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->g0:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->h0:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->g0:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->h0:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->g0:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->h0:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->g0:Landroid/widget/ImageButton;

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->h0:Landroid/widget/ImageButton;

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->g0:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->h0:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->g0:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->h0:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x101045c

    invoke-virtual {v5, v6, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    iput v3, v0, Landroidx/picker/widget/SeslDatePicker;->J:I

    const v3, 0x7f070375

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroidx/picker/widget/SeslDatePicker;->C:I

    const v3, 0x7f07037b

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroidx/picker/widget/SeslDatePicker;->D:I

    iget v3, v0, Landroidx/picker/widget/SeslDatePicker;->E:I

    iput v3, v0, Landroidx/picker/widget/SeslDatePicker;->F:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->g0:Landroid/widget/ImageButton;

    invoke-virtual {v3, v12}, Landroid/view/View;->setNextFocusRightId(I)V

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->h0:Landroid/widget/ImageButton;

    invoke-virtual {v3, v12}, Landroid/view/View;->setNextFocusLeftId(I)V

    invoke-virtual {v2, v13}, Landroid/view/View;->setNextFocusRightId(I)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setNextFocusLeftId(I)V

    const v2, 0x7f0a01f0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker/widget/SeslDatePicker;->i0:Landroid/view/View;

    const v2, 0x7f070386

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroidx/picker/widget/SeslDatePicker;->u:I

    const v2, 0x7f0a01f1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker/widget/SeslDatePicker;->j0:Landroid/view/View;

    const v2, 0x7f070387

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroidx/picker/widget/SeslDatePicker;->v:I

    iget v3, v0, Landroidx/picker/widget/SeslDatePicker;->C:I

    iget v5, v0, Landroidx/picker/widget/SeslDatePicker;->u:I

    add-int/2addr v3, v5

    iget v5, v0, Landroidx/picker/widget/SeslDatePicker;->H:I

    add-int/2addr v3, v5

    add-int/2addr v3, v2

    iget v2, v0, Landroidx/picker/widget/SeslDatePicker;->D:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/picker/widget/SeslDatePicker;->w:I

    invoke-virtual {v0, v4}, Landroidx/picker/widget/SeslDatePicker;->n(Z)V

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v5, "rotation"

    invoke-static {v11, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->l0:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x15e

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v8, Landroidx/picker/widget/SeslDatePicker;->u0:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v11, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker/widget/SeslDatePicker;->m0:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v5, 0x1010057

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-static/range {p1 .. p1}, Landroidx/picker/widget/SeslDatePicker;->m(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_5

    if-nez v4, :cond_5

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->o0:Landroid/widget/FrameLayout;

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot get window of this context. context:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslDatePicker"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    nop

    :array_0
    .array-data 4
        -0x3ccc0000    # -180.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x3ccc0000    # -180.0f
    .end array-data
.end method

.method public static a(Landroidx/picker/widget/SeslDatePicker;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 11

    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLLL y"

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-direct {v0, v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v4, Ljava/util/Formatter;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-direct {v4, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/16 p1, 0xfa

    if-gt v0, p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v10

    const v9, 0x10024

    move-wide v5, v7

    invoke-static/range {v3 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v10

    const/16 v9, 0x24

    move-wide v5, v7

    invoke-static/range {v3 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic b(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->getDayOffset()I

    move-result p0

    return p0
.end method

.method public static c(Landroidx/picker/widget/SeslDatePicker;FZ)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->g0:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    if-eqz p2, :cond_0

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->J:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setFocusable(Z)V

    :goto_0
    return-void
.end method

.method public static d(Landroidx/picker/widget/SeslDatePicker;FZ)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->h0:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    if-eqz p2, :cond_0

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->J:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setFocusable(Z)V

    :goto_0
    return-void
.end method

.method public static e(Ljava/util/Calendar;III)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p3}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public static f(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p0
.end method

.method private static getCalendarPackageName()Ljava/lang/String;
    .locals 4

    const-class v0, Ljava/lang/String;

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.sesl.feature.SemFloatingFeature"

    const-string v2, "hidden_getString"

    invoke-static {v1, v2, v0}, Li3/x;->K(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.android.calendar"

    if-eqz v0, :cond_0

    const-string v3, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    throw v1
.end method

.method private getDayOffset()I
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->Q:Landroidx/picker/widget/g;

    iget-object v0, v0, Landroidx/picker/widget/g;->c:Landroid/util/SparseArray;

    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->K:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/H;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    iget v2, v0, Landroidx/picker/widget/H;->D:I

    iget v0, v0, Landroidx/picker/widget/H;->G:I

    sub-int/2addr v0, v1

    sub-int/2addr v2, v0

    :goto_0
    iput v2, p0, Landroidx/picker/widget/SeslDatePicker;->z:I

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x7

    rem-int/2addr v0, v2

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->z:I

    add-int/2addr v0, p0

    sub-int/2addr v0, v1

    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    return v2
.end method

.method private getFormattedCurrentDate()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/16 v2, 0x14

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->d:Landroid/content/Context;

    invoke-static {p0, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMonthViewColorStringForSpecific()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ro.carrier"

    invoke-static {v1}, Lp0/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi-only"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "XXXXXBR"

    if-eqz v1, :cond_1

    :try_start_1
    const-string p0, "persist.sys.selected_country_iso"

    invoke-static {p0}, Lp0/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "ro.csc.countryiso_code"

    invoke-static {p0}, Lp0/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const-string v1, "AE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v2

    :cond_1
    const-string v1, "XSG"

    const-string v3, "getSalesCode"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    const-string v6, "android.os.SemSystemProperties"

    invoke-static {v6, v3, v5}, Li3/x;->K(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_2

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->d:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-le v1, v3, :cond_4

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v1, 0x1a8

    if-ne p0, v1, :cond_4

    return-object v2

    :cond_4
    return-object v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SeslDatePicker"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static m(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/picker/widget/SeslDatePicker;->m(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private setCalendarHeaderPadding(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->e0:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070376

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f070377

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v1, v2, p1, p0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final g()Z
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method public getCurrentViewType()I
    .locals 0

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->t:I

    return p0
.end method

.method public getDateMode()I
    .locals 0

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->M:I

    return p0
.end method

.method public getDayOfMonth()I
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getEndDate()Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->o:Ljava/util/Calendar;

    return-object p0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->N:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p0

    return p0
.end method

.method public getLunarEndDate()[I
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    filled-new-array {p0, v0, v1, v2}, [I

    move-result-object p0

    return-object p0
.end method

.method public getLunarStartDate()[I
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    filled-new-array {p0, v0, v1, v2}, [I

    move-result-object p0

    return-object p0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxDay()I
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMaxMonth()I
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMaxYear()I
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMinDate()J
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDay()I
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMinMonth()I
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMinYear()I
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMonth()I
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getStartDate()Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    return-object p0
.end method

.method public getYear()I
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public final h()Z
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i()Z
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->d:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "animator_duration_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/picker/widget/SeslDatePicker;->k:Z

    return p0
.end method

.method public final j(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->k0:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->e0:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslDatePicker;->setCalendarHeaderPadding(Z)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->t0:Landroidx/picker/widget/e;

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->setCalendarHeaderPadding(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final k(Landroidx/picker/widget/H;III)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v4, p2

    move/from16 v3, p3

    move/from16 v2, p4

    iget-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->f:Z

    const/4 v5, 0x1

    if-nez v1, :cond_0

    iget v1, v15, Landroidx/picker/widget/H;->D:I

    iget v6, v15, Landroidx/picker/widget/H;->G:I

    sub-int/2addr v6, v5

    sub-int/2addr v1, v6

    iput v1, v0, Landroidx/picker/widget/SeslDatePicker;->z:I

    :cond_0
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v9, 0x5

    invoke-virtual {v1, v9, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v10, v0, Landroidx/picker/widget/SeslDatePicker;->s0:Landroidx/picker/widget/c;

    invoke-virtual {v10}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    const/16 v12, 0x3e8

    iput v12, v11, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget v10, v0, Landroidx/picker/widget/SeslDatePicker;->M:I

    iget-object v11, v0, Landroidx/picker/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    iget-object v12, v0, Landroidx/picker/widget/SeslDatePicker;->o:Ljava/util/Calendar;

    if-eq v10, v5, :cond_5

    if-eq v10, v7, :cond_3

    const/4 v1, 0x3

    if-eq v10, v1, :cond_1

    invoke-static {v11, v4, v3, v2}, Landroidx/picker/widget/SeslDatePicker;->e(Ljava/util/Calendar;III)V

    invoke-static {v12, v4, v3, v2}, Landroidx/picker/widget/SeslDatePicker;->e(Ljava/util/Calendar;III)V

    goto :goto_1

    :cond_1
    iput-boolean v5, v0, Landroidx/picker/widget/SeslDatePicker;->l:Z

    rem-int/lit8 v1, v2, 0x7

    iget v10, v0, Landroidx/picker/widget/SeslDatePicker;->z:I

    add-int/2addr v1, v10

    sub-int/2addr v1, v5

    const/4 v10, 0x7

    rem-int/2addr v1, v10

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v10, v1

    :goto_0
    invoke-virtual {v0, v10, v4, v3, v2}, Landroidx/picker/widget/SeslDatePicker;->o(IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gez v1, :cond_4

    invoke-static {v11, v4, v3, v2}, Landroidx/picker/widget/SeslDatePicker;->e(Ljava/util/Calendar;III)V

    :cond_4
    invoke-static {v12, v4, v3, v2}, Landroidx/picker/widget/SeslDatePicker;->e(Ljava/util/Calendar;III)V

    goto :goto_1

    :cond_5
    invoke-virtual {v11, v12}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-ltz v1, :cond_7

    :cond_6
    invoke-static {v12, v4, v3, v2}, Landroidx/picker/widget/SeslDatePicker;->e(Ljava/util/Calendar;III)V

    :cond_7
    invoke-static {v11, v4, v3, v2}, Landroidx/picker/widget/SeslDatePicker;->e(Ljava/util/Calendar;III)V

    :goto_1
    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->M:I

    if-eqz v1, :cond_8

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v1

    sub-int v1, v3, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v10

    sub-int v10, v4, v10

    mul-int/lit8 v10, v10, 0xc

    add-int/2addr v10, v1

    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->K:I

    const/4 v14, 0x0

    if-eq v1, v10, :cond_9

    move v1, v5

    goto :goto_2

    :cond_9
    move v1, v14

    :goto_2
    if-ne v4, v6, :cond_a

    if-ne v3, v8, :cond_a

    iget v6, v0, Landroidx/picker/widget/SeslDatePicker;->A:I

    if-ne v2, v6, :cond_a

    if-eqz v1, :cond_b

    :cond_a
    iput v2, v0, Landroidx/picker/widget/SeslDatePicker;->A:I

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->Q:Landroidx/picker/widget/g;

    invoke-virtual {v1}, LF0/a;->c()V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v1

    if-ne v1, v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    if-ne v1, v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinDay()I

    move-result v1

    move v6, v1

    goto :goto_3

    :cond_c
    move v6, v5

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxMonth()I

    move-result v1

    if-ne v1, v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxYear()I

    move-result v1

    if-ne v1, v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxDay()I

    move-result v1

    :goto_4
    move v10, v1

    goto :goto_5

    :cond_d
    const/16 v1, 0x1f

    goto :goto_4

    :goto_5
    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-virtual {v11, v7}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    move-result v20

    invoke-virtual {v12, v5}, Ljava/util/Calendar;->get(I)I

    move-result v21

    invoke-virtual {v12, v7}, Ljava/util/Calendar;->get(I)I

    move-result v22

    invoke-virtual {v12, v9}, Ljava/util/Calendar;->get(I)I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v5

    const/4 v13, 0x0

    const/16 v17, 0x0

    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->M:I

    move/from16 v18, v1

    iget-object v8, v0, Landroidx/picker/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    iget-object v9, v0, Landroidx/picker/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, p2

    move v7, v10

    move/from16 v10, v16

    move/from16 v11, v19

    move/from16 v12, v20

    move/from16 v14, v21

    move/from16 v15, v22

    move/from16 v16, v23

    invoke-virtual/range {v1 .. v18}, Landroidx/picker/widget/H;->l(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->f:Z

    return-void
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->c:Landroidx/picker/widget/N;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/picker/widget/J;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Landroidx/picker/widget/J;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final n(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0xc

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/picker/widget/SeslDatePicker;->K:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->i()Z

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->R:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v2, v1, p1}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1, p1}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    :goto_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->s0:Landroidx/picker/widget/c;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3e8

    iput v0, p1, Landroid/os/Message;->what:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3e9

    iput v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final o(IIII)V
    .locals 2

    sub-int v0, p4, p1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-static {v1, p2, p3, v0}, Landroidx/picker/widget/SeslDatePicker;->e(Ljava/util/Calendar;III)V

    rsub-int/lit8 p1, p1, 0x7

    add-int/2addr p1, p4

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->o:Ljava/util/Calendar;

    invoke-static {p0, p2, p3, p1}, Landroidx/picker/widget/SeslDatePicker;->e(Ljava/util/Calendar;III)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01f6

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->R:Landroidx/viewpager/widget/ViewPager;

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->j:Z

    if-eqz p1, :cond_2

    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->K:I

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->L:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->K:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v2, p0, v1}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    goto :goto_0

    :cond_1
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->K:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v2, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->K:I

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->K:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v2, p0, v1}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    goto :goto_0

    :cond_4
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->K:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v2, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_5
    const v0, 0x7f0a01f5

    if-ne p1, v0, :cond_b

    iget-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->j:Z

    if-eqz p1, :cond_8

    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->K:I

    if-nez p1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->i()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->K:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v2, p0, v1}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    goto :goto_0

    :cond_7
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->K:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v2, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_8
    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->K:I

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->L:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->i()Z

    move-result p1

    if-eqz p1, :cond_a

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->K:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v2, p0, v1}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    goto :goto_0

    :cond_a
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->K:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v2, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_b
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->g()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->j:Z

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->h:Z

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->e:Ljava/util/Locale;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEEE"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->f0:Ljava/text/SimpleDateFormat;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->f0:Ljava/text/SimpleDateFormat;

    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->c0:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput-boolean v1, p0, Landroidx/picker/widget/SeslDatePicker;->i:Z

    const v0, 0x7f070375

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->C:I

    const v0, 0x7f07037b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->D:I

    const v0, 0x7f070372

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->H:I

    const v0, 0x7f070386

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->u:I

    const v0, 0x7f070387

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->v:I

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->C:I

    iget v2, p0, Landroidx/picker/widget/SeslDatePicker;->u:I

    add-int/2addr v0, v2

    iget v2, p0, Landroidx/picker/widget/SeslDatePicker;->H:I

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->D:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->w:I

    iget-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->j:Z

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Landroidx/picker/widget/SeslDatePicker;->g:Z

    :cond_2
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->l()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, -0x2

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Landroidx/picker/widget/SeslDatePicker;->w:I

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->o0:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->p0:Landroid/view/Window;

    if-eqz p1, :cond_1

    const p2, 0x7f0a00ad

    invoke-virtual {p1, p2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->o0:Landroid/widget/FrameLayout;

    :cond_1
    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->r0:I

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->o0:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->p0:Landroid/view/Window;

    if-eqz p2, :cond_2

    iget p2, p0, Landroidx/picker/widget/SeslDatePicker;->q0:I

    sub-int/2addr p1, p2

    :cond_2
    iget p2, p0, Landroidx/picker/widget/SeslDatePicker;->t:I

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->b0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-boolean p2, p2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->c:Z

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->d:Landroid/content/Context;

    invoke-static {p2}, Landroidx/picker/widget/SeslDatePicker;->m(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p0, Landroidx/picker/widget/SeslDatePicker;->w:I

    if-ge p1, p2, :cond_4

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->setCurrentViewType(I)V

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->j(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p3}, Landroidx/picker/widget/SeslDatePicker;->j(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p3}, Landroidx/picker/widget/SeslDatePicker;->j(Z)V

    :goto_0
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01f6

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->K:I

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v2, p1

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->c:Landroidx/picker/widget/N;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/picker/widget/N;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Landroidx/picker/widget/N;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->c:Landroidx/picker/widget/N;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->c:Landroidx/picker/widget/N;

    iput-boolean v1, p1, Landroidx/picker/widget/N;->d:Z

    invoke-virtual {p0, p1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_1
    const v0, 0x7f0a01f5

    if-ne p1, v0, :cond_3

    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->K:I

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->L:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-eq p1, v0, :cond_3

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->c:Landroidx/picker/widget/N;

    if-nez p1, :cond_2

    new-instance p1, Landroidx/picker/widget/N;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Landroidx/picker/widget/N;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->c:Landroidx/picker/widget/N;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_1
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->c:Landroidx/picker/widget/N;

    iput-boolean v2, p1, Landroidx/picker/widget/N;->d:Z

    invoke-virtual {p0, p1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_2
    return v1
.end method

.method public final onMeasure(II)V
    .locals 8

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->r0:I

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->E:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v6, 0x258

    if-lt v5, v6, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070383

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_0

    :cond_1
    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v1, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    :goto_0
    iget v6, p0, Landroidx/picker/widget/SeslDatePicker;->G:I

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_4

    if-ne v3, v7, :cond_3

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, p0, Landroidx/picker/widget/SeslDatePicker;->E:I

    iput v5, p0, Landroidx/picker/widget/SeslDatePicker;->I:I

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown measure mode: "

    invoke-static {v3, p1}, LB/f;->t(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_5
    mul-int/lit8 v6, v6, 0x2

    sub-int p1, v5, v6

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->E:I

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->I:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->i:Z

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->F:I

    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->E:I

    if-ne v0, v3, :cond_6

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->i:Z

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->E:I

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->F:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->d0:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->I:I

    iget v4, p0, Landroidx/picker/widget/SeslDatePicker;->H:I

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->I:I

    iget v4, p0, Landroidx/picker/widget/SeslDatePicker;->H:I

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->W:Landroidx/picker/widget/i;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->E:I

    iget v4, p0, Landroidx/picker/widget/SeslDatePicker;->D:I

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->R:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->j:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->g:Z

    if-eqz v0, :cond_7

    iput-boolean v1, v3, Landroidx/viewpager/widget/ViewPager;->b0:Z

    :cond_7
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->u:I

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->i0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->v:I

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->j0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    check-cast p1, Landroidx/picker/widget/l;

    iget v0, p1, Landroidx/picker/widget/l;->c:I

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    iget v2, p1, Landroidx/picker/widget/l;->d:I

    iget v3, p1, Landroidx/picker/widget/l;->e:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Calendar;->set(III)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    iget-wide v1, p1, Landroidx/picker/widget/l;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    iget-wide v0, p1, Landroidx/picker/widget/l;->g:J

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    new-instance v9, Landroidx/picker/widget/l;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroidx/picker/widget/l;-><init>(Landroid/os/Parcelable;IIIJJ)V

    return-object v9
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->b0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setCurrentViewType(I)V
    .locals 9

    const/16 v0, 0x3e8

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->a0:Landroid/widget/ViewAnimator;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->s0:Landroidx/picker/widget/c;

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->b0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    if-eqz p1, :cond_3

    const/4 v4, 0x1

    if-eq p1, v4, :cond_0

    return-void

    :cond_0
    iget v5, p0, Landroidx/picker/widget/SeslDatePicker;->t:I

    if-eq v5, p1, :cond_4

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->k0:Landroid/view/View;

    const/high16 v6, -0x3ccc0000    # -180.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setRotation(F)V

    iget v5, p0, Landroidx/picker/widget/SeslDatePicker;->M:I

    const/4 v6, 0x5

    const/4 v7, 0x2

    if-eq v5, v4, :cond_2

    if-eq v5, v7, :cond_1

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    :goto_0
    invoke-virtual {v3, v8, v7, v5}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h(III)V

    invoke-virtual {v1, v4}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    invoke-virtual {v3, v4}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->t:I

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    iput v0, p0, Landroid/os/Message;->what:I

    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    iget v4, p0, Landroidx/picker/widget/SeslDatePicker;->t:I

    if-eq v4, p1, :cond_4

    invoke-virtual {v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->i()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->d(Z)V

    invoke-virtual {v1, v4}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v4}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->t:I

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->Q:Landroidx/picker/widget/g;

    invoke-virtual {p0}, LF0/a;->c()V

    :cond_4
    :goto_1
    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/16 p1, 0x3e9

    iput p1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setDateMode(I)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Landroidx/picker/widget/SeslDatePicker;->M:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/picker/widget/SeslDatePicker;->l:Z

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->b0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    const/4 v4, 0x5

    iget-object v5, v0, Landroidx/picker/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    iget-object v6, v0, Landroidx/picker/widget/SeslDatePicker;->o:Ljava/util/Calendar;

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v1, v8, :cond_1

    if-eq v1, v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v3, v1, v9, v10}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h(III)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v3, v1, v9, v10}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h(III)V

    :goto_0
    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->t:I

    if-ne v1, v8, :cond_2

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v8}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    :cond_2
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->Q:Landroidx/picker/widget/g;

    iget-object v2, v1, Landroidx/picker/widget/g;->c:Landroid/util/SparseArray;

    iget v3, v0, Landroidx/picker/widget/SeslDatePicker;->K:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/picker/widget/H;

    if-eqz v2, :cond_5

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v3

    if-ne v3, v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v3

    if-ne v3, v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinDay()I

    move-result v3

    move v14, v3

    goto :goto_1

    :cond_3
    move v14, v8

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxMonth()I

    move-result v3

    if-ne v3, v11, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxYear()I

    move-result v3

    if-ne v3, v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxDay()I

    move-result v3

    :goto_2
    move v15, v3

    goto :goto_3

    :cond_4
    const/16 v3, 0x1f

    goto :goto_2

    :goto_3
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v18

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v20

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v22

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v23

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v13

    const/16 v21, 0x0

    const/16 v25, 0x0

    iget v3, v0, Landroidx/picker/widget/SeslDatePicker;->M:I

    move/from16 v26, v3

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    move-object/from16 v16, v3

    iget-object v0, v0, Landroidx/picker/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    move-object/from16 v17, v0

    move-object v9, v2

    invoke-virtual/range {v9 .. v26}, Landroidx/picker/widget/H;->l(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_5
    invoke-virtual {v1}, LF0/a;->c()V

    return-void
.end method

.method public setDateValidator(Landroidx/picker/widget/h;)V
    .locals 0

    return-void
.end method

.method public setDialogPaddingVertical(I)V
    .locals 0

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->q0:I

    return-void
.end method

.method public setDialogWindow(Landroid/view/Window;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->p0:Landroid/view/Window;

    :cond_0
    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 1

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->t:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->b0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->d(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->k:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->k:Z

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->N:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxDate(J)V
    .locals 5

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->s:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v4, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->b0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v2, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p2, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p2, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_2
    invoke-virtual {v0, v1, v1, v1, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->j(ZZZZ)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->Q:Landroidx/picker/widget/g;

    invoke-virtual {p1}, LF0/a;->c()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->n(Z)V

    return-void
.end method

.method public setMinDate(J)V
    .locals 5

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->s:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v4, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->b0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v2, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p2, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p2, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_2
    invoke-virtual {v0, v1, v1, v1, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->j(ZZZZ)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->Q:Landroidx/picker/widget/g;

    invoke-virtual {p1}, LF0/a;->c()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->n(Z)V

    return-void
.end method

.method public setOnEditTextModeChangedListener(Landroidx/picker/widget/j;)V
    .locals 1

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->b0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, p1, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k:Landroidx/picker/widget/SeslDatePicker;

    if-nez v0, :cond_0

    iput-object p0, p1, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k:Landroidx/picker/widget/SeslDatePicker;

    :cond_0
    return-void
.end method

.method public setOnViewTypeChangedListener(Landroidx/picker/widget/k;)V
    .locals 0

    return-void
.end method

.method public setSeparateLunarButton(Z)V
    .locals 4

    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->n0:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->T:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->g0:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f07037c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->h0:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->c0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->w:I

    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->C:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->w:I

    :goto_0
    iput-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->n0:Z

    return-void
.end method

.method public setValidationCallback(Landroidx/picker/widget/m;)V
    .locals 0

    return-void
.end method
