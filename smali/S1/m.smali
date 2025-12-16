.class public final LS1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LS1/m;->c:I

    iput-object p2, p0, LS1/m;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget p1, p0, LS1/m;->c:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, LS1/m;->d:Ljava/lang/Object;

    check-cast p0, LS1/n;

    iget-object p1, p0, LS1/n;->w:LA2/b;

    if-eqz p1, :cond_0

    iget-object p1, p0, LS1/n;->v:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    sget-object v0, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, LS1/n;->w:LA2/b;

    new-instance v0, LK/b;

    invoke-direct {v0, p0}, LK/b;-><init>(LA2/b;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget v0, p0, LS1/m;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LS1/m;->d:Ljava/lang/Object;

    check-cast v0, Lj/z;

    iget-object v1, v0, Lj/z;->u:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, v0, Lj/z;->u:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v1, v0, Lj/z;->u:Landroid/view/ViewTreeObserver;

    iget-object v0, v0, Lj/z;->o:LR1/e;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :pswitch_0
    iget-object p0, p0, LS1/m;->d:Ljava/lang/Object;

    check-cast p0, LS1/n;

    iget-object p1, p0, LS1/n;->w:LA2/b;

    if-eqz p1, :cond_2

    iget-object p0, p0, LS1/n;->v:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_2

    new-instance v0, LK/b;

    invoke-direct {v0, p1}, LK/b;-><init>(LA2/b;)V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
