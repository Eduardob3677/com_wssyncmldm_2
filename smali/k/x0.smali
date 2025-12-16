.class public Lk/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/y;


# static fields
.field public static final C:Z


# instance fields
.field public A:Z

.field public final B:Z

.field public final c:Landroid/content/Context;

.field public d:Landroid/widget/ListAdapter;

.field public e:Lk/l0;

.field public final f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:I

.field public k:Z

.field public l:I

.field public final m:I

.field public n:LF0/h;

.field public o:Landroid/view/View;

.field public p:Landroid/widget/AdapterView$OnItemClickListener;

.field public q:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public final r:Lk/u0;

.field public final s:Lk/w0;

.field public final t:Lk/v0;

.field public final u:Lk/u0;

.field public final v:Landroid/os/Handler;

.field public final w:Landroid/graphics/Rect;

.field public x:Landroid/graphics/Rect;

.field public y:Z

.field public final z:Lk/z;


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
    sput-boolean v0, Lk/x0;->C:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lk/x0;->f:I

    iput v0, p0, Lk/x0;->g:I

    const/16 v0, 0x3ea

    iput v0, p0, Lk/x0;->j:I

    const/4 v0, 0x0

    iput v0, p0, Lk/x0;->l:I

    const v1, 0x7fffffff

    iput v1, p0, Lk/x0;->m:I

    new-instance v1, Lk/u0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lk/u0;-><init>(Lk/x0;I)V

    iput-object v1, p0, Lk/x0;->r:Lk/u0;

    new-instance v1, Lk/w0;

    invoke-direct {v1, p0}, Lk/w0;-><init>(Lk/x0;)V

    iput-object v1, p0, Lk/x0;->s:Lk/w0;

    new-instance v1, Lk/v0;

    invoke-direct {v1, p0}, Lk/v0;-><init>(Lk/x0;)V

    iput-object v1, p0, Lk/x0;->t:Lk/v0;

    new-instance v1, Lk/u0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lk/u0;-><init>(Lk/x0;I)V

    iput-object v1, p0, Lk/x0;->u:Lk/u0;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lk/x0;->w:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lk/x0;->B:Z

    iput-object p1, p0, Lk/x0;->c:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lk/x0;->v:Landroid/os/Handler;

    sget-object v1, Lc/a;->o:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lk/x0;->h:I

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lk/x0;->i:I

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lk/x0;->k:Z

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lk/z;

    invoke-direct {v0, p1, p2, p3, p4}, Lk/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lk/x0;->z:Lk/z;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    iget-object p0, p0, Lk/x0;->z:Lk/z;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lk/x0;->h:I

    return-void
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lk/x0;->h:I

    return p0
.end method

.method public final dismiss()V
    .locals 2

    iget-object v0, p0, Lk/x0;->z:Lk/z;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Lk/x0;->e:Lk/l0;

    iget-object v0, p0, Lk/x0;->v:Landroid/os/Handler;

    iget-object p0, p0, Lk/x0;->r:Lk/u0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g()I
    .locals 1

    iget-boolean v0, p0, Lk/x0;->k:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lk/x0;->i:I

    return p0
.end method

.method public final h()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lk/x0;->z:Lk/z;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final j()Lk/l0;
    .locals 0

    iget-object p0, p0, Lk/x0;->e:Lk/l0;

    return-object p0
.end method

