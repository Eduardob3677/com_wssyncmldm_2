.class public Landroidx/viewpager/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static final f0:[I

.field public static final g0:LF0/b;

.field public static final h0:LF0/c;


# instance fields
.field public A:I

.field public final B:I

.field public C:Z

.field public D:F

.field public E:F

.field public F:F

.field public G:F

.field public H:I

.field public I:Landroid/view/VelocityTracker;

.field public final J:I

.field public final K:I

.field public final L:I

.field public final M:I

.field public final N:Landroid/widget/EdgeEffect;

.field public final O:Landroid/widget/EdgeEffect;

.field public Q:Z

.field public R:Z

.field public T:I

.field public U:LF0/g;

.field public final V:LB1/h;

.field public W:I

.field public a0:Z

.field public b0:Z

.field public c:I

.field public final c0:F

.field public final d:Ljava/util/ArrayList;

.field public d0:I

.field public final e:LF0/e;

.field public e0:Z

.field public final f:Landroid/graphics/Rect;

.field public g:LF0/a;

.field public h:I

.field public i:I

.field public j:Landroid/os/Parcelable;

.field public final k:Landroid/widget/Scroller;

.field public l:Z

.field public m:LF0/h;

.field public n:I

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:I

.field public q:I

.field public r:F

.field public s:F

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:I

.field public x:Z

.field public y:Z

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x10100b3

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->f0:[I

    new-instance v0, LF0/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF0/b;-><init>(I)V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->g0:LF0/b;

    new-instance v0, LF0/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF0/c;-><init>(I)V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->h0:LF0/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->d:Ljava/util/ArrayList;

    new-instance p2, LF0/e;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->e:LF0/e;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroid/graphics/Rect;

    const/4 p2, -0x1

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->i:I

    const v0, -0x800001

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    const/4 v0, 0x1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->C:Z

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    new-instance v1, LB1/h;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, LB1/h;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->V:LB1/h;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->W:I

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->a0:Z

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->b0:Z

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->c0:F

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->d0:I

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->e0:Z

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/high16 p2, 0x40000

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    new-instance p2, Landroid/widget/Scroller;

    sget-object v1, Landroidx/viewpager/widget/ViewPager;->h0:LF0/c;

    invoke-direct {p2, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->B:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    new-instance p2, Landroid/widget/EdgeEffect;

    invoke-direct {p2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->N:Landroid/widget/EdgeEffect;

    new-instance p2, Landroid/widget/EdgeEffect;

    invoke-direct {p2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    const/high16 p1, 0x41c80000    # 25.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->L:I

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->M:I

    const/high16 p1, 0x41800000    # 16.0f

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->z:I

    new-instance p1, LC1/e;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, LC1/e;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, p1}, LJ/Q;->h(Landroid/view/View;LJ/b;)V

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    new-instance p1, LA3/D;

    invoke-direct {p1, p0}, LA3/D;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-static {p0, p1}, LJ/I;->u(Landroid/view/View;LJ/q;)V

    return-void
.end method

.method public static c(IIILandroid/view/View;Z)Z
    .locals 9

    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_0
    if-ltz v4, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int v6, p1, v2

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    if-lt v6, v7, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge v6, v7, :cond_0

    add-int v7, p2, v3

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {p0, v6, v7, v5, v1}, Landroidx/viewpager/widget/ViewPager;->c(IIILandroid/view/View;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    neg-int p0, p0

    invoke-virtual {p3, p0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private getClientWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getScrollStart()I
    .locals 1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x1000000

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    sub-int/2addr v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    :goto_0
    return v0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->u:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->u:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)LF0/e;
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, LF0/e;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v1, v3, LF0/e;->b:I

    iget-object v4, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroidx/picker/widget/g;

    new-instance v15, Landroidx/picker/widget/H;

    iget-object v14, v4, Landroidx/picker/widget/g;->d:Landroidx/picker/widget/SeslDatePicker;

    iget-object v5, v14, Landroidx/picker/widget/SeslDatePicker;->d:Landroid/content/Context;

    invoke-direct {v15, v5}, Landroidx/picker/widget/H;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-virtual {v15, v8}, Landroid/view/View;->setClickable(Z)V

    iput-object v14, v15, Landroidx/picker/widget/H;->b0:Landroidx/picker/widget/F;

    iput-object v14, v15, Landroidx/picker/widget/H;->g0:Landroidx/picker/widget/G;

    iget-object v5, v14, Landroidx/picker/widget/SeslDatePicker;->O:Ljava/lang/String;

    if-nez v5, :cond_0

    invoke-static {}, Li3/x;->Z()Ljava/lang/String;

    move-result-object v5

    :cond_0
    const/4 v7, 0x0

    move v6, v7

    :goto_0
    const/4 v11, 0x7

    if-ge v6, v11, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v10, v6, 0x2

    rem-int/2addr v10, v11

    const/16 v11, 0x52

    iget-object v12, v15, Landroidx/picker/widget/H;->B:[I

    if-ne v9, v11, :cond_1

    iget v9, v15, Landroidx/picker/widget/H;->x:I

    aput v9, v12, v10

    goto :goto_1

    :cond_1
    const/16 v11, 0x42

    if-ne v9, v11, :cond_2

    iget v9, v15, Landroidx/picker/widget/H;->y:I

    aput v9, v12, v10

    goto :goto_1

    :cond_2
    iget v9, v15, Landroidx/picker/widget/H;->w:I

    aput v9, v12, v10

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v14}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v5

    add-int/2addr v5, v1

    div-int/lit8 v6, v5, 0xc

    invoke-virtual {v14}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v9

    add-int/2addr v6, v9

    rem-int/lit8 v5, v5, 0xc

    iget-object v9, v14, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v12, 0x2

    const/4 v13, 0x5

    if-ne v10, v6, :cond_4

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v10, v5, :cond_4

    invoke-virtual {v9, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    :goto_2
    move/from16 v16, v9

    goto :goto_3

    :cond_4
    const/4 v9, -0x1

    goto :goto_2

    :goto_3
    iget-object v9, v14, Landroidx/picker/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v18

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-virtual {v9, v13}, Ljava/util/Calendar;->get(I)I

    move-result v20

    iget-object v9, v14, Landroidx/picker/widget/SeslDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v23

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v24

    invoke-virtual {v9, v13}, Ljava/util/Calendar;->get(I)I

    move-result v25

    invoke-virtual {v14}, Landroidx/picker/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v9

    const/16 v17, 0x0

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v21, 0x0

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v14, Landroidx/picker/widget/SeslDatePicker;->M:I

    move/from16 v22, v10

    iget-object v12, v14, Landroidx/picker/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    iget-object v13, v14, Landroidx/picker/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    const/4 v10, 0x1

    const/16 v26, 0x1f

    move/from16 v11, v26

    move/from16 v26, v5

    move-object v5, v15

    move/from16 v27, v6

    move/from16 v6, v16

    move/from16 v7, v26

    move/from16 v8, v27

    move-object/from16 v28, v14

    move/from16 v14, v18

    move-object/from16 v29, v15

    move/from16 v15, v19

    move/from16 v16, v20

    move/from16 v18, v23

    move/from16 v19, v24

    move/from16 v20, v25

    invoke-virtual/range {v5 .. v22}, Landroidx/picker/widget/H;->l(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    move-object/from16 v5, v29

    const/4 v6, 0x1

    if-nez v1, :cond_5

    iput-boolean v6, v5, Landroidx/picker/widget/H;->h0:Z

    :cond_5
    move-object/from16 v7, v28

    iget v8, v7, Landroidx/picker/widget/SeslDatePicker;->L:I

    sub-int/2addr v8, v6

    if-ne v1, v8, :cond_6

    iput-boolean v6, v5, Landroidx/picker/widget/H;->i0:Z

    :cond_6
    const/4 v6, 0x7

    iput v6, v7, Landroidx/picker/widget/SeslDatePicker;->x:I

    iget v6, v5, Landroidx/picker/widget/H;->G:I

    iput v6, v7, Landroidx/picker/widget/SeslDatePicker;->y:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v4, v4, Landroidx/picker/widget/g;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v5, v3, LF0/e;->a:Landroidx/picker/widget/H;

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v3, LF0/e;->d:F

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->d:Ljava/util/ArrayList;

    if-ltz v2, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_8
    :goto_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    return-object v3
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->g(Landroid/view/View;)LF0/e;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, LF0/e;->b:I

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_6

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public final addTouchables(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->g(Landroid/view/View;)LF0/e;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, LF0/e;->b:I

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    check-cast v0, LF0/f;

    if-eqz v0, :cond_4

    iget-boolean v1, v0, LF0/f;->a:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, LF0/d;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v1, v2

    iput-boolean v1, v0, LF0/f;->a:Z

    iget-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->t:Z

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    iput-boolean v3, v0, LF0/f;->d:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add pager decor view during layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final b(I)Z
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    if-ne v2, p0, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ViewPager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :goto_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v1, :cond_8

    if-eq v1, v0, :cond_8

    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroid/graphics/Rect;

    if-ne p1, v5, :cond_6

    invoke-virtual {p0, v6, v1}, Landroidx/viewpager/widget/ViewPager;->f(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v6, v0}, Landroidx/viewpager/widget/ViewPager;->f(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-lt v4, v5, :cond_5

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    if-lez v0, :cond_c

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->d0:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    :goto_4
    move v2, v3

    goto :goto_7

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_5
    move v2, v0

    goto :goto_7

    :cond_6
    if-ne p1, v4, :cond_c

    invoke-virtual {p0, v6, v1}, Landroidx/viewpager/widget/ViewPager;->f(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v6, v0}, Landroidx/viewpager/widget/ViewPager;->f(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_7

    if-gt v2, v3, :cond_7

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->l()Z

    move-result v0

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_5

    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v3, :cond_9

    goto :goto_6

    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    :cond_a
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->l()Z

    move-result v2

    goto :goto_7

    :cond_b
    :goto_6
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    if-lez v0, :cond_c

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->d0:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    goto :goto_4

    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_d
    return v2
.end method

.method public final canScrollHorizontally(I)Z
    .locals 4

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    if-le v2, p0, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    if-ge v2, p0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, LF0/f;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final computeScroll()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->l:Z

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    if-ne v0, v3, :cond_0

    if-eq v2, v4, :cond_1

    :cond_0
    invoke-virtual {p0, v3, v4}, Landroid/view/View;->scrollTo(II)V

    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->m(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    sget-object v0, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->d(Z)V

    return-void
.end method

.method public final d(Z)V
    .locals 7

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->W:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_2

    invoke-direct {p0, v4}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    if-ne v2, v6, :cond_1

    if-eq v5, v0, :cond_2

    :cond_1
    invoke-virtual {p0, v6, v0}, Landroid/view/View;->scrollTo(II)V

    if-eq v6, v2, :cond_2

    invoke-virtual {p0, v6}, Landroidx/viewpager/widget/ViewPager;->m(I)Z

    :cond_2
    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->v:Z

    move v0, v4

    :goto_1
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF0/e;

    iget-boolean v5, v2, LF0/e;->c:Z

    if-eqz v5, :cond_3

    iput-boolean v4, v2, LF0/e;->c:Z

    move v1, v3

    :cond_3
    add-int/2addr v0, v3

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_6

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->V:LB1/h;

    if-eqz p1, :cond_5

    sget-object p1, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, LB1/h;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x15

    const/4 v4, 0x2

    if-eq v0, v3, :cond_4

    const/16 v3, 0x16

    if-eq v0, v3, :cond_2

    const/16 v3, 0x3d

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->b(I)Z

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->b(I)Z

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->l()Z

    move-result p0

    goto :goto_1

    :cond_3
    const/16 p1, 0x42

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->b(I)Z

    move-result p0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    if-lez p1, :cond_6

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->d0:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    move p0, v1

    goto :goto_1

    :cond_5
    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->b(I)Z

    move-result p0

    goto :goto_1

    :cond_6
    :goto_0
    move p0, v2

    :goto_1
    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :cond_8
    :goto_2
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->g(Landroid/view/View;)LF0/e;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, LF0/e;->b:I

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->N:Landroid/widget/EdgeEffect;

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LF0/a;->b()I

    move-result v2

    if-le v2, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_3

    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    const/high16 v4, 0x4b800000    # 1.6777216E7f

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    const/high16 v7, 0x43870000    # 270.0f

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->t()Z

    move-result v7

    if-eqz v7, :cond_2

    neg-int v7, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v7

    int-to-float v7, v8

    iget v8, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    add-float/2addr v8, v5

    neg-float v8, v8

    int-to-float v9, v6

    mul-float/2addr v8, v9

    add-float/2addr v8, v4

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_2
    neg-int v7, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v7

    int-to-float v7, v8

    iget v8, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    int-to-float v9, v6

    mul-float/2addr v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    invoke-virtual {v1, v3, v6}, Landroid/widget/EdgeEffect;->setSize(II)V

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->t()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    int-to-float v8, v2

    mul-float/2addr v7, v8

    sub-float/2addr v7, v4

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    add-float/2addr v7, v5

    neg-float v5, v7

    int-to-float v7, v2

    mul-float/2addr v5, v7

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_2
    invoke-virtual {v0, v6, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/2addr v3, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    sget-object p1, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_6
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 10

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v0}, LF0/a;->b()I

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x0

    if-ge v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    move v6, v5

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF0/e;

    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    iget-object v8, v2, LF0/e;->a:Landroidx/picker/widget/H;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-nez v6, :cond_1

    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Landroidx/picker/widget/g;

    sget-object v7, Landroidx/picker/widget/SeslDatePicker;->u0:Landroid/view/animation/PathInterpolator;

    iget-object v6, v6, Landroidx/picker/widget/g;->d:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v6, v4

    :cond_1
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    iget v8, v2, LF0/e;->b:I

    iget-object v9, v2, LF0/e;->a:Landroidx/picker/widget/H;

    invoke-virtual {v7, p0, v8, v9}, LF0/a;->a(Landroid/view/ViewGroup;ILandroidx/picker/widget/H;)V

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    iget v2, v2, LF0/e;->b:I

    if-ne v7, v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v2

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/picker/widget/g;

    sget-object v6, Landroidx/picker/widget/SeslDatePicker;->u0:Landroid/view/animation/PathInterpolator;

    iget-object v0, v0, Landroidx/picker/widget/g;->d:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    sget-object v0, Landroidx/viewpager/widget/ViewPager;->g0:LF0/b;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v5

    :goto_2
    if-ge v1, v0, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, LF0/f;

    iget-boolean v6, v2, LF0/f;->a:Z

    if-nez v6, :cond_5

    const/4 v6, 0x0

    iput v6, v2, LF0/f;->c:F

    :cond_5
    add-int/2addr v1, v4

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v3, v5, v5, v4}, Landroidx/viewpager/widget/ViewPager;->v(IIZZ)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_7
    return-void
.end method

.method public final f(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final g(Landroid/view/View;)LF0/e;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LF0/e;

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    iget-object v3, v1, LF0/e;->a:Landroidx/picker/widget/H;

    check-cast v2, Landroidx/picker/widget/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance p0, LF0/f;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, LF0/f;->c:F

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, LF0/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    iput v1, v0, LF0/f;->c:F

    sget-object v1, Landroidx/viewpager/widget/ViewPager;->f0:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    const/16 v1, 0x30

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, v0, LF0/f;->b:I

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()LF0/a;
    .locals 0

    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    return-object p0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getCurrentItem()I
    .locals 0

    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    return p0
.end method

.method public getOffscreenPageLimit()I
    .locals 0

    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    return p0
.end method

.method public getPageMargin()I
    .locals 0

    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    return p0
.end method

.method public final h()LF0/e;
    .locals 14

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollStart()I

    move-result v0

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    int-to-float v0, v0

    int-to-float v3, v1

    div-float/2addr v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-lez v1, :cond_1

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v8, v1

    move v9, v5

    move-object v7, v6

    move v6, v4

    move v4, v2

    :goto_2
    iget-object v10, p0, Landroidx/viewpager/widget/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_7

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LF0/e;

    if-nez v9, :cond_2

    iget v12, v11, LF0/e;->b:I

    add-int/2addr v6, v5

    if-eq v12, v6, :cond_2

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->e:LF0/e;

    iput v2, v4, LF0/e;->e:F

    iput v6, v4, LF0/e;->b:I

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v4, LF0/e;->d:F

    add-int/lit8 v8, v8, -0x1

    move-object v6, v4

    goto :goto_3

    :cond_2
    move-object v6, v11

    :goto_3
    iget v2, v6, LF0/e;->e:F

    iget v4, v6, LF0/e;->d:F

    add-float/2addr v4, v2

    add-float/2addr v4, v3

    if-nez v9, :cond_4

    cmpl-float v9, v0, v2

    if-ltz v9, :cond_3

    goto :goto_4

    :cond_3
    return-object v7

    :cond_4
    :goto_4
    cmpg-float v4, v0, v4

    if-ltz v4, :cond_6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne v8, v4, :cond_5

    goto :goto_5

    :cond_5
    iget v4, v6, LF0/e;->b:I

    iget v7, v6, LF0/e;->d:F

    add-int/lit8 v8, v8, 0x1

    move v9, v1

    move-object v13, v6

    move v6, v4

    move v4, v7

    move-object v7, v13

    goto :goto_2

    :cond_6
    :goto_5
    return-object v6

    :cond_7
    return-object v7
.end method

.method public final i(I)LF0/e;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LF0/e;

    iget v2, v1, LF0/e;->b:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final j()V
    .locals 11

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->T:I

    const/4 v1, 0x1

    if-lez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, LF0/f;

    iget-boolean v9, v8, LF0/f;->a:Z

    if-nez v9, :cond_0

    goto :goto_3

    :cond_0
    iget v8, v8, LF0/f;->b:I

    and-int/lit8 v8, v8, 0x7

    if-eq v8, v1, :cond_3

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    const/4 v9, 0x5

    if-eq v8, v9, :cond_1

    move v8, v2

    goto :goto_2

    :cond_1
    sub-int v8, v4, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    :goto_1
    move v10, v8

    move v8, v2

    move v2, v10

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v4, v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_1

    :goto_2
    add-int/2addr v2, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v2, v9

    if-eqz v2, :cond_4

    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v2, v8

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->R:Z

    return-void
.end method

.method public final k(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method public final l()Z
    .locals 3

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    invoke-virtual {v0}, LF0/a;->b()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->d0:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m(I)Z
    .locals 2

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-string v0, "onPageScrolled did not call superclass implementation"

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->R:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->j()V

    iget-boolean p0, p0, Landroidx/viewpager/widget/ViewPager;->R:Z

    if-eqz p0, :cond_1

    return v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->t()Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->h()LF0/e;

    move-result-object p1

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    iget p1, p1, LF0/e;->b:I

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->R:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->j()V

    iget-boolean p0, p0, Landroidx/viewpager/widget/ViewPager;->R:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n(FF)Z
    .locals 13

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->b0:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->N:Landroid/widget/EdgeEffect;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->N:Landroid/widget/EdgeEffect;

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    :goto_0
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    sub-float/2addr v3, p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float p1, p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v3, v4

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->N:Landroid/widget/EdgeEffect;

    invoke-static {v5}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->N:Landroid/widget/EdgeEffect;

    neg-float v4, v4

    sub-float p1, v7, p1

    invoke-static {v5, v4, p1}, LL2/b;->B(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    neg-float p1, p1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    invoke-static {v5}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result v5

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    invoke-static {v5, v4, p1}, LL2/b;->B(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    goto :goto_1

    :cond_3
    move p1, v6

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr p1, v4

    sub-float/2addr v3, p1

    cmpl-float p1, p1, v6

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    move p1, v4

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x38d1b717    # 1.0E-4f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    return p1

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->t()Z

    move-result v3

    const/high16 v6, 0x4b800000    # 1.6777216E7f

    if-eqz v3, :cond_6

    sub-float v5, v6, v5

    :cond_6
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LF0/e;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v4

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LF0/e;

    iget v10, v9, LF0/e;->b:I

    if-nez v10, :cond_7

    move v10, v4

    goto :goto_3

    :cond_7
    move v10, v1

    :goto_3
    if-eqz v10, :cond_9

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->t()Z

    move-result v9

    if-eqz v9, :cond_8

    int-to-float v9, v3

    iget v11, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    mul-float/2addr v11, v9

    add-float/2addr v11, v9

    goto :goto_5

    :cond_8
    int-to-float v9, v3

    iget v11, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    :goto_4
    mul-float/2addr v11, v9

    goto :goto_5

    :cond_9
    iget v9, v9, LF0/e;->e:F

    int-to-float v11, v3

    goto :goto_4

    :goto_5
    iget v9, v8, LF0/e;->b:I

    iget-object v12, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v12}, LF0/a;->b()I

    move-result v12

    sub-int/2addr v12, v4

    if-ne v9, v12, :cond_a

    move v1, v4

    :cond_a
    if-eqz v1, :cond_c

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->t()Z

    move-result v8

    if-eqz v8, :cond_b

    int-to-float v8, v3

    iget v9, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    mul-float/2addr v9, v8

    add-float/2addr v9, v8

    goto :goto_7

    :cond_b
    int-to-float v8, v3

    iget v9, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    :goto_6
    mul-float/2addr v9, v8

    goto :goto_7

    :cond_c
    iget v8, v8, LF0/e;->e:F

    int-to-float v9, v3

    goto :goto_6

    :goto_7
    cmpg-float v8, v5, v11

    if-gez v8, :cond_e

    if-eqz v10, :cond_d

    sub-float p1, v11, v5

    int-to-float v1, v3

    div-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    sub-float/2addr v7, p2

    invoke-static {v0, p1, v7}, LL2/b;->B(Landroid/widget/EdgeEffect;FF)F

    goto :goto_8

    :cond_d
    move v4, p1

    :goto_8
    move p1, v4

    move v5, v11

    goto :goto_a

    :cond_e
    cmpl-float v0, v5, v9

    if-lez v0, :cond_10

    if-eqz v1, :cond_f

    sub-float/2addr v5, v9

    int-to-float p1, v3

    div-float/2addr v5, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-static {v2, v5, p2}, LL2/b;->B(Landroid/widget/EdgeEffect;FF)F

    goto :goto_9

    :cond_f
    move v4, p1

    :goto_9
    move p1, v4

    move v5, v9

    :cond_10
    :goto_a
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->t()Z

    move-result p2

    if-eqz p2, :cond_11

    sub-float v5, v6, v5

    :cond_11
    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    float-to-int v0, v5

    int-to-float v1, v0

    sub-float/2addr v5, v1

    add-float/2addr v5, p2

    iput v5, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->scrollTo(II)V

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->m(I)Z

    return p1
.end method

.method public final o()V
    .locals 1

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->p(I)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->V:LB1/h;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->n:I

    if-lez v1, :cond_6

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v4, v4

    int-to-float v5, v3

    div-float/2addr v4, v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LF0/e;

    iget v8, v7, LF0/e;->e:F

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, v7, LF0/e;->b:I

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LF0/e;

    iget v11, v11, LF0/e;->b:I

    :goto_0
    if-ge v10, v11, :cond_6

    :goto_1
    iget v12, v7, LF0/e;->b:I

    if-le v10, v12, :cond_0

    if-ge v6, v9, :cond_0

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LF0/e;

    goto :goto_1

    :cond_0
    const/high16 v13, 0x4b800000    # 1.6777216E7f

    if-ne v10, v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->t()Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, v7, LF0/e;->e:F

    sub-float/2addr v13, v8

    goto :goto_2

    :cond_1
    iget v8, v7, LF0/e;->e:F

    iget v12, v7, LF0/e;->d:F

    add-float/2addr v8, v12

    mul-float v13, v8, v5

    :goto_2
    iget v8, v7, LF0/e;->e:F

    iget v12, v7, LF0/e;->d:F

    add-float/2addr v8, v12

    add-float/2addr v8, v4

    goto :goto_4

    :cond_2
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->t()Z

    move-result v12

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v12, :cond_3

    sub-float/2addr v13, v8

    goto :goto_3

    :cond_3
    add-float v12, v8, v14

    mul-float/2addr v12, v5

    move v13, v12

    :goto_3
    add-float/2addr v14, v4

    add-float/2addr v14, v8

    move v8, v14

    :goto_4
    iget v12, v0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v12, v12

    add-float/2addr v12, v13

    int-to-float v14, v2

    cmpl-float v12, v12, v14

    if-lez v12, :cond_4

    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v14

    iget v15, v0, Landroidx/viewpager/widget/ViewPager;->p:I

    move-object/from16 v16, v1

    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v1, v1

    add-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move/from16 v17, v4

    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->q:I

    invoke-virtual {v12, v14, v15, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_4
    move-object/from16 v16, v1

    move/from16 v17, v4

    move-object/from16 v4, p1

    :goto_5
    add-int v1, v2, v3

    int-to-float v1, v1

    cmpl-float v1, v13, v1

    if-lez v1, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    move/from16 v4, v17

    goto/16 :goto_0

    :cond_6
    :goto_6
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->a0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x1

    if-lez v2, :cond_0

    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    sub-int/2addr p1, v3

    invoke-virtual {p0, p1, v3}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    return v3

    :cond_0
    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v3}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    return v3

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->N:Landroid/widget/EdgeEffect;

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->B:I

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v4, v5, :cond_17

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz v4, :cond_2

    iget-boolean v7, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    if-eqz v7, :cond_1

    return v5

    :cond_1
    iget-boolean v7, p0, Landroidx/viewpager/widget/ViewPager;->y:Z

    if-eqz v7, :cond_2

    return v6

    :cond_2
    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v4, :cond_f

    if-eq v4, v7, :cond_4

    const/4 v0, 0x6

    if-eq v4, v0, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->k(Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :cond_4
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v1, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    sub-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v9, v3, v8

    if-eqz v9, :cond_a

    iget v10, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    iget-boolean v11, p0, Landroidx/viewpager/widget/ViewPager;->C:Z

    if-eqz v11, :cond_7

    goto :goto_0

    :cond_7
    iget v11, p0, Landroidx/viewpager/widget/ViewPager;->A:I

    int-to-float v11, v11

    cmpg-float v11, v10, v11

    if-gez v11, :cond_8

    if-gtz v9, :cond_a

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v11

    iget v12, p0, Landroidx/viewpager/widget/ViewPager;->A:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_9

    cmpg-float v8, v3, v8

    if-gez v8, :cond_9

    goto :goto_1

    :cond_9
    :goto_0
    float-to-int v3, v3

    float-to-int v8, v1

    float-to-int v10, v0

    invoke-static {v3, v8, v10, p0, v6}, Landroidx/viewpager/widget/ViewPager;->c(IIILandroid/view/View;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->E:F

    iput-boolean v5, p0, Landroidx/viewpager/widget/ViewPager;->y:Z

    return v6

    :cond_a
    :goto_1
    int-to-float v3, v2

    cmpl-float v6, v4, v3

    if-lez v6, :cond_d

    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->c0:F

    mul-float/2addr v4, v6

    cmpl-float v4, v4, v7

    if-lez v4, :cond_d

    iput-boolean v5, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_b
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    if-lez v9, :cond_c

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->F:F

    int-to-float v2, v2

    add-float/2addr v3, v2

    goto :goto_2

    :cond_c
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->F:F

    int-to-float v2, v2

    sub-float/2addr v3, v2

    :goto_2
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->E:F

    invoke-direct {p0, v5}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_3

    :cond_d
    cmpl-float v2, v7, v3

    if-lez v2, :cond_e

    iput-boolean v5, p0, Landroidx/viewpager/widget/ViewPager;->y:Z

    :cond_e
    :goto_3
    iget-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    if-eqz v2, :cond_15

    invoke-virtual {p0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->n(FF)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto/16 :goto_5

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->F:F

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->E:F

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    iput-boolean v6, p0, Landroidx/viewpager/widget/ViewPager;->y:Z

    iput-boolean v5, p0, Landroidx/viewpager/widget/ViewPager;->l:Z

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->W:I

    if-ne v2, v7, :cond_11

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->M:I

    if-le v2, v4, :cond_11

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v6, p0, Landroidx/viewpager/widget/ViewPager;->v:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->o()V

    iput-boolean v5, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_10
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    goto :goto_5

    :cond_11
    invoke-static {v1}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result v2

    cmpl-float v2, v2, v8

    if-nez v2, :cond_13

    invoke-static {v0}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result v2

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_12

    goto :goto_4

    :cond_12
    invoke-virtual {p0, v6}, Landroidx/viewpager/widget/ViewPager;->d(Z)V

    iput-boolean v6, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    goto :goto_5

    :cond_13
    :goto_4
    iput-boolean v5, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    invoke-static {v1}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result v2

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_14

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->E:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    invoke-static {v1, v8, v3}, LL2/b;->B(Landroid/widget/EdgeEffect;FF)F

    :cond_14
    invoke-static {v0}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result v1

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_15

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->E:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v8, v1}, LL2/b;->B(Landroid/widget/EdgeEffect;FF)F

    :cond_15
    :goto_5
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    if-nez v0, :cond_16

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    :cond_16
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean p0, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    return p0

    :cond_17
    :goto_6
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->r()Z

    return v6
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v10, v1, :cond_7

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, LF0/f;

    iget-boolean v14, v12, LF0/f;->a:Z

    if-eqz v14, :cond_6

    iget v12, v12, LF0/f;->b:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v4

    goto :goto_2

    :cond_0
    sub-int v14, v2, v6

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    :goto_1
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    goto :goto_2

    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_1

    :goto_2
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v5

    goto :goto_4

    :cond_3
    sub-int v12, v3, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    :goto_3
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    goto :goto_4

    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_4

    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_3

    :goto_4
    add-int/2addr v4, v8

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v16, v5

    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v1, :cond_b

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v12, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, LF0/f;

    iget-boolean v13, v10, LF0/f;->a:Z

    if-nez v13, :cond_a

    invoke-virtual {v0, v9}, Landroidx/viewpager/widget/ViewPager;->g(Landroid/view/View;)LF0/e;

    move-result-object v13

    if-eqz v13, :cond_a

    int-to-float v14, v2

    iget v13, v13, LF0/e;->e:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->t()Z

    move-result v15

    if-eqz v15, :cond_8

    const/high16 v15, 0x1000000

    sub-int/2addr v15, v6

    sub-int/2addr v15, v13

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v15, v13

    goto :goto_6

    :cond_8
    add-int v15, v4, v13

    :goto_6
    iget-boolean v13, v10, LF0/f;->d:Z

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    iput-boolean v13, v10, LF0/f;->d:Z

    iget v10, v10, LF0/f;->c:F

    mul-float/2addr v14, v10

    float-to-int v10, v14

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    sub-int v14, v3, v5

    sub-int/2addr v14, v7

    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v9, v10, v13}, Landroid/view/View;->measure(II)V

    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v15

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {v9, v15, v5, v10, v13}, Landroid/view/View;->layout(IIII)V

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_b
    iput v5, v0, Landroidx/viewpager/widget/ViewPager;->p:I

    sub-int/2addr v3, v7

    iput v3, v0, Landroidx/viewpager/widget/ViewPager;->q:I

    iput v11, v0, Landroidx/viewpager/widget/ViewPager;->T:I

    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    if-nez v1, :cond_d

    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->b0:Z

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->h:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroidx/viewpager/widget/ViewPager;->s(IIZZ)V

    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->b0:Z

    :goto_8
    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    return-void
.end method

.method public final onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p2, p1, 0xa

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->z:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->A:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_c

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, LF0/f;

    if-eqz v3, :cond_b

    iget-boolean v7, v3, LF0/f;->a:Z

    if-eqz v7, :cond_b

    iget v7, v3, LF0/f;->b:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_1

    const/16 v9, 0x50

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    move v7, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v4

    :goto_2
    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    move v4, v0

    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_4

    move v9, v8

    move v8, v5

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    move v9, v5

    goto :goto_4

    :cond_5
    move v9, v8

    :goto_4
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    :goto_5
    move v8, v5

    goto :goto_6

    :cond_6
    move v10, p1

    goto :goto_5

    :cond_7
    move v10, p1

    :goto_6
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_8

    goto :goto_7

    :cond_8
    move v3, p2

    goto :goto_7

    :cond_9
    move v3, p2

    move v5, v9

    :goto_7
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    goto :goto_8

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p1, v3

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->t:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->o()V

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->t:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_9
    if-ge v0, v1, :cond_e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_d

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, LF0/f;

    if-eqz v4, :cond_d

    iget-boolean v6, v4, LF0/f;->a:Z

    if-nez v6, :cond_d

    int-to-float v6, p1

    iget v4, v4, LF0/f;->c:F

    mul-float/2addr v6, v4

    float-to-int v4, v6

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v4, p2}, Landroid/view/View;->measure(II)V

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_e
    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v0

    move v0, v2

    move v4, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    move v4, v1

    :goto_0
    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->g(Landroid/view/View;)LF0/e;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, LF0/e;->b:I

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, LF0/i;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, LF0/i;

    iget-object v0, p1, LR/b;->c:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    if-eqz v0, :cond_1

    iget p1, p1, LF0/i;->e:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->v(IIZZ)V

    goto :goto_0

    :cond_1
    iget v0, p1, LF0/i;->e:I

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->i:I

    iget-object p1, p1, LF0/i;->f:Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->j:Landroid/os/Parcelable;

    :goto_0
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->e0:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->d0:I

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, LF0/i;

    invoke-direct {v1, v0}, LR/b;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    iput v0, v1, LF0/i;->e:I

    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    iput-object p0, v1, LF0/i;->f:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    invoke-virtual {p0, p1, p3, p2, p2}, Landroidx/viewpager/widget/ViewPager;->q(IIII)V

    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    if-lez p1, :cond_0

    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p3, p2}, Landroidx/viewpager/widget/ViewPager;->v(IIZZ)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->N:Landroid/widget/EdgeEffect;

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->B:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v3

    if-eqz v3, :cond_0

    return v4

    :cond_0
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, LF0/a;->b()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v5, 0x1

    if-eqz v3, :cond_15

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eq v3, v5, :cond_d

    const/4 v0, 0x2

    if-eq v3, v0, :cond_7

    const/4 v0, 0x3

    if-eq v3, v0, :cond_6

    const/4 v0, 0x5

    if-eq v3, v0, :cond_5

    const/4 v0, 0x6

    if-eq v3, v0, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->k(Landroid/view/MotionEvent;)V

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v7, :cond_4

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->r()Z

    move-result v4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    goto/16 :goto_5

    :cond_6
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    if-eqz p1, :cond_16

    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    invoke-virtual {p0, p1, v4, v5, v4}, Landroidx/viewpager/widget/ViewPager;->s(IIZZ)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->r()Z

    move-result v4

    goto/16 :goto_5

    :cond_7
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    if-nez v0, :cond_b

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v7, :cond_8

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->r()Z

    move-result v4

    goto/16 :goto_5

    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v8, p0, Landroidx/viewpager/widget/ViewPager;->E:F

    sub-float v8, v0, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v2

    cmpl-float v9, v3, v9

    if-lez v9, :cond_b

    cmpl-float v3, v3, v8

    if-lez v3, :cond_b

    iput-boolean v5, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-interface {v3, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->F:F

    sub-float/2addr v1, v3

    cmpl-float v1, v1, v6

    if-lez v1, :cond_a

    int-to-float v1, v2

    add-float/2addr v3, v1

    goto :goto_0

    :cond_a
    int-to-float v1, v2

    sub-float/2addr v3, v1

    :goto_0
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->E:F

    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    invoke-direct {p0, v5}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_b
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    if-eqz v0, :cond_16

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v7, :cond_c

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->r()Z

    move-result v4

    goto/16 :goto_5

    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/viewpager/widget/ViewPager;->n(FF)Z

    move-result v4

    goto/16 :goto_5

    :cond_d
    iget-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    int-to-float v3, v3

    const/16 v8, 0x3e8

    invoke-virtual {v2, v8, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    float-to-int v2, v2

    iput-boolean v5, p0, Landroidx/viewpager/widget/ViewPager;->v:Z

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollStart()I

    move-result v8

    int-to-float v8, v8

    int-to-float v3, v3

    div-float/2addr v8, v3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->h()LF0/e;

    move-result-object v9

    iget v10, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v10, v10

    div-float/2addr v10, v3

    iget v3, v9, LF0/e;->b:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->t()Z

    move-result v11

    if-eqz v11, :cond_e

    iget v11, v9, LF0/e;->e:F

    sub-float/2addr v11, v8

    iget v8, v9, LF0/e;->d:F

    add-float/2addr v8, v10

    div-float/2addr v11, v8

    goto :goto_1

    :cond_e
    iget v11, v9, LF0/e;->e:F

    sub-float/2addr v8, v11

    iget v9, v9, LF0/e;->d:F

    add-float/2addr v9, v10

    div-float v11, v8, v9

    :goto_1
    iget v8, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    if-ne v8, v7, :cond_f

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->r()Z

    move-result v4

    goto/16 :goto_5

    :cond_f
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->F:F

    sub-float/2addr p1, v7

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->L:I

    if-le p1, v7, :cond_11

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    if-le p1, v7, :cond_11

    invoke-static {v1}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result p1

    cmpl-float p1, p1, v6

    if-nez p1, :cond_11

    invoke-static {v0}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result p1

    cmpl-float p1, p1, v6

    if-nez p1, :cond_11

    if-lez v2, :cond_10

    move p1, v4

    goto :goto_2

    :cond_10
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->d0:I

    :goto_2
    sub-int p1, v3, p1

    goto :goto_4

    :cond_11
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    if-lt v3, p1, :cond_12

    const p1, 0x3ecccccd    # 0.4f

    goto :goto_3

    :cond_12
    const p1, 0x3f19999a    # 0.6f

    :goto_3
    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->d0:I

    add-float/2addr v11, p1

    float-to-int p1, v11

    mul-int/2addr v7, p1

    sub-int p1, v3, v7

    :goto_4
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_13

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LF0/e;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LF0/e;

    iget v4, v4, LF0/e;->b:I

    iget v7, v7, LF0/e;->b:I

    invoke-static {p1, v4, v7}, LZ0/j;->n(III)I

    move-result p1

    :cond_13
    invoke-virtual {p0, p1, v2, v5, v5}, Landroidx/viewpager/widget/ViewPager;->v(IIZZ)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->r()Z

    move-result v4

    if-ne p1, v3, :cond_16

    if-eqz v4, :cond_16

    invoke-static {v0}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result p1

    cmpl-float p1, p1, v6

    if-eqz p1, :cond_14

    neg-int p1, v2

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_5

    :cond_14
    invoke-static {v1}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result p1

    cmpl-float p1, p1, v6

    if-eqz p1, :cond_16

    invoke-virtual {v1, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_5

    :cond_15
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->v:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->o()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->F:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->E:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    :cond_16
    :goto_5
    if-eqz v4, :cond_17

    sget-object p1, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_17
    return v5

    :cond_18
    :goto_6
    return v4
.end method

.method public final p(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->h:I

    const/4 v4, 0x2

    if-eq v2, v1, :cond_2

    iget-boolean v5, v0, Landroidx/viewpager/widget/ViewPager;->e0:Z

    if-eqz v5, :cond_1

    if-ge v2, v1, :cond_0

    const/16 v4, 0x42

    goto :goto_0

    :cond_0
    const/16 v4, 0x11

    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->i(I)LF0/e;

    move-result-object v2

    iput v1, v0, Landroidx/viewpager/widget/ViewPager;->h:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->v:Z

    if-eqz v1, :cond_4

    return-void

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroidx/picker/widget/g;

    sget-object v5, Landroidx/picker/widget/SeslDatePicker;->u0:Landroid/view/animation/PathInterpolator;

    iget-object v1, v1, Landroidx/picker/widget/g;->d:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->w:I

    iget v5, v0, Landroidx/viewpager/widget/ViewPager;->h:I

    sub-int/2addr v5, v1

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v7, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v7}, LF0/a;->b()I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    iget v9, v0, Landroidx/viewpager/widget/ViewPager;->h:I

    add-int/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v8, v0, Landroidx/viewpager/widget/ViewPager;->c:I

    if-ne v7, v8, :cond_32

    move v8, v6

    :goto_2
    iget-object v9, v0, Landroidx/viewpager/widget/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LF0/e;

    iget v11, v10, LF0/e;->b:I

    iget v12, v0, Landroidx/viewpager/widget/ViewPager;->h:I

    if-lt v11, v12, :cond_6

    if-ne v11, v12, :cond_7

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    :goto_3
    if-nez v10, :cond_8

    if-lez v7, :cond_8

    iget v10, v0, Landroidx/viewpager/widget/ViewPager;->h:I

    invoke-virtual {v0, v10, v8}, Landroidx/viewpager/widget/ViewPager;->a(II)LF0/e;

    move-result-object v10

    :cond_8
    if-eqz v10, :cond_28

    add-int/lit8 v12, v8, -0x1

    if-ltz v12, :cond_9

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LF0/e;

    goto :goto_4

    :cond_9
    const/4 v13, 0x0

    :goto_4
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    if-gtz v14, :cond_a

    const/4 v6, 0x0

    goto :goto_5

    :cond_a
    iget v3, v10, LF0/e;->d:F

    sub-float v3, v15, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    int-to-float v11, v14

    div-float/2addr v6, v11

    add-float/2addr v6, v3

    :goto_5
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->h:I

    add-int/lit8 v3, v3, -0x1

    const/4 v11, 0x0

    :goto_6
    if-ltz v3, :cond_10

    cmpl-float v16, v11, v6

    if-ltz v16, :cond_d

    if-ge v3, v5, :cond_d

    if-nez v13, :cond_b

    goto :goto_8

    :cond_b
    iget v15, v13, LF0/e;->b:I

    if-ne v3, v15, :cond_f

    iget-boolean v15, v13, LF0/e;->c:Z

    if-nez v15, :cond_f

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v15, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    iget-object v13, v13, LF0/e;->a:Landroidx/picker/widget/H;

    invoke-virtual {v15, v0, v3, v13}, LF0/a;->a(Landroid/view/ViewGroup;ILandroidx/picker/widget/H;)V

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v8, v8, -0x1

    if-ltz v12, :cond_c

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LF0/e;

    goto :goto_7

    :cond_c
    const/4 v13, 0x0

    goto :goto_7

    :cond_d
    if-eqz v13, :cond_e

    iget v15, v13, LF0/e;->b:I

    if-ne v3, v15, :cond_e

    iget v13, v13, LF0/e;->d:F

    add-float/2addr v11, v13

    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_c

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LF0/e;

    goto :goto_7

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v0, v3, v13}, Landroidx/viewpager/widget/ViewPager;->a(II)LF0/e;

    move-result-object v13

    iget v13, v13, LF0/e;->d:F

    add-float/2addr v11, v13

    add-int/lit8 v8, v8, 0x1

    if-ltz v12, :cond_c

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LF0/e;

    :cond_f
    :goto_7
    add-int/lit8 v3, v3, -0x1

    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_6

    :cond_10
    :goto_8
    iget v3, v10, LF0/e;->d:F

    add-int/lit8 v5, v8, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    cmpg-float v11, v3, v6

    if-gez v11, :cond_18

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_11

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LF0/e;

    goto :goto_9

    :cond_11
    const/4 v6, 0x0

    :goto_9
    if-gtz v14, :cond_12

    const/4 v11, 0x0

    goto :goto_a

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v14

    div-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    add-float/2addr v11, v12

    :goto_a
    iget v12, v0, Landroidx/viewpager/widget/ViewPager;->h:I

    add-int/lit8 v12, v12, 0x1

    move v13, v5

    :goto_b
    if-ge v12, v7, :cond_18

    cmpl-float v14, v3, v11

    if-ltz v14, :cond_15

    if-le v12, v1, :cond_15

    if-nez v6, :cond_13

    goto :goto_d

    :cond_13
    iget v14, v6, LF0/e;->b:I

    if-ne v12, v14, :cond_17

    iget-boolean v14, v6, LF0/e;->c:Z

    if-nez v14, :cond_17

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v14, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    iget-object v6, v6, LF0/e;->a:Landroidx/picker/widget/H;

    invoke-virtual {v14, v0, v12, v6}, LF0/a;->a(Landroid/view/ViewGroup;ILandroidx/picker/widget/H;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v13, v6, :cond_14

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LF0/e;

    goto :goto_c

    :cond_14
    const/4 v6, 0x0

    goto :goto_c

    :cond_15
    if-eqz v6, :cond_16

    iget v14, v6, LF0/e;->b:I

    if-ne v12, v14, :cond_16

    iget v6, v6, LF0/e;->d:F

    add-float/2addr v3, v6

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v13, v6, :cond_14

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LF0/e;

    goto :goto_c

    :cond_16
    invoke-virtual {v0, v12, v13}, Landroidx/viewpager/widget/ViewPager;->a(II)LF0/e;

    move-result-object v6

    add-int/lit8 v13, v13, 0x1

    iget v6, v6, LF0/e;->d:F

    add-float/2addr v3, v6

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v13, v6, :cond_14

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LF0/e;

    :cond_17
    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_18
    :goto_d
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v1}, LF0/a;->b()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    if-lez v3, :cond_19

    iget v6, v0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v6, v6

    int-to-float v3, v3

    div-float/2addr v6, v3

    goto :goto_e

    :cond_19
    const/4 v6, 0x0

    :goto_e
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1f

    iget v7, v2, LF0/e;->b:I

    iget v11, v10, LF0/e;->b:I

    if-ge v7, v11, :cond_1c

    iget v11, v2, LF0/e;->e:F

    iget v2, v2, LF0/e;->d:F

    add-float/2addr v11, v2

    add-float/2addr v11, v6

    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    :goto_f
    iget v12, v10, LF0/e;->b:I

    if-gt v7, v12, :cond_1f

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_1f

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LF0/e;

    :goto_10
    iget v13, v12, LF0/e;->b:I

    if-le v7, v13, :cond_1a

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v2, v13, :cond_1a

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LF0/e;

    goto :goto_10

    :cond_1a
    :goto_11
    iget v13, v12, LF0/e;->b:I

    if-ge v7, v13, :cond_1b

    iget-object v13, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-float v13, v3, v6

    add-float/2addr v11, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_1b
    iput v11, v12, LF0/e;->e:F

    iget v12, v12, LF0/e;->d:F

    add-float/2addr v12, v6

    add-float/2addr v11, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_1c
    if-le v7, v11, :cond_1f

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    iget v2, v2, LF0/e;->e:F

    add-int/lit8 v7, v7, -0x1

    :goto_12
    iget v12, v10, LF0/e;->b:I

    if-lt v7, v12, :cond_1f

    if-ltz v11, :cond_1f

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LF0/e;

    :goto_13
    iget v13, v12, LF0/e;->b:I

    if-ge v7, v13, :cond_1d

    if-lez v11, :cond_1d

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LF0/e;

    goto :goto_13

    :cond_1d
    :goto_14
    iget v13, v12, LF0/e;->b:I

    if-le v7, v13, :cond_1e

    iget-object v13, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-float v13, v3, v6

    sub-float/2addr v2, v13

    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    :cond_1e
    iget v13, v12, LF0/e;->d:F

    add-float/2addr v13, v6

    sub-float/2addr v2, v13

    iput v2, v12, LF0/e;->e:F

    add-int/lit8 v7, v7, -0x1

    goto :goto_12

    :cond_1f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v7, v10, LF0/e;->e:F

    iget v11, v10, LF0/e;->b:I

    add-int/lit8 v12, v11, -0x1

    if-nez v11, :cond_20

    move v13, v7

    goto :goto_15

    :cond_20
    const v13, -0x800001

    :goto_15
    iput v13, v0, Landroidx/viewpager/widget/ViewPager;->r:F

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_21

    iget v11, v10, LF0/e;->d:F

    add-float/2addr v11, v7

    sub-float/2addr v11, v3

    goto :goto_16

    :cond_21
    const v11, 0x7f7fffff    # Float.MAX_VALUE

    :goto_16
    iput v11, v0, Landroidx/viewpager/widget/ViewPager;->s:F

    add-int/lit8 v8, v8, -0x1

    :goto_17
    if-ltz v8, :cond_24

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LF0/e;

    :goto_18
    iget v13, v11, LF0/e;->b:I

    if-le v12, v13, :cond_22

    iget-object v13, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-float v13, v3, v6

    sub-float/2addr v7, v13

    goto :goto_18

    :cond_22
    iget v14, v11, LF0/e;->d:F

    add-float/2addr v14, v6

    sub-float/2addr v7, v14

    iput v7, v11, LF0/e;->e:F

    if-nez v13, :cond_23

    iput v7, v0, Landroidx/viewpager/widget/ViewPager;->r:F

    :cond_23
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v12, v12, -0x1

    goto :goto_17

    :cond_24
    iget v7, v10, LF0/e;->e:F

    iget v8, v10, LF0/e;->d:F

    add-float/2addr v7, v8

    add-float/2addr v7, v6

    iget v8, v10, LF0/e;->b:I

    :goto_19
    add-int/lit8 v8, v8, 0x1

    if-ge v5, v2, :cond_27

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LF0/e;

    :goto_1a
    iget v11, v10, LF0/e;->b:I

    if-ge v8, v11, :cond_25

    iget-object v11, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-float v11, v3, v6

    add-float/2addr v7, v11

    goto :goto_1a

    :cond_25
    if-ne v11, v1, :cond_26

    iget v11, v10, LF0/e;->d:F

    add-float/2addr v11, v7

    sub-float/2addr v11, v3

    iput v11, v0, Landroidx/viewpager/widget/ViewPager;->s:F

    :cond_26
    iput v7, v10, LF0/e;->e:F

    iget v10, v10, LF0/e;->d:F

    add-float/2addr v10, v6

    add-float/2addr v7, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_27
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_28
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroidx/picker/widget/g;

    sget-object v2, Landroidx/picker/widget/SeslDatePicker;->u0:Landroid/view/animation/PathInterpolator;

    iget-object v1, v1, Landroidx/picker/widget/g;->d:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_2b

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, LF0/f;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v6, v5, LF0/f;->a:Z

    if-nez v6, :cond_29

    iget v6, v5, LF0/f;->c:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2a

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->g(Landroid/view/View;)LF0/e;

    move-result-object v3

    if-eqz v3, :cond_2a

    iget v6, v3, LF0/e;->d:F

    iput v6, v5, LF0/f;->c:F

    iget v3, v3, LF0/e;->b:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1c

    :cond_29
    const/4 v7, 0x0

    :cond_2a
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2e

    :goto_1d
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, v0, :cond_2d

    instance-of v1, v2, Landroid/view/View;

    if-nez v1, :cond_2c

    goto :goto_1e

    :cond_2c
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    goto :goto_1d

    :cond_2d
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->g(Landroid/view/View;)LF0/e;

    move-result-object v3

    goto :goto_1f

    :cond_2e
    :goto_1e
    const/4 v3, 0x0

    :goto_1f
    if-eqz v3, :cond_2f

    iget v1, v3, LF0/e;->b:I

    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->h:I

    if-eq v1, v2, :cond_31

    :cond_2f
    const/4 v6, 0x0

    :goto_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v6, v1, :cond_31

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->g(Landroid/view/View;)LF0/e;

    move-result-object v2

    if-eqz v2, :cond_30

    iget v2, v2, LF0/e;->b:I

    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->h:I

    if-ne v2, v3, :cond_30

    invoke-virtual {v1, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_21

    :cond_30
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_31
    :goto_21
    return-void

    :cond_32
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_22

    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_22
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final q(IIII)V
    .locals 1

    if-lez p2, :cond_2

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result p0

    mul-int/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollStart()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->t()Z

    move-result p2

    if-eqz p2, :cond_1

    int-to-float p1, p1

    mul-float/2addr p3, p1

    const/high16 p1, 0x4b800000    # 1.6777216E7f

    sub-float/2addr p1, p3

    float-to-int p1, p1

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_2

    :cond_2
    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->i(I)LF0/e;

    move-result-object p2

    if-eqz p2, :cond_3

    iget p2, p2, LF0/e;->e:F

    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->d(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final r()Z
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->y:Z

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->N:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->N:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final s(IIZZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v4, v0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p1}, Landroidx/viewpager/widget/ViewPager;->i(I)LF0/e;

    move-result-object v5

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, v5, LF0/e;->e:F

    iget v10, v0, Landroidx/viewpager/widget/ViewPager;->r:F

    iget v11, v0, Landroidx/viewpager/widget/ViewPager;->s:F

    cmpg-float v12, v9, v10

    if-gez v12, :cond_0

    move v9, v10

    goto :goto_0

    :cond_0
    cmpl-float v10, v9, v11

    if-lez v10, :cond_1

    move v9, v11

    :cond_1
    :goto_0
    mul-float/2addr v9, v8

    float-to-int v9, v9

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->t()Z

    move-result v10

    if-eqz v10, :cond_3

    iget v5, v5, LF0/e;->d:F

    mul-float/2addr v8, v5

    add-float/2addr v8, v6

    float-to-int v5, v8

    const/high16 v8, 0x1000000

    sub-int/2addr v8, v5

    sub-int v9, v8, v9

    goto :goto_1

    :cond_2
    move v9, v7

    :cond_3
    :goto_1
    const/16 v8, 0x3e8

    const/4 v10, 0x5

    if-eqz p3, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-nez v11, :cond_4

    invoke-direct {v0, v7}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_6

    :cond_4
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_6

    iget-boolean v11, v0, Landroidx/viewpager/widget/ViewPager;->l:Z

    if-eqz v11, :cond_5

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v11

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Landroid/widget/Scroller;->getStartX()I

    move-result v11

    :goto_2
    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-direct {v0, v7}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    :goto_3
    move v13, v11

    goto :goto_4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v11

    goto :goto_3

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v14

    sub-int v15, v9, v13

    rsub-int/lit8 v16, v14, 0x0

    if-nez v15, :cond_7

    if-nez v16, :cond_7

    invoke-virtual {v0, v7}, Landroidx/viewpager/widget/ViewPager;->d(Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->o()V

    invoke-virtual {v0, v7}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    goto :goto_6

    :cond_7
    invoke-direct {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v4

    div-int/lit8 v9, v4, 0x2

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v11, v12

    int-to-float v4, v4

    div-float/2addr v11, v4

    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    int-to-float v9, v9

    sub-float/2addr v11, v6

    const v6, 0x3ef1463b

    mul-float/2addr v11, v6

    float-to-double v5, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v9

    add-float/2addr v5, v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lez v6, :cond_8

    int-to-float v4, v6

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    goto :goto_5

    :cond_8
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-float/2addr v4, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    div-float/2addr v5, v4

    add-float/2addr v5, v12

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v5, v4

    float-to-int v4, v5

    :goto_5
    const/16 v5, 0x258

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    iput-boolean v7, v0, Landroidx/viewpager/widget/ViewPager;->l:Z

    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    if-eqz v12, :cond_9

    invoke-virtual/range {v12 .. v17}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_9
    sget-object v4, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :goto_6
    if-eqz p4, :cond_16

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->U:LF0/g;

    if-eqz v0, :cond_16

    check-cast v0, Landroidx/picker/widget/f;

    iget-object v0, v0, Landroidx/picker/widget/f;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslDatePicker;

    iget-boolean v4, v0, Landroidx/picker/widget/SeslDatePicker;->j:Z

    if-eqz v4, :cond_a

    iput-boolean v7, v0, Landroidx/picker/widget/SeslDatePicker;->g:Z

    :cond_a
    iput v1, v0, Landroidx/picker/widget/SeslDatePicker;->K:I

    invoke-virtual {v0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v4

    add-int/2addr v4, v1

    div-int/lit8 v5, v4, 0xc

    invoke-virtual {v0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v6

    add-int/2addr v6, v5

    rem-int/lit8 v4, v4, 0xc

    iget-object v5, v0, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v9, v0, Landroidx/picker/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-eq v6, v11, :cond_b

    move v7, v3

    :cond_b
    invoke-virtual {v9, v3, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v9, v2, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v9, v10, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    if-le v5, v4, :cond_c

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    :cond_c
    invoke-virtual {v9, v10, v5}, Ljava/util/Calendar;->set(II)V

    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker;->s0:Landroidx/picker/widget/c;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    iput v8, v5, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    const/16 v6, 0x3e9

    iput v6, v5, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker;->Q:Landroidx/picker/widget/g;

    iget-object v4, v4, Landroidx/picker/widget/g;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/picker/widget/H;

    invoke-virtual {v5}, Landroidx/picker/widget/H;->a()V

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/picker/widget/H;

    invoke-virtual {v5, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_d
    if-eqz v1, :cond_e

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/picker/widget/H;

    invoke-virtual {v6}, Landroidx/picker/widget/H;->a()V

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/picker/widget/H;

    invoke-virtual {v5, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_e
    iget v0, v0, Landroidx/picker/widget/SeslDatePicker;->L:I

    sub-int/2addr v0, v3

    if-eq v1, v0, :cond_16

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/H;

    invoke-virtual {v1}, Landroidx/picker/widget/H;->a()V

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/H;

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto/16 :goto_8

    :cond_f
    if-eqz p4, :cond_15

    iget-object v4, v0, Landroidx/viewpager/widget/ViewPager;->U:LF0/g;

    if-eqz v4, :cond_15

    check-cast v4, Landroidx/picker/widget/f;

    iget-object v4, v4, Landroidx/picker/widget/f;->a:Ljava/lang/Object;

    check-cast v4, Landroidx/picker/widget/SeslDatePicker;

    iget-boolean v5, v4, Landroidx/picker/widget/SeslDatePicker;->j:Z

    if-eqz v5, :cond_10

    iput-boolean v7, v4, Landroidx/picker/widget/SeslDatePicker;->g:Z

    :cond_10
    iput v1, v4, Landroidx/picker/widget/SeslDatePicker;->K:I

    invoke-virtual {v4}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v5

    add-int/2addr v5, v1

    div-int/lit8 v6, v5, 0xc

    invoke-virtual {v4}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v11

    add-int/2addr v11, v6

    rem-int/lit8 v5, v5, 0xc

    iget-object v6, v4, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v12, v4, Landroidx/picker/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-eq v11, v13, :cond_11

    move v13, v3

    goto :goto_7

    :cond_11
    move v13, v7

    :goto_7
    invoke-virtual {v12, v3, v11}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v12, v2, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v12, v10, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-le v6, v5, :cond_12

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    :cond_12
    invoke-virtual {v12, v10, v6}, Ljava/util/Calendar;->set(II)V

    iget-object v5, v4, Landroidx/picker/widget/SeslDatePicker;->s0:Landroidx/picker/widget/c;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    iput v8, v6, Landroid/os/Message;->what:I

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    const/16 v8, 0x3e9

    iput v8, v6, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v5, v4, Landroidx/picker/widget/SeslDatePicker;->Q:Landroidx/picker/widget/g;

    iget-object v5, v5, Landroidx/picker/widget/g;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/picker/widget/H;

    invoke-virtual {v6}, Landroidx/picker/widget/H;->a()V

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/picker/widget/H;

    invoke-virtual {v6, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_13
    if-eqz v1, :cond_14

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_14

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/picker/widget/H;

    invoke-virtual {v8}, Landroidx/picker/widget/H;->a()V

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/picker/widget/H;

    invoke-virtual {v6, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_14
    iget v4, v4, Landroidx/picker/widget/SeslDatePicker;->L:I

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_15

    add-int/2addr v1, v3

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/picker/widget/H;

    invoke-virtual {v3}, Landroidx/picker/widget/H;->a()V

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/H;

    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_15
    invoke-virtual {v0, v7}, Landroidx/viewpager/widget/ViewPager;->d(Z)V

    invoke-virtual {v0, v9, v7}, Landroid/view/View;->scrollTo(II)V

    invoke-virtual {v0, v9}, Landroidx/viewpager/widget/ViewPager;->m(I)Z

    :cond_16
    :goto_8
    return-void
.end method

.method public setAdapter(LF0/a;)V
    .locals 7

    const/4 v0, -0x1

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    monitor-enter v1

    :try_start_0
    iput-object v2, v1, LF0/a;->b:Landroid/database/DataSetObserver;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroidx/picker/widget/g;

    sget-object v2, Landroidx/picker/widget/SeslDatePicker;->u0:Landroid/view/animation/PathInterpolator;

    iget-object v1, v1, Landroidx/picker/widget/g;->d:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v1, v4

    :goto_0
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF0/e;

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    iget v6, v2, LF0/e;->b:I

    iget-object v2, v2, LF0/e;->a:Landroidx/picker/widget/H;

    invoke-virtual {v5, p0, v6, v2}, LF0/a;->a(Landroid/view/ViewGroup;ILandroidx/picker/widget/H;)V

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroidx/picker/widget/g;

    sget-object v5, Landroidx/picker/widget/SeslDatePicker;->u0:Landroid/view/animation/PathInterpolator;

    iget-object v1, v1, Landroidx/picker/widget/g;->d:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v1, v4

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, LF0/f;

    iget-boolean v2, v2, LF0/f;->a:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/2addr v1, v0

    :cond_1
    add-int/2addr v1, v3

    goto :goto_1

    :cond_2
    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    invoke-virtual {p0, v4, v4}, Landroid/view/View;->scrollTo(II)V

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_2
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->m:LF0/h;

    if-nez p1, :cond_4

    new-instance p1, LF0/h;

    invoke-direct {p1, v4, p0}, LF0/h;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->m:LF0/h;

    :cond_4
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->m:LF0/h;

    monitor-enter p1

    :try_start_2
    iput-object v1, p1, LF0/a;->b:Landroid/database/DataSetObserver;

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->v:Z

    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v1}, LF0/a;->b()I

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->i:I

    if-ltz v1, :cond_5

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->i:I

    invoke-virtual {p0, p1, v4, v4, v3}, Landroidx/viewpager/widget/ViewPager;->v(IIZZ)V

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->i:I

    goto :goto_3

    :cond_5
    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->o()V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_7
    :goto_3
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->v:Z

    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->v(IIZZ)V

    return-void
.end method

.method public setDragInGutterEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->C:Z

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested offscreen page limit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to 1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_0
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->o()V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(LF0/g;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->U:LF0/g;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/ViewPager;->q(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lz/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScrollState(I)V
    .locals 1

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->W:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->W:I

    return-void
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->e0:Z

    if-eqz v0, :cond_0

    sget-object v0, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final u(IZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->v:Z

    invoke-virtual {p0, p1, v0, p2, v0}, Landroidx/viewpager/widget/ViewPager;->v(IIZZ)V

    return-void
.end method

.method public final v(IIZZ)V
    .locals 6

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, LF0/a;->b()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->d:Ljava/util/ArrayList;

    if-nez p4, :cond_1

    iget p4, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    if-ne p4, p1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-eqz p4, :cond_1

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p4, 0x1

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {v2}, LF0/a;->b()I

    move-result v2

    if-lt p1, v2, :cond_3

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->g:LF0/a;

    invoke-virtual {p1}, LF0/a;->b()I

    move-result p1

    sub-int/2addr p1, p4

    :cond_3
    :goto_0
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    add-int v4, v3, v2

    if-gt p1, v4, :cond_4

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_5

    :cond_4
    move v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LF0/e;

    iput-boolean p4, v3, LF0/e;->c:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    if-eq v0, p1, :cond_6

    move v0, p4

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    iget-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    if-eqz v2, :cond_d

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    if-eqz v0, :cond_c

    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->U:LF0/g;

    if-eqz p2, :cond_c

    check-cast p2, Landroidx/picker/widget/f;

    iget-object p2, p2, Landroidx/picker/widget/f;->a:Ljava/lang/Object;

    check-cast p2, Landroidx/picker/widget/SeslDatePicker;

    iget-boolean p3, p2, Landroidx/picker/widget/SeslDatePicker;->j:Z

    if-eqz p3, :cond_7

    iput-boolean v1, p2, Landroidx/picker/widget/SeslDatePicker;->g:Z

    :cond_7
    iput p1, p2, Landroidx/picker/widget/SeslDatePicker;->K:I

    invoke-virtual {p2}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result p3

    add-int/2addr p3, p1

    div-int/lit8 v0, p3, 0xc

    invoke-virtual {p2}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    add-int/2addr v2, v0

    rem-int/lit8 p3, p3, 0xc

    iget-object v0, p2, Landroidx/picker/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v4, p2, Landroidx/picker/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v4, p4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v2, v5, :cond_8

    move v1, p4

    :cond_8
    invoke-virtual {v4, p4, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    invoke-virtual {v4, v2, p3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v3, p4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p3

    if-le v0, p3, :cond_9

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    :cond_9
    invoke-virtual {v4, v3, v0}, Ljava/util/Calendar;->set(II)V

    iget-object p3, p2, Landroidx/picker/widget/SeslDatePicker;->s0:Landroidx/picker/widget/c;

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v3, 0x3e8

    iput v3, v0, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p3, p2, Landroidx/picker/widget/SeslDatePicker;->Q:Landroidx/picker/widget/g;

    iget-object p3, p3, Landroidx/picker/widget/g;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/H;

    invoke-virtual {v0}, Landroidx/picker/widget/H;->a()V

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/H;

    invoke-virtual {v0, p4}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_a
    if-eqz p1, :cond_b

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/H;

    invoke-virtual {v1}, Landroidx/picker/widget/H;->a()V

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/H;

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_b
    iget p2, p2, Landroidx/picker/widget/SeslDatePicker;->L:I

    sub-int/2addr p2, p4

    if-eq p1, p2, :cond_c

    add-int/2addr p1, p4

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/picker/widget/H;

    invoke-virtual {p2}, Landroidx/picker/widget/H;->a()V

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/widget/H;

    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_3

    :cond_d
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->p(I)V

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/viewpager/widget/ViewPager;->s(IIZZ)V

    :goto_3
    return-void

    :cond_e
    :goto_4
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
