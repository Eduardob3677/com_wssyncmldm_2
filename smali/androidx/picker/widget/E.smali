.class public final Landroidx/picker/widget/E;
.super LS/b;
.source "SourceFile"


# instance fields
.field public final q:Landroid/graphics/Rect;

.field public final r:Ljava/util/Calendar;

.field public final synthetic s:Landroidx/picker/widget/H;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/H;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/widget/E;->s:Landroidx/picker/widget/H;

    invoke-direct {p0, p2}, LS/b;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/E;->q:Landroid/graphics/Rect;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/E;->r:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final n(FF)I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/E;->s:Landroidx/picker/widget/H;

    invoke-virtual {p0, p1, p2}, Landroidx/picker/widget/H;->c(FF)I

    move-result p1

    iget-boolean p2, p0, Landroidx/picker/widget/H;->h0:Z

    if-eqz p2, :cond_0

    iget p2, p0, Landroidx/picker/widget/H;->I:I

    if-lt p1, p2, :cond_1

    :cond_0
    iget-boolean p2, p0, Landroidx/picker/widget/H;->i0:Z

    if-eqz p2, :cond_2

    iget p2, p0, Landroidx/picker/widget/H;->J:I

    if-le p1, p2, :cond_2

    :cond_1
    const/high16 p0, -0x80000000

    return p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/picker/widget/H;->b()I

    move-result p2

    add-int/2addr p2, p1

    iget p0, p0, Landroidx/picker/widget/H;->C:I

    const/4 p1, 0x3

    if-ne p0, p1, :cond_3

    add-int/lit8 p2, p2, 0x6

    rem-int/lit8 p0, p2, 0x7

    sub-int/2addr p2, p0

    :cond_3
    return p2
.end method

