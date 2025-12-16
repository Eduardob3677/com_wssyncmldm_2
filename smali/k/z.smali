.class public final Lk/z;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# static fields
.field public static final f:Z

.field public static final g:[I


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/graphics/Rect;

.field public final c:Z

.field public final d:I

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lp0/a;->k()I

    move-result v0

    const v1, 0x224d4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lk/z;->f:Z

    const v0, 0x7f080170

    const v1, 0x7f080171

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lk/z;->g:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lk/z;->b:Landroid/graphics/Rect;

    sget-object v0, Lc/a;->s:[I

    invoke-static {p1, p2, v0, p3, p4}, LJ/r0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[III)LJ/r0;

    move-result-object p2

    iget-object p3, p2, LJ/r0;->d:Ljava/lang/Object;

    check-cast p3, Landroid/content/res/TypedArray;

    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-static {p0, p4}, LO/n;->c(Landroid/widget/PopupWindow;Z)V

    :cond_0
    iput-object p1, p0, Lk/z;->a:Landroid/content/Context;

    const/4 p4, 0x3

    invoke-virtual {p3, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    invoke-virtual {p0, p4}, Lk/z;->a(I)Landroid/transition/Transition;

    move-result-object p4

    const/4 v0, 0x4

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lk/z;->a(I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    const/4 p4, -0x1

    invoke-virtual {p3, v1, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    sget-object p4, Lk/z;->g:[I

    array-length v2, p4

    move v3, v1

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v2, :cond_2

    aget v6, p4, v3

    if-ne v6, p3, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v1}, LJ/r0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lk/z;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    xor-int/lit8 p3, v4, 0x1

    iput-boolean p3, p0, Lk/z;->e:Z

    invoke-virtual {p2}, LJ/r0;->n()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result p1

    if-nez p1, :cond_3

    move v1, v5

    :cond_3
    iput-boolean v1, p0, Lk/z;->c:Z

    iget-object p1, p0, Lk/z;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07042a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lk/z;->d:I

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/transition/Transition;
    .locals 1

    if-eqz p1, :cond_1

    const/high16 v0, 0x10f0000

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lk/z;->a:Landroid/content/Context;

    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of p1, p0, Landroid/transition/TransitionSet;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Landroid/transition/TransitionSet;

    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    if-eqz p3, :cond_1

    const-class p3, Landroid/graphics/Rect;

    filled-new-array {p3}, [Ljava/lang/Class;

    move-result-object p3

    const-class v2, Landroid/view/View;

    const-string v3, "getWindowDisplayFrame"

    invoke-static {v2, v3, p3}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    if-eqz p3, :cond_0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, p3, v2}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean p3, p0, Lk/z;->c:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lk/z;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    if-eq p3, v1, :cond_2

    iget p3, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lk/z;->d:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    new-array p3, v1, [I

    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    sget-boolean v3, Lk/z;->f:Z

    const/4 v4, 0x0

    if-nez v3, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v3, p0, Lk/z;->a:Landroid/content/Context;

    if-nez v3, :cond_4

    goto/16 :goto_4

    :cond_4
    const-string v5, "display"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    if-nez v3, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    if-nez v3, :cond_6

    goto/16 :goto_4

    :cond_6
    invoke-static {}, Lp/a;->l()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lk/z;->a:Landroid/content/Context;

    :goto_1
    instance-of v6, v5, Landroid/content/ContextWrapper;

    if-eqz v6, :cond_9

    instance-of v6, v5, Landroid/app/Activity;

    if-eqz v6, :cond_8

    check-cast v5, Landroid/app/Activity;

    goto :goto_2

    :cond_8
    check-cast v5, Landroid/content/ContextWrapper;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    goto :goto_1

    :cond_9
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_4

    :cond_a
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-static {}, Lp0/b;->f()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lk/z;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v1, :cond_e

    iget v3, v5, Landroid/graphics/Point;->y:I

    iget v4, v5, Landroid/graphics/Point;->x:I

    if-le v3, v4, :cond_b

    div-int/2addr v4, v1

    goto :goto_4

    :cond_b
    div-int/2addr v3, v1

    :goto_3
    move v4, v3

    goto :goto_4

    :cond_c
    invoke-static {}, Lp0/b;->g()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lk/z;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_e

    iget v3, v5, Landroid/graphics/Point;->y:I

    iget v4, v5, Landroid/graphics/Point;->x:I

    if-le v3, v4, :cond_d

    div-int/2addr v3, v1

    goto :goto_3

    :cond_d
    div-int/2addr v4, v1

    :cond_e
    :goto_4
    if-eqz v4, :cond_f

    aget v1, p3, v2

    if-ge v1, v4, :cond_f

    move v1, v4

    goto :goto_5

    :cond_f
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_5
    invoke-static {p0}, LO/n;->a(Landroid/widget/PopupWindow;)Z

    move-result v3

    if-eqz v3, :cond_10

    aget p1, p3, v2

    :goto_6
    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    goto :goto_7

    :cond_10
    aget v3, p3, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v3

    goto :goto_6

    :goto_7
    aget p1, p3, v2

    if-eqz v4, :cond_11

    if-lt p1, v4, :cond_11

    goto :goto_8

    :cond_11
    iget v4, v0, Landroid/graphics/Rect;->top:I

    :goto_8
    sub-int/2addr p1, v4

    add-int/2addr p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p0, p0, Lk/z;->b:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget p2, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p0

    sub-int/2addr p1, p2

    :cond_12
    return p1
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/z;->e:Z

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final showAsDropDown(Landroid/view/View;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public final showAsDropDown(Landroid/view/View;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public final update(Landroid/view/View;IIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void
.end method
