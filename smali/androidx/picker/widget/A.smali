.class public final Landroidx/picker/widget/A;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# static fields
.field public static final synthetic f:I

.field public static final synthetic g:I


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/graphics/Rect;

.field public final c:[I

.field public d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/D;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/picker/widget/A;->a:I

    iput-object p1, p0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/A;->b:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/picker/widget/A;->c:[I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/picker/widget/A;->d:I

    return-void
.end method

.method public constructor <init>(Landroidx/picker/widget/P;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/picker/widget/A;->a:I

    iput-object p1, p0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/A;->b:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/picker/widget/A;->c:[I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/picker/widget/A;->d:I

    return-void
.end method

.method public static g(Landroid/graphics/Rect;F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public static h(Landroid/graphics/Rect;F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(IIIIILjava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    iget v0, p0, Landroidx/picker/widget/A;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/P;

    iget-object v2, v1, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0, v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v2, v1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {v0, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 p6, 0x1

    invoke-virtual {v0, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v0, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    iget-object v2, v1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object v2, p0, Landroidx/picker/widget/A;->b:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, v1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p2}, Lp0/a;->m(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p2, v1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget-object p3, p0, Landroidx/picker/widget/A;->c:[I

    invoke-virtual {p2, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p2, 0x0

    aget p2, p3, p2

    aget p3, p3, p6

    invoke-virtual {v2, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget p0, p0, Landroidx/picker/widget/A;->d:I

    if-eq p0, p1, :cond_0

    const/16 p0, 0x40

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x80

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_0
    iget-object p0, v1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-object v0

    :pswitch_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/D;

    iget-object v2, v1, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v2, v1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {v0, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    iget-object p6, v1, Landroidx/picker/widget/D;->d:Ljava/lang/String;

    invoke-virtual {v0, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTooltipText(Ljava/lang/CharSequence;)V

    const/4 p6, 0x1

    invoke-virtual {v0, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v0, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    iget-object v2, v1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object v2, p0, Landroidx/picker/widget/A;->b:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, v1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p2, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p2}, Lp0/a;->m(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p2, v1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p2, Landroidx/picker/widget/SeslNumberPicker;

    iget-object p3, p0, Landroidx/picker/widget/A;->c:[I

    invoke-virtual {p2, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p2, 0x0

    aget p2, p3, p2

    aget p3, p3, p6

    invoke-virtual {v2, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget p0, p0, Landroidx/picker/widget/A;->d:I

    if-eq p0, p1, :cond_2

    const/16 p0, 0x40

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1

    :cond_2
    const/16 p0, 0x80

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_1
    iget-object p0, v1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 2

    iget v0, p0, Landroidx/picker/widget/A;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/picker/widget/A;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Landroidx/picker/widget/A;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/picker/widget/A;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Landroidx/picker/widget/A;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/picker/widget/A;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Landroidx/picker/widget/A;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/picker/widget/A;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, v0}, Landroidx/picker/widget/A;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object p2, p0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    check-cast p2, Landroidx/picker/widget/D;

    iget-object p2, p2, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, v0}, Landroidx/picker/widget/A;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroidx/picker/widget/A;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, v0}, Landroidx/picker/widget/A;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/P;

    iget-object v0, p0, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/picker/widget/P;->l:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/picker/widget/P;->d(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/picker/widget/P;->c:Ljava/lang/String;

    invoke-static {v1, p0, v0}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroidx/picker/widget/A;->a:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, v0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/picker/widget/P;

    iget-object v3, v2, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v3, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, v2, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v4, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, v2, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v5, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, v2, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v6, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget-object v7, v2, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v7, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    iget-object v8, v2, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v8, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v8

    iget v9, v2, Landroidx/picker/widget/P;->T:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    iget v9, v2, Landroidx/picker/widget/P;->P:I

    const/high16 v11, -0x80000000

    if-eq v9, v11, :cond_1

    :cond_0
    iget-object v9, v0, Landroidx/picker/widget/A;->c:[I

    iget-object v11, v0, Landroidx/picker/widget/A;->b:Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v1, v10, :cond_6

    iget v10, v2, Landroidx/picker/widget/P;->J:I

    if-eq v1, v13, :cond_5

    if-eq v1, v12, :cond_3

    if-eq v1, v15, :cond_2

    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/A;->f()Ljava/lang/String;

    move-result-object v9

    iget v1, v2, Landroidx/picker/widget/P;->O:I

    sub-int v10, v1, v10

    sub-int/2addr v4, v3

    add-int/2addr v4, v7

    sub-int/2addr v6, v5

    add-int v5, v6, v8

    const/4 v1, 0x3

    move-object/from16 v0, p0

    move v2, v7

    move v3, v10

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Landroidx/picker/widget/A;->a(IIIIILjava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    iget v1, v2, Landroidx/picker/widget/P;->N:I

    add-int/2addr v1, v10

    sub-int/2addr v4, v3

    add-int/2addr v4, v7

    iget v3, v2, Landroidx/picker/widget/P;->O:I

    sub-int/2addr v3, v10

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    iget-object v6, v2, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v6, v2, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v6, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v5, v6, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/A;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    const v10, 0x7f1301b9

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget v0, v0, Landroidx/picker/widget/A;->d:I

    if-eq v0, v12, :cond_4

    invoke-virtual {v5, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v0, 0x40

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v5, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v0, 0x80

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_0
    invoke-virtual {v11, v7, v1, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v11, v6}, Lp0/a;->m(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v5, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v9, v14

    aget v1, v9, v13

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v5, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    move-object v0, v5

    goto/16 :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/A;->e()Ljava/lang/String;

    move-result-object v6

    sub-int/2addr v4, v3

    add-int/2addr v4, v7

    iget v1, v2, Landroidx/picker/widget/P;->N:I

    add-int v5, v1, v10

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move v2, v7

    move v3, v8

    invoke-virtual/range {v0 .. v6}, Landroidx/picker/widget/A;->a(IIIIILjava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    sub-int/2addr v4, v3

    add-int/2addr v4, v7

    sub-int/2addr v6, v5

    add-int/2addr v6, v8

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    const-class v3, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v3, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    iget-object v10, v2, Landroidx/picker/widget/P;->k:Ljava/util/Calendar;

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v5

    if-lez v5, :cond_7

    invoke-virtual {v1, v3, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_7
    invoke-virtual {v1, v3, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    iget-object v10, v2, Landroidx/picker/widget/P;->l:Ljava/util/Calendar;

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v5

    if-gez v5, :cond_8

    invoke-virtual {v1, v3, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v1, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v5, v2, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, LW1/a;->E(Landroid/content/res/Resources;)F

    move-result v5

    invoke-virtual {v11, v7, v8, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v11, v5}, Landroidx/picker/widget/A;->h(Landroid/graphics/Rect;F)V

    invoke-virtual {v1, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lp0/a;->m(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v3, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v9, v14

    aget v6, v9, v13

    invoke-virtual {v11, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    invoke-static {v11, v5}, Landroidx/picker/widget/A;->h(Landroid/graphics/Rect;F)V

    invoke-virtual {v1, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget v0, v0, Landroidx/picker/widget/A;->d:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_9

    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1

    :cond_9
    const/16 v0, 0x80

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v2, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    iget-object v3, v2, Landroidx/picker/widget/P;->l:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-gez v3, :cond_a

    const/16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_a
    iget-object v2, v2, Landroidx/picker/widget/P;->k:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_b

    const/16 v0, 0x2000

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_b
    move-object v0, v1

    :cond_c
    :goto_2
    return-object v0

    :pswitch_0
    iget-object v2, v0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/picker/widget/D;

    iget-object v3, v2, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v3, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, v2, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v4, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, v2, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v5, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, v2, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v6, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget-object v7, v2, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v7, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    iget-object v8, v2, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v8, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v8

    iget v9, v2, Landroidx/picker/widget/D;->c0:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_d

    iget v9, v2, Landroidx/picker/widget/D;->Z:I

    const/high16 v11, -0x80000000

    if-eq v9, v11, :cond_e

    :cond_d
    iget-object v9, v0, Landroidx/picker/widget/A;->c:[I

    iget-object v11, v0, Landroidx/picker/widget/A;->b:Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v1, v10, :cond_15

    iget v10, v2, Landroidx/picker/widget/D;->S:I

    if-eq v1, v13, :cond_14

    if-eq v1, v12, :cond_10

    if-eq v1, v15, :cond_f

    :cond_e
    invoke-super/range {p0 .. p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_6

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/A;->f()Ljava/lang/String;

    move-result-object v9

    iget v1, v2, Landroidx/picker/widget/D;->Y:I

    sub-int v10, v1, v10

    sub-int/2addr v4, v3

    add-int/2addr v4, v7

    sub-int/2addr v6, v5

    add-int v5, v6, v8

    const/4 v1, 0x3

    move-object/from16 v0, p0

    move v2, v7

    move v3, v10

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Landroidx/picker/widget/A;->a(IIIIILjava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_6

    :cond_10
    iget v1, v2, Landroidx/picker/widget/D;->X:I

    add-int/2addr v1, v10

    sub-int/2addr v4, v3

    add-int/2addr v4, v7

    iget v3, v2, Landroidx/picker/widget/D;->Y:I

    sub-int/2addr v3, v10

    iget-object v5, v2, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    iget-object v6, v2, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v6, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v5, v6, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget v8, v0, Landroidx/picker/widget/A;->d:I

    if-eq v8, v12, :cond_11

    invoke-virtual {v5, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v8, 0x40

    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_3

    :cond_11
    invoke-virtual {v5, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v8, 0x80

    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_3
    iget-boolean v8, v2, Landroidx/picker/widget/D;->g0:Z

    if-nez v8, :cond_12

    const-class v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v14}, Landroidx/picker/widget/A;->d(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Landroidx/picker/widget/D;->d:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTooltipText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    invoke-virtual {v5, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    goto :goto_4

    :cond_12
    iget-object v2, v2, Landroidx/picker/widget/D;->v:Landroidx/picker/widget/r;

    if-eqz v2, :cond_13

    invoke-virtual {v0, v14}, Landroidx/picker/widget/A;->d(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_4
    invoke-virtual {v11, v7, v1, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v6}, Lp0/a;->m(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v5, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v9, v14

    aget v1, v9, v13

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v5, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    move-object v0, v5

    goto/16 :goto_6

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/A;->e()Ljava/lang/String;

    move-result-object v6

    sub-int/2addr v4, v3

    add-int/2addr v4, v7

    iget v1, v2, Landroidx/picker/widget/D;->X:I

    add-int v5, v1, v10

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move v2, v7

    move v3, v8

    invoke-virtual/range {v0 .. v6}, Landroidx/picker/widget/A;->a(IIIIILjava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_6

    :cond_15
    sub-int/2addr v4, v3

    add-int/2addr v4, v7

    sub-int/2addr v6, v5

    add-int/2addr v6, v8

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    const-class v3, Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v3, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    iget-boolean v5, v2, Landroidx/picker/widget/D;->Q:Z

    if-nez v5, :cond_16

    iget v5, v2, Landroidx/picker/widget/D;->o:I

    iget v10, v2, Landroidx/picker/widget/D;->m:I

    if-le v5, v10, :cond_17

    :cond_16
    invoke-virtual {v1, v3, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_17
    invoke-virtual {v1, v3, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    iget-boolean v5, v2, Landroidx/picker/widget/D;->Q:Z

    if-nez v5, :cond_18

    iget v5, v2, Landroidx/picker/widget/D;->o:I

    iget v10, v2, Landroidx/picker/widget/D;->n:I

    if-ge v5, v10, :cond_19

    :cond_18
    invoke-virtual {v1, v3, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_19
    invoke-virtual {v3}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v1, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v5, v2, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, LW1/a;->E(Landroid/content/res/Resources;)F

    move-result v5

    invoke-virtual {v11, v7, v8, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v11, v5}, Landroidx/picker/widget/A;->g(Landroid/graphics/Rect;F)V

    invoke-virtual {v1, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lp0/a;->m(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v3, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v9, v14

    aget v6, v9, v13

    invoke-virtual {v11, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    invoke-static {v11, v5}, Landroidx/picker/widget/A;->g(Landroid/graphics/Rect;F)V

    invoke-virtual {v1, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget v0, v0, Landroidx/picker/widget/A;->d:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1a

    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_5

    :cond_1a
    const/16 v0, 0x80

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_5
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, v2, Landroidx/picker/widget/D;->Q:Z

    if-nez v0, :cond_1b

    iget v0, v2, Landroidx/picker/widget/D;->o:I

    iget v3, v2, Landroidx/picker/widget/D;->n:I

    if-ge v0, v3, :cond_1c

    :cond_1b
    const/16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1c
    iget-boolean v0, v2, Landroidx/picker/widget/D;->Q:Z

    if-nez v0, :cond_1d

    iget v0, v2, Landroidx/picker/widget/D;->o:I

    iget v2, v2, Landroidx/picker/widget/D;->m:I

    if-le v0, v2, :cond_1e

    :cond_1d
    const/16 v0, 0x2000

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1e
    move-object v0, v1

    :cond_1f
    :goto_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d(Z)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/D;

    iget v0, p0, Landroidx/picker/widget/D;->o:I

    iget-boolean v1, p0, Landroidx/picker/widget/D;->Q:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/D;->i(I)I

    move-result v0

    :cond_0
    iget v1, p0, Landroidx/picker/widget/D;->n:I

    if-gt v0, v1, :cond_3

    iget-object v1, p0, Landroidx/picker/widget/D;->v:Landroidx/picker/widget/r;

    if-eqz v1, :cond_1

    check-cast v1, Landroidx/picker/widget/n;

    iget-object v1, v1, Landroidx/picker/widget/n;->a:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, v1, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->u:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/D;->l:[Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/picker/widget/D;->f(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v2, p0, Landroidx/picker/widget/D;->m:I

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/picker/widget/D;->d:Ljava/lang/String;

    invoke-static {p1, p0, v0}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroidx/picker/widget/A;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/P;

    iget-object v0, p0, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/picker/widget/P;->k:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/picker/widget/P;->d(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/picker/widget/P;->c:Ljava/lang/String;

    invoke-static {v1, p0, v0}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/D;

    iget v0, p0, Landroidx/picker/widget/D;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v2, p0, Landroidx/picker/widget/D;->q:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget v1, p0, Landroidx/picker/widget/D;->o:I

    sub-int/2addr v1, v0

    iget-boolean v0, p0, Landroidx/picker/widget/D;->Q:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Landroidx/picker/widget/D;->i(I)I

    move-result v1

    :cond_2
    iget v0, p0, Landroidx/picker/widget/D;->m:I

    if-lt v1, v0, :cond_5

    iget-object v2, p0, Landroidx/picker/widget/D;->v:Landroidx/picker/widget/r;

    if-eqz v2, :cond_3

    check-cast v2, Landroidx/picker/widget/n;

    iget-object p0, v2, Landroidx/picker/widget/n;->a:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->u:[Ljava/lang/String;

    aget-object p0, p0, v1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Landroidx/picker/widget/D;->l:[Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Landroidx/picker/widget/D;->f(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    sub-int/2addr v1, v0

    aget-object p0, v2, v1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroidx/picker/widget/A;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/P;

    iget-object v0, p0, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/picker/widget/P;->l:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/picker/widget/P;->d(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/picker/widget/P;->c:Ljava/lang/String;

    invoke-static {v1, p0, v0}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/D;

    iget v0, p0, Landroidx/picker/widget/D;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v2, p0, Landroidx/picker/widget/D;->q:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget v1, p0, Landroidx/picker/widget/D;->o:I

    add-int/2addr v1, v0

    iget-boolean v0, p0, Landroidx/picker/widget/D;->Q:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Landroidx/picker/widget/D;->i(I)I

    move-result v1

    :cond_2
    iget v0, p0, Landroidx/picker/widget/D;->n:I

    if-gt v1, v0, :cond_5

    iget-object v0, p0, Landroidx/picker/widget/D;->v:Landroidx/picker/widget/r;

    if-eqz v0, :cond_3

    check-cast v0, Landroidx/picker/widget/n;

    iget-object p0, v0, Landroidx/picker/widget/n;->a:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->u:[Ljava/lang/String;

    aget-object p0, p0, v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroidx/picker/widget/D;->l:[Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Landroidx/picker/widget/D;->f(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    iget p0, p0, Landroidx/picker/widget/D;->m:I

    sub-int/2addr v1, p0

    aget-object p0, v0, v1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 6

    iget v0, p0, Landroidx/picker/widget/A;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v5, :cond_1

    if-eq p2, v4, :cond_1

    if-eq p2, v3, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0, p2, v1}, Landroidx/picker/widget/A;->b(Ljava/lang/String;ILjava/util/ArrayList;)V

    :goto_0
    move-object p0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, v5, v1}, Landroidx/picker/widget/A;->b(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {p0, v0, v4, v1}, Landroidx/picker/widget/A;->b(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {p0, v0, v3, v1}, Landroidx/picker/widget/A;->b(Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_0

    :goto_1
    return-object p0

    :pswitch_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p2, v2, :cond_5

    if-eq p2, v5, :cond_4

    if-eq p2, v4, :cond_4

    if-eq p2, v3, :cond_4

    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v0, p2, v1}, Landroidx/picker/widget/A;->b(Ljava/lang/String;ILjava/util/ArrayList;)V

    :goto_2
    move-object p0, v1

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v0, v5, v1}, Landroidx/picker/widget/A;->b(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {p0, v0, v4, v1}, Landroidx/picker/widget/A;->b(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {p0, v0, v3, v1}, Landroidx/picker/widget/A;->b(Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_2

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(IILjava/lang/String;)V
    .locals 1

    iget v0, p0, Landroidx/picker/widget/A;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/P;

    iget-object v0, p0, Landroidx/picker/widget/P;->I0:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p3, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p3}, Landroid/view/View;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    iget-object p3, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p3, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0, p0, p2}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/D;

    iget-object v0, p0, Landroidx/picker/widget/D;->Z0:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p3, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p3}, Landroid/view/View;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    iget-object p3, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p3, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p0, p2}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(II)V
    .locals 3

    iget v0, p0, Landroidx/picker/widget/A;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/P;

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    iget-object v1, v1, Landroidx/picker/widget/P;->l:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gez v0, :cond_3

    invoke-virtual {p0}, Landroidx/picker/widget/A;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/picker/widget/A;->i(IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, v1, Landroidx/picker/widget/P;->I0:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object p2, v1, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/picker/widget/A;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p0, 0x7f1301b9

    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, v1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    invoke-virtual {p1, p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    invoke-virtual {p0, p0, p1}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    iget-object v1, v1, Landroidx/picker/widget/P;->k:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroidx/picker/widget/A;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/picker/widget/A;->i(IILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/D;

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    goto :goto_1

    :cond_4
    iget-boolean v0, v1, Landroidx/picker/widget/D;->Q:Z

    if-nez v0, :cond_5

    iget v0, v1, Landroidx/picker/widget/D;->o:I

    iget v1, v1, Landroidx/picker/widget/D;->n:I

    if-ge v0, v1, :cond_9

    :cond_5
    invoke-virtual {p0}, Landroidx/picker/widget/A;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/picker/widget/A;->i(IILjava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object p0, v1, Landroidx/picker/widget/D;->Z0:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    iget-object p1, v1, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p1, v1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p1, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    invoke-virtual {p1, p1, p0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_1

    :cond_7
    iget-boolean v0, v1, Landroidx/picker/widget/D;->Q:Z

    if-nez v0, :cond_8

    iget v0, v1, Landroidx/picker/widget/D;->o:I

    iget v1, v1, Landroidx/picker/widget/D;->m:I

    if-le v0, v1, :cond_9

    :cond_8
    invoke-virtual {p0}, Landroidx/picker/widget/A;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/picker/widget/A;->i(IILjava/lang/String;)V

    :cond_9
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 12

    iget v0, p0, Landroidx/picker/widget/A;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/P;

    iget-boolean v1, v0, Landroidx/picker/widget/P;->f0:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v3, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v3, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    const/4 v4, -0x1

    const/high16 v5, -0x80000000

    const/16 v6, 0x80

    const/16 v7, 0x40

    const/4 v8, 0x1

    if-eq p1, v4, :cond_e

    const v4, 0x8000

    const/high16 v9, 0x10000

    const/16 v10, 0x10

    if-eq p1, v8, :cond_a

    const/4 v11, 0x2

    if-eq p1, v11, :cond_6

    const/4 v11, 0x3

    if-eq p1, v11, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eq p2, v10, :cond_5

    if-eq p2, v7, :cond_4

    if-eq p2, v6, :cond_2

    goto/16 :goto_2

    :cond_2
    iget p2, p0, Landroidx/picker/widget/A;->d:I

    if-ne p2, p1, :cond_13

    iput v5, p0, Landroidx/picker/widget/A;->d:I

    invoke-virtual {p0, p1, v9}, Landroidx/picker/widget/A;->j(II)V

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget p1, v0, Landroidx/picker/widget/P;->O:I

    invoke-virtual {p0, v2, p1, v1, v3}, Landroid/view/View;->invalidate(IIII)V

    :cond_3
    :goto_0
    move v2, v8

    goto/16 :goto_2

    :cond_4
    iget p2, p0, Landroidx/picker/widget/A;->d:I

    if-eq p2, p1, :cond_13

    iput p1, p0, Landroidx/picker/widget/A;->d:I

    invoke-virtual {p0, p1, v4}, Landroidx/picker/widget/A;->j(II)V

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget p1, v0, Landroidx/picker/widget/P;->O:I

    invoke-virtual {p0, v2, p1, v1, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_5
    iget-object p2, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-virtual {v0, v2}, Landroidx/picker/widget/P;->r(Z)V

    invoke-virtual {v0, v8}, Landroidx/picker/widget/P;->a(Z)V

    invoke-virtual {p0, p1, v8}, Landroidx/picker/widget/A;->j(II)V

    invoke-virtual {v0, v8}, Landroidx/picker/widget/P;->r(Z)V

    goto :goto_0

    :cond_6
    if-eq p2, v10, :cond_9

    if-eq p2, v7, :cond_8

    if-eq p2, v6, :cond_7

    goto/16 :goto_2

    :cond_7
    iget p2, p0, Landroidx/picker/widget/A;->d:I

    if-ne p2, p1, :cond_13

    iput v5, p0, Landroidx/picker/widget/A;->d:I

    invoke-virtual {p0, p1, v9}, Landroidx/picker/widget/A;->j(II)V

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget p1, v0, Landroidx/picker/widget/P;->N:I

    iget p2, v0, Landroidx/picker/widget/P;->O:I

    invoke-virtual {p0, v2, p1, v1, p2}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_8
    iget p2, p0, Landroidx/picker/widget/A;->d:I

    if-eq p2, p1, :cond_13

    iput p1, p0, Landroidx/picker/widget/A;->d:I

    invoke-virtual {p0, p1, v4}, Landroidx/picker/widget/A;->j(II)V

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget p1, v0, Landroidx/picker/widget/P;->N:I

    iget p2, v0, Landroidx/picker/widget/P;->O:I

    invoke-virtual {p0, v2, p1, v1, p2}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_9
    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {v0}, Landroidx/picker/widget/P;->s()V

    goto :goto_0

    :cond_a
    if-eq p2, v10, :cond_d

    if-eq p2, v7, :cond_c

    if-eq p2, v6, :cond_b

    goto/16 :goto_2

    :cond_b
    iget p2, p0, Landroidx/picker/widget/A;->d:I

    if-ne p2, p1, :cond_13

    iput v5, p0, Landroidx/picker/widget/A;->d:I

    invoke-virtual {p0, p1, v9}, Landroidx/picker/widget/A;->j(II)V

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget p1, v0, Landroidx/picker/widget/P;->N:I

    invoke-virtual {p0, v2, v2, v1, p1}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    :cond_c
    iget p2, p0, Landroidx/picker/widget/A;->d:I

    if-eq p2, p1, :cond_13

    iput p1, p0, Landroidx/picker/widget/A;->d:I

    invoke-virtual {p0, p1, v4}, Landroidx/picker/widget/A;->j(II)V

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget p1, v0, Landroidx/picker/widget/P;->N:I

    invoke-virtual {p0, v2, v2, v1, p1}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    :cond_d
    iget-object p2, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-virtual {v0, v2}, Landroidx/picker/widget/P;->r(Z)V

    invoke-virtual {v0, v2}, Landroidx/picker/widget/P;->a(Z)V

    invoke-virtual {p0, p1, v8}, Landroidx/picker/widget/A;->j(II)V

    invoke-virtual {v0, v8}, Landroidx/picker/widget/P;->r(Z)V

    goto/16 :goto_0

    :cond_e
    const-class v1, Landroid/view/View;

    if-eq p2, v7, :cond_12

    if-eq p2, v6, :cond_11

    const/16 v1, 0x1000

    if-eq p2, v1, :cond_10

    const/16 v1, 0x2000

    if-eq p2, v1, :cond_f

    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v2

    goto/16 :goto_2

    :cond_f
    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_13

    iget-object p0, v0, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    iget-object p1, v0, Landroidx/picker/widget/P;->k:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p0

    if-lez p0, :cond_13

    invoke-virtual {v0, v2}, Landroidx/picker/widget/P;->r(Z)V

    invoke-virtual {v0, v2}, Landroidx/picker/widget/P;->a(Z)V

    invoke-virtual {v0, v8}, Landroidx/picker/widget/P;->r(Z)V

    goto/16 :goto_0

    :cond_10
    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_13

    iget-object p0, v0, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    iget-object p1, v0, Landroidx/picker/widget/P;->l:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p0

    if-gez p0, :cond_13

    invoke-virtual {v0, v2}, Landroidx/picker/widget/P;->r(Z)V

    invoke-virtual {v0, v8}, Landroidx/picker/widget/P;->a(Z)V

    invoke-virtual {v0, v8}, Landroidx/picker/widget/P;->r(Z)V

    goto/16 :goto_0

    :cond_11
    iget p2, p0, Landroidx/picker/widget/A;->d:I

    if-ne p2, p1, :cond_13

    iput v5, p0, Landroidx/picker/widget/A;->d:I

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    new-array p1, v2, [Ljava/lang/Class;

    const-string p2, "clearAccessibilityFocus"

    invoke-static {v1, p2, p1}, Li3/x;->P(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_3

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_12
    iget p2, p0, Landroidx/picker/widget/A;->d:I

    if-eq p2, p1, :cond_13

    iput p1, p0, Landroidx/picker/widget/A;->d:I

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    new-array p1, v2, [Ljava/lang/Class;

    const-string p2, "requestAccessibilityFocus"

    invoke-static {v1, p2, p1}, Li3/x;->P(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_3

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_0

    :cond_13
    :goto_2
    return v2

    :pswitch_0
    iget-object v0, p0, Landroidx/picker/widget/A;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/D;

    iget-boolean v1, v0, Landroidx/picker/widget/D;->n0:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    goto/16 :goto_5

    :cond_14
    iget-object v1, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v3, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v3, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/high16 v6, -0x80000000

    const/16 v7, 0x80

    const/16 v8, 0x40

    if-eq p1, v5, :cond_27

    const v5, 0x8000

    const/high16 v9, 0x10000

    const/16 v10, 0x10

    if-eq p1, v4, :cond_23

    const/4 v11, 0x2

    if-eq p1, v11, :cond_1a

    const/4 v11, 0x3

    if-eq p1, v11, :cond_15

    goto/16 :goto_4

    :cond_15
    if-eq p2, v10, :cond_19

    if-eq p2, v8, :cond_18

    if-eq p2, v7, :cond_16

    goto/16 :goto_5

    :cond_16
    iget p2, p0, Landroidx/picker/widget/A;->d:I

    if-ne p2, p1, :cond_2e

    iput v6, p0, Landroidx/picker/widget/A;->d:I

    invoke-virtual {p0, p1, v9}, Landroidx/picker/widget/A;->j(II)V

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    iget p1, v0, Landroidx/picker/widget/D;->Y:I

    invoke-virtual {p0, v2, p1, v1, v3}, Landroid/view/View;->invalidate(IIII)V

    :cond_17
    :goto_3
    move v2, v4

    goto/16 :goto_5

    :cond_18
    iget p2, p0, Landroidx/picker/widget/A;->d:I

    if-eq p2, p1, :cond_2e

    iput p1, p0, Landroidx/picker/widget/A;->d:I

    invoke-virtual {p0, p1, v5}, Landroidx/picker/widget/A;->j(II)V

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    iget p1, v0, Landroidx/picker/widget/D;->Y:I

    invoke-virtual {p0, v2, p1, v1, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_3

    :cond_19
    iget-object p2, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p2, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2e

    invoke-virtual {v0, v2}, Landroidx/picker/widget/D;->z(Z)V

    invoke-virtual {v0, v4}, Landroidx/picker/widget/D;->c(Z)V

    invoke-virtual {p0, p1, v4}, Landroidx/picker/widget/A;->j(II)V

    invoke-virtual {v0, v4}, Landroidx/picker/widget/D;->z(Z)V

    goto :goto_3

    :cond_1a
    iget-object v3, v0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    if-eq p2, v4, :cond_22

    if-eq p2, v11, :cond_21

    if-eq p2, v10, :cond_1f

    const/16 v10, 0x20

    if-eq p2, v10, :cond_1d

    if-eq p2, v8, :cond_1c

    if-eq p2, v7, :cond_1b

    invoke-virtual {v3, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    goto/16 :goto_5

    :cond_1b
    iget p2, p0, Landroidx/picker/widget/A;->d:I

    if-ne p2, p1, :cond_2e

    iput v6, p0, Landroidx/picker/widget/A;->d:I

    invoke-virtual {p0, p1, v9}, Landroidx/picker/widget/A;->j(II)V

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    iget p1, v0, Landroidx/picker/widget/D;->X:I

    iget p2, v0, Landroidx/picker/widget/D;->Y:I

    invoke-virtual {p0, v2, p1, v1, p2}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_3

    :cond_1c
    iget p2, p0, Landroidx/picker/widget/A;->d:I

    if-eq p2, p1, :cond_2e

    iput p1, p0, Landroidx/picker/widget/A;->d:I

    invoke-virtual {p0, p1, v5}, Landroidx/picker/widget/A;->j(II)V

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    iget p1, v0, Landroidx/picker/widget/D;->X:I

    iget p2, v0, Landroidx/picker/widget/D;->Y:I

    invoke-virtual {p0, v2, p1, v1, p2}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_3

    :cond_1d
    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2e

    iput-boolean v4, v0, Landroidx/picker/widget/D;->U:Z

    iget-boolean p0, v0, Landroidx/picker/widget/D;->g0:Z

    if-nez p0, :cond_1e

    goto :goto_3

    :cond_1e
    iput-boolean v4, v0, Landroidx/picker/widget/D;->m0:Z

    goto/16 :goto_3

    :cond_1f
    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2e

    iget-boolean p0, v0, Landroidx/picker/widget/D;->g0:Z

    if-nez p0, :cond_20

    goto/16 :goto_3

    :cond_20
    invoke-virtual {v0}, Landroidx/picker/widget/D;->x()V

    goto/16 :goto_3

    :cond_21
    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2e

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result p0

    if-eqz p0, :cond_2e

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    goto/16 :goto_3

    :cond_22
    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2e

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result p0

    if-nez p0, :cond_2e

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto/16 :goto_5

    :cond_23
    if-eq p2, v10, :cond_26

    if-eq p2, v8, :cond_25

    if-eq p2, v7, :cond_24

    goto/16 :goto_5

    :cond_24
    iget p2, p0, Landroidx/picker/widget/A;->d:I

    if-ne p2, p1, :cond_2e

    iput v6, p0, Landroidx/picker/widget/A;->d:I

    invoke-virtual {p0, p1, v9}, Landroidx/picker/widget/A;->j(II)V

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    iget p1, v0, Landroidx/picker/widget/D;->X:I

    invoke-virtual {p0, v2, v2, v1, p1}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_3

    :cond_25
    iget p2, p0, Landroidx/picker/widget/A;->d:I

    if-eq p2, p1, :cond_2e

    iput p1, p0, Landroidx/picker/widget/A;->d:I

    invoke-virtual {p0, p1, v5}, Landroidx/picker/widget/A;->j(II)V

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    iget p1, v0, Landroidx/picker/widget/D;->X:I

    invoke-virtual {p0, v2, v2, v1, p1}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_3

    :cond_26
    iget-object p2, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p2, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2e

    invoke-virtual {v0, v2}, Landroidx/picker/widget/D;->z(Z)V

    invoke-virtual {v0, v2}, Landroidx/picker/widget/D;->c(Z)V

    invoke-virtual {p0, p1, v4}, Landroidx/picker/widget/A;->j(II)V

    invoke-virtual {v0, v4}, Landroidx/picker/widget/D;->z(Z)V

    goto/16 :goto_3

    :cond_27
    const-class v1, Landroid/view/View;

    if-eq p2, v8, :cond_2d

    if-eq p2, v7, :cond_2c

    const/16 v1, 0x1000

    if-eq p2, v1, :cond_2a

    const/16 v1, 0x2000

    if-eq p2, v1, :cond_28

    :goto_4
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v2

    goto/16 :goto_5

    :cond_28
    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2e

    iget-boolean p0, v0, Landroidx/picker/widget/D;->Q:Z

    if-nez p0, :cond_29

    iget p0, v0, Landroidx/picker/widget/D;->o:I

    iget p1, v0, Landroidx/picker/widget/D;->m:I

    if-le p0, p1, :cond_2e

    :cond_29
    invoke-virtual {v0, v2}, Landroidx/picker/widget/D;->z(Z)V

    invoke-virtual {v0, v2}, Landroidx/picker/widget/D;->c(Z)V

    invoke-virtual {v0, v4}, Landroidx/picker/widget/D;->z(Z)V

    goto/16 :goto_3

    :cond_2a
    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2e

    iget-boolean p0, v0, Landroidx/picker/widget/D;->Q:Z

    if-nez p0, :cond_2b

    iget p0, v0, Landroidx/picker/widget/D;->o:I

    iget p1, v0, Landroidx/picker/widget/D;->n:I

    if-ge p0, p1, :cond_2e

    :cond_2b
    invoke-virtual {v0, v2}, Landroidx/picker/widget/D;->z(Z)V

    invoke-virtual {v0, v4}, Landroidx/picker/widget/D;->c(Z)V

    invoke-virtual {v0, v4}, Landroidx/picker/widget/D;->z(Z)V

    goto/16 :goto_3

    :cond_2c
    iget p2, p0, Landroidx/picker/widget/A;->d:I

    if-ne p2, p1, :cond_2e

    iput v6, p0, Landroidx/picker/widget/A;->d:I

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    new-array p1, v2, [Ljava/lang/Class;

    const-string p2, "clearAccessibilityFocus"

    invoke-static {v1, p2, p1}, Li3/x;->P(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_17

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_2d
    iget p2, p0, Landroidx/picker/widget/A;->d:I

    if-eq p2, p1, :cond_2e

    iput p1, p0, Landroidx/picker/widget/A;->d:I

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    new-array p1, v2, [Ljava/lang/Class;

    const-string p2, "requestAccessibilityFocus"

    invoke-static {v1, p2, p1}, Li3/x;->P(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_17

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_17

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_3

    :cond_2e
    :goto_5
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