.method public final o(Ljava/util/ArrayList;)V
    .locals 5

    iget-object p0, p0, Landroidx/picker/widget/E;->s:Landroidx/picker/widget/H;

    invoke-virtual {p0}, Landroidx/picker/widget/H;->b()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x2a

    if-gt v1, v2, :cond_4

    sub-int v2, v1, v0

    iget v3, p0, Landroidx/picker/widget/H;->C:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    rem-int/lit8 v3, v1, 0x7

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v3, p0, Landroidx/picker/widget/H;->h0:Z

    if-eqz v3, :cond_1

    iget v3, p0, Landroidx/picker/widget/H;->I:I

    if-lt v2, v3, :cond_3

    :cond_1
    iget-boolean v3, p0, Landroidx/picker/widget/H;->i0:Z

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/picker/widget/H;->J:I

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final s(II)Z
    .locals 7

    const/16 v0, 0x10

    const/4 v1, 0x0

    if-ne p2, v0, :cond_a

    iget-object p0, p0, Landroidx/picker/widget/E;->s:Landroidx/picker/widget/H;

    invoke-virtual {p0}, Landroidx/picker/widget/H;->b()I

    move-result p2

    sub-int/2addr p1, p2

    iget-boolean p2, p0, Landroidx/picker/widget/H;->h0:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget p2, p0, Landroidx/picker/widget/H;->I:I

    if-lt p1, p2, :cond_1

    :cond_0
    iget-boolean p2, p0, Landroidx/picker/widget/H;->i0:Z

    if-eqz p2, :cond_2

    iget p2, p0, Landroidx/picker/widget/H;->J:I

    if-le p1, p2, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 p2, 0x2

    const/16 v2, 0xb

    const/4 v3, 0x5

    if-gtz p1, :cond_5

    iget-boolean v1, p0, Landroidx/picker/widget/H;->d0:Z

    if-eqz v1, :cond_4

    iget p2, p0, Landroidx/picker/widget/H;->h:I

    iget-boolean v1, p0, Landroidx/picker/widget/H;->e0:Z

    xor-int/lit8 v3, v1, 0x1

    sub-int/2addr p2, v3

    if-gez p2, :cond_3

    iget v3, p0, Landroidx/picker/widget/H;->i:I

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v1, v3}, Landroidx/picker/widget/H;->e(IZI)I

    move-result v1

    iget v2, p0, Landroidx/picker/widget/H;->i:I

    sub-int/2addr v2, v0

    add-int/2addr v1, p1

    invoke-virtual {p0, v2, p2, v1, v0}, Landroidx/picker/widget/H;->k(IIIZ)V

    goto/16 :goto_0

    :cond_3
    iget v2, p0, Landroidx/picker/widget/H;->i:I

    invoke-virtual {p0, p2, v1, v2}, Landroidx/picker/widget/H;->e(IZI)I

    move-result v1

    iget v2, p0, Landroidx/picker/widget/H;->i:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v2, p2, v1, v0}, Landroidx/picker/widget/H;->k(IIIZ)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget v2, p0, Landroidx/picker/widget/H;->i:I

    iget v4, p0, Landroidx/picker/widget/H;->h:I

    invoke-virtual {v1, v2, v4, v0}, Ljava/util/Calendar;->set(III)V

    sub-int/2addr p1, v0

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/picker/widget/H;->k(IIIZ)V

    goto :goto_0

    :cond_5
    iget v4, p0, Landroidx/picker/widget/H;->H:I

    if-le p1, v4, :cond_8

    iget-boolean v5, p0, Landroidx/picker/widget/H;->d0:Z

    if-eqz v5, :cond_7

    iget p2, p0, Landroidx/picker/widget/H;->h:I

    add-int/2addr p2, v0

    if-le p2, v2, :cond_6

    iget p2, p0, Landroidx/picker/widget/H;->i:I

    add-int/2addr p2, v0

    sub-int/2addr p1, v4

    invoke-virtual {p0, p2, v1, p1, v1}, Landroidx/picker/widget/H;->k(IIIZ)V

    goto :goto_0

    :cond_6
    iget v2, p0, Landroidx/picker/widget/H;->i:I

    sub-int/2addr p1, v4

    invoke-virtual {p0, v2, p2, p1, v1}, Landroidx/picker/widget/H;->k(IIIZ)V

    goto :goto_0

    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    iget v4, p0, Landroidx/picker/widget/H;->i:I

    iget v5, p0, Landroidx/picker/widget/H;->h:I

    iget v6, p0, Landroidx/picker/widget/H;->H:I

    invoke-virtual {v2, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    iget v4, p0, Landroidx/picker/widget/H;->H:I

    sub-int/2addr p1, v4

    invoke-virtual {v2, v3, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/picker/widget/H;->k(IIIZ)V

    goto :goto_0

    :cond_8
    iget p2, p0, Landroidx/picker/widget/H;->i:I

    iget v2, p0, Landroidx/picker/widget/H;->h:I

    iget-object v3, p0, Landroidx/picker/widget/H;->b0:Landroidx/picker/widget/F;

    if-eqz v3, :cond_9

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v1, p0, Landroidx/picker/widget/H;->b0:Landroidx/picker/widget/F;

    check-cast v1, Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v1, p0, p2, v2, p1}, Landroidx/picker/widget/SeslDatePicker;->k(Landroidx/picker/widget/H;III)V

    :cond_9
    invoke-virtual {p0}, Landroidx/picker/widget/H;->b()I

    move-result p2

    add-int/2addr p2, p1

    iget-object p0, p0, Landroidx/picker/widget/H;->a0:Landroidx/picker/widget/E;

    invoke-virtual {p0, p2, v0}, LS/b;->y(II)V

    :goto_0
    return v0

    :cond_a
    return v1
.end method

.method public final t(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    iget-object v0, p0, Landroidx/picker/widget/E;->s:Landroidx/picker/widget/H;

    invoke-virtual {v0}, Landroidx/picker/widget/H;->b()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const v2, 0x8000

    if-ne v1, v2, :cond_0

    iput p1, v0, Landroidx/picker/widget/H;->l0:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/picker/widget/H;->m0:Z

    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/high16 v2, 0x10000

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, -0x1

    iput v1, v0, Landroidx/picker/widget/H;->l0:I

    iput-boolean v3, v0, Landroidx/picker/widget/H;->m0:Z

    :cond_1
    iget v1, v0, Landroidx/picker/widget/H;->C:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget v1, v0, Landroidx/picker/widget/H;->D:I

    iget v2, v0, Landroidx/picker/widget/H;->G:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    add-int/2addr v1, p1

    const/4 v2, 0x7

    rem-int/2addr v1, v2

    if-nez v1, :cond_2

    move v1, v2

    :cond_2
    sub-int v4, p1, v1

    add-int/2addr v4, v3

    sub-int/2addr v2, v1

    add-int/2addr v2, p1

    invoke-virtual {p0, v4}, Landroidx/picker/widget/E;->z(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2}, Landroidx/picker/widget/E;->z(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1301bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/picker/widget/E;->z(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final v(ILK/h;)V
    .locals 10

    iget-object v0, p0, Landroidx/picker/widget/E;->s:Landroidx/picker/widget/H;

    invoke-virtual {v0}, Landroidx/picker/widget/H;->b()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, v0, Landroidx/picker/widget/H;->E:I

    iget-object v2, v0, Landroidx/picker/widget/H;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v0, Landroidx/picker/widget/H;->j:I

    iget v4, v0, Landroidx/picker/widget/H;->k:I

    const/4 v5, 0x7

    div-int/2addr v4, v5

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v0}, Landroidx/picker/widget/H;->b()I

    move-result v7

    add-int/2addr v7, v6

    div-int/lit8 v6, v7, 0x7

    rem-int/2addr v7, v5

    mul-int/2addr v6, v3

    add-int/2addr v6, v2

    iget v2, v0, Landroidx/picker/widget/H;->C:I

    const/4 v8, 0x3

    iget-object v9, p0, Landroidx/picker/widget/E;->q:Landroid/graphics/Rect;

    if-ne v2, v8, :cond_0

    iget v1, v0, Landroidx/picker/widget/H;->k:I

    add-int/2addr v3, v6

    const/4 v2, 0x0

    invoke-virtual {v9, v2, v6, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    mul-int/2addr v7, v4

    add-int/2addr v7, v1

    add-int/2addr v4, v7

    add-int/2addr v3, v6

    invoke-virtual {v9, v7, v6, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget v1, v0, Landroidx/picker/widget/H;->C:I

    const/4 v2, 0x1

    iget-object v3, p2, LK/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-ne v1, v8, :cond_2

    iget v1, v0, Landroidx/picker/widget/H;->D:I

    iget v4, v0, Landroidx/picker/widget/H;->G:I

    sub-int/2addr v4, v2

    sub-int/2addr v1, v4

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    rem-int/2addr v1, v5

    if-nez v1, :cond_1

    move v1, v5

    :cond_1
    sub-int v4, p1, v1

    add-int/2addr v4, v2

    sub-int/2addr v5, v1

    add-int/2addr v5, p1

    invoke-virtual {p0, v4}, Landroidx/picker/widget/E;->z(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5}, Landroidx/picker/widget/E;->z(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1301bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/picker/widget/E;->z(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v3, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 p0, 0x10

    invoke-virtual {p2, p0}, LK/h;->a(I)V

    iget p0, v0, Landroidx/picker/widget/H;->F:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-ne p1, p0, :cond_3

    const/4 p0, 0x4

    invoke-virtual {p2, p0}, LK/h;->a(I)V

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method public final z(I)Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Landroidx/picker/widget/E;->s:Landroidx/picker/widget/H;

    iget v1, v0, Landroidx/picker/widget/H;->i:I

    iget v2, v0, Landroidx/picker/widget/H;->h:I

    iget-object p0, p0, Landroidx/picker/widget/E;->r:Ljava/util/Calendar;

    invoke-virtual {p0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 p0, 0x16

    iget-object v3, v0, Landroidx/picker/widget/H;->g:Landroid/content/Context;

    invoke-static {v3, v1, v2, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    iget-boolean v1, v0, Landroidx/picker/widget/H;->d0:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroidx/picker/widget/H;->f0:Ldalvik/system/PathClassLoader;

    if-eqz v1, :cond_5

    iget p0, v0, Landroidx/picker/widget/H;->i:I

    iget v1, v0, Landroidx/picker/widget/H;->h:I

    iget-boolean v2, v0, Landroidx/picker/widget/H;->e0:Z

    const/16 v3, 0xb

    if-gtz p1, :cond_2

    xor-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iget-boolean v2, v0, Landroidx/picker/widget/H;->j0:Z

    if-gez v1, :cond_0

    add-int/lit8 p0, p0, -0x1

    move v1, v3

    :cond_0
    invoke-virtual {v0, v1, v2, p0}, Landroidx/picker/widget/H;->e(IZI)I

    move-result v3

    add-int/2addr p1, v3

    :cond_1
    :goto_0
    move v5, p0

    move v7, p1

    move v6, v1

    move v8, v2

    goto :goto_1

    :cond_2
    iget v4, v0, Landroidx/picker/widget/H;->H:I

    if-le p1, v4, :cond_1

    iget-boolean v2, v0, Landroidx/picker/widget/H;->k0:Z

    xor-int/lit8 v5, v2, 0x1

    add-int/2addr v1, v5

    if-le v1, v3, :cond_3

    add-int/lit8 p0, p0, 0x1

    const/4 v1, 0x0

    :cond_3
    sub-int/2addr p1, v4

    goto :goto_0

    :goto_1
    iget-object v3, v0, Landroidx/picker/widget/H;->f0:Ldalvik/system/PathClassLoader;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v3 .. v8}, Lf1/a;->f(Ldalvik/system/PathClassLoader;Ljava/lang/Object;IIIZ)V

    iget-object p0, v0, Landroidx/picker/widget/H;->f0:Ldalvik/system/PathClassLoader;

    const/4 p1, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lf1/a;->K(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p0

    iget-object p1, v0, Landroidx/picker/widget/H;->f0:Ldalvik/system/PathClassLoader;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lf1/a;->H(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p1

    iget-object v1, v0, Landroidx/picker/widget/H;->f0:Ldalvik/system/PathClassLoader;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lf1/a;->z(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, p0, p1, v1}, Ljava/util/Calendar;->set(III)V

    iget-object p0, v0, Landroidx/picker/widget/H;->f0:Ldalvik/system/PathClassLoader;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Ljava/util/Calendar;

    const-class v1, Landroid/content/Context;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.android.calendar.event.widget.datetimepicker.LunarDateUtils"

    const-string v3, "buildLunarDateString"

    invoke-static {p0, v1, v3, v0}, LL2/b;->u(Ldalvik/system/PathClassLoader;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_4

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object p0, v0

    :cond_5
    :goto_2
    return-object p0
.end method
