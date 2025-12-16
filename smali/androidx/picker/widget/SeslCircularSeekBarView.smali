.class Landroidx/picker/widget/SeslCircularSeekBarView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final r0:I

.field public static final s0:I

.field public static final t0:I

.field public static final u0:I

.field public static final v0:I

.field public static final w0:I


# instance fields
.field public final A:Landroid/graphics/RectF;

.field public final B:Landroid/graphics/RectF;

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:I

.field public final K:I

.field public L:Landroid/graphics/Paint;

.field public M:Landroid/graphics/Paint;

.field public N:F

.field public O:F

.field public final Q:Landroid/graphics/Path;

.field public final R:Landroid/graphics/Path;

.field public final T:Landroid/graphics/Path;

.field public final U:Landroid/graphics/Path;

.field public final V:Landroid/graphics/Path;

.field public W:F

.field public a0:F

.field public final b0:Z

.field public final c:F

.field public c0:Z

.field public d:Landroid/graphics/Paint;

.field public d0:Z

.field public e:Landroid/graphics/Paint;

.field public e0:Z

.field public f:Landroid/graphics/Paint;

.field public f0:Z

.field public g:Landroid/graphics/Paint;

.field public g0:I

.field public h:Landroid/graphics/Paint;

.field public h0:F

.field public i:Landroid/graphics/Paint;

.field public i0:F

.field public j:Landroid/graphics/Paint;

.field public j0:F

.field public k:Landroid/graphics/Paint;

.field public k0:F

.field public l:Landroid/graphics/Paint;

.field public final l0:Landroid/graphics/drawable/Drawable;

.field public m:Landroid/graphics/Paint$Cap;

.field public final m0:Landroid/graphics/drawable/Drawable;

.field public final n:F

.field public final n0:LP1/e;

.field public final o:F

.field public final o0:Landroidx/picker/widget/a;

.field public final p:F

.field public final p0:LA/j;

.field public q:F

.field public final q0:Z

.field public r:F

.field public s:F

.field public final t:F

.field public u:F

.field public final v:F

.field public final w:F

.field public final x:F

.field public final y:Landroid/graphics/RectF;

