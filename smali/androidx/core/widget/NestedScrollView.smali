.class public Landroidx/core/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements LJ/o;


# static fields
.field public static final h0:F

.field public static final i0:LO/i;

.field public static final j0:[I


# instance fields
.field public final A:LJ/m;

.field public B:F

.field public C:Z

.field public D:I

.field public E:Z

.field public final F:Landroid/graphics/Rect;

.field public G:I

.field public H:Z

.field public final I:Z

.field public J:Z

.field public K:Z

.field public L:LO/k;

.field public M:I

.field public N:I

.field public O:I

.field public Q:J

.field public R:J

.field public final T:J

.field public U:J

.field public V:Z

.field public final W:Landroid/content/Context;

.field public a0:I

.field public b0:Z

.field public final c:F

.field public final c0:[I

.field public d:J

.field public d0:I

.field public final e:Landroid/graphics/Rect;

.field public e0:I

.field public final f:Landroid/widget/OverScroller;

.field public final f0:LJ/c;

.field public final g:Landroid/widget/EdgeEffect;

.field public final g0:LO/h;

.field public final h:Landroid/widget/EdgeEffect;

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Landroid/view/View;

.field public m:Z

.field public n:Landroid/view/VelocityTracker;

.field public o:Z

.field public p:Z

.field public final q:I

.field public final r:I

.field public final s:I

.field public t:I

.field public final u:[I

.field public final v:[I

.field public w:I

.field public x:I

.field public y:LO/m;

.field public final z:LJ/p;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroidx/core/widget/NestedScrollView;->h0:F

    new-instance v0, LO/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LO/i;-><init>(I)V

    sput-object v0, Landroidx/core/widget/NestedScrollView;->i0:LO/i;

    const v0, 0x101017a

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/core/widget/NestedScrollView;->j0:[I

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const v0, 0x7f04037f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/View;

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->p:Z

    const/4 v3, -0x1

    iput v3, p0, Landroidx/core/widget/NestedScrollView;->t:I

    const/4 v4, 0x2

    new-array v5, v4, [I

    iput-object v5, p0, Landroidx/core/widget/NestedScrollView;->u:[I

    new-array v5, v4, [I

    iput-object v5, p0, Landroidx/core/widget/NestedScrollView;->v:[I

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->C:Z

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->D:I

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->E:Z

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroidx/core/widget/NestedScrollView;->F:Landroid/graphics/Rect;

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->G:I

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3ea8f5c3    # 0.33f

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v6, LO/h;

    const/4 v7, 0x1

    invoke-direct {v6, p0, v7}, LO/h;-><init>(Landroidx/core/widget/NestedScrollView;I)V

    new-instance v6, LO/h;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v7}, LO/h;-><init>(Landroidx/core/widget/NestedScrollView;I)V

    new-instance v6, LO/h;

    const/4 v7, 0x3

    invoke-direct {v6, p0, v7}, LO/h;-><init>(Landroidx/core/widget/NestedScrollView;I)V

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->H:Z

    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->I:Z

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->J:Z

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->K:Z

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->M:I

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->N:I

    iput v3, p0, Landroidx/core/widget/NestedScrollView;->O:I

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroidx/core/widget/NestedScrollView;->Q:J

    iput-wide v6, p0, Landroidx/core/widget/NestedScrollView;->R:J

    const-wide/16 v8, 0x12c

    iput-wide v8, p0, Landroidx/core/widget/NestedScrollView;->T:J

    iput-wide v6, p0, Landroidx/core/widget/NestedScrollView;->U:J

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->V:Z

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->a0:I

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->b0:Z

    new-array v3, v4, [I

    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->c0:[I

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->d0:I

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->e0:I

    new-instance v3, Ls2/c;

    invoke-direct {v3, p0}, Ls2/c;-><init>(Ljava/lang/Object;)V

    new-instance v4, LJ/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, v3}, LJ/c;-><init>(Landroid/content/Context;Ls2/c;)V

    iput-object v4, p0, Landroidx/core/widget/NestedScrollView;->f0:LJ/c;

    new-instance v3, LA1/a;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, LA1/a;-><init>(ILjava/lang/Object;)V

    new-instance v4, LO/h;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, LO/h;-><init>(Landroidx/core/widget/NestedScrollView;I)V

    iput-object v4, p0, Landroidx/core/widget/NestedScrollView;->g0:LO/h;

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->W:Landroid/content/Context;

    invoke-static {}, Lp0/b;->c()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p1, p2}, LO/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object v6

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/widget/EdgeEffect;

    invoke-direct {v6, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v6, p0, Landroidx/core/widget/NestedScrollView;->g:Landroid/widget/EdgeEffect;

    invoke-static {}, Lp0/b;->c()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p1, p2}, LO/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object v6

    goto :goto_1

    :cond_1
    new-instance v6, Landroid/widget/EdgeEffect;

    invoke-direct {v6, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object v6, p0, Landroidx/core/widget/NestedScrollView;->h:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x43200000    # 160.0f

    mul-float/2addr v6, v7

    const v7, 0x43c10b3d

    mul-float/2addr v6, v7

    const v7, 0x3f570a3d    # 0.84f

    mul-float/2addr v6, v7

    iput v6, p0, Landroidx/core/widget/NestedScrollView;->c:F

    new-instance v6, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    const/high16 v6, 0x40000

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Landroidx/core/widget/NestedScrollView;->q:I

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v7

    iput v7, p0, Landroidx/core/widget/NestedScrollView;->r:I

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    iput v6, p0, Landroidx/core/widget/NestedScrollView;->s:I

    invoke-virtual {p0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget-object v3, Landroidx/core/widget/NestedScrollView;->j0:[I

    invoke-virtual {p1, p2, v3, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->setFillViewport(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, LJ/p;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->z:LJ/p;

    new-instance p1, LJ/m;

    invoke-direct {p1, p0}, LJ/m;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    sget-object p1, Landroidx/core/widget/NestedScrollView;->i0:LO/i;

    invoke-static {p0, p1}, LJ/Q;->h(Landroid/view/View;LJ/b;)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public static synthetic g(Landroidx/core/widget/NestedScrollView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/core/widget/NestedScrollView;->setupGoToTop(I)V

    return-void
.end method

.method public static o(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Landroidx/core/widget/NestedScrollView;->o(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setupGoToTop(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "enabled_accessibility_services"

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "(?i).*com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "(?i).*com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService.*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    const/4 p1, 0x1

    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->z:LJ/p;

    if-ne p4, p1, :cond_0

    iput p3, p2, LJ/p;->b:I

    goto :goto_0

    :cond_0
    iput p3, p2, LJ/p;->a:I

    :goto_0
    const/4 p1, 0x2

    invoke-virtual {p0, p1, p4}, Landroidx/core/widget/NestedScrollView;->x(II)V

    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Landroid/view/View;II[II)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, LJ/m;->c(II[I[II)Z

    return-void
.end method

.method public final c(ILandroid/view/View;)V
    .locals 2

    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->z:LJ/p;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iput v1, p2, LJ/p;->b:I

    goto :goto_0

    :cond_0
    iput v1, p2, LJ/p;->a:I

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->z(I)V

    return-void
.end method

.method public final computeHorizontalScrollExtent()I
    .locals 0

    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result p0

    return p0
.end method

.method public final computeHorizontalScrollOffset()I
    .locals 0

    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result p0

    return p0
.end method

.method public final computeHorizontalScrollRange()I
    .locals 0

    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result p0

    return p0
.end method

.method public final computeScroll()V
    .locals 15

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    iget v1, p0, Landroidx/core/widget/NestedScrollView;->x:I

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->h:Landroid/widget/EdgeEffect;

    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->g:Landroid/widget/EdgeEffect;

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    if-lez v1, :cond_2

    invoke-static {v4}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result v8

    cmpl-float v8, v8, v6

    if-eqz v8, :cond_2

    neg-int v6, v1

    int-to-float v6, v6

    mul-float/2addr v6, v7

    int-to-float v8, v2

    div-float/2addr v6, v8

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    invoke-static {v4, v6, v5}, LL2/b;->B(Landroid/widget/EdgeEffect;FF)F

    move-result v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eq v2, v1, :cond_1

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->finish()V

    :cond_1
    :goto_0
    sub-int/2addr v1, v2

    goto :goto_1

    :cond_2
    if-gez v1, :cond_3

    invoke-static {v3}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result v8

    cmpl-float v6, v8, v6

    if-eqz v6, :cond_3

    int-to-float v6, v1

    mul-float/2addr v6, v7

    int-to-float v2, v2

    div-float/2addr v6, v2

    div-float/2addr v2, v7

    invoke-static {v3, v6, v5}, LL2/b;->B(Landroid/widget/EdgeEffect;FF)F

    move-result v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eq v2, v1, :cond_1

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_0

    :cond_3
    :goto_1
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->x:I

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->v:[I

    const/4 v2, 0x1

    const/4 v13, 0x0

    aput v13, v0, v2

    const/4 v9, 0x0

    iget-object v5, p0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    const/4 v6, 0x0

    const/4 v10, 0x1

    move v7, v1

    move-object v8, v0

    invoke-virtual/range {v5 .. v10}, LJ/m;->c(II[I[II)Z

    aget v5, v0, v2

    sub-int/2addr v1, v5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v14

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    invoke-virtual {p0, v1, v6, v5, v14}, Landroidx/core/widget/NestedScrollView;->s(IIII)Z

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int v7, v6, v5

    sub-int/2addr v1, v7

    aput v13, v0, v2

    iget-object v10, p0, Landroidx/core/widget/NestedScrollView;->u:[I

    const/4 v11, 0x1

    iget-object v5, p0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v9, v1

    move-object v12, v0

    invoke-virtual/range {v5 .. v12}, LJ/m;->d(IIII[II[I)Z

    move-result v5

    iget-object v6, p0, Landroidx/core/widget/NestedScrollView;->u:[I

    if-eqz v5, :cond_4

    aput v13, v6, v13

    aput v13, v6, v2

    :cond_4
    aget v5, v6, v13

    if-ltz v5, :cond_5

    aget v5, v6, v2

    if-gez v5, :cond_6

    :cond_5
    aput v13, v6, v13

    aput v13, v6, v2

    :cond_6
    aget v0, v0, v2

    sub-int/2addr v1, v0

    :cond_7
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_8

    if-ne v0, v2, :cond_a

    if-lez v14, :cond_a

    :cond_8
    if-gez v1, :cond_9

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2

    :cond_9
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_a
    :goto_2
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->z(I)V

    :cond_b
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_3

    :cond_c
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->z(I)V

    :goto_3
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p0, v0}, Lp0/a;->s(Landroid/view/View;F)V

    return-void
.end method

.method public final computeVerticalScrollExtent()I
    .locals 0

    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result p0

    return p0
.end method

.method public final computeVerticalScrollOffset()I
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final computeVerticalScrollRange()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez p0, :cond_1

    sub-int/2addr v2, p0

    goto :goto_0

    :cond_1
    if-le p0, v0, :cond_2

    sub-int/2addr p0, v0

    add-int/2addr v2, p0

    :cond_2
    :goto_0
    return v2
.end method

.method public final d(Landroid/view/View;IIIII[I)V
    .locals 0

    invoke-virtual {p0, p7, p5, p6}, Landroidx/core/widget/NestedScrollView;->q([III)V

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-object v3, v0, Landroidx/core/widget/NestedScrollView;->W:Landroid/content/Context;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x9

    if-eq v2, v7, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v8, v0, Landroidx/core/widget/NestedScrollView;->b0:Z

    if-eqz v8, :cond_1

    iget-object v8, v0, Landroidx/core/widget/NestedScrollView;->c0:[I

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    iget v9, v0, Landroidx/core/widget/NestedScrollView;->e0:I

    iget v10, v0, Landroidx/core/widget/NestedScrollView;->a0:I

    aget v8, v8, v6

    sub-int/2addr v10, v8

    sub-int/2addr v9, v10

    iput v9, v0, Landroidx/core/widget/NestedScrollView;->d0:I

    if-gez v10, :cond_1

    iput v9, v0, Landroidx/core/widget/NestedScrollView;->e0:I

    iput v8, v0, Landroidx/core/widget/NestedScrollView;->a0:I

    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    iput-boolean v6, v0, Landroidx/core/widget/NestedScrollView;->K:Z

    iget-boolean v9, v0, Landroidx/core/widget/NestedScrollView;->H:Z

    if-eqz v9, :cond_2

    iget-boolean v9, v0, Landroidx/core/widget/NestedScrollView;->I:Z

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->K:Z

    :goto_0
    iget-boolean v9, v0, Landroidx/core/widget/NestedScrollView;->K:Z

    if-eqz v9, :cond_4

    if-ne v8, v4, :cond_4

    invoke-static {}, Lp/a;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v6, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->K:Z

    :cond_4
    :goto_1
    iget-boolean v9, v0, Landroidx/core/widget/NestedScrollView;->K:Z

    if-eqz v9, :cond_5

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->K:Z

    :cond_5
    :goto_2
    iget-boolean v8, v0, Landroidx/core/widget/NestedScrollView;->K:Z

    if-nez v8, :cond_6

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v11

    iget-object v12, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    if-nez v12, :cond_7

    new-instance v12, LO/k;

    invoke-direct {v12, v0}, LO/k;-><init>(Landroidx/core/widget/NestedScrollView;)V

    iput-object v12, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    :cond_7
    iget v12, v0, Landroidx/core/widget/NestedScrollView;->M:I

    if-lez v12, :cond_8

    iget v12, v0, Landroidx/core/widget/NestedScrollView;->N:I

    if-gtz v12, :cond_9

    :cond_8
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const/high16 v13, 0x41c80000    # 25.0f

    invoke-static {v6, v13, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v12, v14

    float-to-int v12, v12

    iput v12, v0, Landroidx/core/widget/NestedScrollView;->M:I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v6, v13, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    add-float/2addr v12, v14

    float-to-int v12, v12

    iput v12, v0, Landroidx/core/widget/NestedScrollView;->N:I

    :cond_9
    if-eqz v10, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v10

    goto :goto_3

    :cond_a
    move v10, v5

    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v12

    if-ne v12, v4, :cond_b

    move v12, v6

    goto :goto_4

    :cond_b
    move v12, v5

    :goto_4
    iget v13, v0, Landroidx/core/widget/NestedScrollView;->M:I

    const-wide/16 v14, 0x0

    if-le v9, v13, :cond_c

    iget v13, v0, Landroidx/core/widget/NestedScrollView;->N:I

    sub-int v13, v10, v13

    iget v4, v0, Landroidx/core/widget/NestedScrollView;->d0:I

    sub-int/2addr v13, v4

    if-lt v9, v13, :cond_1d

    :cond_c
    if-lez v8, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v4

    if-gt v8, v4, :cond_1d

    if-eqz v11, :cond_1d

    if-ltz v9, :cond_d

    iget v4, v0, Landroidx/core/widget/NestedScrollView;->M:I

    if-gt v9, v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    if-gtz v4, :cond_d

    iget-boolean v4, v0, Landroidx/core/widget/NestedScrollView;->V:Z

    if-nez v4, :cond_1d

    :cond_d
    iget v4, v0, Landroidx/core/widget/NestedScrollView;->N:I

    sub-int v4, v10, v4

    if-lt v9, v4, :cond_e

    if-gt v9, v10, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    if-lt v4, v11, :cond_e

    iget-boolean v4, v0, Landroidx/core/widget/NestedScrollView;->V:Z

    if-nez v4, :cond_1d

    :cond_e
    if-eqz v12, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    const/16 v11, 0x20

    if-eq v4, v11, :cond_1d

    :cond_f
    if-eqz v12, :cond_1d

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-nez v3, :cond_1d

    iget-boolean v3, v0, Landroidx/core/widget/NestedScrollView;->J:Z

    if-nez v3, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/core/widget/NestedScrollView;->U:J

    :cond_10
    const/4 v3, 0x7

    const/16 v4, 0xa

    if-eq v2, v3, :cond_15

    if-eq v2, v7, :cond_13

    if-eq v2, v4, :cond_11

    goto/16 :goto_8

    :cond_11
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_12
    invoke-static {}, Lo4/a;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/NestedScrollView;->v(Landroid/view/MotionEvent;I)V

    iput-wide v14, v0, Landroidx/core/widget/NestedScrollView;->R:J

    iput-wide v14, v0, Landroidx/core/widget/NestedScrollView;->U:J

    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->V:Z

    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->J:Z

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {v2, v6}, Landroid/widget/OverScroller;->forceFinished(Z)V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_13
    iput-boolean v6, v0, Landroidx/core/widget/NestedScrollView;->J:Z

    if-ltz v9, :cond_14

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->M:I

    if-gt v9, v2, :cond_14

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/core/widget/NestedScrollView;->R:J

    invoke-static {}, Lo4/a;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/NestedScrollView;->v(Landroid/view/MotionEvent;I)V

    const/4 v1, 0x2

    iput v1, v0, Landroidx/core/widget/NestedScrollView;->O:I

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    :cond_14
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->N:I

    sub-int v2, v10, v2

    iget v3, v0, Landroidx/core/widget/NestedScrollView;->d0:I

    sub-int/2addr v2, v3

    if-lt v9, v2, :cond_1c

    if-gt v9, v10, :cond_1c

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/core/widget/NestedScrollView;->R:J

    invoke-static {}, Lo4/a;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/NestedScrollView;->v(Landroid/view/MotionEvent;I)V

    iput v6, v0, Landroidx/core/widget/NestedScrollView;->O:I

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    :cond_15
    iget-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->J:Z

    if-nez v2, :cond_16

    iput-boolean v6, v0, Landroidx/core/widget/NestedScrollView;->J:Z

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_16
    if-ltz v9, :cond_19

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->M:I

    if-gt v9, v2, :cond_19

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/core/widget/NestedScrollView;->R:J

    iget-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->V:Z

    if-eqz v2, :cond_18

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->O:I

    if-ne v2, v6, :cond_17

    goto :goto_6

    :cond_17
    :goto_5
    const/4 v1, 0x2

    goto :goto_7

    :cond_18
    :goto_6
    invoke-static {}, Lo4/a;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/NestedScrollView;->v(Landroid/view/MotionEvent;I)V

    goto :goto_5

    :goto_7
    iput v1, v0, Landroidx/core/widget/NestedScrollView;->O:I

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    :cond_19
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->N:I

    sub-int v2, v10, v2

    iget v3, v0, Landroidx/core/widget/NestedScrollView;->d0:I

    sub-int/2addr v2, v3

    if-lt v9, v2, :cond_1c

    if-gt v9, v10, :cond_1c

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/core/widget/NestedScrollView;->R:J

    iget-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->V:Z

    if-eqz v2, :cond_1a

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->O:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    :cond_1a
    invoke-static {}, Lo4/a;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/NestedScrollView;->v(Landroid/view/MotionEvent;I)V

    :cond_1b
    iput v6, v0, Landroidx/core/widget/NestedScrollView;->O:I

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1c
    :goto_8
    return v6

    :cond_1d
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lo4/a;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/NestedScrollView;->v(Landroid/view/MotionEvent;I)V

    :cond_1e
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->M:I

    if-le v9, v2, :cond_1f

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->N:I

    sub-int/2addr v10, v2

    if-lt v9, v10, :cond_20

    :cond_1f
    if-lez v8, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v8, v2, :cond_21

    :cond_20
    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->V:Z

    :cond_21
    iget-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->J:Z

    if-nez v2, :cond_22

    iget-wide v2, v0, Landroidx/core/widget/NestedScrollView;->U:J

    cmp-long v2, v2, v14

    if-eqz v2, :cond_23

    :cond_22
    invoke-static {}, Lo4/a;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/NestedScrollView;->v(Landroid/view/MotionEvent;I)V

    :cond_23
    iput-wide v14, v0, Landroidx/core/widget/NestedScrollView;->R:J

    iput-wide v14, v0, Landroidx/core/widget/NestedScrollView;->U:J

    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->J:Z

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->l(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public final dispatchNestedFling(FFZ)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    invoke-virtual {p0, p1, p2, p3}, LJ/m;->a(FFZ)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lp0/a;->s(Landroid/view/View;F)V

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    invoke-virtual {p0, p1, p2}, LJ/m;->b(FF)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LJ/m;->c(II[I[II)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, LJ/m;->d(IIII[II[I)Z

    move-result p0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v4

    iget-object v5, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    if-nez v5, :cond_0

    new-instance v5, LO/k;

    invoke-direct {v5, p0}, LO/k;-><init>(Landroidx/core/widget/NestedScrollView;)V

    iput-object v5, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    :cond_0
    iget v5, v0, Landroidx/core/widget/NestedScrollView;->M:I

    const/4 v6, 0x1

    if-lez v5, :cond_1

    iget v5, v0, Landroidx/core/widget/NestedScrollView;->N:I

    if-gtz v5, :cond_2

    :cond_1
    iget-object v5, v0, Landroidx/core/widget/NestedScrollView;->W:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-static {v6, v8, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v0, Landroidx/core/widget/NestedScrollView;->M:I

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v8, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v0, Landroidx/core/widget/NestedScrollView;->N:I

    :cond_2
    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    move-object/from16 v7, p1

    goto :goto_0

    :cond_3
    move-object/from16 v7, p1

    move v3, v5

    :goto_0
    invoke-virtual {v7, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    move v8, v6

    goto :goto_1

    :cond_4
    move v8, v5

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, -0x1

    iget-object v12, v0, Landroidx/core/widget/NestedScrollView;->F:Landroid/graphics/Rect;

    const/4 v13, 0x0

    if-eqz v10, :cond_b

    if-eq v10, v6, :cond_9

    if-eq v10, v9, :cond_7

    const/4 v14, 0x3

    if-eq v10, v14, :cond_5

    goto :goto_2

    :cond_5
    iget-boolean v14, v0, Landroidx/core/widget/NestedScrollView;->E:Z

    if-eqz v14, :cond_d

    iget v14, v0, Landroidx/core/widget/NestedScrollView;->G:I

    if-nez v14, :cond_6

    goto :goto_2

    :cond_6
    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    throw v13

    :cond_7
    iget-boolean v14, v0, Landroidx/core/widget/NestedScrollView;->E:Z

    if-eqz v14, :cond_d

    iget v14, v0, Landroidx/core/widget/NestedScrollView;->G:I

    if-ne v14, v9, :cond_d

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_8

    return v6

    :cond_8
    iput v6, v0, Landroidx/core/widget/NestedScrollView;->G:I

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    throw v13

    :cond_9
    iget-boolean v14, v0, Landroidx/core/widget/NestedScrollView;->E:Z

    if-eqz v14, :cond_d

    iget v14, v0, Landroidx/core/widget/NestedScrollView;->G:I

    if-ne v14, v9, :cond_d

    invoke-virtual {p0, v11}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, LO/h;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, LO/h;-><init>(Landroidx/core/widget/NestedScrollView;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    iput v6, v0, Landroidx/core/widget/NestedScrollView;->G:I

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    throw v13

    :cond_b
    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->C:Z

    iget-boolean v14, v0, Landroidx/core/widget/NestedScrollView;->E:Z

    if-eqz v14, :cond_d

    iget v14, v0, Landroidx/core/widget/NestedScrollView;->G:I

    if-eq v14, v9, :cond_d

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-nez v14, :cond_c

    goto :goto_2

    :cond_c
    invoke-direct {p0, v9}, Landroidx/core/widget/NestedScrollView;->setupGoToTop(I)V

    throw v13

    :cond_d
    :goto_2
    iget v14, v0, Landroidx/core/widget/NestedScrollView;->M:I

    const-wide/16 v5, 0x0

    if-le v2, v14, :cond_e

    iget v14, v0, Landroidx/core/widget/NestedScrollView;->N:I

    sub-int/2addr v3, v14

    if-lt v2, v3, :cond_17

    :cond_e
    if-eqz v4, :cond_17

    if-eqz v8, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_f

    goto/16 :goto_5

    :cond_f
    iget-boolean v3, v0, Landroidx/core/widget/NestedScrollView;->J:Z

    if-nez v3, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/core/widget/NestedScrollView;->U:J

    :cond_10
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-boolean v3, v0, Landroidx/core/widget/NestedScrollView;->E:Z

    if-eqz v3, :cond_16

    iget v3, v0, Landroidx/core/widget/NestedScrollView;->G:I

    if-ne v3, v9, :cond_16

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_4

    :cond_11
    const/4 v1, 0x1

    iput v1, v0, Landroidx/core/widget/NestedScrollView;->G:I

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    throw v13

    :pswitch_1
    iget-boolean v1, v0, Landroidx/core/widget/NestedScrollView;->E:Z

    if-eqz v1, :cond_13

    iget v1, v0, Landroidx/core/widget/NestedScrollView;->G:I

    if-ne v1, v9, :cond_13

    const-string v1, "NestedScrollView"

    const-string v2, "pen up false GOTOTOP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v11}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    rsub-int/lit8 v5, v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    const/16 v3, 0xfa

    invoke-virtual {p0, v5, v1, v3}, Landroidx/core/widget/NestedScrollView;->w(III)V

    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->g:Landroid/widget/EdgeEffect;

    const/16 v3, 0x2710

    invoke-virtual {v1, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    :cond_12
    const/4 v2, 0x0

    :goto_3
    invoke-direct {p0, v2}, Landroidx/core/widget/NestedScrollView;->setupGoToTop(I)V

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    throw v13

    :cond_13
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_14
    iput-wide v5, v0, Landroidx/core/widget/NestedScrollView;->R:J

    iput-wide v5, v0, Landroidx/core/widget/NestedScrollView;->U:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/core/widget/NestedScrollView;->V:Z

    iput-boolean v1, v0, Landroidx/core/widget/NestedScrollView;->J:Z

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_2
    iget-boolean v3, v0, Landroidx/core/widget/NestedScrollView;->E:Z

    if-eqz v3, :cond_16

    iget v3, v0, Landroidx/core/widget/NestedScrollView;->G:I

    if-eq v3, v9, :cond_16

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_4

    :cond_15
    invoke-direct {p0, v9}, Landroidx/core/widget/NestedScrollView;->setupGoToTop(I)V

    throw v13

    :cond_16
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_17
    :goto_5
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->L:LO/k;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_18
    iput-wide v5, v0, Landroidx/core/widget/NestedScrollView;->R:J

    iput-wide v5, v0, Landroidx/core/widget/NestedScrollView;->U:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/core/widget/NestedScrollView;->J:Z

    iput-boolean v1, v0, Landroidx/core/widget/NestedScrollView;->V:Z

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->g:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {p0}, LO/j;->a(Landroid/view/ViewGroup;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v8, v7

    sub-int/2addr v4, v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v3

    :goto_0
    invoke-static {p0}, LO/j;->a(Landroid/view/ViewGroup;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v8

    sub-int/2addr v5, v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v6, v8

    :cond_1
    int-to-float v7, v7

    int-to-float v6, v6

    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->h:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {p0}, LO/j;->a(Landroid/view/ViewGroup;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v6, v3

    sub-int/2addr v4, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    :cond_4
    invoke-static {p0}, LO/j;->a(Landroid/view/ViewGroup;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/2addr v7, v6

    sub-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v0, v6

    :cond_5
    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v0, v4

    const/4 v3, 0x0

    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {p1, v6, v0, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_6
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_7
    return-void
.end method

.method public final e(Landroid/view/View;IIIII)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p5, p6}, Landroidx/core/widget/NestedScrollView;->q([III)V

    return-void
.end method

.method public final f(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    and-int/lit8 p0, p3, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBottomFadingEdgeStrength()F
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    sub-int/2addr v0, p0

    sub-int/2addr v0, v3

    if-ge v0, v2, :cond_1

    int-to-float p0, v0

    int-to-float v0, v2

    div-float/2addr p0, v0

    return p0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getMaxScrollAmount()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->z:LJ/p;

    iget v0, p0, LJ/p;->a:I

    iget p0, p0, LJ/p;->b:I

    or-int/2addr p0, v0

    return p0
.end method

.method public getScrollRange()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getTopFadingEdgeStrength()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    if-ge p0, v0, :cond_1

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getVerticalScrollFactorCompat()F
    .locals 5

    iget v0, p0, Landroidx/core/widget/NestedScrollView;->B:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->B:F

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Expected theme to define listPreferredItemHeight."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget p0, p0, Landroidx/core/widget/NestedScrollView;->B:F

    return p0
.end method

.method public final h(I)Z
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0, v1, v2, v4}, Landroidx/core/widget/NestedScrollView;->p(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->j(Landroid/graphics/Rect;)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    iput v4, p0, Landroidx/core/widget/NestedScrollView;->x:I

    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->k(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_2

    :cond_1
    const/16 v1, 0x21

    const/16 v4, 0x82

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v6, v5

    sub-int/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    return v3

    :cond_4
    if-ne p1, v4, :cond_5

    goto :goto_1

    :cond_5
    neg-int v2, v2

    :goto_1
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->k(I)V

    :goto_2
    const/4 p1, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v3, v1}, Landroidx/core/widget/NestedScrollView;->p(Landroid/view/View;II)Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_6
    return p1
.end method

.method public final hasNestedScrollingParent()Z
    .locals 1

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LJ/m;->f(I)Z

    move-result p0

    return p0
.end method

.method public final i()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 0

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    iget-boolean p0, p0, LJ/m;->d:Z

    return p0
.end method

.method public final j(Landroid/graphics/Rect;)I
    .locals 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    add-int/2addr v2, v4

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    sub-int v4, v3, v4

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_4

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le p0, v0, :cond_3

    iget p0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v2

    goto :goto_1

    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v4

    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ge v3, v2, :cond_6

    if-ge v7, v4, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, v0, :cond_5

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p1

    sub-int/2addr v1, v4

    goto :goto_2

    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    neg-int p0, p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_6
    :goto_3
    return v1
.end method

.method public final k(I)V
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0xfa

    invoke-virtual {p0, v1, p1, v0}, Landroidx/core/widget/NestedScrollView;->w(III)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Landroid/view/KeyEvent;)Z
    .locals 7

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x82

    if-lez v1, :cond_a

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v6

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v1, v5, :cond_a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v5, 0x13

    const/16 v6, 0x21

    if-eq v1, v5, :cond_7

    const/16 v5, 0x14

    if-eq v1, v5, :cond_5

    const/16 v5, 0x3e

    if-eq v1, v5, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    if-ne v6, v4, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v3

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_4

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, p1

    iget p1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    if-le p1, v2, :cond_4

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    if-gez p1, :cond_4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    :cond_4
    :goto_2
    iget p1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v6, p1, v1}, Landroidx/core/widget/NestedScrollView;->t(III)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->h(I)Z

    move-result v3

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->n(I)Z

    move-result v3

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v6}, Landroidx/core/widget/NestedScrollView;->h(I)Z

    move-result v3

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v6}, Landroidx/core/widget/NestedScrollView;->n(I)Z

    move-result v3

    :cond_9
    :goto_3
    return v3

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_b

    const/4 p1, 0x0

    :cond_b
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c

    if-eq p1, p0, :cond_c

    invoke-virtual {p1, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_4

    :cond_c
    move v2, v3

    :goto_4
    return v2

    :cond_d
    return v3
.end method

.method public final m(I)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p0, p1}, Lp0/a;->s(Landroid/view/View;F)V

    const/4 p1, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->x(II)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    iput p1, p0, Landroidx/core/widget/NestedScrollView;->x:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method public final measureChild(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr p0, v0

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, p0, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr p0, p5

    iget p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, p5

    iget p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, p5

    add-int/2addr p0, p3

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p0, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p2, p3

    const/4 p3, 0x0

    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final n(I)Z
    .locals 5

    const/16 v0, 0x82

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->top:I

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v4, Landroid/graphics/Rect;->top:I

    :cond_1
    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/widget/NestedScrollView;->t(III)Z

    move-result p0

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_35

    iget-boolean v4, v0, Landroidx/core/widget/NestedScrollView;->m:Z

    if-nez v4, :cond_35

    const/4 v4, 0x2

    invoke-static {v1, v4}, LL2/b;->z(Landroid/view/MotionEvent;I)Z

    move-result v5

    const/4 v7, 0x0

    const/high16 v8, 0x400000

    const/16 v9, 0x1a

    if-eqz v5, :cond_0

    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v10

    goto :goto_0

    :cond_0
    invoke-static {v1, v8}, LL2/b;->z(Landroid/view/MotionEvent;I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v10

    move v5, v9

    goto :goto_0

    :cond_1
    move v10, v7

    const/4 v5, 0x0

    :goto_0
    cmpl-float v11, v10, v7

    if-eqz v11, :cond_35

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v11

    mul-float/2addr v11, v10

    float-to-int v10, v11

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v12

    sub-int v10, v12, v10

    const/16 v13, 0x2002

    const/high16 v14, 0x3f000000    # 0.5f

    if-gez v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->i()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v1, v13}, LL2/b;->z(Landroid/view/MotionEvent;I)Z

    move-result v11

    if-nez v11, :cond_2

    int-to-float v10, v10

    neg-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget-object v11, v0, Landroidx/core/widget/NestedScrollView;->g:Landroid/widget/EdgeEffect;

    invoke-static {v11, v10, v14}, LL2/b;->B(Landroid/widget/EdgeEffect;FF)F

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    if-le v10, v11, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->i()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-static {v1, v13}, LL2/b;->z(Landroid/view/MotionEvent;I)Z

    move-result v13

    if-nez v13, :cond_5

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v10, v13

    iget-object v13, v0, Landroidx/core/widget/NestedScrollView;->h:Landroid/widget/EdgeEffect;

    invoke-static {v13, v10, v14}, LL2/b;->B(Landroid/widget/EdgeEffect;FF)F

    invoke-virtual {v13}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    move v11, v10

    :cond_5
    const/4 v10, 0x0

    :goto_2
    if-eqz v5, :cond_32

    iget-object v13, v0, Landroidx/core/widget/NestedScrollView;->f0:LJ/c;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    iget v4, v13, LJ/c;->h:I

    iget-object v2, v13, LJ/c;->j:[I

    if-ne v4, v15, :cond_7

    iget v4, v13, LJ/c;->i:I

    if-ne v4, v14, :cond_7

    iget v4, v13, LJ/c;->g:I

    if-eq v4, v5, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v23, v10

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto/16 :goto_d

    :cond_7
    :goto_3
    iget-object v4, v13, LJ/c;->c:LE2/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v13, LJ/c;->a:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v7, "android"

    move/from16 v23, v10

    const-string v10, "dimen"

    const/16 v0, 0x22

    if-lt v8, v0, :cond_9

    invoke-static {v3, v6, v5, v9}, LJ/U;->b(Landroid/view/ViewConfiguration;III)I

    move-result v0

    :cond_8
    :goto_4
    const/4 v6, 0x0

    goto :goto_7

    :cond_9
    invoke-static {v6}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0, v5, v9}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v6, 0x400000

    if-ne v9, v6, :cond_a

    const/16 v6, 0x1a

    if-ne v5, v6, :cond_a

    const-string v6, "config_viewMinRotaryEncoderFlingVelocity"

    invoke-virtual {v0, v6, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_5

    :cond_a
    const/4 v6, -0x1

    :goto_5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, -0x1

    if-eq v6, v9, :cond_b

    if-eqz v6, :cond_c

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-gez v0, :cond_8

    goto :goto_6

    :cond_b
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    goto :goto_4

    :cond_c
    :goto_6
    const v0, 0x7fffffff

    goto :goto_4

    :goto_7
    aput v0, v2, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v6

    const/16 v9, 0x22

    if-lt v8, v9, :cond_d

    invoke-static {v3, v0, v5, v6}, LJ/U;->a(Landroid/view/ViewConfiguration;III)I

    move-result v0

    :goto_8
    const/4 v3, 0x1

    goto :goto_c

    :cond_d
    invoke-static {v0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, v5, v6}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    :goto_9
    const/high16 v8, -0x80000000

    if-nez v0, :cond_10

    :cond_f
    :goto_a
    move v0, v8

    goto :goto_8

    :cond_10
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v4, 0x400000

    if-ne v6, v4, :cond_11

    const/16 v4, 0x1a

    if-ne v5, v4, :cond_11

    const-string v4, "config_viewMaxRotaryEncoderFlingVelocity"

    invoke-virtual {v0, v4, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    goto :goto_b

    :cond_11
    const/4 v9, -0x1

    :goto_b
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, -0x1

    if-eq v9, v4, :cond_13

    if-eqz v9, :cond_f

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-gez v0, :cond_12

    goto :goto_a

    :cond_12
    move v8, v0

    goto :goto_a

    :cond_13
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    goto :goto_8

    :goto_c
    aput v0, v2, v3

    iput v15, v13, LJ/c;->h:I

    iput v14, v13, LJ/c;->i:I

    iput v5, v13, LJ/c;->g:I

    const/4 v0, 0x0

    const/4 v6, 0x1

    :goto_d
    aget v3, v2, v0

    const v0, 0x7fffffff

    if-ne v3, v0, :cond_15

    iget-object v0, v13, LJ/c;->e:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, v13, LJ/c;->e:Landroid/view/VelocityTracker;

    :cond_14
    move/from16 v28, v11

    goto/16 :goto_18

    :cond_15
    iget-object v0, v13, LJ/c;->e:Landroid/view/VelocityTracker;

    if-nez v0, :cond_16

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v13, LJ/c;->e:Landroid/view/VelocityTracker;

    :cond_16
    iget-object v0, v13, LJ/c;->e:Landroid/view/VelocityTracker;

    iget-object v3, v13, LJ/c;->d:LE2/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, LJ/B;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt v3, v4, :cond_17

    goto :goto_e

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    const/high16 v4, 0x400000

    if-ne v3, v4, :cond_1b

    sget-object v3, LJ/B;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    new-instance v4, LJ/C;

    invoke-direct {v4}, LJ/C;-><init>()V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ/C;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget v4, v3, LJ/C;->d:I

    iget-object v9, v3, LJ/C;->b:[J

    if-eqz v4, :cond_19

    iget v4, v3, LJ/C;->e:I

    aget-wide v14, v9, v4

    sub-long v14, v7, v14

    const-wide/16 v24, 0x28

    cmp-long v4, v14, v24

    if-lez v4, :cond_19

    const/4 v4, 0x0

    iput v4, v3, LJ/C;->d:I

    const/4 v4, 0x0

    iput v4, v3, LJ/C;->c:F

    :cond_19
    iget v4, v3, LJ/C;->e:I

    const/4 v10, 0x1

    add-int/2addr v4, v10

    const/16 v14, 0x14

    rem-int/2addr v4, v14

    iput v4, v3, LJ/C;->e:I

    iget v15, v3, LJ/C;->d:I

    if-eq v15, v14, :cond_1a

    add-int/2addr v15, v10

    iput v15, v3, LJ/C;->d:I

    :cond_1a
    const/16 v10, 0x1a

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    iget-object v10, v3, LJ/C;->a:[F

    aput v1, v10, v4

    iget v1, v3, LJ/C;->e:I

    aput-wide v7, v9, v1

    :cond_1b
    :goto_e
    const/16 v1, 0x3e8

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v0, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    sget-object v4, LJ/B;->a:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJ/C;

    if-eqz v4, :cond_27

    iget v7, v4, LJ/C;->d:I

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1c

    :goto_f
    move v3, v1

    move/from16 v28, v11

    const/4 v1, 0x0

    goto/16 :goto_13

    :cond_1c
    iget v8, v4, LJ/C;->e:I

    const/16 v9, 0x14

    add-int/lit8 v10, v8, 0x14

    const/4 v14, 0x1

    sub-int/2addr v7, v14

    sub-int/2addr v10, v7

    rem-int/2addr v10, v9

    iget-object v7, v4, LJ/C;->b:[J

    aget-wide v8, v7, v8

    :goto_10
    aget-wide v14, v7, v10

    sub-long v24, v8, v14

    const-wide/16 v26, 0x64

    cmp-long v20, v24, v26

    if-lez v20, :cond_1d

    iget v14, v4, LJ/C;->d:I

    const/16 v20, 0x1

    add-int/lit8 v14, v14, -0x1

    iput v14, v4, LJ/C;->d:I

    add-int/lit8 v10, v10, 0x1

    const/16 v18, 0x14

    rem-int/lit8 v10, v10, 0x14

    goto :goto_10

    :cond_1d
    const/16 v18, 0x14

    const/16 v20, 0x1

    iget v8, v4, LJ/C;->d:I

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1e

    goto :goto_f

    :cond_1e
    iget-object v3, v4, LJ/C;->a:[F

    if-ne v8, v9, :cond_20

    add-int/lit8 v10, v10, 0x1

    rem-int/lit8 v10, v10, 0x14

    aget-wide v7, v7, v10

    cmp-long v9, v14, v7

    if-nez v9, :cond_1f

    goto :goto_f

    :cond_1f
    aget v3, v3, v10

    sub-long/2addr v7, v14

    long-to-float v7, v7

    div-float/2addr v3, v7

    move/from16 v28, v11

    move/from16 v29, v3

    move v3, v1

    move/from16 v1, v29

    goto/16 :goto_13

    :cond_20
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_11
    iget v15, v4, LJ/C;->d:I

    const/16 v17, 0x1

    add-int/lit8 v15, v15, -0x1

    const/high16 v20, 0x40000000    # 2.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v24, -0x40800000    # -1.0f

    if-ge v9, v15, :cond_24

    add-int v15, v9, v10

    const/16 v18, 0x14

    rem-int/lit8 v21, v15, 0x14

    aget-wide v25, v7, v21

    add-int/lit8 v15, v15, 0x1

    rem-int/lit8 v15, v15, 0x14

    aget-wide v27, v7, v15

    cmp-long v21, v27, v25

    if-nez v21, :cond_21

    move v1, v8

    move/from16 v28, v11

    move/from16 v8, v17

    move/from16 v17, v10

    const/high16 v10, 0x3f000000    # 0.5f

    goto :goto_12

    :cond_21
    add-int/lit8 v14, v14, 0x1

    const/16 v17, 0x0

    cmpg-float v27, v8, v17

    if-gez v27, :cond_22

    move/from16 v22, v24

    :cond_22
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v17

    mul-float v1, v17, v20

    move/from16 v17, v10

    move/from16 v28, v11

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v1, v10

    mul-float v22, v22, v1

    aget v1, v3, v15

    aget-wide v10, v7, v15

    sub-long v10, v10, v25

    long-to-float v10, v10

    div-float/2addr v1, v10

    sub-float v10, v1, v22

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v10

    add-float/2addr v1, v8

    const/4 v8, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    if-ne v14, v8, :cond_23

    mul-float/2addr v1, v10

    :cond_23
    :goto_12
    add-int/2addr v9, v8

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v28

    const/16 v1, 0x3e8

    goto :goto_11

    :cond_24
    move/from16 v28, v11

    const/4 v1, 0x0

    cmpg-float v3, v8, v1

    if-gez v3, :cond_25

    move/from16 v22, v24

    :cond_25
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float v1, v1, v20

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v1, v7

    mul-float v1, v1, v22

    const/16 v3, 0x3e8

    :goto_13
    int-to-float v3, v3

    mul-float/2addr v1, v3

    iput v1, v4, LJ/C;->c:F

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    neg-float v7, v7

    cmpg-float v1, v1, v7

    if-gez v1, :cond_26

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v1, v1

    iput v1, v4, LJ/C;->c:F

    goto :goto_14

    :cond_26
    iget v1, v4, LJ/C;->c:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v1, v1, v7

    if-lez v1, :cond_28

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v4, LJ/C;->c:F

    goto :goto_14

    :cond_27
    move/from16 v28, v11

    :cond_28
    :goto_14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v1, v3, :cond_29

    invoke-static {v0, v5}, LJ/A;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    goto :goto_16

    :cond_29
    if-nez v5, :cond_2a

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_16

    :cond_2a
    const/4 v1, 0x1

    if-ne v5, v1, :cond_2b

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_16

    :cond_2b
    sget-object v1, LJ/B;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ/C;

    if-eqz v0, :cond_2d

    const/16 v1, 0x1a

    if-eq v5, v1, :cond_2c

    goto :goto_15

    :cond_2c
    iget v0, v0, LJ/C;->c:F

    goto :goto_16

    :cond_2d
    :goto_15
    const/4 v0, 0x0

    :goto_16
    iget-object v1, v13, LJ/c;->b:Ls2/c;

    iget-object v3, v1, Ls2/c;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v3

    neg-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget-object v1, v1, Ls2/c;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    if-nez v6, :cond_2e

    iget v4, v13, LJ/c;->f:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2f

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2f

    :cond_2e
    iget-object v3, v1, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_2f
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x0

    aget v4, v2, v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_30

    goto :goto_18

    :cond_30
    const/4 v3, 0x1

    aget v2, v2, v3

    neg-int v3, v2

    int-to-float v3, v3

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_31

    move v7, v2

    goto :goto_17

    :cond_31
    iget-object v2, v1, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->m(I)V

    move v7, v0

    :goto_17
    iput v7, v13, LJ/c;->f:F

    :goto_18
    move/from16 v6, v28

    goto :goto_19

    :cond_32
    move/from16 v23, v10

    move v6, v11

    :goto_19
    if-eq v6, v12, :cond_34

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    move-object/from16 v1, p0

    invoke-super {v1, v0, v6}, Landroid/view/View;->scrollTo(II)V

    const/4 v0, 0x1

    invoke-virtual {v1, v6, v0}, Landroidx/core/widget/NestedScrollView;->x(II)V

    const/16 v19, 0x0

    const/16 v20, 0x1

    iget-object v15, v1, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v15 .. v20}, LJ/m;->c(II[I[II)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-super {v1, v0, v6}, Landroid/view/View;->scrollTo(II)V

    :cond_33
    const/4 v0, 0x1

    return v0

    :cond_34
    return v23

    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v3, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    if-eqz v3, :cond_0

    return v1

    :cond_0
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    const/4 v5, -0x1

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->r(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :cond_2
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->t:I

    if-ne v0, v5, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-ne v3, v5, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid pointerId="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NestedScrollView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Landroidx/core/widget/NestedScrollView;->i:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Landroidx/core/widget/NestedScrollView;->q:I

    if-le v3, v5, :cond_10

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v3

    and-int/2addr v2, v3

    if-nez v2, :cond_10

    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->i:I

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    :cond_5
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v4, p0, Landroidx/core/widget/NestedScrollView;->w:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_3

    :cond_6
    iput-boolean v4, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    iput v5, p0, Landroidx/core/widget/NestedScrollView;->t:I

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    :cond_7
    iget-object v5, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_8
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->z(I)V

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, v6

    if-lt v0, v8, :cond_d

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int/2addr v8, v6

    if-ge v0, v8, :cond_d

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v6

    if-lt v5, v6, :cond_d

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v5, v6, :cond_d

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->i:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->t:I

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_a
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p0, v0}, Lp0/a;->s(Landroid/view/View;F)V

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->y(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_1

    :cond_b
    move v1, v4

    :cond_c
    :goto_1
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    invoke-virtual {p0, v2, v4}, Landroidx/core/widget/NestedScrollView;->x(II)V

    goto :goto_3

    :cond_d
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->y(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_2

    :cond_e
    move v1, v4

    :cond_f
    :goto_2
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    :cond_10
    :goto_3
    iget-boolean p0, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    iget-object p4, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/View;

    if-eqz p4, :cond_0

    invoke-static {p4, p0}, Landroidx/core/widget/NestedScrollView;->o(Landroid/view/View;Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/View;

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p4, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->j(Landroid/graphics/Rect;)I

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p0, p2, p4}, Landroid/view/View;->scrollBy(II)V

    :cond_0
    const/4 p4, 0x0

    iput-object p4, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07043f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    :cond_1
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->y:LO/m;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->y:LO/m;

    iget v1, v1, LO/m;->c:I

    invoke-virtual {p0, v0, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    iput-object p4, p0, Landroidx/core/widget/NestedScrollView;->y:LO/m;

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-lez p4, :cond_3

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p4, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p4, v0

    goto :goto_0

    :cond_3
    move p4, p2

    :goto_0
    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p3

    if-ge p5, p4, :cond_6

    if-gez p3, :cond_4

    goto :goto_1

    :cond_4
    add-int v0, p5, p3

    if-le v0, p4, :cond_5

    sub-int/2addr p4, p5

    goto :goto_2

    :cond_5
    move p4, p3

    goto :goto_2

    :cond_6
    :goto_1
    move p4, p2

    :goto_2
    if-eq p4, p3, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    invoke-virtual {p0, p3, p4}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p4

    invoke-virtual {p0, p3, p4}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    if-eqz p1, :cond_d

    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result p1

    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result p4

    if-le p1, p4, :cond_8

    goto :goto_6

    :cond_8
    iput-boolean p2, p0, Landroidx/core/widget/NestedScrollView;->b0:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_3
    if-eqz p1, :cond_c

    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_c

    instance-of p4, p1, LJ/n;

    if-eqz p4, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    :goto_4
    if-eqz p4, :cond_b

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    const-string v0, "CoordinatorLayout"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_a

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p4, p0, Landroidx/core/widget/NestedScrollView;->c0:[I

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget p5, p4, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, p5

    invoke-virtual {p0, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget p4, p4, p3

    iput p4, p0, Landroidx/core/widget/NestedScrollView;->a0:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    iget p5, p0, Landroidx/core/widget/NestedScrollView;->a0:I

    sub-int/2addr p1, p5

    sub-int/2addr p4, p1

    iput p4, p0, Landroidx/core/widget/NestedScrollView;->d0:I

    if-gez p4, :cond_9

    iput p2, p0, Landroidx/core/widget/NestedScrollView;->d0:I

    :cond_9
    iget p1, p0, Landroidx/core/widget/NestedScrollView;->d0:I

    iput p1, p0, Landroidx/core/widget/NestedScrollView;->e0:I

    iput-boolean p3, p0, Landroidx/core/widget/NestedScrollView;->b0:Z

    goto :goto_5

    :cond_a
    invoke-virtual {p4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p4

    goto :goto_4

    :cond_b
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_3

    :cond_c
    :goto_5
    iget-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->b0:Z

    if-nez p1, :cond_d

    iput p2, p0, Landroidx/core/widget/NestedScrollView;->a0:I

    iput p2, p0, Landroidx/core/widget/NestedScrollView;->d0:I

    iput p2, p0, Landroidx/core/widget/NestedScrollView;->e0:I

    :cond_d
    :goto_6
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr p0, v1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr p0, v1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, p0, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p2, p0, p1}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    if-nez p4, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p2}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    float-to-int p1, p3

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->m(I)V

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, LJ/m;->c(II[I[II)Z

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p5, p1}, Landroidx/core/widget/NestedScrollView;->q([III)V

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public final onOverScrolled(IIZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x82

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const/16 p1, 0x21

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1
    const/4 v2, 0x0

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Landroidx/core/widget/NestedScrollView;->p(Landroid/view/View;II)Z

    move-result p0

    xor-int/2addr p0, v1

    if-eqz p0, :cond_4

    return v2

    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, LO/m;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, LO/m;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->y:LO/m;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, LO/m;

    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    iput p0, v1, LO/m;->c:I

    return-object v1
.end method

.method public final onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->i()Z

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p4}, Landroidx/core/widget/NestedScrollView;->p(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->j(Landroid/graphics/Rect;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->k(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->f(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/core/widget/NestedScrollView;->c(ILandroid/view/View;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iput v3, v0, Landroidx/core/widget/NestedScrollView;->w:I

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iget v5, v0, Landroidx/core/widget/NestedScrollView;->w:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v5, 0x1

    const/4 v7, 0x2

    if-eqz v2, :cond_20

    iget-object v8, v0, Landroidx/core/widget/NestedScrollView;->h:Landroid/widget/EdgeEffect;

    iget-object v9, v0, Landroidx/core/widget/NestedScrollView;->g:Landroid/widget/EdgeEffect;

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-eq v2, v5, :cond_18

    if-eq v2, v7, :cond_7

    const/4 v6, 0x3

    if-eq v2, v6, :cond_4

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    goto/16 :goto_b

    :cond_2
    invoke-virtual/range {p0 .. p1}, Landroidx/core/widget/NestedScrollView;->r(Landroid/view/MotionEvent;)V

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->t:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroidx/core/widget/NestedScrollView;->i:I

    goto/16 :goto_b

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroidx/core/widget/NestedScrollView;->i:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Landroidx/core/widget/NestedScrollView;->t:I

    goto/16 :goto_b

    :cond_4
    iget-boolean v1, v0, Landroidx/core/widget/NestedScrollView;->m:Z

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v12, v0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v18

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v18}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_5
    iput v11, v0, Landroidx/core/widget/NestedScrollView;->t:I

    iput-boolean v3, v0, Landroidx/core/widget/NestedScrollView;->m:Z

    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v10, v0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    :cond_6
    invoke-virtual {v0, v3}, Landroidx/core/widget/NestedScrollView;->z(I)V

    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->g:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->h:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_b

    :cond_7
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->t:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ne v2, v11, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid pointerId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in onTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NestedScrollView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_8
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    iget v10, v0, Landroidx/core/widget/NestedScrollView;->i:I

    sub-int/2addr v10, v7

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    int-to-float v12, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v9}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result v13

    cmpl-float v13, v13, v6

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v13, :cond_a

    neg-float v12, v12

    invoke-static {v9, v12, v11}, LL2/b;->B(Landroid/widget/EdgeEffect;FF)F

    move-result v11

    neg-float v11, v11

    invoke-static {v9}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result v12

    cmpl-float v6, v12, v6

    if-nez v6, :cond_9

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_9
    :goto_0
    move v6, v11

    goto :goto_1

    :cond_a
    invoke-static {v8}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result v13

    cmpl-float v13, v13, v6

    if-eqz v13, :cond_b

    sub-float v11, v14, v11

    invoke-static {v8, v12, v11}, LL2/b;->B(Landroid/widget/EdgeEffect;FF)F

    move-result v11

    invoke-static {v8}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result v12

    cmpl-float v6, v12, v6

    if-nez v6, :cond_9

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    :cond_b
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_c
    sub-int/2addr v10, v6

    iget-boolean v6, v0, Landroidx/core/widget/NestedScrollView;->m:Z

    if-nez v6, :cond_f

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v11, v0, Landroidx/core/widget/NestedScrollView;->q:I

    if-le v6, v11, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_d
    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->m:Z

    if-lez v10, :cond_e

    iget v6, v0, Landroidx/core/widget/NestedScrollView;->q:I

    sub-int/2addr v10, v6

    goto :goto_2

    :cond_e
    iget v6, v0, Landroidx/core/widget/NestedScrollView;->q:I

    add-int/2addr v10, v6

    :cond_f
    :goto_2
    iget-boolean v6, v0, Landroidx/core/widget/NestedScrollView;->m:Z

    if-eqz v6, :cond_24

    iget-object v6, v0, Landroidx/core/widget/NestedScrollView;->u:[I

    const/16 v20, 0x0

    iget-object v15, v0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    const/16 v16, 0x0

    iget-object v11, v0, Landroidx/core/widget/NestedScrollView;->v:[I

    move/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v6

    invoke-virtual/range {v15 .. v20}, LJ/m;->c(II[I[II)Z

    move-result v6

    iget-object v11, v0, Landroidx/core/widget/NestedScrollView;->v:[I

    iget-object v12, v0, Landroidx/core/widget/NestedScrollView;->u:[I

    if-eqz v6, :cond_10

    aget v6, v11, v5

    sub-int/2addr v10, v6

    iget v6, v0, Landroidx/core/widget/NestedScrollView;->w:I

    aget v13, v12, v5

    add-int/2addr v6, v13

    iput v6, v0, Landroidx/core/widget/NestedScrollView;->w:I

    :cond_10
    aget v6, v12, v5

    sub-int/2addr v7, v6

    iput v7, v0, Landroidx/core/widget/NestedScrollView;->i:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v13

    if-eqz v13, :cond_12

    if-ne v13, v5, :cond_11

    if-lez v7, :cond_11

    goto :goto_3

    :cond_11
    move v13, v3

    goto :goto_4

    :cond_12
    :goto_3
    move v13, v5

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v15

    invoke-virtual {v0, v10, v3, v15, v7}, Landroidx/core/widget/NestedScrollView;->s(IIII)Z

    move-result v15

    if-eqz v15, :cond_13

    iget-object v15, v0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    invoke-virtual {v15, v3}, LJ/m;->f(I)Z

    move-result v15

    if-nez v15, :cond_13

    move/from16 v23, v5

    goto :goto_5

    :cond_13
    move/from16 v23, v3

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v15

    sub-int v17, v15, v6

    sub-int v19, v10, v17

    aput v3, v11, v5

    iget-object v15, v0, Landroidx/core/widget/NestedScrollView;->u:[I

    const/16 v21, 0x0

    iget-object v3, v0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v20, v15

    move-object v15, v3

    move-object/from16 v22, v11

    invoke-virtual/range {v15 .. v22}, LJ/m;->d(IIII[II[I)Z

    iget v3, v0, Landroidx/core/widget/NestedScrollView;->i:I

    aget v12, v12, v5

    sub-int/2addr v3, v12

    iput v3, v0, Landroidx/core/widget/NestedScrollView;->i:I

    iget v3, v0, Landroidx/core/widget/NestedScrollView;->w:I

    add-int/2addr v3, v12

    iput v3, v0, Landroidx/core/widget/NestedScrollView;->w:I

    if-eqz v13, :cond_17

    aget v3, v11, v5

    sub-int/2addr v10, v3

    add-int/2addr v6, v10

    if-gez v6, :cond_14

    neg-int v3, v10

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v9, v3, v1}, LL2/b;->B(Landroid/widget/EdgeEffect;FF)F

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_6

    :cond_14
    if-le v6, v7, :cond_15

    int-to-float v3, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v14, v1

    invoke-static {v8, v3, v14}, LL2/b;->B(Landroid/widget/EdgeEffect;FF)F

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_15
    :goto_6
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_17

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    const/4 v3, 0x0

    goto :goto_7

    :cond_17
    move/from16 v3, v23

    :goto_7
    if-eqz v3, :cond_24

    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_b

    :cond_18
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->s:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->t:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v0, Landroidx/core/widget/NestedScrollView;->r:I

    if-lt v2, v3, :cond_1d

    invoke-static {v9}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result v2

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1a

    invoke-virtual {v0, v9, v1}, Landroidx/core/widget/NestedScrollView;->u(Landroid/widget/EdgeEffect;I)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v9, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_8

    :cond_19
    neg-int v2, v1

    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->m(I)V

    goto :goto_8

    :cond_1a
    invoke-static {v8}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result v2

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1c

    neg-int v2, v1

    invoke-virtual {v0, v8, v2}, Landroidx/core/widget/NestedScrollView;->u(Landroid/widget/EdgeEffect;I)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v8, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_8

    :cond_1b
    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->m(I)V

    :goto_8
    move v2, v5

    goto :goto_9

    :cond_1c
    const/4 v2, 0x0

    :goto_9
    if-nez v2, :cond_1e

    neg-int v1, v1

    int-to-float v2, v1

    invoke-virtual {v0, v6, v2}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {v0, v6, v2, v5}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->m(I)V

    goto :goto_a

    :cond_1d
    iget-object v12, v0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v18

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v18}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_1e
    :goto_a
    iput v11, v0, Landroidx/core/widget/NestedScrollView;->t:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->m:Z

    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v10, v0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    :cond_1f
    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->z(I)V

    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->g:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->h:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_b

    :cond_20
    move v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    return v2

    :cond_21
    iget-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->m:Z

    if-eqz v2, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-interface {v2, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_22
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {v0, v5}, Landroidx/core/widget/NestedScrollView;->z(I)V

    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroidx/core/widget/NestedScrollView;->i:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Landroidx/core/widget/NestedScrollView;->t:I

    invoke-virtual {v0, v7, v2}, Landroidx/core/widget/NestedScrollView;->x(II)V

    :cond_24
    :goto_b
    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_25

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_25
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    return v5
.end method

.method public final p(Landroid/view/View;II)Z
    .locals 2

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget p1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    add-int/2addr p0, p3

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final q([III)V
    .locals 10

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Landroid/view/View;->scrollBy(II)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    iput v1, p0, Landroidx/core/widget/NestedScrollView;->x:I

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int v4, v1, v0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    aget v1, p1, v0

    add-int/2addr v1, v4

    aput v1, p1, v0

    :cond_2
    sub-int v6, p2, v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    const/4 v3, 0x0

    move v8, p3

    move-object v9, p1

    invoke-virtual/range {v2 .. v9}, LJ/m;->d(IIII[II[I)Z

    return-void
.end method

.method public final r(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/core/widget/NestedScrollView;->t:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroidx/core/widget/NestedScrollView;->i:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/core/widget/NestedScrollView;->t:I

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->j(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollBy(II)V

    goto :goto_0

    :cond_0
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/View;

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->j(Landroid/graphics/Rect;)I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->scrollBy(II)V

    goto :goto_1

    :cond_1
    const/16 p3, 0xfa

    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/widget/NestedScrollView;->w(III)V

    :cond_2
    :goto_1
    return v0
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->n:Landroid/view/VelocityTracker;

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final s(IIII)Z
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    const/4 v1, 0x1

    add-int/2addr p3, p1

    const/4 p1, 0x0

    if-lez p2, :cond_0

    :goto_0
    move p2, p1

    move v0, v1

    goto :goto_1

    :cond_0
    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_1
    if-le p3, p4, :cond_2

    :goto_2
    move p3, v1

    goto :goto_3

    :cond_2
    if-gez p3, :cond_3

    move p4, p1

    goto :goto_2

    :cond_3
    move p4, p3

    move p3, p1

    :goto_3
    if-eqz p3, :cond_4

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    invoke-virtual {v2, v1}, LJ/m;->f(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p2

    move v4, p4

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    :cond_4
    invoke-super {p0, p2, p4}, Landroid/view/View;->scrollTo(II)V

    if-nez v0, :cond_6

    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    move v1, p1

    :cond_6
    :goto_4
    return v1
.end method

.method public final scrollTo(II)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v6

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    if-ge v3, v4, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int v2, v3, p1

    if-le v2, v4, :cond_2

    sub-int p1, v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :cond_2
    :goto_1
    if-ge v5, v1, :cond_4

    if-gez p2, :cond_3

    goto :goto_2

    :cond_3
    add-int v0, v5, p2

    if-le v0, v1, :cond_5

    sub-int p2, v1, v5

    goto :goto_3

    :cond_4
    :goto_2
    move p2, v0

    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_7

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    :cond_7
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->o:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->o:Z

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    iget-boolean v0, p0, LJ/m;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, LJ/Q;->a:Ljava/util/WeakHashMap;

    iget-object v0, p0, LJ/m;->c:Landroid/view/View;

    invoke-static {v0}, LJ/I;->z(Landroid/view/View;)V

    :cond_0
    iput-boolean p1, p0, LJ/m;->d:Z

    return-void
.end method

.method public setOnScrollChangeListener(LO/l;)V
    .locals 0

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->p:Z

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final startNestedScroll(I)Z
    .locals 1

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LJ/m;->g(II)Z

    move-result p0

    return p0
.end method

.method public final stopNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->z(I)V

    return-void
.end method

.method public final t(III)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    const/16 v6, 0x21

    if-ne v1, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v10, :cond_9

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v7

    if-ge v2, v7, :cond_8

    if-ge v15, v3, :cond_8

    if-ge v2, v15, :cond_1

    if-ge v7, v3, :cond_1

    const/16 v16, 0x1

    goto :goto_2

    :cond_1
    const/16 v16, 0x0

    :goto_2
    if-nez v11, :cond_2

    move-object v11, v14

    move/from16 v13, v16

    goto :goto_5

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v15, v8, :cond_4

    :cond_3
    if-nez v6, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v8

    if-le v7, v8, :cond_5

    :cond_4
    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    if-eqz v13, :cond_6

    if-eqz v16, :cond_8

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_6
    if-eqz v16, :cond_7

    move-object v11, v14

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    if-eqz v7, :cond_8

    :goto_4
    move-object v11, v14

    :cond_8
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_9
    if-nez v11, :cond_a

    move-object v11, v0

    :cond_a
    if-lt v2, v5, :cond_b

    if-gt v3, v4, :cond_b

    const/4 v7, 0x0

    goto :goto_7

    :cond_b
    if-eqz v6, :cond_c

    sub-int/2addr v2, v5

    goto :goto_6

    :cond_c
    sub-int v2, v3, v4

    :goto_6
    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->k(I)V

    const/4 v7, 0x1

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v11, v0, :cond_d

    invoke-virtual {v11, v1}, Landroid/view/View;->requestFocus(I)Z

    :cond_d
    return v7
.end method

.method public final u(Landroid/widget/EdgeEffect;I)Z
    .locals 9

    const/4 v0, 0x1

    if-lez p2, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    neg-int p2, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr p2, v1

    iget p0, p0, Landroidx/core/widget/NestedScrollView;->c:F

    const v1, 0x3c75c28f    # 0.015f

    mul-float/2addr p0, v1

    div-float/2addr p2, p0

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    sget p2, Landroidx/core/widget/NestedScrollView;->h0:F

    float-to-double v3, p2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v5, v3, v5

    float-to-double v7, p0

    div-double/2addr v3, v5

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    mul-double/2addr v1, v7

    double-to-float p0, v1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v(Landroid/view/MotionEvent;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    const/16 v0, 0x4e21

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->W:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    invoke-static {p0, p1, p2}, Lp0/a;->q(Landroid/view/View;ILandroid/view/PointerIcon;)V

    return-void
.end method

.method public final w(III)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/core/widget/NestedScrollView;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p2, v5

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int v7, p1, v5

    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    const/4 v6, 0x0

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->z(I)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    iput p1, p0, Landroidx/core/widget/NestedScrollView;->x:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {p3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/OverScroller;

    invoke-virtual {p3}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->z(I)V

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/core/widget/NestedScrollView;->d:J

    return-void
.end method

.method public final x(II)V
    .locals 0

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    invoke-virtual {p0, p1, p2}, LJ/m;->g(II)Z

    return-void
.end method

.method public final y(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->g:Landroid/widget/EdgeEffect;

    invoke-static {v0}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v0, v2, v1}, LL2/b;->B(Landroid/widget/EdgeEffect;FF)F

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->h:Landroid/widget/EdgeEffect;

    invoke-static {v1}, LL2/b;->n(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    invoke-static {v1, v2, p0}, LL2/b;->B(Landroid/widget/EdgeEffect;FF)F

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    return v3
.end method

.method public final z(I)V
    .locals 0

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->A:LJ/m;

    invoke-virtual {p0, p1}, LJ/m;->h(I)V

    return-void
.end method
