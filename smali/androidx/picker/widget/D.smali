.class public final Landroidx/picker/widget/D;
.super Landroidx/picker/widget/I;
.source "SourceFile"


# static fields
.field public static final e1:[C


# instance fields
.field public A:I

.field public A0:Landroid/graphics/Typeface;

.field public B:I

.field public B0:Landroid/graphics/Typeface;

.field public C:I

.field public C0:Landroid/graphics/Typeface;

.field public D:Landroid/widget/Scroller;

.field public final D0:Landroid/graphics/Typeface;

.field public final E:Landroid/widget/OverScroller;

.field public final E0:F

.field public final F:Landroid/widget/Scroller;

.field public F0:I

.field public G:I

.field public G0:I

.field public H:F

.field public H0:Z

.field public I:Landroidx/picker/widget/x;

.field public final I0:Landroid/view/animation/PathInterpolator;

.field public J:Landroidx/picker/widget/x;

.field public final J0:Landroid/view/animation/PathInterpolator;

.field public K:F

.field public final K0:F

.field public L:F

.field public final L0:F

.field public M:Landroid/view/VelocityTracker;

.field public final M0:F

.field public final N:I

.field public N0:F

.field public final O:I

.field public final O0:Landroid/animation/ValueAnimator;

.field public final P:I

.field public final P0:Landroid/animation/ValueAnimator;

.field public Q:Z

.field public final Q0:Landroid/animation/ValueAnimator;

.field public R:Z

.field public final R0:Landroid/animation/ValueAnimator;

.field public final S:I

.field public final S0:LV/e;

.field public T:I

.field public T0:Z

.field public U:Z

.field public U0:F

.field public V:Z

.field public final V0:I

.field public W:Z

.field public W0:Ljava/lang/String;

.field public X:I

.field public X0:Landroid/widget/Toast;

.field public Y:I

.field public Y0:Lc1/w;

.field public Z:I

.field public final Z0:Landroid/view/accessibility/AccessibilityManager;

.field public a0:Z

.field public final a1:Landroidx/picker/widget/y;

.field public b0:Z

.field public final b1:Landroidx/picker/widget/y;

.field public c:Ljava/lang/String;

.field public c0:I

.field public final c1:Landroidx/picker/widget/M;

.field public d:Ljava/lang/String;

.field public d0:Landroidx/picker/widget/A;

.field public final d1:Landroidx/picker/widget/z;

.field public final e:Landroid/widget/EditText;

.field public final e0:Landroidx/picker/widget/O;

.field public final f:I

.field public f0:Z

.field public final g:I

.field public g0:Z

.field public final h:I

.field public h0:Z

.field public i:I

.field public final i0:Landroid/media/AudioManager;

.field public final j:Z

.field public final j0:Landroidx/picker/widget/B;

.field public k:I

.field public final k0:I

.field public l:[Ljava/lang/String;

.field public final l0:I

.field public m:I

.field public m0:Z

.field public n:I

.field public n0:Z

.field public o:I

.field public o0:Z

.field public p:I

.field public final p0:Landroid/widget/Scroller;

.field public q:Z

.field public final q0:Landroid/widget/Scroller;

.field public r:Z

.field public r0:I

.field public s:Landroidx/picker/widget/v;

.field public s0:I

.field public t:Landroidx/picker/widget/t;

.field public t0:I

.field public u:Landroidx/picker/widget/s;

.field public u0:I

.field public v:Landroidx/picker/widget/r;

.field public v0:I

.field public final w:Landroid/util/SparseArray;

.field public w0:Z

.field public final x:[I

.field public x0:Z

.field public final y:Landroid/graphics/Paint;

.field public y0:Z

.field public final z:Landroid/graphics/drawable/ColorDrawable;

.field public z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x46

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/picker/widget/D;->e1:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
        0x1040s
        0x1041s
        0x1042s
        0x1043s
        0x1044s
        0x1045s
        0x1046s
        0x1047s
        0x1048s
        0x1049s
    .end array-data
.end method

.method public constructor <init>(Landroidx/picker/widget/SeslNumberPicker;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    iput-object p2, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    iput v2, p0, Landroidx/picker/widget/D;->p:I

    iput-boolean v1, p0, Landroidx/picker/widget/D;->q:Z

    iput-boolean v1, p0, Landroidx/picker/widget/D;->r:Z

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroidx/picker/widget/D;->w:Landroid/util/SparseArray;

    const/4 v3, 0x5

    new-array v3, v3, [I

    iput-object v3, p0, Landroidx/picker/widget/D;->x:[I

    const/high16 v3, -0x80000000

    iput v3, p0, Landroidx/picker/widget/D;->B:I

    iput-boolean v2, p0, Landroidx/picker/widget/D;->R:Z

    iput v1, p0, Landroidx/picker/widget/D;->T:I

    iput-boolean v2, p0, Landroidx/picker/widget/D;->g0:Z

    iput-boolean v1, p0, Landroidx/picker/widget/D;->m0:Z

    iput-boolean v1, p0, Landroidx/picker/widget/D;->n0:Z

    iput-boolean v1, p0, Landroidx/picker/widget/D;->o0:Z

    iput-boolean v1, p0, Landroidx/picker/widget/D;->w0:Z

    iput-boolean v1, p0, Landroidx/picker/widget/D;->x0:Z

    iput-boolean v1, p0, Landroidx/picker/widget/D;->H0:Z

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const v6, 0x3ecccccd    # 0.4f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Landroidx/picker/widget/D;->I0:Landroid/view/animation/PathInterpolator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e2e147b    # 0.17f

    const v8, 0x3f547ae1    # 0.83f

    invoke-direct {v3, v4, v4, v8, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Landroidx/picker/widget/D;->J0:Landroid/view/animation/PathInterpolator;

    iput v6, p0, Landroidx/picker/widget/D;->K0:F

    const v3, 0x3dcccccd    # 0.1f

    iput v3, p0, Landroidx/picker/widget/D;->L0:F

    iput v7, p0, Landroidx/picker/widget/D;->M0:F

    iput v3, p0, Landroidx/picker/widget/D;->N0:F

    const/16 v3, 0x6a4

    iput v3, p0, Landroidx/picker/widget/D;->V0:I

    new-instance v3, Landroidx/picker/widget/y;

    invoke-direct {v3, p0, v1}, Landroidx/picker/widget/y;-><init>(Landroidx/picker/widget/D;I)V

    iput-object v3, p0, Landroidx/picker/widget/D;->a1:Landroidx/picker/widget/y;

    new-instance v3, Landroidx/picker/widget/y;

    invoke-direct {v3, p0, v2}, Landroidx/picker/widget/y;-><init>(Landroidx/picker/widget/D;I)V

    iput-object v3, p0, Landroidx/picker/widget/D;->b1:Landroidx/picker/widget/y;

    new-instance v3, Landroidx/picker/widget/M;

    invoke-direct {v3, v2, p0}, Landroidx/picker/widget/M;-><init>(ILjava/lang/Object;)V

    iput-object v3, p0, Landroidx/picker/widget/D;->c1:Landroidx/picker/widget/M;

    new-instance v3, Landroidx/picker/widget/z;

    invoke-direct {v3, v1, p0}, Landroidx/picker/widget/z;-><init>(ILjava/lang/Object;)V

    iput-object v3, p0, Landroidx/picker/widget/D;->d1:Landroidx/picker/widget/z;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070442

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v8, 0x7f070443

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x7f070441

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v4

    div-float/2addr v9, v10

    iput v9, p0, Landroidx/picker/widget/D;->E0:F

    sget-object v9, Le0/a;->b:[I

    invoke-virtual {p2, p3, v9, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 v9, -0x1

    invoke-virtual {p3, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, p0, Landroidx/picker/widget/D;->f:I

    invoke-virtual {p3, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/picker/widget/D;->g:I

    const/4 v11, 0x3

    invoke-virtual {p3, v11, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Landroidx/picker/widget/D;->h:I

    invoke-virtual {p3, v2, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, p0, Landroidx/picker/widget/D;->i:I

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v10, v9, :cond_1

    if-eq v4, v9, :cond_1

    if-gt v10, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minHeight > maxHeight"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eq v8, v9, :cond_3

    iget p3, p0, Landroidx/picker/widget/D;->i:I

    if-eq p3, v9, :cond_3

    if-gt v8, p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minWidth > maxWidth"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    const/high16 p3, 0x40000000    # 2.0f

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, p3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/picker/widget/D;->S:I

    iget p3, p0, Landroidx/picker/widget/D;->i:I

    if-ne p3, v9, :cond_4

    move p3, v2

    goto :goto_2

    :cond_4
    move p3, v1

    :goto_2
    iput-boolean p3, p0, Landroidx/picker/widget/D;->j:Z

    invoke-static {p2}, LW1/a;->S(Landroid/content/Context;)Z

    move-result p3

    const v4, 0x3e4ccccd    # 0.2f

    if-nez p3, :cond_5

    iput v4, p0, Landroidx/picker/widget/D;->L0:F

    iput v4, p0, Landroidx/picker/widget/D;->N0:F

    :cond_5
    new-instance p3, Landroidx/picker/widget/O;

    invoke-direct {p3, v2, p0}, Landroidx/picker/widget/O;-><init>(ILjava/lang/Object;)V

    iput-object p3, p0, Landroidx/picker/widget/D;->e0:Landroidx/picker/widget/O;

    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    const v8, 0x7f0d0095

    invoke-virtual {p3, v8, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p3, 0x7f0a0184

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance p3, LS1/q;

    invoke-direct {p3, v2, p0}, LS1/q;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->D0:Landroid/graphics/Typeface;

    const-string p3, "sec-roboto-condensed-light"

    invoke-static {p3, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x22

    if-lt v8, v9, :cond_6

    const-string p1, "sec"

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    const/16 p3, 0x258

    invoke-static {p1, p3, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    goto :goto_3

    :cond_6
    const-string v8, "sec-roboto-light"

    invoke-static {v8, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    iput-object v8, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    invoke-virtual {p1, v8}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    invoke-virtual {p3, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iput-object p3, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    goto :goto_3

    :cond_7
    const-string p1, "sans-serif-thin"

    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    :cond_8
    :goto_3
    iget-object p1, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->B0:Landroid/graphics/Typeface;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, LZ0/j;->R(Landroid/content/res/Configuration;)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_a

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "theme_font_clock"

    invoke-static {p1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    :try_start_0
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    :cond_9
    move-object p1, p3

    :goto_4
    iput-object p1, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->B0:Landroid/graphics/Typeface;

    goto :goto_5

    :cond_a
    iput v4, p0, Landroidx/picker/widget/D;->L0:F

    iput v4, p0, Landroidx/picker/widget/D;->N0:F

    :cond_b
    :goto_5
    invoke-static {}, Landroidx/picker/widget/D;->l()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object p1, p0, Landroidx/picker/widget/D;->D0:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->B0:Landroid/graphics/Typeface;

    :cond_c
    iget-object p1, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-static {p1}, Lp0/a;->l(Landroid/view/View;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/picker/widget/D;->y0:Z

    iget-object p1, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->C0:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroidx/picker/widget/D;->v()V

    iget-object p1, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/D;->j(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget v4, p0, Landroidx/picker/widget/D;->v0:I

    invoke-direct {p1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Landroidx/picker/widget/D;->z:Landroid/graphics/drawable/ColorDrawable;

    iget-object p1, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    new-instance v4, Landroidx/picker/widget/b;

    invoke-direct {v4, v0, p0}, Landroidx/picker/widget/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    new-instance v4, Landroidx/picker/widget/d;

    invoke-direct {v4, v2, p0}, Landroidx/picker/widget/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    new-instance v4, Landroidx/picker/widget/C;

    invoke-direct {v4, p0}, Landroidx/picker/widget/C;-><init>(Landroidx/picker/widget/D;)V

    new-array v8, v2, [Landroid/text/InputFilter;

    aput-object v4, v8, v1

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object p1, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRawInputType(I)V

    iget-object p1, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    const v4, 0x2000006

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object p1, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    iget-object p1, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-static {}, Lo4/a;->m()I

    move-result v4

    invoke-static {v4, p1}, Lp0/a;->p(ILandroid/view/View;)V

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Landroidx/picker/widget/D;->N:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    mul-int/2addr p2, v0

    iput p2, p0, Landroidx/picker/widget/D;->O:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroidx/picker/widget/D;->P:I

    iget-object p1, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/picker/widget/D;->k:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget p2, p0, Landroidx/picker/widget/D;->k:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget p2, p0, Landroidx/picker/widget/D;->r0:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p1, p0, Landroidx/picker/widget/D;->y:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    int-to-float p2, p2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr p2, v4

    iput p2, p0, Landroidx/picker/widget/D;->M0:F

    iget-object p2, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v4, "bold_text"

    invoke-static {p2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_d

    move p2, v2

    goto :goto_6

    :cond_d
    move p2, v1

    :goto_6
    iput-boolean p2, p0, Landroidx/picker/widget/D;->z0:Z

    if-eqz p2, :cond_e

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_e
    new-instance p1, Landroid/widget/Scroller;

    iget-object p2, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    iget-object v4, p0, Landroidx/picker/widget/D;->I0:Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, p2, v4, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Landroidx/picker/widget/D;->p0:Landroid/widget/Scroller;

    new-instance p1, Landroid/widget/Scroller;

    iget-object p2, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-direct {p1, p2, p3, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Landroidx/picker/widget/D;->q0:Landroid/widget/Scroller;

    iput-object p1, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    new-instance p1, Landroid/widget/Scroller;

    iget-object p2, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v8, 0x3e99999a    # 0.3f

    invoke-direct {v4, v6, v5, v8, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {p1, p2, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Landroidx/picker/widget/D;->F:Landroid/widget/Scroller;

    new-instance p1, Landroid/widget/OverScroller;

    iget-object p2, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p1, p2, v4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Landroidx/picker/widget/D;->E:Landroid/widget/OverScroller;

    new-instance p1, LV/d;

    invoke-direct {p1}, LV/d;-><init>()V

    new-instance p2, LV/e;

    invoke-direct {p2, p1}, LV/e;-><init>(LV/d;)V

    iput-object p2, p0, Landroidx/picker/widget/D;->S0:LV/e;

    new-instance p1, LV/f;

    invoke-direct {p1}, LV/f;-><init>()V

    iput-object p1, p2, LV/e;->j:LV/f;

    iput v7, p2, LV/e;->g:F

    iget-object p1, p0, Landroidx/picker/widget/D;->c1:Landroidx/picker/widget/M;

    iget-boolean v4, p2, LV/e;->e:Z

    if-nez v4, :cond_19

    iget-object v4, p2, LV/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object p1, p0, Landroidx/picker/widget/D;->d1:Landroidx/picker/widget/z;

    iget-object v4, p2, LV/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object p1, p2, LV/e;->j:LV/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v4, 0x40e00000    # 7.0f

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, p1, LV/f;->a:D

    iput-boolean v1, p1, LV/f;->c:Z

    iget-object p1, p2, LV/e;->j:LV/f;

    const p2, 0x3f7d70a4    # 0.99f

    float-to-double v4, p2

    iput-wide v4, p1, LV/f;->b:D

    iput-boolean v1, p1, LV/f;->c:Z

    invoke-static {}, Landroidx/picker/widget/SeslNumberPicker;->getTwoDigitFormatter()Landroidx/picker/widget/s;

    move-result-object p1

    iget-object p2, p0, Landroidx/picker/widget/D;->u:Landroidx/picker/widget/s;

    if-ne p1, p2, :cond_11

    goto :goto_7

    :cond_11
    iput-object p1, p0, Landroidx/picker/widget/D;->u:Landroidx/picker/widget/s;

    invoke-virtual {p0}, Landroidx/picker/widget/D;->k()V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->C()Z

    :goto_7
    invoke-virtual {p0}, Landroidx/picker/widget/D;->C()Z

    iget-object p1, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p1, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object p1, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p1, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p1, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_12
    iget-object p1, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroidx/picker/widget/D;->i0:Landroid/media/AudioManager;

    new-instance p1, Landroidx/picker/widget/B;

    invoke-direct {p1, v1}, Landroidx/picker/widget/B;-><init>(I)V

    iput-boolean v1, p1, Landroidx/picker/widget/B;->d:Z

    iput-object p1, p0, Landroidx/picker/widget/D;->j0:Landroidx/picker/widget/B;

    const/16 p1, 0x20

    invoke-static {p1}, Lo3/f;->s(I)I

    const-string p1, "SOUND_TIME_PICKER_SCROLL"

    invoke-static {p1}, Li3/x;->L(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-static {p3, p1}, Li3/x;->A(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_13

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_13
    const-string p1, "SOUND_TIME_PICKER_FAST"

    invoke-static {p1}, Li3/x;->L(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-static {p3, p1}, Li3/x;->A(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_14

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_8

    :cond_14
    move p1, v1

    :goto_8
    iput p1, p0, Landroidx/picker/widget/D;->k0:I

    const-string p1, "SOUND_TIME_PICKER_SLOW"

    invoke-static {p1}, Li3/x;->L(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-static {p3, p1}, Li3/x;->A(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_15

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_9

    :cond_15
    move p1, v1

    :goto_9
    iput p1, p0, Landroidx/picker/widget/D;->l0:I

    iget-object p1, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    const-string v4, "com.samsung.android.media.SemSoundAssistantManager"

    const-string v5, "setFastAudioOpenMode"

    invoke-static {v4, v5, p2}, Li3/x;->K(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    const-class v5, Landroid/content/Context;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Li3/x;->G(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    if-eqz v4, :cond_16

    :try_start_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    const-string p1, "SeslSemSoundAssistantManagerReflector"

    const-string v4, "Failed to instantiate class"

    invoke-static {p1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_a
    if-eqz p2, :cond_17

    if-eqz p3, :cond_17

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p2, p1}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object p1, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p1, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p1, Landroidx/picker/widget/SeslNumberPicker;

    const/high16 p2, 0x20000

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object p1, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p1, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v1}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    const-string p1, ""

    iput-object p1, p0, Landroidx/picker/widget/D;->d:Ljava/lang/String;

    const p2, 0x7f1301ca

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/picker/widget/D;->W0:Ljava/lang/String;

    iput-object p1, p0, Landroidx/picker/widget/D;->c:Ljava/lang/String;

    iget-object p1, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    const-class p3, Landroid/view/View;

    const-string v3, "hidden_semSetDirectPenInputEnabled"

    invoke-static {p3, v3, p2}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_18

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p2, p3}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object p1, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Landroidx/picker/widget/D;->Z0:Landroid/view/accessibility/AccessibilityManager;

    iget p1, p0, Landroidx/picker/widget/D;->K0:F

    iget p2, p0, Landroidx/picker/widget/D;->L0:F

    new-array p3, v0, [F

    aput p1, p3, v1

    aput p2, p3, v2

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->P0:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Landroidx/picker/widget/D;->J0:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x64

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v5, p0, Landroidx/picker/widget/D;->a1:Landroidx/picker/widget/y;

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget p1, p0, Landroidx/picker/widget/D;->L0:F

    iget v5, p0, Landroidx/picker/widget/D;->K0:F

    new-array v0, v0, [F

    aput p1, v0, v1

    aput v5, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->O0:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroidx/picker/widget/D;->J0:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroidx/picker/widget/D;->a1:Landroidx/picker/widget/y;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v0, p0, Landroidx/picker/widget/D;->s0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/picker/widget/D;->t0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->Q0:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroidx/picker/widget/D;->J0:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroidx/picker/widget/D;->b1:Landroidx/picker/widget/y;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v0, p0, Landroidx/picker/widget/D;->t0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/picker/widget/D;->s0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->R0:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroidx/picker/widget/D;->J0:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p0, p0, Landroidx/picker/widget/D;->b1:Landroidx/picker/widget/y;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :cond_19
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroidx/picker/widget/D;)V
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/D;->W0:Ljava/lang/String;

    iget-object v1, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/D;->X0:Landroid/widget/Toast;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0085

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/picker/widget/D;->W0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/picker/widget/D;->X0:Landroid/widget/Toast;

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method

.method public static l()Z
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

.method public static n(II)I
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
.method public final A()V
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/D;->F:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v1, p0, Landroidx/picker/widget/D;->E:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v1, p0, Landroidx/picker/widget/D;->S0:LV/e;

    invoke-virtual {v1}, LV/e;->b()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/picker/widget/D;->T0:Z

    iput-boolean v1, p0, Landroidx/picker/widget/D;->n0:Z

    iget-object v2, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {p0, v2}, Landroidx/picker/widget/D;->o(Landroid/widget/Scroller;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/D;->o(Landroid/widget/Scroller;)Z

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/picker/widget/D;->e(I)Z

    return-void
.end method

.method public final B()V
    .locals 7

    iget-boolean v0, p0, Landroidx/picker/widget/D;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/D;->l:[Ljava/lang/String;

    iget-object v1, p0, Landroidx/picker/widget/D;->y:Landroid/graphics/Paint;

    const/4 v2, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x9

    if-gt v3, v4, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpl-float v5, v4, v0

    if-lez v5, :cond_1

    move v0, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v3, p0, Landroidx/picker/widget/D;->n:I

    :goto_1
    if-lez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v3, v3, 0xa

    goto :goto_1

    :cond_3
    int-to-float v3, v2

    mul-float/2addr v3, v0

    float-to-int v0, v3

    goto :goto_3

    :cond_4
    array-length v0, v0

    move v3, v2

    move v4, v3

    :goto_2
    if-ge v2, v0, :cond_6

    iget-object v5, p0, Landroidx/picker/widget/D;->l:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    int-to-float v6, v3

    cmpl-float v6, v5, v6

    if-lez v6, :cond_5

    float-to-int v3, v5

    iget-object v4, p0, Landroidx/picker/widget/D;->l:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move v0, v3

    move v2, v4

    :goto_3
    iget-object v3, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v5, v0

    invoke-static {v3}, Lp0/a;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, LL2/b;->p(Landroid/graphics/Paint;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v2, v2, 0x2

    mul-int/2addr v2, v0

    add-int/2addr v5, v2

    :cond_7
    iget v0, p0, Landroidx/picker/widget/D;->i:I

    if-eq v0, v5, :cond_9

    iget v0, p0, Landroidx/picker/widget/D;->h:I

    if-le v5, v0, :cond_8

    iput v5, p0, Landroidx/picker/widget/D;->i:I

    goto :goto_4

    :cond_8
    iput v0, p0, Landroidx/picker/widget/D;->i:I

    :goto_4
    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public final C()Z
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/D;->l:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/picker/widget/D;->o:I

    invoke-virtual {p0, v0}, Landroidx/picker/widget/D;->f(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/picker/widget/D;->o:I

    iget v2, p0, Landroidx/picker/widget/D;->m:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-static {v0, p0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final D()V
    .locals 2

    iget v0, p0, Landroidx/picker/widget/D;->n:I

    iget v1, p0, Landroidx/picker/widget/D;->m:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/picker/widget/D;->x:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/picker/widget/D;->R:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Landroidx/picker/widget/D;->Q:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Landroidx/picker/widget/D;->Q:Z

    invoke-virtual {p0}, Landroidx/picker/widget/D;->k()V

    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public final b(Z)V
    .locals 4

    iget v0, p0, Landroidx/picker/widget/D;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/picker/widget/D;->q:Z

    if-eqz p1, :cond_3

    iget p1, p0, Landroidx/picker/widget/D;->o:I

    rem-int v2, p1, v0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    div-int/lit8 v3, v0, 0x2

    sub-int/2addr p1, v2

    if-gt v2, v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr p1, v0

    :goto_0
    invoke-virtual {p0, p1, v1}, Landroidx/picker/widget/D;->w(IZ)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/picker/widget/D;->k()V

    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final c(Z)V
    .locals 13

    iget-object v0, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Landroidx/picker/widget/D;->o(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/D;->F:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Landroidx/picker/widget/D;->o(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/picker/widget/D;->G:I

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    iget p1, p0, Landroidx/picker/widget/D;->A:I

    neg-int v5, p1

    const/16 v6, 0x1f4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    iget v11, p0, Landroidx/picker/widget/D;->A:I

    const/16 v12, 0x1f4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_0
    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final d(I)V
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/D;->w:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroidx/picker/widget/D;->m:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Landroidx/picker/widget/D;->n:I

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/picker/widget/D;->l:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int p0, p1, v1

    aget-object p0, v2, p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/picker/widget/D;->f(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, ""

    :goto_1
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final e(I)Z
    .locals 9

    iget v0, p0, Landroidx/picker/widget/D;->B:I

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Landroidx/picker/widget/D;->C:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_4

    iput v2, p0, Landroidx/picker/widget/D;->G:I

    iget-boolean v1, p0, Landroidx/picker/widget/D;->H0:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v1, p0, Landroidx/picker/widget/D;->A:I

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

    iget v1, p0, Landroidx/picker/widget/D;->A:I

    div-int/lit8 v3, v1, 0x2

    if-le p1, v3, :cond_2

    if-lez v0, :cond_1

    goto :goto_0

    :goto_1
    iget-object v3, p0, Landroidx/picker/widget/D;->F:Landroid/widget/Scroller;

    const/4 v6, 0x0

    const/16 v8, 0x12c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object p1, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p1, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iput-boolean v2, p0, Landroidx/picker/widget/D;->H0:Z

    const/4 p0, 0x1

    return p0

    :cond_4
    iput-boolean v2, p0, Landroidx/picker/widget/D;->H0:Z

    return v2
.end method

.method public final f(I)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Landroidx/picker/widget/D;->u:Landroidx/picker/widget/s;

    if-eqz p0, :cond_1

    check-cast p0, Landroidx/picker/widget/w;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-char v1, p0, Landroidx/picker/widget/w;->b:C

    invoke-static {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Landroidx/picker/widget/w;->a:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Landroidx/picker/widget/w;->c:Ljava/util/Formatter;

    invoke-static {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    iput-char v0, p0, Landroidx/picker/widget/w;->b:C

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/w;->d:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v0, p0, Landroidx/picker/widget/w;->a:Ljava/lang/StringBuilder;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Landroidx/picker/widget/w;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/picker/widget/w;->c:Ljava/util/Formatter;

    const-string v1, "%02d"

    iget-object v2, p0, Landroidx/picker/widget/w;->d:[Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/picker/widget/w;->c:Ljava/util/Formatter;

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%d"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final g()Landroidx/picker/widget/A;
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/D;->d0:Landroidx/picker/widget/A;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/picker/widget/A;

    invoke-direct {v0, p0}, Landroidx/picker/widget/A;-><init>(Landroidx/picker/widget/D;)V

    iput-object v0, p0, Landroidx/picker/widget/D;->d0:Landroidx/picker/widget/A;

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/D;->d0:Landroidx/picker/widget/A;

    return-object p0
.end method

.method public final h(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/D;->l:[Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/picker/widget/D;->l:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Landroidx/picker/widget/D;->l:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Landroidx/picker/widget/D;->m:I

    add-int/2addr p0, v0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    iget p0, p0, Landroidx/picker/widget/D;->m:I

    return p0
.end method

.method public final i(I)I
    .locals 1

    iget v0, p0, Landroidx/picker/widget/D;->n:I

    if-le p1, v0, :cond_0

    iget p0, p0, Landroidx/picker/widget/D;->m:I

    sub-int/2addr p1, p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr p1, v0

    add-int/2addr p1, p0

    return p1

    :cond_0
    iget p0, p0, Landroidx/picker/widget/D;->m:I

    if-ge p1, p0, :cond_1

    sub-int p1, v0, p1

    sub-int p0, v0, p0

    add-int/lit8 p0, p0, 0x1

    rem-int/2addr p1, p0

    sub-int/2addr v0, p1

    return v0

    :cond_1
    return p1
.end method

.method public final j(Landroid/content/Context;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/picker/widget/D;->x0:Z

    iget-object v1, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/picker/widget/D;->u0:I

    iput v0, p0, Landroidx/picker/widget/D;->t0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, LA/r;->a:Ljava/lang/ThreadLocal;

    const v3, 0x7f0603d4

    invoke-static {v0, v3, v2}, LA/l;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/D;->s0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v2, 0x7f0603d7

    invoke-static {v0, v2, p1}, LA/l;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/D;->v0:I

    iget p1, p0, Landroidx/picker/widget/D;->s0:I

    iput p1, p0, Landroidx/picker/widget/D;->r0:I

    iget-object v0, p0, Landroidx/picker/widget/D;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget p1, p0, Landroidx/picker/widget/D;->v0:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object p0, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, LA/r;->a:Ljava/lang/ThreadLocal;

    const v3, 0x7f0603d5

    invoke-static {v0, v3, v2}, LA/l;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/D;->t0:I

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v2, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroidx/picker/widget/SeslNumberPicker;->getEnableStateSet()[I

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/D;->s0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v2, 0x7f0603d6

    invoke-static {v0, v2, p1}, LA/l;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/D;->v0:I

    iget v0, p0, Landroidx/picker/widget/D;->s0:I

    iput v0, p0, Landroidx/picker/widget/D;->r0:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setHighlightColor(I)V

    :goto_0
    return-void
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, Landroidx/picker/widget/D;->w:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-boolean v0, p0, Landroidx/picker/widget/D;->n0:Z

    iget-object v1, p0, Landroidx/picker/widget/D;->x:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/picker/widget/D;->o:I

    :goto_0
    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, v2, -0x2

    iget-boolean v4, p0, Landroidx/picker/widget/D;->q:Z

    if-eqz v4, :cond_1

    iget v4, p0, Landroidx/picker/widget/D;->p:I

    goto :goto_2

    :cond_1
    const/4 v4, 0x1

    :goto_2
    mul-int/2addr v3, v4

    add-int/2addr v3, v0

    iget-boolean v4, p0, Landroidx/picker/widget/D;->Q:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Landroidx/picker/widget/D;->i(I)I

    move-result v3

    :cond_2
    aput v3, v1, v2

    invoke-virtual {p0, v3}, Landroidx/picker/widget/D;->d(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/picker/widget/D;->h0:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/picker/widget/D;->f0:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final o(Landroid/widget/Scroller;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    iget p1, p0, Landroidx/picker/widget/D;->A:I

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget v3, p0, Landroidx/picker/widget/D;->C:I

    add-int/2addr v3, v1

    iget v4, p0, Landroidx/picker/widget/D;->B:I

    sub-int/2addr v4, v3

    if-eqz v4, :cond_3

    rem-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v2, p0, Landroidx/picker/widget/D;->A:I

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

    invoke-virtual {p0, v1}, Landroidx/picker/widget/D;->t(I)V

    return v0

    :cond_3
    return v2
.end method

.method public final p(I)V
    .locals 1

    iget v0, p0, Landroidx/picker/widget/D;->T:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/picker/widget/D;->T:I

    return-void
.end method

.method public final q()V
    .locals 2

    iget v0, p0, Landroidx/picker/widget/D;->U0:F

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Landroidx/picker/widget/D;->k0:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/picker/widget/D;->l0:I

    :goto_0
    iget-object v1, p0, Landroidx/picker/widget/D;->i0:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v0, p0, Landroidx/picker/widget/D;->j0:Landroidx/picker/widget/B;

    iget-boolean v1, v0, Landroidx/picker/widget/B;->d:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    const v1, 0xc388

    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    const/4 p0, 0x1

    iput-boolean p0, v0, Landroidx/picker/widget/B;->d:Z

    :cond_1
    return-void
.end method

.method public final r()V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/D;->I:Landroidx/picker/widget/x;

    iget-object v1, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslNumberPicker;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/picker/widget/x;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Landroidx/picker/widget/x;-><init>(Landroidx/picker/widget/D;I)V

    iput-object v0, p0, Landroidx/picker/widget/D;->I:Landroidx/picker/widget/x;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object p0, p0, Landroidx/picker/widget/D;->I:Landroidx/picker/widget/x;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/D;->I:Landroidx/picker/widget/x;

    iget-object v1, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslNumberPicker;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/D;->J:Landroidx/picker/widget/x;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/D;->e0:Landroidx/picker/widget/O;

    invoke-virtual {p0}, Landroidx/picker/widget/O;->a()V

    return-void
.end method

.method public final t(I)V
    .locals 10

    if-eqz p1, :cond_b

    iget v0, p0, Landroidx/picker/widget/D;->A:I

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, p0, Landroidx/picker/widget/D;->Q:Z

    iget-object v1, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslNumberPicker;

    iget-object v2, p0, Landroidx/picker/widget/D;->F:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v6, p0, Landroidx/picker/widget/D;->x:[I

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/picker/widget/D;->C:I

    add-int v7, v0, p1

    iget v8, p0, Landroidx/picker/widget/D;->B:I

    if-le v7, v8, :cond_1

    aget v7, v6, v4

    iget v9, p0, Landroidx/picker/widget/D;->m:I

    if-gt v7, v9, :cond_1

    sub-int p1, v8, v0

    iget-object v0, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/D;->E:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/D;->S0:LV/e;

    invoke-virtual {v0}, LV/e;->b()V

    iput-boolean v3, p0, Landroidx/picker/widget/D;->T0:Z

    iget-boolean v0, p0, Landroidx/picker/widget/D;->f0:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/picker/widget/D;->L:F

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v0, v0, v7

    if-lez v0, :cond_1

    iput-boolean v5, p0, Landroidx/picker/widget/D;->U:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Landroidx/picker/widget/D;->Q:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/picker/widget/D;->C:I

    add-int v7, v0, p1

    iget v8, p0, Landroidx/picker/widget/D;->B:I

    if-ge v7, v8, :cond_2

    aget v7, v6, v4

    iget v9, p0, Landroidx/picker/widget/D;->n:I

    if-lt v7, v9, :cond_2

    sub-int p1, v8, v0

    iget-object v0, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/D;->E:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/D;->S0:LV/e;

    invoke-virtual {v0}, LV/e;->b()V

    iput-boolean v3, p0, Landroidx/picker/widget/D;->T0:Z

    iget-boolean v0, p0, Landroidx/picker/widget/D;->f0:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/picker/widget/D;->L:F

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput-boolean v5, p0, Landroidx/picker/widget/D;->U:Z

    return-void

    :cond_2
    iget v0, p0, Landroidx/picker/widget/D;->C:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/picker/widget/D;->C:I

    :cond_3
    :goto_0
    iget p1, p0, Landroidx/picker/widget/D;->C:I

    iget v0, p0, Landroidx/picker/widget/D;->B:I

    sub-int v0, p1, v0

    iget v1, p0, Landroidx/picker/widget/D;->G0:I

    if-lt v0, v1, :cond_7

    iget v0, p0, Landroidx/picker/widget/D;->A:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/picker/widget/D;->C:I

    array-length p1, v6

    sub-int/2addr p1, v5

    invoke-static {v6, v3, v6, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget p1, v6, v5

    sub-int/2addr p1, v5

    iget-boolean v0, p0, Landroidx/picker/widget/D;->Q:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/picker/widget/D;->m:I

    if-ge p1, v0, :cond_4

    iget p1, p0, Landroidx/picker/widget/D;->n:I

    :cond_4
    aput p1, v6, v3

    invoke-virtual {p0, p1}, Landroidx/picker/widget/D;->d(I)V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->q()V

    iget-boolean p1, p0, Landroidx/picker/widget/D;->n0:Z

    if-nez p1, :cond_5

    aget p1, v6, v4

    invoke-virtual {p0, p1, v5}, Landroidx/picker/widget/D;->w(IZ)V

    iput-boolean v5, p0, Landroidx/picker/widget/D;->H0:Z

    goto :goto_1

    :cond_5
    iget p1, p0, Landroidx/picker/widget/D;->p:I

    if-eq p1, v5, :cond_6

    iget-boolean p1, p0, Landroidx/picker/widget/D;->q:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/picker/widget/D;->k()V

    :cond_6
    :goto_1
    iget-boolean p1, p0, Landroidx/picker/widget/D;->Q:Z

    if-nez p1, :cond_3

    aget p1, v6, v4

    iget v0, p0, Landroidx/picker/widget/D;->m:I

    if-gt p1, v0, :cond_3

    iget p1, p0, Landroidx/picker/widget/D;->B:I

    iput p1, p0, Landroidx/picker/widget/D;->C:I

    goto :goto_0

    :cond_7
    :goto_2
    iget p1, p0, Landroidx/picker/widget/D;->C:I

    iget v0, p0, Landroidx/picker/widget/D;->B:I

    sub-int v0, p1, v0

    iget v1, p0, Landroidx/picker/widget/D;->G0:I

    neg-int v1, v1

    if-gt v0, v1, :cond_b

    iget v0, p0, Landroidx/picker/widget/D;->A:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/picker/widget/D;->C:I

    array-length p1, v6

    sub-int/2addr p1, v5

    invoke-static {v6, v5, v6, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v6

    sub-int/2addr p1, v4

    aget p1, v6, p1

    add-int/2addr p1, v5

    iget-boolean v0, p0, Landroidx/picker/widget/D;->Q:Z

    if-eqz v0, :cond_8

    iget v0, p0, Landroidx/picker/widget/D;->n:I

    if-le p1, v0, :cond_8

    iget p1, p0, Landroidx/picker/widget/D;->m:I

    :cond_8
    array-length v0, v6

    sub-int/2addr v0, v5

    aput p1, v6, v0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/D;->d(I)V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->q()V

    iget-boolean p1, p0, Landroidx/picker/widget/D;->n0:Z

    if-nez p1, :cond_9

    aget p1, v6, v4

    invoke-virtual {p0, p1, v5}, Landroidx/picker/widget/D;->w(IZ)V

    iput-boolean v5, p0, Landroidx/picker/widget/D;->H0:Z

    goto :goto_3

    :cond_9
    iget p1, p0, Landroidx/picker/widget/D;->p:I

    if-eq p1, v5, :cond_a

    iget-boolean p1, p0, Landroidx/picker/widget/D;->q:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/picker/widget/D;->k()V

    :cond_a
    :goto_3
    iget-boolean p1, p0, Landroidx/picker/widget/D;->Q:Z

    if-nez p1, :cond_7

    aget p1, v6, v4

    iget v0, p0, Landroidx/picker/widget/D;->n:I

    if-lt p1, v0, :cond_7

    iget p1, p0, Landroidx/picker/widget/D;->B:I

    iput p1, p0, Landroidx/picker/widget/D;->C:I

    goto :goto_2

    :cond_b
    :goto_4
    return-void
.end method

.method public final u(Z)V
    .locals 4

    iget-boolean v0, p0, Landroidx/picker/widget/D;->g0:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroidx/picker/widget/D;->h0:Z

    if-ne v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-boolean p1, p0, Landroidx/picker/widget/D;->h0:Z

    iget-object v0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslNumberPicker;

    iget-object v1, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/picker/widget/D;->B()V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->s()V

    iget-boolean p1, p0, Landroidx/picker/widget/D;->n0:Z

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/picker/widget/D;->B:I

    iput p1, p0, Landroidx/picker/widget/D;->C:I

    iget-object p1, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object p1, p0, Landroidx/picker/widget/D;->E:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    iput-boolean v2, p0, Landroidx/picker/widget/D;->T0:Z

    iget-object p1, p0, Landroidx/picker/widget/D;->S0:LV/e;

    invoke-virtual {p1}, LV/e;->b()V

    invoke-virtual {p0, v2}, Landroidx/picker/widget/D;->p(I)V

    :cond_1
    const/high16 p1, 0x40000

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->C()Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroidx/picker/widget/D;->Z0:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/picker/widget/D;->g()Landroidx/picker/widget/A;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    invoke-virtual {p1, v2, v3, v1}, Landroidx/picker/widget/A;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_2
    iget p1, p0, Landroidx/picker/widget/D;->p:I

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    iget-boolean v3, p0, Landroidx/picker/widget/D;->q:Z

    if-eqz v3, :cond_3

    iget v3, p0, Landroidx/picker/widget/D;->o:I

    rem-int/2addr v3, p1

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Landroidx/picker/widget/D;->b(Z)V

    :cond_3
    iget-object p1, p0, Landroidx/picker/widget/D;->P0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/D;->O0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    iget-object p1, p0, Landroidx/picker/widget/D;->Q0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iget-object p1, p0, Landroidx/picker/widget/D;->R0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    iget p1, p0, Landroidx/picker/widget/D;->s0:I

    iput p1, p0, Landroidx/picker/widget/D;->r0:I

    iget p1, p0, Landroidx/picker/widget/D;->L0:F

    iput p1, p0, Landroidx/picker/widget/D;->N0:F

    const/4 p1, 0x4

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x20000

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_8
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Landroidx/picker/widget/D;->t:Landroidx/picker/widget/t;

    if-eqz p1, :cond_9

    iget-boolean p0, p0, Landroidx/picker/widget/D;->h0:Z

    invoke-interface {p1, p0}, Landroidx/picker/widget/t;->b(Z)V

    :cond_9
    :goto_1
    return-void
.end method

.method public final v()V
    .locals 2

    iget-boolean v0, p0, Landroidx/picker/widget/D;->y0:Z

    iget-object v1, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/D;->C0:Landroid/graphics/Typeface;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method

.method public final w(IZ)V
    .locals 5

    iget v0, p0, Landroidx/picker/widget/D;->o:I

    iget-object v1, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslNumberPicker;

    if-ne v0, p1, :cond_1

    invoke-static {}, Landroidx/picker/widget/D;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/picker/widget/D;->C()Z

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroidx/picker/widget/D;->Q:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/picker/widget/D;->i(I)I

    move-result p1

    goto :goto_0

    :cond_2
    iget v0, p0, Landroidx/picker/widget/D;->m:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Landroidx/picker/widget/D;->n:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget v0, p0, Landroidx/picker/widget/D;->o:I

    iput p1, p0, Landroidx/picker/widget/D;->o:I

    invoke-virtual {p0}, Landroidx/picker/widget/D;->C()Z

    iget-object p1, p0, Landroidx/picker/widget/D;->Z0:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Landroidx/picker/widget/D;->n0:Z

    if-nez p2, :cond_6

    iget p2, p0, Landroidx/picker/widget/D;->o:I

    invoke-virtual {p0, p2}, Landroidx/picker/widget/D;->i(I)I

    move-result p2

    iget v2, p0, Landroidx/picker/widget/D;->n:I

    if-gt p2, v2, :cond_4

    iget-object v2, p0, Landroidx/picker/widget/D;->l:[Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {p0, p2}, Landroidx/picker/widget/D;->f(I)Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget v3, p0, Landroidx/picker/widget/D;->m:I

    sub-int/2addr p2, v3

    aget-object p2, v2, p2

    :cond_4
    :goto_1
    const/4 p2, 0x4

    invoke-virtual {v1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->g()Landroidx/picker/widget/A;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-boolean v2, p0, Landroidx/picker/widget/D;->g0:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Landroidx/picker/widget/D;->Q:Z

    if-nez v2, :cond_6

    iget v2, p0, Landroidx/picker/widget/D;->o:I

    iget v3, p0, Landroidx/picker/widget/D;->n:I

    if-eq v2, v3, :cond_5

    iget v3, p0, Landroidx/picker/widget/D;->m:I

    if-ne v2, v3, :cond_6

    :cond_5
    const/4 v2, 0x2

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v3, v4}, Landroidx/picker/widget/A;->performAction(IILandroid/os/Bundle;)Z

    :cond_6
    iget-object p2, p0, Landroidx/picker/widget/D;->s:Landroidx/picker/widget/v;

    if-eqz p2, :cond_7

    iget v2, p0, Landroidx/picker/widget/D;->o:I

    invoke-interface {p2, v1, v0, v2}, Landroidx/picker/widget/v;->a(Landroidx/picker/widget/SeslNumberPicker;II)V

    :cond_7
    invoke-virtual {p0}, Landroidx/picker/widget/D;->k()V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, v1, v1, p1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    :cond_8
    return-void
.end method

.method public final x()V
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public final y(ILc1/w;)V
    .locals 2

    iput-object p2, p0, Landroidx/picker/widget/D;->Y0:Lc1/w;

    iget-boolean v0, p0, Landroidx/picker/widget/D;->h0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/picker/widget/D;->f0:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/picker/widget/D;->Q:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/picker/widget/D;->o:I

    iget v1, p0, Landroidx/picker/widget/D;->m:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    iget-object p0, p2, Lc1/w;->c:Ljava/lang/Object;

    check-cast p0, Lf0/b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lf0/b;->m:Z

    :cond_1
    return-void

    :cond_2
    iget-object p2, p0, Landroidx/picker/widget/D;->P0:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object p2, p0, Landroidx/picker/widget/D;->O0:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    iget-object p2, p0, Landroidx/picker/widget/D;->Q0:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    iget-object p2, p0, Landroidx/picker/widget/D;->R0:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    new-instance p2, Landroidx/picker/widget/K;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p0, v0}, Landroidx/picker/widget/K;-><init>(ILjava/lang/Object;I)V

    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final z(Z)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/picker/widget/D;->R0:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroidx/picker/widget/D;->P0:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getDuration()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, 0x64

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    :goto_1
    add-int/lit8 v0, v0, 0x64

    int-to-long p0, v0

    invoke-virtual {v1, p0, p1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_2
    iget p1, p0, Landroidx/picker/widget/D;->N0:F

    iget v3, p0, Landroidx/picker/widget/D;->K0:F

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput p1, v4, v0

    const/4 p1, 0x1

    aput v3, v4, p1

    iget-object p1, p0, Landroidx/picker/widget/D;->O0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget v0, p0, Landroidx/picker/widget/D;->r0:I

    iget v3, p0, Landroidx/picker/widget/D;->t0:I

    filled-new-array {v0, v3}, [I

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/widget/D;->Q0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method