.method public final l(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lk/x0;->z:Lk/z;

    invoke-virtual {p0, p1}, Lk/z;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final m(I)V
    .locals 0

    iput p1, p0, Lk/x0;->i:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk/x0;->k:Z

    return-void
.end method

.method public n(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lk/x0;->n:LF0/h;

    if-nez v0, :cond_0

    new-instance v0, LF0/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LF0/h;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lk/x0;->n:LF0/h;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lk/x0;->d:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lk/x0;->d:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lk/x0;->n:LF0/h;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Lk/x0;->e:Lk/l0;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lk/x0;->d:Landroid/widget/ListAdapter;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public p(Landroid/content/Context;Z)Lk/l0;
    .locals 0

    new-instance p0, Lk/l0;

    invoke-direct {p0, p1, p2}, Lk/l0;-><init>(Landroid/content/Context;Z)V

    return-object p0
.end method

.method public final q(I)V
    .locals 2

    iget-object v0, p0, Lk/x0;->z:Lk/z;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lk/x0;->w:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lk/x0;->g:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lk/x0;->g:I

    :goto_0
    return-void
.end method

.method public final r()V
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, v1, Lk/x0;->z:Lk/z;

    iget-object v0, v1, Lk/x0;->e:Lk/l0;

    iget-object v5, v1, Lk/x0;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    iget-boolean v0, v1, Lk/x0;->y:Z

    xor-int/2addr v0, v3

    invoke-virtual {v1, v5, v0}, Lk/x0;->p(Landroid/content/Context;Z)Lk/l0;

    move-result-object v0

    iput-object v0, v1, Lk/x0;->e:Lk/l0;

    iget-object v6, v1, Lk/x0;->d:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, v1, Lk/x0;->e:Lk/l0;

    iget-object v6, v1, Lk/x0;->p:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, v1, Lk/x0;->e:Lk/l0;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, v1, Lk/x0;->e:Lk/l0;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, v1, Lk/x0;->e:Lk/l0;

    new-instance v6, Lk/r0;

    invoke-direct {v6, v2, v1}, Lk/r0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, v1, Lk/x0;->e:Lk/l0;

    iget-object v6, v1, Lk/x0;->t:Lk/v0;

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, v1, Lk/x0;->q:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    iget-object v6, v1, Lk/x0;->e:Lk/l0;

    invoke-virtual {v6, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    iget-object v0, v1, Lk/x0;->e:Lk/l0;

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v6, v1, Lk/x0;->w:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v6, Landroid/graphics/Rect;->top:I

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v7

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    move v0, v2

    :goto_1
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    iget-object v9, v1, Lk/x0;->o:Landroid/view/View;

    iget v10, v1, Lk/x0;->i:I

    invoke-static {v4, v9, v10, v7}, Lk/s0;->a(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    move-result v7

    sget-boolean v10, Lk/x0;->C:Z

    if-nez v10, :cond_13

    iget-boolean v10, v1, Lk/x0;->A:Z

    if-eqz v10, :cond_13

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    const-string v13, "display"

    invoke-virtual {v5, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/display/DisplayManager;

    const-string v14, "ListPopupWindow"

    if-nez v13, :cond_4

    const-string v9, "displayManager is null, can not update height"

    invoke-static {v14, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v12, -0x2

    goto/16 :goto_a

    :cond_4
    invoke-virtual {v13, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v13

    if-nez v13, :cond_5

    const-string v9, "display is null, can not update height"

    invoke-static {v14, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    invoke-static {}, Lp/a;->l()Z

    move-result v15

    if-nez v15, :cond_6

    :goto_4
    goto :goto_3

    :cond_6
    move-object v15, v5

    :goto_5
    instance-of v11, v15, Landroid/content/ContextWrapper;

    if-eqz v11, :cond_8

    instance-of v11, v15, Landroid/app/Activity;

    if-eqz v11, :cond_7

    check-cast v15, Landroid/app/Activity;

    goto :goto_6

    :cond_7
    check-cast v15, Landroid/content/ContextWrapper;

    invoke-virtual {v15}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v15

    goto :goto_5

    :cond_8
    const/4 v15, 0x0

    :goto_6
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_4

    :cond_9
    new-array v11, v8, [I

    invoke-virtual {v9, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v13, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-static {}, Lp0/b;->f()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v8, :cond_d

    iget v9, v10, Landroid/graphics/Point;->y:I

    iget v13, v10, Landroid/graphics/Point;->x:I

    if-le v9, v13, :cond_a

    div-int/2addr v13, v8

    goto :goto_7

    :cond_a
    div-int/lit8 v13, v9, 0x2

    goto :goto_7

    :cond_b
    invoke-static {}, Lp0/b;->g()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v3, :cond_d

    iget v9, v10, Landroid/graphics/Point;->y:I

    iget v13, v10, Landroid/graphics/Point;->x:I

    if-le v9, v13, :cond_c

    div-int/2addr v9, v8

    move v13, v9

    goto :goto_7

    :cond_c
    div-int/2addr v13, v8

    goto :goto_7

    :cond_d
    move v13, v2

    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "center = "

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " , anchor top = "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v15, v11, v3

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_12

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v15, 0x7f07041e

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v2, 0x7f070414

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aget v15, v11, v3

    if-le v13, v15, :cond_e

    sub-int/2addr v13, v15

    sub-int/2addr v13, v9

    sub-int/2addr v13, v2

    goto/16 :goto_9

    :cond_e
    const-string v15, "window"

    invoke-virtual {v5, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/WindowManager;

    if-eqz v15, :cond_f

    invoke-interface {v15}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v15

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v12

    invoke-virtual {v15, v12}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v12

    iget v15, v12, Landroid/graphics/Insets;->bottom:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v3, "systemBar insets = "

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_f
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v8, "android"

    const-string v12, "navigation_bar_height"

    const-string v15, "dimen"

    invoke-virtual {v3, v12, v15, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_10

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move v15, v3

    goto :goto_8

    :cond_10
    const/4 v15, 0x0

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "navigationBarHeight = "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    aget v8, v11, v3

    sub-int v3, v8, v13

    sub-int/2addr v13, v15

    const/4 v11, 0x2

    div-int/2addr v13, v11

    if-le v3, v13, :cond_11

    sub-int/2addr v3, v9

    sub-int v13, v3, v2

    goto :goto_9

    :cond_11
    iget v3, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v8

    sub-int/2addr v3, v9

    sub-int/2addr v3, v2

    sub-int v13, v3, v15

    goto :goto_9

    :cond_12
    const/4 v13, -0x2

    :goto_9
    move v12, v13

    :goto_a
    if-lez v12, :cond_13

    if-ge v12, v7, :cond_13

    move v7, v12

    :cond_13
    iget v2, v1, Lk/x0;->f:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    add-int/2addr v7, v0

    goto :goto_d

    :cond_14
    iget v8, v1, Lk/x0;->g:I

    const/4 v9, -0x2

    if-eq v8, v9, :cond_16

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v8, v3, :cond_15

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_b

    :cond_15
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v6, Landroid/graphics/Rect;->left:I

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v6

    sub-int/2addr v8, v10

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_b

    :cond_16
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v6

    sub-int/2addr v8, v9

    const/high16 v6, -0x80000000

    invoke-static {v8, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :goto_b
    iget-object v8, v1, Lk/x0;->e:Lk/l0;

    invoke-virtual {v8, v6, v7}, Lk/l0;->a(II)I

    move-result v6

    if-lez v6, :cond_17

    iget-object v7, v1, Lk/x0;->e:Lk/l0;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    iget-object v8, v1, Lk/x0;->e:Lk/l0;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    add-int/2addr v8, v7

    add-int/2addr v0, v8

    goto :goto_c

    :cond_17
    const/4 v0, 0x0

    :goto_c
    add-int v7, v6, v0

    :goto_d
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_18

    const/4 v0, 0x1

    goto :goto_e

    :cond_18
    const/4 v0, 0x0

    :goto_e
    iget v6, v1, Lk/x0;->j:I

    invoke-static {v4, v6}, LO/n;->d(Landroid/widget/PopupWindow;I)V

    const/4 v6, 0x1

    xor-int/lit8 v8, v0, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    const-class v9, Landroid/widget/PopupWindow;

    const-string v10, "setAllowScrollingAnchorParent"

    invoke-static {v9, v10, v6}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_19

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4, v6, v8}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_26

    iget-object v5, v1, Lk/x0;->o:Landroid/view/View;

    sget-object v6, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_1a

    return-void

    :cond_1a
    iget v5, v1, Lk/x0;->g:I

    if-ne v5, v3, :cond_1b

    move v5, v3

    goto :goto_f

    :cond_1b
    const/4 v6, -0x2

    if-ne v5, v6, :cond_1c

    iget-object v5, v1, Lk/x0;->o:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    :cond_1c
    :goto_f
    if-ne v2, v3, :cond_22

    if-eqz v0, :cond_1d

    move v2, v7

    goto :goto_10

    :cond_1d
    move v2, v3

    :goto_10
    if-eqz v0, :cond_1f

    iget v0, v1, Lk/x0;->g:I

    if-ne v0, v3, :cond_1e

    move v0, v3

    goto :goto_11

    :cond_1e
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_13

    :cond_1f
    iget v0, v1, Lk/x0;->g:I

    if-ne v0, v3, :cond_20

    move v0, v3

    goto :goto_12

    :cond_20
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_21
    :goto_13
    const/4 v6, 0x1

    goto :goto_14

    :cond_22
    const/4 v0, -0x2

    if-ne v2, v0, :cond_21

    move v2, v7

    goto :goto_13

    :goto_14
    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget v0, v1, Lk/x0;->i:I

    iget-boolean v4, v1, Lk/x0;->B:Z

    if-eqz v4, :cond_23

    sub-int/2addr v0, v7

    iget-object v4, v1, Lk/x0;->o:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    :cond_23
    move v9, v0

    iget-object v7, v1, Lk/x0;->o:Landroid/view/View;

    iget v8, v1, Lk/x0;->h:I

    if-gez v5, :cond_24

    move v10, v3

    goto :goto_15

    :cond_24
    move v10, v5

    :goto_15
    if-gez v2, :cond_25

    move v11, v3

    goto :goto_16

    :cond_25
    move v11, v2

    :goto_16
    iget-object v6, v1, Lk/x0;->z:Lk/z;

    invoke-virtual/range {v6 .. v11}, Lk/z;->update(Landroid/view/View;IIII)V

    goto/16 :goto_23

    :cond_26
    iget v0, v1, Lk/x0;->g:I

    if-ne v0, v3, :cond_27

    move v8, v3

    const/4 v6, -0x2

    goto :goto_17

    :cond_27
    const/4 v6, -0x2

    if-ne v0, v6, :cond_28

    iget-object v0, v1, Lk/x0;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_28
    move v8, v0

    :goto_17
    if-ne v2, v3, :cond_29

    move v2, v3

    goto :goto_18

    :cond_29
    if-ne v2, v6, :cond_2a

    move v2, v7

    :cond_2a
    :goto_18
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2b

    goto/16 :goto_22

    :cond_2b
    if-nez v5, :cond_2c

    goto/16 :goto_22

    :cond_2c
    iget-boolean v0, v4, Lk/z;->e:Z

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    if-nez v0, :cond_2d

    goto/16 :goto_22

    :cond_2d
    invoke-static {v5}, LW1/a;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const v0, 0x7f0603d9

    goto :goto_19

    :cond_2e
    const v0, 0x7f0603da

    :goto_19
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v7, v0, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f070416

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "current_sec_active_themepackage"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2f

    goto/16 :goto_22

    :cond_2f
    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Landroid/provider/Settings$System;

    const-string v12, "hidden_SEM_ACCESSIBILITY_REDUCE_TRANSPARENCY"

    invoke-static {v11, v12, v10}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    if-eqz v10, :cond_30

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v9, v10, v11}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_1a

    :cond_30
    const/4 v9, 0x0

    move-object v10, v9

    :goto_1a
    instance-of v11, v10, Ljava/lang/String;

    const-string v12, "not_supported"

    if-eqz v11, :cond_31

    check-cast v10, Ljava/lang/String;

    goto :goto_1b

    :cond_31
    move-object v10, v12

    :goto_1b
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_32

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v11, 0x0

    invoke-static {v0, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_32

    goto/16 :goto_22

    :cond_32
    const-string v10, "SeslSemBlurInfoRftr"

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v11, "android.view.SemBlurInfo$Builder"

    invoke-static {v11, v0}, Li3/x;->G(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_33

    const/4 v12, 0x0

    :try_start_0
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_20

    :catch_0
    move-exception v0

    goto :goto_1c

    :catch_1
    move-exception v0

    goto :goto_1d

    :catch_2
    move-exception v0

    goto :goto_1e

    :goto_1c
    const-string v12, "semCreateBlurBuilder InstantiationException"

    invoke-static {v10, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    :goto_1d
    const-string v12, "semCreateBlurBuilder InvocationTargetException"

    invoke-static {v10, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    :goto_1e
    const-string v12, "semCreateBlurBuilder IllegalAccessException"

    invoke-static {v10, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    :goto_1f
    move-object v0, v9

    :goto_20
    if-eqz v0, :cond_38

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v10

    const-string v12, "hidden_setRadius"

    invoke-static {v11, v12, v10}, Li3/x;->K(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    if-eqz v10, :cond_34

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 v12, 0x78

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v0, v10, v12}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    const-string v10, "hidden_setBackgroundColor"

    invoke-static {v11, v10, v9}, Li3/x;->K(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    if-eqz v9, :cond_35

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v9, v7}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    const-string v9, "hidden_setBackgroundCornerRadius"

    invoke-static {v11, v9, v7}, Li3/x;->K(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v9, 0x1

    if-eqz v7, :cond_36

    invoke-virtual {v7, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v7, v5}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    const-string v5, "hidden_build"

    const/4 v7, 0x0

    new-array v10, v7, [Ljava/lang/Class;

    invoke-static {v11, v5, v10}, Li3/x;->K(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_37

    invoke-virtual {v5, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v5, v7}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_1
    const-string v5, "android.view.SemBlurInfo"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-class v7, Landroid/view/View;

    const-string v9, "hidden_semSetBlurInfo"

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-static {v7, v9, v5}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_37

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v5, v0}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_21

    :catch_3
    move-exception v0

    const-string v5, "SeslViewReflector"

    const-string v6, "semSetBlurInfo ClassNotFoundException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_37
    :goto_21
    iget-object v0, v1, Lk/x0;->e:Lk/l0;

    if-eqz v0, :cond_38

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_38
    :goto_22
    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v2, 0x1

    invoke-static {v4, v2}, Lk/t0;->b(Landroid/widget/PopupWindow;Z)V

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, v1, Lk/x0;->s:Lk/w0;

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v1, Lk/x0;->x:Landroid/graphics/Rect;

    invoke-static {v4, v0}, Lk/t0;->a(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    iget-object v0, v1, Lk/x0;->o:Landroid/view/View;

    iget v2, v1, Lk/x0;->h:I

    iget v5, v1, Lk/x0;->i:I

    iget v6, v1, Lk/x0;->l:I

    invoke-virtual {v4, v0, v2, v5, v6}, Lk/z;->showAsDropDown(Landroid/view/View;III)V

    iget-object v0, v1, Lk/x0;->e:Lk/l0;

    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-boolean v0, v1, Lk/x0;->y:Z

    if-eqz v0, :cond_39

    iget-object v0, v1, Lk/x0;->e:Lk/l0;

    invoke-virtual {v0}, Lk/l0;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_39
    iget-object v0, v1, Lk/x0;->e:Lk/l0;

    if-eqz v0, :cond_3a

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lk/l0;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_3a
    iget-boolean v0, v1, Lk/x0;->y:Z

    if-nez v0, :cond_3b

    iget-object v0, v1, Lk/x0;->v:Landroid/os/Handler;

    iget-object v1, v1, Lk/x0;->u:Lk/u0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3b
    :goto_23
    return-void
.end method
