.class public Lj/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lj/i;

.field public final c:Z

.field public final d:I

.field public final e:I

.field public f:Landroid/view/View;

.field public g:I

.field public h:Z

.field public i:Lj/t;

.field public j:Lj/z;

.field public k:Landroid/widget/PopupWindow$OnDismissListener;

.field public final l:Z

.field public final m:Lj/q;


# direct methods
.method public constructor <init>(IILandroid/content/Context;Landroid/view/View;Lj/i;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    iput v0, p0, Lj/s;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj/s;->l:Z

    new-instance v0, Lj/q;

    invoke-direct {v0, p0}, Lj/q;-><init>(Lj/s;)V

    iput-object v0, p0, Lj/s;->m:Lj/q;

    iput-object p3, p0, Lj/s;->a:Landroid/content/Context;

    iput-object p5, p0, Lj/s;->b:Lj/i;

    iput-object p4, p0, Lj/s;->f:Landroid/view/View;

    iput-boolean p6, p0, Lj/s;->c:Z

    iput p1, p0, Lj/s;->d:I

    iput p2, p0, Lj/s;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lj/z;
    .locals 9

    iget-object v0, p0, Lj/s;->j:Lj/z;

    if-nez v0, :cond_1

    const-string v0, "window"

    iget-object v1, p0, Lj/s;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-static {v0, v2}, Lj/r;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    new-instance v0, Lj/z;

    iget-object v6, p0, Lj/s;->f:Landroid/view/View;

    iget v4, p0, Lj/s;->e:I

    iget-boolean v8, p0, Lj/s;->c:Z

    iget-object v5, p0, Lj/s;->a:Landroid/content/Context;

    iget-object v7, p0, Lj/s;->b:Lj/i;

    iget v3, p0, Lj/s;->d:I

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lj/z;-><init>(IILandroid/content/Context;Landroid/view/View;Lj/i;Z)V

    iget-boolean v1, p0, Lj/s;->l:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lj/z;->n:Z

    :cond_0
    iget-object v1, p0, Lj/s;->m:Lj/q;

    iput-object v1, v0, Lj/z;->q:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v1, p0, Lj/s;->f:Landroid/view/View;

    iput-object v1, v0, Lj/z;->r:Landroid/view/View;

    iget-object v1, p0, Lj/s;->i:Lj/t;

    iput-object v1, v0, Lj/z;->t:Lj/t;

    iget-boolean v1, p0, Lj/s;->h:Z

    iget-object v2, v0, Lj/z;->f:Lj/f;

    iput-boolean v1, v2, Lj/f;->g:Z

    iget v1, p0, Lj/s;->g:I

    iput v1, v0, Lj/z;->y:I

    iput-object v0, p0, Lj/s;->j:Lj/z;

    :cond_1
    iget-object p0, p0, Lj/s;->j:Lj/z;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lj/s;->j:Lj/z;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj/z;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lj/s;->j:Lj/z;

    iget-object p0, p0, Lj/s;->k:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public final d(ZZ)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lj/s;->a()Lj/z;

    move-result-object v1

    iput-boolean p2, v1, Lj/z;->z:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lj/s;->f:Landroid/view/View;

    sget-object v2, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-ne p1, p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object p0, p0, Lj/s;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07041a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    if-eqz p1, :cond_1

    iget-object p1, v1, Lj/z;->k:Lk/B0;

    iput v2, p1, Lk/x0;->h:I

    goto :goto_1

    :cond_1
    rsub-int/lit8 p1, v2, 0x0

    iget-object v2, v1, Lj/z;->k:Lk/B0;

    iput p1, v2, Lk/x0;->h:I

    :goto_1
    iget-object p1, v1, Lj/z;->k:Lk/B0;

    invoke-virtual {p1, v0}, Lk/x0;->m(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 p1, 0x42400000    # 48.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    float-to-int p0, p0

    new-instance p1, Landroid/graphics/Rect;

    rsub-int/lit8 v2, p0, 0x0

    invoke-direct {p1, v2, v2, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, v1, Lj/z;->c:Landroid/graphics/Rect;

    :cond_2
    invoke-virtual {v1}, Lj/z;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-boolean p0, v1, Lj/z;->v:Z

    if-nez p0, :cond_c

    iget-object p0, v1, Lj/z;->r:Landroid/view/View;

    if-eqz p0, :cond_c

    iput-object p0, v1, Lj/z;->s:Landroid/view/View;

    iget-boolean p0, v1, Lj/z;->n:Z

    iget-object p1, v1, Lj/z;->k:Lk/B0;

    if-nez p0, :cond_4

    iget-object v2, p1, Lk/x0;->z:Lk/z;

    if-eqz v2, :cond_4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/widget/PopupWindow;

    const-string v5, "setAllowScrollingAnchorParent"

    invoke-static {v4, v5, v3}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v3, p0}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p0, p1, Lk/x0;->z:Lk/z;

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object v1, p1, Lk/x0;->p:Landroid/widget/AdapterView$OnItemClickListener;

    iput-boolean p2, p1, Lk/x0;->y:Z

    iget-object p0, p1, Lk/x0;->z:Lk/z;

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object p0, v1, Lj/z;->s:Landroid/view/View;

    iget-object v2, v1, Lj/z;->u:Landroid/view/ViewTreeObserver;

    if-nez v2, :cond_5

    move v2, p2

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, v1, Lj/z;->u:Landroid/view/ViewTreeObserver;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lj/z;->o:LR1/e;

    invoke-virtual {v3, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_6
    iget-object v2, v1, Lj/z;->p:LS1/m;

    invoke-virtual {p0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iput-object p0, p1, Lk/x0;->o:Landroid/view/View;

    iget p0, v1, Lj/z;->y:I

    iput p0, p1, Lk/x0;->l:I

    iget-boolean p0, v1, Lj/z;->w:Z

    iget-object v2, v1, Lj/z;->d:Landroid/content/Context;

    iget-object v3, v1, Lj/z;->f:Lj/f;

    if-nez p0, :cond_7

    iget p0, v1, Lj/z;->h:I

    invoke-static {v3, v2, p0}, Lj/z;->i(Lj/f;Landroid/content/Context;I)I

    move-result p0

    iput p0, v1, Lj/z;->x:I

    iput-boolean p2, v1, Lj/z;->w:Z

    :cond_7
    iget p0, v1, Lj/z;->x:I

    invoke-virtual {p1, p0}, Lk/x0;->q(I)V

    const/4 p0, 0x2

    iget-object p2, p1, Lk/x0;->z:Lk/z;

    invoke-virtual {p2, p0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object p0, v1, Lj/z;->c:Landroid/graphics/Rect;

    const/4 p2, 0x0

    if-eqz p0, :cond_8

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_8
    move-object v4, p2

    :goto_3
    iput-object v4, p1, Lk/x0;->x:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lk/x0;->r()V

    iget-object p0, p1, Lk/x0;->e:Lk/l0;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v4, v1, Lj/z;->l:Z

    if-eqz v4, :cond_9

    move-object v5, p2

    goto :goto_4

    :cond_9
    move-object v5, p0

    :goto_4
    iput-object v5, v1, Lj/z;->m:Lk/l0;

    iget-boolean v5, v1, Lj/z;->z:Z

    if-eqz v5, :cond_b

    iget-object v1, v1, Lj/z;->e:Lj/i;

    iget-object v5, v1, Lj/i;->m:Ljava/lang/CharSequence;

    if-eqz v5, :cond_b

    if-nez v4, :cond_b

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0d0097

    invoke-virtual {v2, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v4, 0x1020016

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_a

    iget-object v1, v1, Lj/i;->m:Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v2, p2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_b
    invoke-virtual {p1, v3}, Lk/x0;->n(Landroid/widget/ListAdapter;)V

    invoke-virtual {p1}, Lk/x0;->r()V

    :goto_5
    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
