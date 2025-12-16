.class Landroidx/picker/widget/SeslSpinningDatePickerSpinner;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslSpinningDatePickerSpinner$CustomEditText;
    }
.end annotation


# static fields
.field public static final d:Landroidx/picker/widget/f;


# instance fields
.field public final c:Landroidx/picker/widget/P;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/picker/widget/f;

    invoke-direct {v0}, Landroidx/picker/widget/f;-><init>()V

    sput-object v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->d:Landroidx/picker/widget/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroidx/picker/widget/P;

    invoke-direct {v0, p0, p1, p2}, Landroidx/picker/widget/P;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinner;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    return-void
.end method

.method public static a()[I
    .locals 1

    sget-object v0, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    return-object v0
.end method


# virtual methods
.method public final computeScroll()V
    .locals 3

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    iget-boolean v0, p0, Landroidx/picker/widget/P;->G0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/P;->y:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Landroidx/picker/widget/P;->z:I

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroidx/picker/widget/P;->z:I

    :cond_2
    iget v2, p0, Landroidx/picker/widget/P;->z:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Landroidx/picker/widget/P;->o(I)V

    iput v1, p0, Landroidx/picker/widget/P;->z:I

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/P;->l(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final computeVerticalScrollExtent()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public final computeVerticalScrollOffset()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    iget p0, p0, Landroidx/picker/widget/P;->v:I

    return p0
.end method

.method public final computeVerticalScrollRange()I
    .locals 5

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Landroidx/picker/widget/P;->l:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/picker/widget/P;->k:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iget p0, p0, Landroidx/picker/widget/P;->t:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    iget-object v0, p0, Landroidx/picker/widget/P;->I0:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Landroidx/picker/widget/P;->N:I

    const/4 v3, 0x1

    if-gt v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iget v2, p0, Landroidx/picker/widget/P;->O:I

    if-gt v2, v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 v2, 0x100

    const/16 v4, 0x80

    const/4 v5, 0x7

    const/high16 v6, -0x80000000

    if-eq p1, v5, :cond_4

    const/16 v5, 0x9

    if-eq p1, v5, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    goto :goto_3

    :cond_2
    iget p1, p0, Landroidx/picker/widget/P;->P:I

    if-eq p1, v6, :cond_6

    if-ne p1, v6, :cond_3

    goto :goto_1

    :cond_3
    iput v6, p0, Landroidx/picker/widget/P;->P:I

    invoke-virtual {p0}, Landroidx/picker/widget/P;->e()Landroidx/picker/widget/A;

    move-result-object p0

    invoke-virtual {p0, v6, v4}, Landroidx/picker/widget/A;->j(II)V

    invoke-virtual {p0, p1, v2}, Landroidx/picker/widget/A;->j(II)V

    :goto_1
    move v1, v3

    goto :goto_3

    :cond_4
    iget p1, p0, Landroidx/picker/widget/P;->P:I

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    iput v0, p0, Landroidx/picker/widget/P;->P:I

    invoke-virtual {p0}, Landroidx/picker/widget/P;->e()Landroidx/picker/widget/A;

    move-result-object p0

    invoke-virtual {p0, v0, v4}, Landroidx/picker/widget/A;->j(II)V

    invoke-virtual {p0, p1, v2}, Landroidx/picker/widget/A;->j(II)V

    :goto_2
    if-eq v0, v6, :cond_6

    goto :goto_1

    :cond_6
    :goto_3
    return v1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    iget-object v3, v0, Landroidx/picker/widget/P;->k:Ljava/util/Calendar;

    iget-object v4, v0, Landroidx/picker/widget/P;->l:Ljava/util/Calendar;

    iget-object v5, v0, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/16 v8, 0x42

    const/4 v9, 0x2

    if-eq v2, v8, :cond_b

    const/16 v10, 0xa0

    if-eq v2, v10, :cond_b

    iget-object v10, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v10, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-nez v1, :cond_11

    const/16 v0, 0x15

    if-eq v2, v0, :cond_1

    const/16 v0, 0x16

    if-eq v2, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v10, v8}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0, v8}, Landroid/view/View;->requestFocus(I)Z

    goto/16 :goto_0

    :cond_1
    const/16 p0, 0x11

    invoke-virtual {v10, p0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1, p0}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_0

    :pswitch_1
    if-nez v1, :cond_9

    const/16 v1, 0x14

    if-ne v2, v1, :cond_5

    iget v1, v0, Landroidx/picker/widget/P;->T:I

    if-eq v1, v6, :cond_4

    if-eq v1, v9, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v5, v4}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    :cond_3
    iput v7, v0, Landroidx/picker/widget/P;->T:I

    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_4
    iput v9, v0, Landroidx/picker/widget/P;->T:I

    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_5
    const/16 v1, 0x13

    if-ne v2, v1, :cond_11

    iget v1, v0, Landroidx/picker/widget/P;->T:I

    if-eq v1, v9, :cond_7

    if-eq v1, v7, :cond_6

    goto/16 :goto_1

    :cond_6
    iput v9, v0, Landroidx/picker/widget/P;->T:I

    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_7
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_1

    :cond_8
    iput v6, v0, Landroidx/picker/widget/P;->T:I

    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_9
    if-ne v1, v6, :cond_11

    iget-object v1, v0, Landroidx/picker/widget/P;->I0:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Landroidx/picker/widget/P;->e()Landroidx/picker/widget/A;

    move-result-object p0

    if-eqz p0, :cond_a

    iget p1, v0, Landroidx/picker/widget/P;->T:I

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/picker/widget/A;->performAction(IILandroid/os/Bundle;)Z

    :cond_a
    :goto_0
    return v6

    :cond_b
    :pswitch_2
    if-nez v1, :cond_11

    iget v1, v0, Landroidx/picker/widget/P;->T:I

    if-ne v1, v9, :cond_c

    invoke-virtual {v0}, Landroidx/picker/widget/P;->s()V

    invoke-virtual {v0}, Landroidx/picker/widget/P;->n()V

    goto :goto_1

    :cond_c
    iget-object v1, v0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, v0, Landroidx/picker/widget/P;->T:I

    const/4 v2, 0x0

    const/4 v8, 0x5

    if-eq v1, v6, :cond_f

    if-eq v1, v7, :cond_d

    goto :goto_1

    :cond_d
    invoke-virtual {v0, v2}, Landroidx/picker/widget/P;->r(Z)V

    invoke-virtual {v0, v6}, Landroidx/picker/widget/P;->a(Z)V

    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    const/4 v2, -0x1

    invoke-virtual {v1, v8, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iput v9, v0, Landroidx/picker/widget/P;->T:I

    :cond_e
    invoke-virtual {v0, v6}, Landroidx/picker/widget/P;->r(Z)V

    goto :goto_1

    :cond_f
    invoke-virtual {v0, v2}, Landroidx/picker/widget/P;->r(Z)V

    invoke-virtual {v0, v2}, Landroidx/picker/widget/P;->a(Z)V

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    invoke-virtual {v1, v8, v6}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iput v9, v0, Landroidx/picker/widget/P;->T:I

    :cond_10
    invoke-virtual {v0, v6}, Landroidx/picker/widget/P;->r(Z)V

    :cond_11
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/picker/widget/P;->n()V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/picker/widget/P;->n()V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    invoke-virtual {p0}, Landroidx/picker/widget/P;->e()Landroidx/picker/widget/A;

    move-result-object p0

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    iget-object v0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/widget/P;->b0:Landroidx/picker/widget/B;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/picker/widget/P;->i()Z

    move-result p1

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/picker/widget/P;->d:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v1, p0, Landroidx/picker/widget/P;->q0:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroidx/picker/widget/P;->n0:Landroid/graphics/Typeface;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/P;->o0:Landroid/graphics/Typeface;

    iget-object v0, p0, Landroidx/picker/widget/P;->n0:Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/P;->p0:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroidx/picker/widget/P;->p()V

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {p0}, Landroidx/picker/widget/P;->p()V

    iget-boolean p1, p0, Landroidx/picker/widget/P;->i:Z

    if-nez p1, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 p1, 0x0

    move v3, p1

    move v2, v0

    :goto_0
    iget-object v4, p0, Landroidx/picker/widget/P;->r:Landroid/graphics/Paint;

    const/16 v5, 0x9

    if-gt v2, v5, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%d"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpl-float v5, v4, v3

    if-lez v5, :cond_2

    move v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    new-instance v3, Landroid/icu/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v3}, Landroid/icu/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    move v7, p1

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_5

    aget-object v8, v3, v6

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    cmpl-float v9, v8, v7

    if-lez v9, :cond_4

    move v7, v8

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    new-instance v3, Landroid/icu/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v3}, Landroid/icu/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    :goto_2
    if-ge v0, v5, :cond_7

    aget-object v6, v3, v0

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpl-float v8, v6, p1

    if-lez v8, :cond_6

    move p1, v6

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const-string v0, " "

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    const-string v5, ","

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    add-float/2addr v2, v7

    add-float/2addr v2, p1

    add-float/2addr v2, v0

    add-float/2addr v2, v5

    float-to-int p1, v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, p1

    invoke-static {v1}, Lp0/a;->l(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {v4}, LL2/b;->p(Landroid/graphics/Paint;)F

    move-result p1

    div-float/2addr p1, v3

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    mul-int/lit8 p1, p1, 0xd

    add-int/2addr v2, p1

    :cond_8
    iget p1, p0, Landroidx/picker/widget/P;->h:I

    if-eq p1, v2, :cond_a

    iget p1, p0, Landroidx/picker/widget/P;->g:I

    if-le v2, p1, :cond_9

    iput v2, p0, Landroidx/picker/widget/P;->h:I

    goto :goto_3

    :cond_9
    iput p1, p0, Landroidx/picker/widget/P;->h:I

    :goto_3
    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    :goto_4
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    iget-object v0, p0, Landroidx/picker/widget/P;->x:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/P;->F0:LV/e;

    invoke-virtual {v0}, LV/e;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker/widget/P;->G0:Z

    invoke-virtual {p0}, Landroidx/picker/widget/P;->n()V

    iget-object v0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/widget/P;->b0:Landroidx/picker/widget/B;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    iget-object v2, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int v4, v3, v4

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    iget v7, v0, Landroidx/picker/widget/P;->v:I

    iget v8, v0, Landroidx/picker/widget/P;->t:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, v0, Landroidx/picker/widget/P;->s:Landroid/graphics/drawable/ColorDrawable;

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    iget v10, v0, Landroidx/picker/widget/P;->K:I

    if-nez v10, :cond_3

    iget v10, v0, Landroidx/picker/widget/P;->T:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget v2, v0, Landroidx/picker/widget/P;->O:I

    invoke-virtual {v8, v9, v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget v2, v0, Landroidx/picker/widget/P;->N:I

    iget v10, v0, Landroidx/picker/widget/P;->O:I

    invoke-virtual {v8, v9, v2, v3, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget v2, v0, Landroidx/picker/widget/P;->N:I

    invoke-virtual {v8, v9, v9, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_0
    iget-object v2, v0, Landroidx/picker/widget/P;->q:[Ljava/util/Calendar;

    array-length v8, v2

    move v10, v9

    :goto_1
    if-ge v10, v8, :cond_7

    aget-object v11, v2, v10

    iget-object v12, v0, Landroidx/picker/widget/P;->p:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget v12, v0, Landroidx/picker/widget/P;->z0:F

    iget v13, v0, Landroidx/picker/widget/P;->y0:F

    cmpg-float v14, v12, v13

    if-gez v14, :cond_4

    move v12, v13

    :cond_4
    iget-object v13, v0, Landroidx/picker/widget/P;->r:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->descent()F

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Paint;->ascent()F

    move-result v15

    sub-float/2addr v14, v15

    div-float/2addr v14, v6

    add-float/2addr v14, v7

    invoke-virtual {v13}, Landroid/graphics/Paint;->descent()F

    move-result v15

    sub-float/2addr v14, v15

    float-to-int v14, v14

    iget v15, v0, Landroidx/picker/widget/P;->N:I

    iget v9, v0, Landroidx/picker/widget/P;->u:I

    sub-int v6, v15, v9

    int-to-float v6, v6

    cmpl-float v6, v7, v6

    move-object/from16 v16, v2

    iget v2, v0, Landroidx/picker/widget/P;->A0:F

    const/high16 v17, 0x437f0000    # 255.0f

    if-ltz v6, :cond_6

    iget v6, v0, Landroidx/picker/widget/P;->O:I

    add-int/2addr v9, v6

    int-to-float v9, v9

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_6

    add-int/2addr v15, v6

    int-to-float v6, v15

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    cmpg-float v6, v7, v6

    if-gtz v6, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v6, v0, Landroidx/picker/widget/P;->N:I

    iget v15, v0, Landroidx/picker/widget/P;->O:I

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v6, v3, v15}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v6, v0, Landroidx/picker/widget/P;->j0:I

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Landroidx/picker/widget/P;->n0:Landroid/graphics/Typeface;

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v6, v14

    invoke-virtual {v1, v11, v4, v6, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v14, v0, Landroidx/picker/widget/P;->N:I

    invoke-virtual {v1, v9, v9, v3, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v9, v0, Landroidx/picker/widget/P;->o0:Landroid/graphics/Typeface;

    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    mul-float v12, v12, v17

    mul-float/2addr v12, v2

    float-to-int v2, v12

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v11, v4, v6, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v15, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v6, v0, Landroidx/picker/widget/P;->N:I

    iget v9, v0, Landroidx/picker/widget/P;->O:I

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v6, v3, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v6, v0, Landroidx/picker/widget/P;->n0:Landroid/graphics/Typeface;

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v6, v0, Landroidx/picker/widget/P;->j0:I

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v6, v14

    invoke-virtual {v1, v11, v4, v6, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v9, v0, Landroidx/picker/widget/P;->O:I

    invoke-virtual {v1, v15, v9, v3, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    mul-float v12, v12, v17

    mul-float/2addr v12, v2

    float-to-int v2, v12

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Landroidx/picker/widget/P;->o0:Landroid/graphics/Typeface;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v1, v11, v4, v6, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_6
    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    mul-float v12, v12, v17

    mul-float/2addr v12, v2

    float-to-int v2, v12

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Landroidx/picker/widget/P;->o0:Landroid/graphics/Typeface;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v2, v14

    invoke-virtual {v1, v11, v4, v2, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    iget v2, v0, Landroidx/picker/widget/P;->t:I

    int-to-float v2, v2

    add-float/2addr v7, v2

    add-int/lit8 v10, v10, 0x1

    move v9, v15

    move-object/from16 v2, v16

    const/high16 v6, 0x40000000    # 2.0f

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    iget-object v1, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget-object v2, v0, Landroidx/picker/widget/P;->I0:Landroid/view/accessibility/AccessibilityManager;

    const/4 v3, 0x0

    if-nez p1, :cond_1

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/picker/widget/P;->e()Landroidx/picker/widget/A;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v4, v0, Landroidx/picker/widget/P;->T:I

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5, v3}, Landroidx/picker/widget/A;->performAction(IILandroid/os/Bundle;)Z

    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Landroidx/picker/widget/P;->T:I

    const/high16 v2, -0x80000000

    iput v2, v0, Landroidx/picker/widget/P;->P:I

    goto :goto_0

    :cond_1
    iget-object v4, v0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    const/4 v4, 0x1

    iput v4, v0, Landroidx/picker/widget/P;->T:I

    iget-object v4, v0, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    iget-object v5, v0, Landroidx/picker/widget/P;->k:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    iput v4, v0, Landroidx/picker/widget/P;->T:I

    :cond_3
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroidx/picker/widget/P;->e()Landroidx/picker/widget/A;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v0, v0, Landroidx/picker/widget/P;->T:I

    const/16 v4, 0x40

    invoke-virtual {v2, v0, v4, v3}, Landroidx/picker/widget/A;->performAction(IILandroid/os/Bundle;)Z

    :cond_4
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    iget-object v1, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroidx/picker/widget/P;->f0:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/picker/widget/P;->r(Z)V

    cmpg-float p1, v1, v2

    const/4 v1, 0x1

    if-gez p1, :cond_1

    move p0, v1

    :cond_1
    invoke-virtual {v0, p0}, Landroidx/picker/widget/P;->a(Z)V

    invoke-virtual {v0, v1}, Landroidx/picker/widget/P;->r(Z)V

    return v1

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/picker/widget/P;->k:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v1

    long-to-int v1, v1

    iget v2, p0, Landroidx/picker/widget/P;->t:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    iget-object v1, p0, Landroidx/picker/widget/P;->l:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget p0, p0, Landroidx/picker/widget/P;->t:I

    mul-int/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    iget-object v0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Landroidx/picker/widget/P;->f0:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Landroidx/picker/widget/P;->n()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroidx/picker/widget/P;->C:F

    iput v1, p0, Landroidx/picker/widget/P;->E:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/picker/widget/P;->D:J

    iput-boolean v2, p0, Landroidx/picker/widget/P;->L:Z

    iput-boolean v2, p0, Landroidx/picker/widget/P;->M:Z

    iput-boolean v2, p0, Landroidx/picker/widget/P;->u0:Z

    iget p1, p0, Landroidx/picker/widget/P;->C:F

    iget v1, p0, Landroidx/picker/widget/P;->N:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/picker/widget/P;->Z:Landroidx/picker/widget/O;

    const/4 v5, 0x2

    if-gez v1, :cond_1

    invoke-virtual {p0, v2}, Landroidx/picker/widget/P;->r(Z)V

    iget p1, p0, Landroidx/picker/widget/P;->K:I

    if-nez p1, :cond_2

    invoke-virtual {v4}, Landroidx/picker/widget/O;->a()V

    iput v3, v4, Landroidx/picker/widget/O;->e:I

    iput v5, v4, Landroidx/picker/widget/O;->d:I

    iget-object p1, v4, Landroidx/picker/widget/O;->f:Ljava/lang/Object;

    check-cast p1, Landroidx/picker/widget/P;

    iget-object p1, p1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget v1, p0, Landroidx/picker/widget/P;->O:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    invoke-virtual {p0, v2}, Landroidx/picker/widget/P;->r(Z)V

    iget p1, p0, Landroidx/picker/widget/P;->K:I

    if-nez p1, :cond_2

    invoke-virtual {v4}, Landroidx/picker/widget/O;->a()V

    iput v3, v4, Landroidx/picker/widget/O;->e:I

    iput v3, v4, Landroidx/picker/widget/O;->d:I

    iget-object p1, v4, Landroidx/picker/widget/O;->f:Ljava/lang/Object;

    check-cast p1, Landroidx/picker/widget/P;

    iget-object p1, p1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    iget-object v0, p0, Landroidx/picker/widget/P;->y:Landroid/widget/Scroller;

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget p1, p0, Landroidx/picker/widget/P;->K:I

    if-ne p1, v5, :cond_3

    iget-object p1, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    invoke-virtual {p0, v2}, Landroidx/picker/widget/P;->l(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/P;->F0:LV/e;

    iget-boolean v1, p1, LV/e;->e:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/picker/widget/P;->x:Landroid/widget/OverScroller;

    invoke-virtual {v1, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, LV/e;->b()V

    iput-boolean v2, p0, Landroidx/picker/widget/P;->G0:Z

    iget p1, p0, Landroidx/picker/widget/P;->K:I

    if-ne p1, v5, :cond_5

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_5
    invoke-virtual {p0, v2}, Landroidx/picker/widget/P;->l(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {p0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    :cond_7
    iget p1, p0, Landroidx/picker/widget/P;->C:F

    iget v0, p0, Landroidx/picker/widget/P;->N:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/picker/widget/P;->m(JZ)V

    goto :goto_1

    :cond_8
    iget v0, p0, Landroidx/picker/widget/P;->O:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, v3}, Landroidx/picker/widget/P;->m(JZ)V

    goto :goto_1

    :cond_9
    iput-boolean v3, p0, Landroidx/picker/widget/P;->M:Z

    :goto_1
    move v2, v3

    :cond_a
    :goto_2
    return v2
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    iget-object p2, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    iget-object p5, p0, Landroidx/picker/widget/P;->d:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v2, p4

    iget v3, p0, Landroidx/picker/widget/P;->r0:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/P;->s0:I

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr v0, p3

    add-int/2addr v1, p4

    invoke-virtual {p5, p3, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Landroidx/picker/widget/P;->f0:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/P;->k(Landroid/widget/Scroller;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/P;->y:Landroid/widget/Scroller;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/P;->k(Landroid/widget/Scroller;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/picker/widget/P;->s()V

    :cond_1
    iget-boolean p1, p0, Landroidx/picker/widget/P;->f0:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/picker/widget/P;->h()V

    :cond_2
    iget p1, p0, Landroidx/picker/widget/P;->j:I

    mul-int/lit8 p3, p1, 0x3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, p3

    int-to-float p3, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/picker/widget/P;->t:I

    iget p3, p0, Landroidx/picker/widget/P;->s0:I

    if-le p3, p1, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p3, p1, 0x3

    :cond_3
    iput p3, p0, Landroidx/picker/widget/P;->t0:I

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p1

    iget p3, p0, Landroidx/picker/widget/P;->s0:I

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p1

    iget p1, p0, Landroidx/picker/widget/P;->t:I

    sub-int/2addr p3, p1

    iput p3, p0, Landroidx/picker/widget/P;->u:I

    iput p3, p0, Landroidx/picker/widget/P;->v:I

    iget-object p1, p0, Landroidx/picker/widget/P;->r:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    sub-float/2addr p3, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    sub-float/2addr p3, p1

    float-to-int p1, p3

    invoke-virtual {p5}, Landroid/view/View;->getBaseline()I

    move-result p3

    iget v0, p0, Landroidx/picker/widget/P;->s0:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    sub-int/2addr p1, p3

    check-cast p5, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$CustomEditText;

    iput p1, p5, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$CustomEditText;->c:I

    iget-boolean p1, p0, Landroidx/picker/widget/P;->g0:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/P;->H0:Lc1/w;

    iput-object p1, p0, Landroidx/picker/widget/P;->H0:Lc1/w;

    iget p1, p0, Landroidx/picker/widget/P;->x0:F

    iput p1, p0, Landroidx/picker/widget/P;->z0:F

    new-instance p1, Landroidx/picker/widget/K;

    invoke-direct {p1, p0}, Landroidx/picker/widget/K;-><init>(Landroidx/picker/widget/P;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/picker/widget/P;->g0:Z

    :cond_4
    iget p1, p0, Landroidx/picker/widget/P;->s0:I

    iget p2, p0, Landroidx/picker/widget/P;->t:I

    if-le p1, p2, :cond_5

    iget p1, p0, Landroidx/picker/widget/P;->t0:I

    iput p1, p0, Landroidx/picker/widget/P;->N:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/picker/widget/P;->O:I

    goto :goto_0

    :cond_5
    iput p4, p0, Landroidx/picker/widget/P;->N:I

    iput v1, p0, Landroidx/picker/widget/P;->O:I

    :cond_6
    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    iget v0, p0, Landroidx/picker/widget/P;->h:I

    invoke-static {p1, v0}, Landroidx/picker/widget/P;->j(II)I

    move-result v0

    iget v1, p0, Landroidx/picker/widget/P;->f:I

    invoke-static {p2, v1}, Landroidx/picker/widget/P;->j(II)I

    move-result v1

    iget-object v2, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-super {v2, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, -0x1

    iget v4, p0, Landroidx/picker/widget/P;->g:I

    if-eq v4, v3, :cond_0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p0, p0, Landroidx/picker/widget/P;->e:I

    if-eq p0, v3, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    :cond_1
    invoke-virtual {v2, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/picker/widget/P;->e()Landroidx/picker/widget/A;

    move-result-object p0

    sget v0, Landroidx/picker/widget/A;->g:I

    invoke-virtual {p0}, Landroidx/picker/widget/A;->c()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    iget-object v1, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    iget-boolean v2, v0, Landroidx/picker/widget/P;->f0:Z

    if-eqz v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v2, v0, Landroidx/picker/widget/P;->F:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker/widget/P;->F:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, v0, Landroidx/picker/widget/P;->F:Landroid/view/VelocityTracker;

    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    iget v5, v0, Landroidx/picker/widget/P;->G:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v2, v6, :cond_7

    if-eq v2, v7, :cond_3

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/picker/widget/P;->c(I)Z

    invoke-virtual {v0, v6}, Landroidx/picker/widget/P;->r(Z)V

    invoke-virtual {v0, v3}, Landroidx/picker/widget/P;->l(I)V

    goto/16 :goto_7

    :cond_3
    iget-boolean v2, v0, Landroidx/picker/widget/P;->L:Z

    if-eqz v2, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, v0, Landroidx/picker/widget/P;->K:I

    if-eq v4, v6, :cond_5

    iget v1, v0, Landroidx/picker/widget/P;->C:F

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    if-le v1, v5, :cond_6

    invoke-virtual {v0}, Landroidx/picker/widget/P;->n()V

    invoke-virtual {v0, v3}, Landroidx/picker/widget/P;->r(Z)V

    invoke-virtual {v0, v6}, Landroidx/picker/widget/P;->l(I)V

    goto :goto_0

    :cond_5
    iget v3, v0, Landroidx/picker/widget/P;->E:F

    sub-float v3, v2, v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroidx/picker/widget/P;->o(I)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_0
    iput v2, v0, Landroidx/picker/widget/P;->E:F

    goto/16 :goto_7

    :cond_7
    iget-boolean v2, v0, Landroidx/picker/widget/P;->l0:Z

    if-eqz v2, :cond_8

    iput-boolean v3, v0, Landroidx/picker/widget/P;->l0:Z

    iget v2, v0, Landroidx/picker/widget/P;->u:I

    iput v2, v0, Landroidx/picker/widget/P;->v:I

    :cond_8
    iput-boolean v3, v0, Landroidx/picker/widget/P;->U:Z

    iput-boolean v3, v0, Landroidx/picker/widget/P;->V:Z

    iput-boolean v3, v0, Landroidx/picker/widget/P;->W:Z

    iput v6, v0, Landroidx/picker/widget/P;->Q:I

    const-wide/16 v8, 0x12c

    iput-wide v8, v0, Landroidx/picker/widget/P;->o:J

    iget-object v2, v0, Landroidx/picker/widget/P;->B:Landroidx/picker/widget/N;

    if-eqz v2, :cond_9

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_9
    iget-object v2, v0, Landroidx/picker/widget/P;->Z:Landroidx/picker/widget/O;

    invoke-virtual {v2}, Landroidx/picker/widget/O;->a()V

    iget-object v8, v0, Landroidx/picker/widget/P;->F:Landroid/view/VelocityTracker;

    iget v9, v0, Landroidx/picker/widget/P;->I:I

    int-to-float v9, v9

    const/16 v10, 0x3e8

    invoke-virtual {v8, v10, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    int-to-float v10, v9

    iget v11, v0, Landroidx/picker/widget/P;->C:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v10, v10

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, v0, Landroidx/picker/widget/P;->H:I

    if-le v11, v12, :cond_e

    if-gt v10, v5, :cond_a

    iget-boolean v2, v0, Landroidx/picker/widget/P;->M:Z

    if-eqz v2, :cond_a

    iput-boolean v3, v0, Landroidx/picker/widget/P;->M:Z

    invoke-virtual {v0}, Landroidx/picker/widget/P;->s()V

    invoke-virtual {v0, v3}, Landroidx/picker/widget/P;->l(I)V

    goto/16 :goto_6

    :cond_a
    iget-object v2, v0, Landroidx/picker/widget/P;->m:Ljava/util/Calendar;

    if-lez v8, :cond_b

    iget-object v4, v0, Landroidx/picker/widget/P;->k:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v0, v6}, Landroidx/picker/widget/P;->r(Z)V

    goto :goto_3

    :cond_b
    if-gez v8, :cond_c

    iget-object v4, v0, Landroidx/picker/widget/P;->l:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0, v6}, Landroidx/picker/widget/P;->r(Z)V

    goto :goto_3

    :cond_c
    iput v3, v0, Landroidx/picker/widget/P;->z:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    iget v2, v0, Landroidx/picker/widget/P;->v:I

    int-to-float v2, v2

    iput v2, v0, Landroidx/picker/widget/P;->A:F

    int-to-float v2, v8

    iget-object v3, v0, Landroidx/picker/widget/P;->F0:LV/e;

    iput v2, v3, LV/e;->a:F

    iget-object v2, v0, Landroidx/picker/widget/P;->x:Landroid/widget/OverScroller;

    invoke-virtual {v2, v6}, Landroid/widget/OverScroller;->forceFinished(Z)V

    iget v11, v0, Landroidx/picker/widget/P;->v:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/high16 v16, -0x80000000

    const v17, 0x7fffffff

    move-object v9, v2

    move v13, v8

    invoke-virtual/range {v9 .. v17}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v2

    iget v4, v0, Landroidx/picker/widget/P;->v:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, v0, Landroidx/picker/widget/P;->t:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, v0, Landroidx/picker/widget/P;->t:I

    mul-int/2addr v2, v4

    iget v5, v0, Landroidx/picker/widget/P;->u:I

    add-int/2addr v2, v5

    if-lez v8, :cond_d

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_1
    int-to-float v2, v2

    goto :goto_2

    :cond_d
    neg-int v4, v4

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :goto_2
    iget v4, v0, Landroidx/picker/widget/P;->v:I

    int-to-float v4, v4

    iput v4, v3, LV/e;->b:F

    iput-boolean v6, v3, LV/e;->c:Z

    iput-boolean v6, v0, Landroidx/picker/widget/P;->G0:Z

    invoke-virtual {v3, v2}, LV/e;->a(F)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :goto_3
    invoke-virtual {v0, v7}, Landroidx/picker/widget/P;->l(I)V

    goto :goto_6

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    iget-wide v13, v0, Landroidx/picker/widget/P;->D:J

    sub-long/2addr v11, v13

    if-gt v10, v5, :cond_12

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v11, v4

    if-gez v1, :cond_12

    iget-boolean v1, v0, Landroidx/picker/widget/P;->M:Z

    if-eqz v1, :cond_f

    iput-boolean v3, v0, Landroidx/picker/widget/P;->M:Z

    invoke-virtual {v0}, Landroidx/picker/widget/P;->s()V

    goto :goto_5

    :cond_f
    iget v1, v0, Landroidx/picker/widget/P;->O:I

    iget-object v4, v2, Landroidx/picker/widget/O;->f:Ljava/lang/Object;

    check-cast v4, Landroidx/picker/widget/P;

    if-le v9, v1, :cond_10

    invoke-virtual {v0, v6}, Landroidx/picker/widget/P;->a(Z)V

    invoke-virtual {v2}, Landroidx/picker/widget/O;->a()V

    iput v7, v2, Landroidx/picker/widget/O;->e:I

    iput v6, v2, Landroidx/picker/widget/O;->d:I

    iget-object v1, v4, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_10
    iget v1, v0, Landroidx/picker/widget/P;->N:I

    if-ge v9, v1, :cond_11

    invoke-virtual {v0, v3}, Landroidx/picker/widget/P;->a(Z)V

    invoke-virtual {v2}, Landroidx/picker/widget/O;->a()V

    iput v7, v2, Landroidx/picker/widget/O;->e:I

    iput v7, v2, Landroidx/picker/widget/O;->d:I

    iget-object v1, v4, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_11
    invoke-virtual {v0, v10}, Landroidx/picker/widget/P;->c(I)Z

    :goto_4
    invoke-virtual {v0, v6}, Landroidx/picker/widget/P;->r(Z)V

    goto :goto_5

    :cond_12
    iget-boolean v1, v0, Landroidx/picker/widget/P;->e0:Z

    if-eqz v1, :cond_13

    iput-boolean v3, v0, Landroidx/picker/widget/P;->e0:Z

    :cond_13
    invoke-virtual {v0, v10}, Landroidx/picker/widget/P;->c(I)Z

    invoke-virtual {v0, v6}, Landroidx/picker/widget/P;->r(Z)V

    :goto_5
    iput-boolean v3, v0, Landroidx/picker/widget/P;->u0:Z

    invoke-virtual {v0, v3}, Landroidx/picker/widget/P;->l(I)V

    :goto_6
    iget-object v1, v0, Landroidx/picker/widget/P;->F:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/picker/widget/P;->F:Landroid/view/VelocityTracker;

    :goto_7
    move v3, v6

    :cond_14
    :goto_8
    return v3
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    iget-boolean p1, p0, Landroidx/picker/widget/P;->f0:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/P;->y:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/P;->x:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/P;->F0:LV/e;

    iget-boolean v0, p1, LV/e;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, LV/e;->b()V

    iput-boolean v1, p0, Landroidx/picker/widget/P;->G0:Z

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/picker/widget/P;->c(I)Z

    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/P;->d:Landroid/widget/EditText;

    invoke-static {p1}, Lp0/a;->l(Landroid/view/View;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/picker/widget/P;->m0:Z

    iget-object p1, p0, Landroidx/picker/widget/P;->r:Landroid/graphics/Paint;

    iget v0, p0, Landroidx/picker/widget/P;->j:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Landroidx/picker/widget/P;->n0:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroidx/picker/widget/P;->p()V

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    invoke-virtual {p0}, Landroidx/picker/widget/P;->s()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final performLongClick()Z
    .locals 2

    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    iput-boolean v1, p0, Landroidx/picker/widget/P;->L:Z

    iput-boolean v1, p0, Landroidx/picker/widget/P;->e0:Z

    :cond_0
    return v1
.end method

.method public final scrollBy(II)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    invoke-virtual {p0, p2}, Landroidx/picker/widget/P;->o(I)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->c:Landroidx/picker/widget/P;

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/picker/widget/P;->K:I

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/picker/widget/P;->s()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/P;->l(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void
.end method