.field public final z:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroidx/picker/widget/SeslCircularSeekBarView;->r0:I

    const/16 v0, 0xff

    const/16 v1, 0x85

    const/16 v2, 0x87

    const/16 v3, 0xfe

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    sput v4, Landroidx/picker/widget/SeslCircularSeekBarView;->s0:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    sput v4, Landroidx/picker/widget/SeslCircularSeekBarView;->t0:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sput v1, Landroidx/picker/widget/SeslCircularSeekBarView;->u0:I

    const/16 v1, 0xa7

    const/4 v2, 0x0

    invoke-static {v0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sput v3, Landroidx/picker/widget/SeslCircularSeekBarView;->v0:I

    invoke-static {v0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Landroidx/picker/widget/SeslCircularSeekBarView;->w0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->c:F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->y:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->z:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->A:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->B:Landroid/graphics/RectF;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->c0:Z

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->d0:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->e0:Z

    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->q0:Z

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v6, Le0/a;->d:[I

    invoke-virtual {v1, p2, v6, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_3

    const/16 v1, 0x17

    const/high16 v6, 0x42820000    # 65.0f

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->s:F

    const/16 v1, 0xd

    const/high16 v6, 0x42480000    # 50.0f

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->t:F

    const/16 v1, 0x16

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    const/4 v1, 0x6

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->n:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0704a1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->o:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0703d0

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->p:F

    sget v1, Landroidx/picker/widget/SeslCircularSeekBarView;->r0:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v6

    aget-object v1, v6, v1

    iput-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->m:Landroid/graphics/Paint$Cap;

    const/16 v1, 0x11

    sget v6, Landroidx/picker/widget/SeslCircularSeekBarView;->t0:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->E:I

    const/16 v1, 0xa

    sget v6, Landroidx/picker/widget/SeslCircularSeekBarView;->s0:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->D:I

    const/16 v1, 0xb

    sget v6, Landroidx/picker/widget/SeslCircularSeekBarView;->u0:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->G:I

    const/16 v1, 0x19

    sget v6, Landroidx/picker/widget/SeslCircularSeekBarView;->v0:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->C:I

    const/16 v1, 0x1a

    sget v6, Landroidx/picker/widget/SeslCircularSeekBarView;->w0:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->F:I

    const v1, -0x333334

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->H:I

    const/4 v6, 0x2

    invoke-virtual {p2, v6, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->I:I

    const/4 v6, 0x4

    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->J:I

    const/4 v1, 0x3

    const v6, -0x777778

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->K:I

    const/16 v1, 0x10

    const/16 v6, 0x64

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->W:F

    const/16 v1, 0x18

    const/16 v6, 0x28

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->a0:F

    const/16 v1, 0xf

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->b0:Z

    const/16 v1, 0x12

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    const/16 v1, 0xe

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->c0:Z

    const/16 p1, 0xc

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->f0:Z

    const/high16 p1, 0x40f00000    # 7.5f

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->j0:F

    const/high16 p1, 0x43610000    # 225.0f

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->k0:F

    const/16 p1, 0x1b

    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    add-float/2addr p1, v1

    rem-float/2addr p1, v1

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->w:F

    const/16 p1, 0x9

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    rem-float/2addr p1, v1

    add-float/2addr p1, v1

    rem-float/2addr p1, v1

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->x:F

    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->w:F

    rem-float/2addr v0, v1

    rem-float v6, p1, v1

    cmpl-float v0, v0, v6

    const v6, 0x3dcccccd    # 0.1f

    if-nez v0, :cond_0

    sub-float/2addr p1, v6

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->x:F

    :cond_0
    const/16 p1, 0x14

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->u:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    iput v6, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->u:F

    :cond_1
    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    rem-float/2addr p1, v1

    add-float/2addr p1, v1

    rem-float/2addr p1, v1

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->v:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_2

    iput v6, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->v:F

    :cond_2
    new-instance p1, LP1/e;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, LP1/e;-><init>(I)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->n0:LP1/e;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0800d6

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->m0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0801ff

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->l0:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0603d8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->m0:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_4

    iget-object p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->l0:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->m0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->c()V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->Q:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->R:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->T:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->U:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->V:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    new-instance p1, Landroidx/picker/widget/a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->o0:Landroidx/picker/widget/a;

    new-instance p1, LA/j;

    invoke-direct {p1}, LA/j;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->p0:LA/j;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->V:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->q0:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->V:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->m0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->z:Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->m0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->U:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->q0:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->U:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->l0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->A:Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->l0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 6

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->d:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->H:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->d:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->n:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->d:Landroid/graphics/Paint;

    iget-object v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->m:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->e:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->I:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->f:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->n:F

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->f:Landroid/graphics/Paint;

    iget-object v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->m:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->g:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->o:F

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->g:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060430

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->i:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->C:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->i:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->s:F

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->i:Landroid/graphics/Paint;

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->m:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->j:Landroid/graphics/Paint;

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->j:Landroid/graphics/Paint;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->F:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->j:Landroid/graphics/Paint;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->s:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->k:Landroid/graphics/Paint;

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->k:Landroid/graphics/Paint;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->D:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->l:Landroid/graphics/Paint;

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->l:Landroid/graphics/Paint;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->G:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->l:Landroid/graphics/Paint;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->s:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->L:Landroid/graphics/Paint;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->c:F

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->L:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->J:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->L:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->M:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->M:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->K:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->M:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->p:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->h:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->p:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06036d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->h:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PathDashPathEffect;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->p:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v5, 0x7f0703cf

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    add-float/2addr p0, v3

    sget-object v3, Landroid/graphics/PathDashPathEffect$Style;->ROTATE:Landroid/graphics/PathDashPathEffect$Style;

    invoke-direct {v2, v0, p0, v4, v3}, Landroid/graphics/PathDashPathEffect;-><init>(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect$Style;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public final d()V
    .locals 15

    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->w:F

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->x:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float v0, v1, v0

    rem-float/2addr v0, v1

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->N:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->N:F

    :cond_0
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->j0:F

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->k0:F

    sub-float/2addr v0, v3

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->O:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    add-float/2addr v0, v1

    :cond_1
    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->O:F

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->y:Landroid/graphics/RectF;

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->h0:F

    neg-float v3, v2

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->i0:F

    neg-float v5, v4

    invoke-virtual {v0, v3, v5, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->B:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->q:F

    const/high16 v5, 0x40a00000    # 5.0f

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->q:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->q:F

    sub-float/2addr v4, v5

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->q:F

    sub-float/2addr v4, v5

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->Q:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->Q:Landroid/graphics/Path;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->w:F

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->N:F

    invoke-virtual {v2, v0, v3, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->k0:F

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->u:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    sub-float/2addr v2, v5

    iget v5, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->O:F

    add-float/2addr v5, v3

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_2

    const v5, 0x43b3f333    # 359.9f

    :cond_2
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->R:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->R:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2, v5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->T:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->a0:F

    float-to-double v6, v1

    const-wide/high16 v8, 0x401a000000000000L    # 6.5

    cmpl-double v1, v6, v8

    if-lez v1, :cond_3

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->T:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2, v5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    :cond_3
    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->j0:F

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->u:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->U:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->U:Landroid/graphics/Path;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->u:F

    invoke-virtual {v2, v0, v1, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->k0:F

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->v:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->V:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->V:Landroid/graphics/Path;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->v:F

    invoke-virtual {v2, v0, v1, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->k0:F

    const/high16 v2, 0x43340000    # 180.0f

    div-float/2addr v1, v2

    float-to-double v5, v1

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v7

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->z:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    float-to-double v9, v3

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->r:F

    float-to-double v11, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v11

    add-double/2addr v13, v9

    double-to-float v3, v13

    iget v9, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->t:F

    div-float/2addr v9, v4

    sub-float/2addr v3, v9

    iput v3, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    float-to-double v9, v3

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->r:F

    float-to-double v11, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v11

    add-double/2addr v5, v9

    double-to-float v3, v5

    iget v5, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->t:F

    div-float v6, v5, v4

    sub-float/2addr v3, v6

    iput v3, v1, Landroid/graphics/RectF;->top:F

    iget v6, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v5

    iput v6, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->j0:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    mul-double/2addr v1, v7

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->A:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    float-to-double v5, v5

    iget v7, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->r:F

    float-to-double v7, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v9, v5

    double-to-float v5, v9

    iget v6, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->t:F

    div-float/2addr v6, v4

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    float-to-double v5, v0

    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->r:F

    float-to-double v7, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v7

    add-double/2addr v0, v5

    double-to-float v0, v0

    iget p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->t:F

    div-float v1, p0, v4

    sub-float/2addr v0, v1

    iput v0, v3, Landroid/graphics/RectF;->top:F

    iget v1, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p0

    iput v1, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p0

    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->Q:Landroid/graphics/Path;

    iget-object v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->e:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->Q:Landroid/graphics/Path;

    iget-object v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->d:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-wide/16 v10, 0x0

    :goto_0
    const-wide v1, 0x4076800000000000L    # 360.0

    cmpg-double v1, v10, v1

    iget-object v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->y:Landroid/graphics/RectF;

    if-gtz v1, :cond_3

    iget v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->w:F

    float-to-double v3, v1

    add-double/2addr v3, v10

    const-wide v5, 0x4066800000000000L    # 180.0

    div-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    float-to-double v5, v1

    iget v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->q:F

    iget v12, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->c:F

    const/high16 v13, 0x40200000    # 2.5f

    mul-float/2addr v12, v13

    sub-float/2addr v1, v12

    float-to-double v13, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v5, v15

    double-to-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    float-to-double v13, v1

    iget v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->q:F

    sub-float/2addr v1, v12

    float-to-double v8, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v17, v17, v8

    add-double v8, v17, v13

    double-to-float v6, v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    float-to-double v8, v1

    iget v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->q:F

    add-float/2addr v1, v12

    float-to-double v13, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v13

    add-double v8, v17, v8

    double-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    float-to-double v1, v1

    iget v9, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->q:F

    add-float/2addr v12, v9

    float-to-double v12, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v12

    add-double/2addr v3, v1

    double-to-float v9, v3

    const-wide v1, 0x4056800000000000L    # 90.0

    rem-double v1, v10, v1

    const-wide/16 v3, 0x0

    cmpl-double v12, v1, v3

    const-wide/high16 v13, 0x4004000000000000L    # 2.5

    if-eqz v12, :cond_0

    cmpl-double v3, v1, v13

    if-eqz v3, :cond_0

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_0

    const-wide v3, 0x4055c00000000000L    # 87.0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_0

    const-wide v3, 0x4055e00000000000L    # 87.5

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    const-wide v1, 0x4065e00000000000L    # 175.0

    cmpl-double v1, v10, v1

    if-eqz v1, :cond_0

    const-wide v1, 0x4067200000000000L    # 185.0

    cmpl-double v1, v10, v1

    if-nez v1, :cond_1

    :cond_0
    const-wide/16 v15, 0x0

    goto :goto_1

    :cond_1
    const-wide/high16 v1, 0x402e000000000000L    # 15.0

    rem-double v1, v10, v1

    const-wide/16 v15, 0x0

    cmpl-double v1, v1, v15

    if-nez v1, :cond_2

    iget-object v12, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->M:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move v4, v8

    move v5, v9

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget-object v12, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->L:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move v4, v8

    move v5, v9

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_1
    add-double/2addr v10, v13

    goto/16 :goto_0

    :cond_3
    iget-object v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->p0:LA/j;

    iget-object v3, v1, LA/j;->a:[I

    iget v4, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->D:I

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v6, 0x1

    aput v4, v3, v6

    iget v4, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->E:I

    const/4 v8, 0x2

    aput v4, v3, v8

    iget v4, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->C:I

    const/4 v9, 0x3

    aput v4, v3, v9

    const/4 v10, 0x4

    aput v4, v3, v10

    iget-object v1, v1, LA/j;->b:[F

    const/4 v3, 0x0

    aput v3, v1, v5

    iget v3, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->a0:F

    iget v4, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->W:F

    div-float/2addr v3, v4

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v3

    aput v4, v1, v6

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v3

    aput v4, v1, v8

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v4, v3

    aput v4, v1, v9

    aput v3, v1, v10

    new-instance v1, Landroid/graphics/SweepGradient;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->p0:LA/j;

    iget-object v6, v5, LA/j;->a:[I

    iget-object v5, v5, LA/j;->b:[F

    invoke-direct {v1, v3, v4, v6, v5}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget v4, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->k0:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v1, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->f:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->R:Landroid/graphics/Path;

    iget-object v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->T:Landroid/graphics/Path;

    iget-object v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->g0:I

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->b(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->a(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->a(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->b(Landroid/graphics/Canvas;)V

    :goto_2
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    if-nez p2, :cond_0

    move p2, p1

    :cond_0
    if-nez p1, :cond_1

    move p1, p2

    :cond_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->b0:Z

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704a9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->s:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704a8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->s:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    add-float/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x43d20000    # 420.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v1

    :cond_3
    div-float/2addr p1, v0

    sub-float/2addr p1, p2

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->h0:F

    div-float/2addr v2, v0

    sub-float/2addr v2, p2

    iput v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->i0:F

    iget-boolean p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->b0:Z

    if-eqz p2, :cond_4

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->i0:F

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->h0:F

    :cond_4
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0704f9

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->i0:F

    iput p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->r:F

    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    mul-float/2addr p1, p2

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->q:F

    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->d()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "PARENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "MAX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->W:F

    const-string v0, "PROGRESS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->a0:F

    const-string v0, "mProgressDegrees"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->O:F

    const-string v0, "mSecondPointerPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->j0:F

    const-string v0, "mFirstPointerPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->k0:F

    const-string v0, "mSecondPointerAngle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->u:F

    const-string v0, "mLockEnabled"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->c0:Z

    const-string v0, "mLockAtStart"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->d0:Z

    const-string v0, "mLockAtEnd"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->e0:Z

    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v0

    const-string v1, "mCircleStyle"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->m:Landroid/graphics/Paint$Cap;

    const-string v0, "mLastPointerTouched"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->g0:I

    const-string v0, "mHideProgressWhenEmpty"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->f0:Z

    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->c()V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->d()V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PARENT"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "MAX"

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->W:F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "PROGRESS"

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->a0:F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "mProgressDegrees"

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->O:F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "mSecondPointerPosition"

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->j0:F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "mFirstPointerPosition"

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->k0:F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "mSecondPointerAngle"

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->u:F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "mLockEnabled"

    iget-boolean v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->c0:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mLockAtStart"

    iget-boolean v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->d0:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mLockAtEnd"

    iget-boolean v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->e0:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->m:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v2, "mCircleStyle"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mLastPointerTouched"

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->g0:I

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mHideProgressWhenEmpty"

    iget-boolean p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->f0:Z

    invoke-virtual {v1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->n0:LP1/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->o0:Landroidx/picker/widget/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Landroidx/picker/widget/a;->a:F

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->o0:Landroidx/picker/widget/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Landroidx/picker/widget/a;->b:F

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->o0:Landroidx/picker/widget/a;

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->y:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v5, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->o0:Landroidx/picker/widget/a;

    iget v6, v5, Landroidx/picker/widget/a;->a:F

    sub-float/2addr v3, v6

    iput v3, v0, Landroidx/picker/widget/a;->c:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->o0:Landroidx/picker/widget/a;

    iget v3, v2, Landroidx/picker/widget/a;->b:F

    sub-float/2addr v0, v3

    iput v0, v5, Landroidx/picker/widget/a;->d:F

    iget v0, v2, Landroidx/picker/widget/a;->c:F

    float-to-double v5, v0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->o0:Landroidx/picker/widget/a;

    iget v0, v0, Landroidx/picker/widget/a;->d:F

    float-to-double v9, v0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    iput v0, v2, Landroidx/picker/widget/a;->e:F

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->o0:Landroidx/picker/widget/a;

    const/high16 v2, 0x42400000    # 48.0f

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->c:F

    mul-float/2addr v3, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->n:F

    cmpg-float v5, v2, v3

    if-gez v5, :cond_0

    div-float/2addr v3, v4

    goto :goto_0

    :cond_0
    div-float v3, v2, v4

    :goto_0
    iput v3, v0, Landroidx/picker/widget/a;->f:F

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->i0:F

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->h0:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->o0:Landroidx/picker/widget/a;

    iget v5, v3, Landroidx/picker/widget/a;->f:F

    add-float/2addr v2, v5

    iput v2, v0, Landroidx/picker/widget/a;->g:F

    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->i0:F

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->h0:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->o0:Landroidx/picker/widget/a;

    iget v5, v2, Landroidx/picker/widget/a;->f:F

    sub-float/2addr v0, v5

    iput v0, v3, Landroidx/picker/widget/a;->h:F

    iget v0, v2, Landroidx/picker/widget/a;->b:F

    float-to-double v5, v0

    iget v0, v2, Landroidx/picker/widget/a;->a:F

    float-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v5, v7

    const-wide v9, 0x4066800000000000L    # 180.0

    mul-double/2addr v5, v9

    const-wide v9, 0x4076800000000000L    # 360.0

    rem-double/2addr v5, v9

    double-to-float v0, v5

    iput v0, v2, Landroidx/picker/widget/a;->i:F

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->o0:Landroidx/picker/widget/a;

    iget v2, v0, Landroidx/picker/widget/a;->i:F

    const/4 v3, 0x0

    cmpg-float v5, v2, v3

    const/high16 v6, 0x43b40000    # 360.0f

    if-gez v5, :cond_1

    add-float/2addr v2, v6

    :cond_1
    iput v2, v0, Landroidx/picker/widget/a;->i:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    return v0

    :cond_2
    const-string p0, "CircularSeekBar"

    const-string p1, "MotionEvent.ACTION_CANCEL"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->o0:Landroidx/picker/widget/a;

    iget p0, p0, Landroidx/picker/widget/a;->g:F

    :cond_4
    return v1

    :cond_5
    iget-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->o0:Landroidx/picker/widget/a;

    iget v2, p1, Landroidx/picker/widget/a;->i:F

    iget v5, p1, Landroidx/picker/widget/a;->e:F

    iget v9, p1, Landroidx/picker/widget/a;->h:F

    iget p1, p1, Landroidx/picker/widget/a;->g:F

    iget v10, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->s:F

    const/high16 v11, 0x43340000    # 180.0f

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->i0:F

    iget v13, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->h0:F

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    float-to-double v12, v12

    mul-double/2addr v12, v7

    div-double/2addr v10, v12

    double-to-float v7, v10

    iget v8, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->u:F

    div-float/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v7, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->j0:F

    sub-float v7, v2, v7

    cmpg-float v8, v7, v3

    if-gez v8, :cond_6

    add-float/2addr v7, v6

    :cond_6
    sub-float v8, v6, v7

    iget v10, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->k0:F

    sub-float v11, v2, v10

    cmpg-float v12, v11, v3

    if-gez v12, :cond_7

    add-float/2addr v11, v6

    :cond_7
    sub-float/2addr v6, v11

    cmpl-float v9, v5, v9

    if-ltz v9, :cond_8

    cmpg-float p1, v5, p1

    if-gtz p1, :cond_8

    move p1, v0

    goto :goto_1

    :cond_8
    move p1, v1

    :goto_1
    cmpg-float v5, v7, v4

    if-lez v5, :cond_a

    cmpg-float v5, v8, v4

    if-gtz v5, :cond_9

    goto :goto_2

    :cond_9
    move v5, v1

    goto :goto_3

    :cond_a
    :goto_2
    move v5, v0

    :goto_3
    cmpg-float v7, v11, v4

    if-lez v7, :cond_c

    cmpg-float v4, v6, v4

    if-gtz v4, :cond_b

    goto :goto_4

    :cond_b
    move v4, v1

    goto :goto_5

    :cond_c
    :goto_4
    move v4, v0

    :goto_5
    invoke-static {v10}, Li3/x;->t(F)F

    move-result v6

    iget p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->j0:F

    invoke-static {p0}, Li3/x;->t(F)F

    move-result p0

    invoke-static {v2}, Li3/x;->t(F)F

    move-result v2

    cmpg-float v7, v6, p0

    if-gez v7, :cond_e

    cmpl-float v3, v2, v6

    if-lez v3, :cond_10

    cmpg-float p0, v2, p0

    if-gez p0, :cond_10

    :cond_d
    :goto_6
    move p0, v0

    goto :goto_7

    :cond_e
    cmpl-float v7, v6, p0

    if-lez v7, :cond_10

    cmpl-float v6, v2, v6

    if-lez v6, :cond_f

    const/high16 v6, 0x44b40000    # 1440.0f

    cmpg-float v6, v2, v6

    if-lez v6, :cond_d

    :cond_f
    cmpg-float p0, v2, p0

    if-gez p0, :cond_10

    cmpl-float p0, v2, v3

    if-lez p0, :cond_10

    goto :goto_6

    :cond_10
    move p0, v1

    :goto_7
    if-eqz p1, :cond_11

    if-eqz v5, :cond_11

    if-eqz v4, :cond_11

    goto :goto_8

    :cond_11
    if-eqz p1, :cond_12

    if-eqz v5, :cond_12

    goto :goto_8

    :cond_12
    if-eqz p1, :cond_13

    if-eqz v4, :cond_13

    goto :goto_8

    :cond_13
    if-eqz p1, :cond_14

    if-eqz p0, :cond_14

    :goto_8
    move v1, v0

    :cond_14
    return v1
.end method
