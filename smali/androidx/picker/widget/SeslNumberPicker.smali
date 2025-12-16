.class public Landroidx/picker/widget/SeslNumberPicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslNumberPicker$CustomEditText;
    }
.end annotation


# static fields
.field public static final d:Landroidx/picker/widget/w;


# instance fields
.field public final c:Landroidx/picker/widget/D;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/picker/widget/w;

    invoke-direct {v0}, Landroidx/picker/widget/w;-><init>()V

    sput-object v0, Landroidx/picker/widget/SeslNumberPicker;->d:Landroidx/picker/widget/w;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroidx/picker/widget/D;

    invoke-direct {v0, p0, p1, p2}, Landroidx/picker/widget/D;-><init>(Landroidx/picker/widget/SeslNumberPicker;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    return-void
.end method

.method public static getTwoDigitFormatter()Landroidx/picker/widget/s;
    .locals 1

    sget-object v0, Landroidx/picker/widget/SeslNumberPicker;->d:Landroidx/picker/widget/w;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object p0, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    const-string v0, "inputType=YearDateTime_edittext"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(ILc1/w;)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    invoke-virtual {p0, p1, p2}, Landroidx/picker/widget/D;->y(ILc1/w;)V

    return-void
.end method

.method public final computeScroll()V
    .locals 3

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-boolean v0, p0, Landroidx/picker/widget/D;->T0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/D;->F:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Landroidx/picker/widget/D;->G:I

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroidx/picker/widget/D;->G:I

    :cond_2
    iget v2, p0, Landroidx/picker/widget/D;->G:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Landroidx/picker/widget/D;->t(I)V

    iput v1, p0, Landroidx/picker/widget/D;->G:I

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/D;->e(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroidx/picker/widget/D;->C()Z

    :cond_3
    invoke-virtual {p0, v0}, Landroidx/picker/widget/D;->p(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Landroidx/picker/widget/D;->T:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Landroidx/picker/widget/D;->C()Z

    goto :goto_0

    :cond_5
    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_0
    return-void
.end method

.method public final computeVerticalScrollExtent()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public final computeVerticalScrollOffset()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget p0, p0, Landroidx/picker/widget/D;->C:I

    return p0
.end method

.method public final computeVerticalScrollRange()I
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget v0, p0, Landroidx/picker/widget/D;->n:I

    iget v1, p0, Landroidx/picker/widget/D;->m:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget p0, p0, Landroidx/picker/widget/D;->A:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    invoke-virtual {v0}, Landroidx/picker/widget/D;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, v0, Landroidx/picker/widget/D;->Z0:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    iget-boolean v2, v0, Landroidx/picker/widget/D;->h0:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, v0, Landroidx/picker/widget/D;->X:I

    if-gt p0, v2, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    iget v2, v0, Landroidx/picker/widget/D;->Y:I

    if-gt v2, p0, :cond_3

    const/4 v3, 0x3

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    const/16 p1, 0x100

    const/16 v2, 0x80

    const/4 v5, 0x7

    const/high16 v6, -0x80000000

    if-eq p0, v5, :cond_6

    const/16 v5, 0x9

    if-eq p0, v5, :cond_6

    const/16 v3, 0xa

    if-eq p0, v3, :cond_4

    goto :goto_3

    :cond_4
    iget p0, v0, Landroidx/picker/widget/D;->Z:I

    if-eq p0, v6, :cond_8

    if-ne p0, v6, :cond_5

    goto :goto_1

    :cond_5
    iput v6, v0, Landroidx/picker/widget/D;->Z:I

    invoke-virtual {v0}, Landroidx/picker/widget/D;->g()Landroidx/picker/widget/A;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Landroidx/picker/widget/A;->j(II)V

    invoke-virtual {v0, p0, p1}, Landroidx/picker/widget/A;->j(II)V

    :goto_1
    move v1, v4

    goto :goto_3

    :cond_6
    iget p0, v0, Landroidx/picker/widget/D;->Z:I

    if-ne p0, v3, :cond_7

    goto :goto_2

    :cond_7
    iput v3, v0, Landroidx/picker/widget/D;->Z:I

    invoke-virtual {v0}, Landroidx/picker/widget/D;->g()Landroidx/picker/widget/A;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroidx/picker/widget/A;->j(II)V

    invoke-virtual {v0, p0, p1}, Landroidx/picker/widget/A;->j(II)V

    :goto_2
    if-eq v3, v6, :cond_8

    goto :goto_1

    :cond_8
    :goto_3
    return v1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/16 v5, 0x42

    const/4 v6, 0x2

    if-eq v2, v5, :cond_b

    const/16 v7, 0xa0

    if-eq v2, v7, :cond_b

    iget-object v7, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v7, Landroidx/picker/widget/SeslNumberPicker;

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-nez v1, :cond_14

    const/16 v0, 0x15

    if-eq v2, v0, :cond_1

    const/16 v0, 0x16

    if-eq v2, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v7, v5}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0, v5}, Landroid/view/View;->requestFocus(I)Z

    goto/16 :goto_0

    :cond_1
    const/16 p0, 0x11

    invoke-virtual {v7, p0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1, p0}, Landroid/view/View;->requestFocus(I)Z

    goto/16 :goto_0

    :pswitch_1
    iget-boolean v5, v0, Landroidx/picker/widget/D;->h0:Z

    if-eqz v5, :cond_2

    goto/16 :goto_1

    :cond_2
    if-nez v1, :cond_a

    const/16 v1, 0x14

    if-ne v2, v1, :cond_6

    iget v1, v0, Landroidx/picker/widget/D;->c0:I

    if-eq v1, v3, :cond_5

    if-eq v1, v6, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-boolean v1, v0, Landroidx/picker/widget/D;->Q:Z

    if-nez v1, :cond_4

    iget v1, v0, Landroidx/picker/widget/D;->o:I

    iget v2, v0, Landroidx/picker/widget/D;->n:I

    if-ne v1, v2, :cond_4

    goto/16 :goto_1

    :cond_4
    iput v4, v0, Landroidx/picker/widget/D;->c0:I

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_5
    iput v6, v0, Landroidx/picker/widget/D;->c0:I

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x13

    if-ne v2, v1, :cond_14

    iget v1, v0, Landroidx/picker/widget/D;->c0:I

    if-eq v1, v6, :cond_8

    if-eq v1, v4, :cond_7

    goto/16 :goto_1

    :cond_7
    iput v6, v0, Landroidx/picker/widget/D;->c0:I

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_8
    iget-boolean v1, v0, Landroidx/picker/widget/D;->Q:Z

    if-nez v1, :cond_9

    iget v1, v0, Landroidx/picker/widget/D;->o:I

    iget v2, v0, Landroidx/picker/widget/D;->m:I

    if-ne v1, v2, :cond_9

    goto/16 :goto_1

    :cond_9
    iput v3, v0, Landroidx/picker/widget/D;->c0:I

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_a
    if-ne v1, v3, :cond_14

    iget-object v1, v0, Landroidx/picker/widget/D;->Z0:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Landroidx/picker/widget/D;->g()Landroidx/picker/widget/A;

    move-result-object p0

    if-eqz p0, :cond_e

    iget p1, v0, Landroidx/picker/widget/D;->c0:I

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/picker/widget/A;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_b
    :pswitch_2
    iget-boolean v2, v0, Landroidx/picker/widget/D;->h0:Z

    if-eqz v2, :cond_c

    goto :goto_1

    :cond_c
    if-ne v1, v3, :cond_14

    iget v1, v0, Landroidx/picker/widget/D;->c0:I

    const/4 v2, 0x0

    if-ne v1, v6, :cond_f

    iget-boolean v1, v0, Landroidx/picker/widget/D;->g0:Z

    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    iget-object p0, v0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v0}, Landroidx/picker/widget/D;->x()V

    invoke-virtual {v0}, Landroidx/picker/widget/D;->s()V

    :cond_e
    :goto_0
    return v3

    :cond_f
    iget-object v1, v0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, v0, Landroidx/picker/widget/D;->c0:I

    if-eq v1, v3, :cond_12

    if-eq v1, v4, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v0, v2}, Landroidx/picker/widget/D;->z(Z)V

    invoke-virtual {v0, v3}, Landroidx/picker/widget/D;->c(Z)V

    iget-boolean v1, v0, Landroidx/picker/widget/D;->Q:Z

    if-nez v1, :cond_11

    iget v1, v0, Landroidx/picker/widget/D;->o:I

    iget v2, v0, Landroidx/picker/widget/D;->n:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_11

    iput v6, v0, Landroidx/picker/widget/D;->c0:I

    :cond_11
    invoke-virtual {v0, v3}, Landroidx/picker/widget/D;->z(Z)V

    goto :goto_1

    :cond_12
    invoke-virtual {v0, v2}, Landroidx/picker/widget/D;->z(Z)V

    invoke-virtual {v0, v2}, Landroidx/picker/widget/D;->c(Z)V

    iget-boolean v1, v0, Landroidx/picker/widget/D;->Q:Z

    if-nez v1, :cond_13

    iget v1, v0, Landroidx/picker/widget/D;->o:I

    iget v2, v0, Landroidx/picker/widget/D;->m:I

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_13

    iput v6, v0, Landroidx/picker/widget/D;->c0:I

    :cond_13
    invoke-virtual {v0, v3}, Landroidx/picker/widget/D;->z(Z)V

    :cond_14
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

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
    .locals 6

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-boolean v1, v0, Landroidx/picker/widget/D;->g0:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    iget-object v3, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v3, Landroidx/picker/widget/SeslNumberPicker;

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, v0, Landroidx/picker/widget/D;->g0:Z

    if-nez v2, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    const/4 p0, 0x1

    iput-boolean p0, v0, Landroidx/picker/widget/D;->r:Z

    iget-object p1, v0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {v0, v4}, Landroidx/picker/widget/D;->u(Z)V

    return p0

    :cond_3
    iput-boolean v4, v0, Landroidx/picker/widget/D;->r:Z

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/picker/widget/D;->s()V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/picker/widget/D;->s()V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    invoke-virtual {v0}, Landroidx/picker/widget/D;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroidx/picker/widget/D;->g()Landroidx/picker/widget/A;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object p0, p0, Landroidx/picker/widget/D;->l:[Ljava/lang/String;

    return-object p0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object p0, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    return-object p0
.end method

.method public getEnableStateSet()[I
    .locals 0

    sget-object p0, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    return-object p0
.end method

.method public getMaxValue()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget p0, p0, Landroidx/picker/widget/D;->n:I

    return p0
.end method

.method public getMinValue()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget p0, p0, Landroidx/picker/widget/D;->m:I

    return p0
.end method

.method public getPaintFlags()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object p0, p0, Landroidx/picker/widget/D;->y:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result p0

    return p0
.end method

.method public getValue()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget p0, p0, Landroidx/picker/widget/D;->o:I

    return p0
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-boolean p0, p0, Landroidx/picker/widget/D;->Q:Z

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object v0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/widget/D;->j0:Landroidx/picker/widget/B;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-boolean p1, p0, Landroidx/picker/widget/D;->z0:Z

    iget-object v0, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bold_text"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroidx/picker/widget/D;->z0:Z

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/D;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_1
    iget-boolean p1, p0, Landroidx/picker/widget/D;->w0:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Landroidx/picker/widget/D;->l()Z

    move-result p1

    iget-object v0, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object p1, p0, Landroidx/picker/widget/D;->D0:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->B0:Landroid/graphics/Typeface;

    iget-object p1, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->C0:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroidx/picker/widget/D;->v()V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->v()V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->B()V

    :goto_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object v0, p0, Landroidx/picker/widget/D;->E:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/D;->S0:LV/e;

    invoke-virtual {v0}, LV/e;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker/widget/D;->T0:Z

    invoke-virtual {p0}, Landroidx/picker/widget/D;->s()V

    iget-object v0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/widget/D;->j0:Landroidx/picker/widget/B;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    invoke-virtual {v2}, Landroidx/picker/widget/D;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, v2, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int v4, v3, v4

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    iget v7, v2, Landroidx/picker/widget/D;->C:I

    iget v8, v2, Landroidx/picker/widget/D;->A:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, v2, Landroidx/picker/widget/D;->z:Landroid/graphics/drawable/ColorDrawable;

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    iget v10, v2, Landroidx/picker/widget/D;->T:I

    if-nez v10, :cond_4

    iget v10, v2, Landroidx/picker/widget/D;->c0:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    const/4 v11, 0x2

    if-eq v10, v11, :cond_2

    const/4 v11, 0x3

    if-eq v10, v11, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget v0, v2, Landroidx/picker/widget/D;->Y:I

    invoke-virtual {v8, v9, v0, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget v0, v2, Landroidx/picker/widget/D;->X:I

    iget v10, v2, Landroidx/picker/widget/D;->Y:I

    invoke-virtual {v8, v9, v0, v3, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget v0, v2, Landroidx/picker/widget/D;->X:I

    invoke-virtual {v8, v9, v9, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_0
    move v0, v9

    :goto_1
    iget-object v8, v2, Landroidx/picker/widget/D;->x:[I

    array-length v10, v8

    if-ge v0, v10, :cond_9

    aget v8, v8, v0

    iget-object v10, v2, Landroidx/picker/widget/D;->w:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, v2, Landroidx/picker/widget/D;->c:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroidx/picker/widget/D;->c:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_5
    iget v10, v2, Landroidx/picker/widget/D;->N0:F

    iget v11, v2, Landroidx/picker/widget/D;->L0:F

    cmpg-float v12, v10, v11

    if-gez v12, :cond_6

    move v10, v11

    :cond_6
    iget-object v11, v2, Landroidx/picker/widget/D;->y:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v12

    invoke-virtual {v11}, Landroid/graphics/Paint;->ascent()F

    move-result v13

    sub-float/2addr v12, v13

    div-float/2addr v12, v6

    add-float/2addr v12, v7

    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v13

    sub-float/2addr v12, v13

    float-to-int v12, v12

    iget v13, v2, Landroidx/picker/widget/D;->X:I

    iget v14, v2, Landroidx/picker/widget/D;->B:I

    sub-int v15, v13, v14

    int-to-float v15, v15

    cmpl-float v15, v7, v15

    iget v9, v2, Landroidx/picker/widget/D;->M0:F

    const/high16 v16, 0x437f0000    # 255.0f

    if-ltz v15, :cond_8

    iget v15, v2, Landroidx/picker/widget/D;->Y:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    cmpg-float v14, v7, v14

    if-gtz v14, :cond_8

    add-int/2addr v13, v15

    int-to-float v13, v13

    div-float/2addr v13, v6

    cmpg-float v13, v7, v13

    if-gtz v13, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v13, v2, Landroidx/picker/widget/D;->X:I

    iget v14, v2, Landroidx/picker/widget/D;->Y:I

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v13, v3, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v13, v2, Landroidx/picker/widget/D;->r0:I

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v13, v2, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v12, v12

    invoke-virtual {v1, v8, v4, v12, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v13, v2, Landroidx/picker/widget/D;->X:I

    invoke-virtual {v1, v15, v15, v3, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v13, v2, Landroidx/picker/widget/D;->B0:Landroid/graphics/Typeface;

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    mul-float v10, v10, v16

    mul-float/2addr v10, v9

    float-to-int v9, v10

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v8, v4, v12, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v15, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v13, v2, Landroidx/picker/widget/D;->X:I

    iget v14, v2, Landroidx/picker/widget/D;->Y:I

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v13, v3, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v13, v2, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v13, v2, Landroidx/picker/widget/D;->r0:I

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v12, v12

    invoke-virtual {v1, v8, v4, v12, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v13, v2, Landroidx/picker/widget/D;->Y:I

    invoke-virtual {v1, v15, v13, v3, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    mul-float v10, v10, v16

    mul-float/2addr v10, v9

    float-to-int v9, v10

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v9, v2, Landroidx/picker/widget/D;->B0:Landroid/graphics/Typeface;

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v1, v8, v4, v12, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_8
    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    mul-float v10, v10, v16

    mul-float/2addr v10, v9

    float-to-int v9, v10

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v9, v2, Landroidx/picker/widget/D;->B0:Landroid/graphics/Typeface;

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v9, v12

    invoke-virtual {v1, v8, v4, v9, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    iget v8, v2, Landroidx/picker/widget/D;->A:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    add-int/lit8 v0, v0, 0x1

    move v9, v15

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object v1, v0, Landroidx/picker/widget/D;->Z0:Landroid/view/accessibility/AccessibilityManager;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez p1, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/picker/widget/D;->g()Landroidx/picker/widget/A;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v5, v0, Landroidx/picker/widget/D;->h0:Z

    if-eqz v5, :cond_0

    iput v4, v0, Landroidx/picker/widget/D;->c0:I

    :cond_0
    iget v4, v0, Landroidx/picker/widget/D;->c0:I

    const/16 v5, 0x80

    invoke-virtual {v1, v4, v5, v3}, Landroidx/picker/widget/A;->performAction(IILandroid/os/Bundle;)Z

    :cond_1
    iput v2, v0, Landroidx/picker/widget/D;->c0:I

    const/high16 v1, -0x80000000

    iput v1, v0, Landroidx/picker/widget/D;->Z:I

    goto :goto_1

    :cond_2
    iget-boolean v5, v0, Landroidx/picker/widget/D;->h0:Z

    if-eqz v5, :cond_3

    iput v2, v0, Landroidx/picker/widget/D;->c0:I

    iget-object v2, v0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    iput v2, v0, Landroidx/picker/widget/D;->c0:I

    iget-boolean v2, v0, Landroidx/picker/widget/D;->Q:Z

    if-nez v2, :cond_4

    iget v2, v0, Landroidx/picker/widget/D;->o:I

    iget v5, v0, Landroidx/picker/widget/D;->m:I

    if-ne v2, v5, :cond_4

    iput v4, v0, Landroidx/picker/widget/D;->c0:I

    :cond_4
    :goto_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroidx/picker/widget/D;->g()Landroidx/picker/widget/A;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-boolean v2, v0, Landroidx/picker/widget/D;->h0:Z

    if-eqz v2, :cond_5

    iput v4, v0, Landroidx/picker/widget/D;->c0:I

    :cond_5
    iget v2, v0, Landroidx/picker/widget/D;->c0:I

    const/16 v4, 0x40

    invoke-virtual {v1, v2, v4, v3}, Landroidx/picker/widget/A;->performAction(IILandroid/os/Bundle;)Z

    :cond_6
    :goto_1
    iget-object v0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object v1, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Landroidx/picker/widget/D;->h0:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Landroidx/picker/widget/D;->n0:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_3

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/picker/widget/D;->z(Z)V

    cmpg-float p1, v1, v2

    const/4 v1, 0x1

    if-gez p1, :cond_2

    move p0, v1

    :cond_2
    invoke-virtual {v0, p0}, Landroidx/picker/widget/D;->c(Z)V

    invoke-virtual {v0, v1}, Landroidx/picker/widget/D;->z(Z)V

    return v1

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    iget v0, p0, Landroidx/picker/widget/D;->m:I

    iget v1, p0, Landroidx/picker/widget/D;->o:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/picker/widget/D;->A:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    iget v0, p0, Landroidx/picker/widget/D;->n:I

    iget v1, p0, Landroidx/picker/widget/D;->m:I

    sub-int/2addr v0, v1

    iget p0, p0, Landroidx/picker/widget/D;->A:I

    mul-int/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object v0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Landroidx/picker/widget/D;->h0:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Landroidx/picker/widget/D;->n0:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Landroidx/picker/widget/D;->s()V

    iget-object v1, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroidx/picker/widget/D;->K:F

    iput v1, p0, Landroidx/picker/widget/D;->L:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    iput-boolean v2, p0, Landroidx/picker/widget/D;->U:Z

    iput-boolean v2, p0, Landroidx/picker/widget/D;->V:Z

    iput-boolean v2, p0, Landroidx/picker/widget/D;->W:Z

    iput-boolean v2, p0, Landroidx/picker/widget/D;->H0:Z

    iget p1, p0, Landroidx/picker/widget/D;->K:F

    iget v1, p0, Landroidx/picker/widget/D;->X:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/picker/widget/D;->e0:Landroidx/picker/widget/O;

    const/4 v5, 0x2

    if-gez v1, :cond_2

    invoke-virtual {p0, v2}, Landroidx/picker/widget/D;->z(Z)V

    iget p1, p0, Landroidx/picker/widget/D;->T:I

    if-nez p1, :cond_3

    invoke-virtual {v4}, Landroidx/picker/widget/O;->a()V

    iput v3, v4, Landroidx/picker/widget/O;->e:I

    iput v5, v4, Landroidx/picker/widget/O;->d:I

    iget-object p1, v4, Landroidx/picker/widget/O;->f:Ljava/lang/Object;

    check-cast p1, Landroidx/picker/widget/D;

    iget-object p1, p1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p1, Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget v1, p0, Landroidx/picker/widget/D;->Y:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    invoke-virtual {p0, v2}, Landroidx/picker/widget/D;->z(Z)V

    iget p1, p0, Landroidx/picker/widget/D;->T:I

    if-nez p1, :cond_3

    invoke-virtual {v4}, Landroidx/picker/widget/O;->a()V

    iput v3, v4, Landroidx/picker/widget/O;->e:I

    iput v3, v4, Landroidx/picker/widget/O;->d:I

    iget-object p1, v4, Landroidx/picker/widget/O;->f:Ljava/lang/Object;

    check-cast p1, Landroidx/picker/widget/D;

    iget-object p1, p1, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p1, Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    iget-object v1, p0, Landroidx/picker/widget/D;->F:Landroid/widget/Scroller;

    if-nez p1, :cond_5

    iget-object p1, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget p1, p0, Landroidx/picker/widget/D;->T:I

    if-ne p1, v5, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_4
    invoke-virtual {p0, v2}, Landroidx/picker/widget/D;->p(I)V

    goto/16 :goto_2

    :cond_5
    iget-object p1, p0, Landroidx/picker/widget/D;->S0:LV/e;

    iget-boolean v4, p1, LV/e;->e:Z

    if-eqz v4, :cond_7

    iget-object v0, p0, Landroidx/picker/widget/D;->E:Landroid/widget/OverScroller;

    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, LV/e;->b()V

    iput-boolean v2, p0, Landroidx/picker/widget/D;->T0:Z

    iget p1, p0, Landroidx/picker/widget/D;->T:I

    if-ne p1, v5, :cond_6

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_6
    invoke-virtual {p0, v2}, Landroidx/picker/widget/D;->p(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p0, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {p0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_2

    :cond_8
    iget p1, p0, Landroidx/picker/widget/D;->K:F

    iget v1, p0, Landroidx/picker/widget/D;->X:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_9

    iget p1, p0, Landroidx/picker/widget/D;->p:I

    if-eq p1, v3, :cond_d

    invoke-virtual {p0}, Landroidx/picker/widget/D;->r()V

    goto :goto_2

    :cond_9
    iget v1, p0, Landroidx/picker/widget/D;->Y:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_a

    iget p1, p0, Landroidx/picker/widget/D;->p:I

    if-eq p1, v3, :cond_d

    invoke-virtual {p0}, Landroidx/picker/widget/D;->r()V

    goto :goto_2

    :cond_a
    iput-boolean v3, p0, Landroidx/picker/widget/D;->W:Z

    iget p1, p0, Landroidx/picker/widget/D;->p:I

    if-eq p1, v3, :cond_b

    invoke-virtual {p0}, Landroidx/picker/widget/D;->r()V

    goto :goto_2

    :cond_b
    iget-object p1, p0, Landroidx/picker/widget/D;->J:Landroidx/picker/widget/x;

    if-nez p1, :cond_c

    new-instance p1, Landroidx/picker/widget/x;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Landroidx/picker/widget/x;-><init>(Landroidx/picker/widget/D;I)V

    iput-object p1, p0, Landroidx/picker/widget/D;->J:Landroidx/picker/widget/x;

    goto :goto_1

    :cond_c
    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_1
    iget-object p0, p0, Landroidx/picker/widget/D;->J:Landroidx/picker/widget/x;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    :goto_2
    move v2, v3

    :cond_e
    :goto_3
    return v2
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object p2, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p2, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    iget-object p5, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v2, p4

    iget v3, p0, Landroidx/picker/widget/D;->E0:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/D;->F0:I

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr v0, p3

    add-int/2addr v1, p4

    invoke-virtual {p5, p3, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Landroidx/picker/widget/D;->n0:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/D;->o(Landroid/widget/Scroller;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/D;->F:Landroid/widget/Scroller;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/D;->o(Landroid/widget/Scroller;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/picker/widget/D;->A()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/picker/widget/D;->k()V

    :goto_0
    iget p1, p0, Landroidx/picker/widget/D;->k:I

    const/4 p3, 0x3

    mul-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, p1

    int-to-float p1, v0

    int-to-float v0, p3

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Landroidx/picker/widget/D;->k:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/picker/widget/D;->A:I

    iget p1, p0, Landroidx/picker/widget/D;->F0:I

    if-gt p1, v0, :cond_2

    iget-boolean v0, p0, Landroidx/picker/widget/D;->f0:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, p3

    :cond_3
    iput p1, p0, Landroidx/picker/widget/D;->G0:I

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p1

    iget p2, p0, Landroidx/picker/widget/D;->F0:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    iget p1, p0, Landroidx/picker/widget/D;->A:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/picker/widget/D;->B:I

    iput p2, p0, Landroidx/picker/widget/D;->C:I

    iget-object p1, p0, Landroidx/picker/widget/D;->y:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p3

    sub-float/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    invoke-virtual {p5}, Landroid/view/View;->getBaseline()I

    move-result p2

    iget p3, p0, Landroidx/picker/widget/D;->F0:I

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    sub-int/2addr p1, p2

    check-cast p5, Landroidx/picker/widget/SeslNumberPicker$CustomEditText;

    iput p1, p5, Landroidx/picker/widget/SeslNumberPicker$CustomEditText;->d:I

    iget-boolean p1, p0, Landroidx/picker/widget/D;->o0:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/D;->Y0:Lc1/w;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroidx/picker/widget/D;->y(ILc1/w;)V

    iput-boolean p2, p0, Landroidx/picker/widget/D;->o0:Z

    :cond_4
    iget p1, p0, Landroidx/picker/widget/D;->F0:I

    iget p2, p0, Landroidx/picker/widget/D;->A:I

    if-le p1, p2, :cond_5

    iget p1, p0, Landroidx/picker/widget/D;->G0:I

    iput p1, p0, Landroidx/picker/widget/D;->X:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/picker/widget/D;->Y:I

    goto :goto_1

    :cond_5
    iput p4, p0, Landroidx/picker/widget/D;->X:I

    iput v1, p0, Landroidx/picker/widget/D;->Y:I

    :cond_6
    :goto_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget v0, p0, Landroidx/picker/widget/D;->i:I

    invoke-static {p1, v0}, Landroidx/picker/widget/D;->n(II)I

    move-result v0

    iget v1, p0, Landroidx/picker/widget/D;->g:I

    invoke-static {p2, v1}, Landroidx/picker/widget/D;->n(II)I

    move-result v1

    iget-object v2, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslNumberPicker;

    invoke-super {v2, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, -0x1

    iget v4, p0, Landroidx/picker/widget/D;->h:I

    if-eq v4, v3, :cond_0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p0, p0, Landroidx/picker/widget/D;->f:I

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

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/picker/widget/D;->g()Landroidx/picker/widget/A;

    move-result-object p0

    sget v0, Landroidx/picker/widget/A;->g:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/picker/widget/A;->d(Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object v1, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    iget-boolean v2, v0, Landroidx/picker/widget/D;->h0:Z

    if-nez v2, :cond_18

    iget-boolean v2, v0, Landroidx/picker/widget/D;->n0:Z

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v2, v0, Landroidx/picker/widget/D;->M:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker/widget/D;->M:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, v0, Landroidx/picker/widget/D;->M:Landroid/view/VelocityTracker;

    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    iget v5, v0, Landroidx/picker/widget/D;->N:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v2, v6, :cond_7

    if-eq v2, v7, :cond_3

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/picker/widget/D;->e(I)Z

    invoke-virtual {v0, v6}, Landroidx/picker/widget/D;->z(Z)V

    invoke-virtual {v0, v3}, Landroidx/picker/widget/D;->p(I)V

    goto/16 :goto_8

    :cond_3
    iget-boolean v2, v0, Landroidx/picker/widget/D;->U:Z

    if-eqz v2, :cond_4

    goto/16 :goto_8

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, v0, Landroidx/picker/widget/D;->T:I

    if-eq v4, v6, :cond_5

    iget v1, v0, Landroidx/picker/widget/D;->K:F

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    if-le v1, v5, :cond_6

    invoke-virtual {v0}, Landroidx/picker/widget/D;->s()V

    invoke-virtual {v0, v3}, Landroidx/picker/widget/D;->z(Z)V

    invoke-virtual {v0, v6}, Landroidx/picker/widget/D;->p(I)V

    goto :goto_0

    :cond_5
    iget v3, v0, Landroidx/picker/widget/D;->L:F

    sub-float v3, v2, v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroidx/picker/widget/D;->t(I)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_0
    iput v2, v0, Landroidx/picker/widget/D;->L:F

    goto/16 :goto_8

    :cond_7
    iget-object v2, v0, Landroidx/picker/widget/D;->J:Landroidx/picker/widget/x;

    if-eqz v2, :cond_8

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_8
    iget-object v2, v0, Landroidx/picker/widget/D;->I:Landroidx/picker/widget/x;

    if-eqz v2, :cond_9

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_9
    iget-boolean v2, v0, Landroidx/picker/widget/D;->V:Z

    if-eqz v2, :cond_a

    goto/16 :goto_8

    :cond_a
    iget-object v2, v0, Landroidx/picker/widget/D;->e0:Landroidx/picker/widget/O;

    invoke-virtual {v2}, Landroidx/picker/widget/O;->a()V

    iget-object v8, v0, Landroidx/picker/widget/D;->M:Landroid/view/VelocityTracker;

    iget v9, v0, Landroidx/picker/widget/D;->P:I

    int-to-float v9, v9

    const/16 v10, 0x3e8

    invoke-virtual {v8, v10, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v9, v4

    iget v10, v0, Landroidx/picker/widget/D;->K:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v9, v9

    iget-boolean v10, v0, Landroidx/picker/widget/D;->g0:Z

    if-nez v10, :cond_b

    iget-boolean v10, v0, Landroidx/picker/widget/D;->U:Z

    if-eqz v10, :cond_b

    invoke-virtual {v0, v3}, Landroidx/picker/widget/D;->e(I)Z

    invoke-virtual {v0, v6}, Landroidx/picker/widget/D;->z(Z)V

    invoke-virtual {v0, v3}, Landroidx/picker/widget/D;->p(I)V

    goto/16 :goto_7

    :cond_b
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, v0, Landroidx/picker/widget/D;->O:I

    if-le v10, v11, :cond_11

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, v0, Landroidx/picker/widget/D;->V0:I

    if-le v10, v11, :cond_11

    if-gt v9, v5, :cond_d

    iget-boolean v2, v0, Landroidx/picker/widget/D;->W:Z

    if-eqz v2, :cond_d

    iput-boolean v3, v0, Landroidx/picker/widget/D;->W:Z

    iget-boolean v1, v0, Landroidx/picker/widget/D;->g0:Z

    if-nez v1, :cond_c

    goto :goto_1

    :cond_c
    invoke-virtual {v0}, Landroidx/picker/widget/D;->x()V

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/picker/widget/D;->p(I)V

    goto/16 :goto_7

    :cond_d
    iget-boolean v2, v0, Landroidx/picker/widget/D;->Q:Z

    if-nez v2, :cond_e

    if-lez v8, :cond_e

    iget v4, v0, Landroidx/picker/widget/D;->o:I

    iget v5, v0, Landroidx/picker/widget/D;->m:I

    if-ne v4, v5, :cond_e

    invoke-virtual {v0, v6}, Landroidx/picker/widget/D;->z(Z)V

    goto :goto_4

    :cond_e
    if-nez v2, :cond_f

    if-gez v8, :cond_f

    iget v2, v0, Landroidx/picker/widget/D;->o:I

    iget v4, v0, Landroidx/picker/widget/D;->n:I

    if-ne v2, v4, :cond_f

    invoke-virtual {v0, v6}, Landroidx/picker/widget/D;->z(Z)V

    goto :goto_4

    :cond_f
    iput v3, v0, Landroidx/picker/widget/D;->G:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    iget v2, v0, Landroidx/picker/widget/D;->C:I

    int-to-float v2, v2

    iput v2, v0, Landroidx/picker/widget/D;->H:F

    int-to-float v2, v8

    iget-object v3, v0, Landroidx/picker/widget/D;->S0:LV/e;

    iput v2, v3, LV/e;->a:F

    iget-object v2, v0, Landroidx/picker/widget/D;->E:Landroid/widget/OverScroller;

    invoke-virtual {v2, v6}, Landroid/widget/OverScroller;->forceFinished(Z)V

    iget v11, v0, Landroidx/picker/widget/D;->C:I

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

    iget v4, v0, Landroidx/picker/widget/D;->C:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, v0, Landroidx/picker/widget/D;->A:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, v0, Landroidx/picker/widget/D;->A:I

    mul-int/2addr v2, v4

    iget v5, v0, Landroidx/picker/widget/D;->B:I

    add-int/2addr v2, v5

    if-lez v8, :cond_10

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_2
    int-to-float v2, v2

    goto :goto_3

    :cond_10
    neg-int v4, v4

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    :goto_3
    iget v4, v0, Landroidx/picker/widget/D;->C:I

    int-to-float v4, v4

    iput v4, v3, LV/e;->b:F

    iput-boolean v6, v3, LV/e;->c:Z

    iput-boolean v6, v0, Landroidx/picker/widget/D;->T0:Z

    invoke-virtual {v3, v2}, LV/e;->a(F)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :goto_4
    invoke-virtual {v0, v7}, Landroidx/picker/widget/D;->p(I)V

    goto :goto_7

    :cond_11
    if-gt v9, v5, :cond_16

    iget-boolean v1, v0, Landroidx/picker/widget/D;->W:Z

    if-eqz v1, :cond_13

    iput-boolean v3, v0, Landroidx/picker/widget/D;->W:Z

    iget-boolean v1, v0, Landroidx/picker/widget/D;->g0:Z

    if-nez v1, :cond_12

    goto :goto_6

    :cond_12
    invoke-virtual {v0}, Landroidx/picker/widget/D;->x()V

    goto :goto_6

    :cond_13
    iget v1, v0, Landroidx/picker/widget/D;->Y:I

    iget-object v5, v2, Landroidx/picker/widget/O;->f:Ljava/lang/Object;

    check-cast v5, Landroidx/picker/widget/D;

    if-le v4, v1, :cond_14

    invoke-virtual {v0, v6}, Landroidx/picker/widget/D;->c(Z)V

    invoke-virtual {v2}, Landroidx/picker/widget/O;->a()V

    iput v7, v2, Landroidx/picker/widget/O;->e:I

    iput v6, v2, Landroidx/picker/widget/O;->d:I

    iget-object v1, v5, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_14
    iget v1, v0, Landroidx/picker/widget/D;->X:I

    if-ge v4, v1, :cond_15

    invoke-virtual {v0, v3}, Landroidx/picker/widget/D;->c(Z)V

    invoke-virtual {v2}, Landroidx/picker/widget/O;->a()V

    iput v7, v2, Landroidx/picker/widget/O;->e:I

    iput v7, v2, Landroidx/picker/widget/O;->d:I

    iget-object v1, v5, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_15
    invoke-virtual {v0, v9}, Landroidx/picker/widget/D;->e(I)Z

    :goto_5
    invoke-virtual {v0, v6}, Landroidx/picker/widget/D;->z(Z)V

    goto :goto_6

    :cond_16
    iget-boolean v1, v0, Landroidx/picker/widget/D;->m0:Z

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Landroidx/picker/widget/D;->x()V

    iput-boolean v3, v0, Landroidx/picker/widget/D;->m0:Z

    :cond_17
    invoke-virtual {v0, v9}, Landroidx/picker/widget/D;->e(I)Z

    invoke-virtual {v0, v6}, Landroidx/picker/widget/D;->z(Z)V

    :goto_6
    iput-boolean v3, v0, Landroidx/picker/widget/D;->H0:Z

    invoke-virtual {v0, v3}, Landroidx/picker/widget/D;->p(I)V

    :goto_7
    iget-object v1, v0, Landroidx/picker/widget/D;->M:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/picker/widget/D;->M:Landroid/view/VelocityTracker;

    :goto_8
    move v3, v6

    :cond_18
    :goto_9
    return v3
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object v0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslNumberPicker;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Landroidx/picker/widget/D;->h0:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p1, Landroidx/picker/widget/x;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Landroidx/picker/widget/x;-><init>(Landroidx/picker/widget/D;I)V

    const-wide/16 v3, 0x14

    invoke-virtual {v0, p1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/picker/widget/D;->h0:Z

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    iget-boolean p1, p0, Landroidx/picker/widget/D;->n0:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/D;->F:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_3
    iget-object p1, p0, Landroidx/picker/widget/D;->E:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/D;->S0:LV/e;

    iget-boolean v0, p1, LV/e;->e:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, LV/e;->b()V

    iput-boolean v1, p0, Landroidx/picker/widget/D;->T0:Z

    :cond_5
    invoke-virtual {p0, v1}, Landroidx/picker/widget/D;->e(I)Z

    :cond_6
    invoke-static {v2}, Lp0/a;->l(Landroid/view/View;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/picker/widget/D;->y0:Z

    iget-object p1, p0, Landroidx/picker/widget/D;->y:Landroid/graphics/Paint;

    iget v0, p0, Landroidx/picker/widget/D;->k:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroidx/picker/widget/D;->v()V

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final performClick()Z
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    invoke-virtual {v0}, Landroidx/picker/widget/D;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    if-nez p0, :cond_2

    iget-boolean p0, v0, Landroidx/picker/widget/D;->g0:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/picker/widget/D;->x()V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final performLongClick()Z
    .locals 2

    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iput-boolean v1, p0, Landroidx/picker/widget/D;->U:Z

    iget-boolean v0, p0, Landroidx/picker/widget/D;->g0:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Landroidx/picker/widget/D;->m0:Z

    :cond_1
    :goto_0
    return v1
.end method

.method public final scrollBy(II)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    invoke-virtual {p0, p2}, Landroidx/picker/widget/D;->t(I)V

    return-void
.end method

.method public setCustomIntervalValue(I)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iput p1, p0, Landroidx/picker/widget/D;->p:I

    return-void
.end method

.method public setCustomNumberPickerIdleColor(I)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object v0, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/D;->j(Landroid/content/Context;)V

    iget-object p1, p0, Landroidx/picker/widget/D;->y:Landroid/graphics/Paint;

    iget v0, p0, Landroidx/picker/widget/D;->r0:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget p1, p0, Landroidx/picker/widget/D;->s0:I

    iget v0, p0, Landroidx/picker/widget/D;->t0:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    iget-object v0, p0, Landroidx/picker/widget/D;->Q0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget p1, p0, Landroidx/picker/widget/D;->t0:I

    iget v0, p0, Landroidx/picker/widget/D;->s0:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    iget-object v0, p0, Landroidx/picker/widget/D;->R0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCustomNumberPickerScrollColor(I)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/picker/widget/D;->x0:Z

    iput p1, p0, Landroidx/picker/widget/D;->u0:I

    iget-object p1, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/D;->j(Landroid/content/Context;)V

    iget p1, p0, Landroidx/picker/widget/D;->s0:I

    iget v0, p0, Landroidx/picker/widget/D;->t0:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    iget-object v0, p0, Landroidx/picker/widget/D;->Q0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget p1, p0, Landroidx/picker/widget/D;->t0:I

    iget v0, p0, Landroidx/picker/widget/D;->s0:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    iget-object v0, p0, Landroidx/picker/widget/D;->R0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCustomTalkbackFormatter(Landroidx/picker/widget/r;)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iput-object p1, p0, Landroidx/picker/widget/D;->v:Landroidx/picker/widget/r;

    return-void
.end method

.method public setDateUnit(I)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1301bd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->c:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1301b8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->c:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1301b5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Landroidx/picker/widget/D;->c:Ljava/lang/String;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object v0, p0, Landroidx/picker/widget/D;->l:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Landroidx/picker/widget/D;->l:[Ljava/lang/String;

    iget-object v0, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const p1, 0x80001

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    :goto_0
    invoke-virtual {p0}, Landroidx/picker/widget/D;->C()Z

    invoke-virtual {p0}, Landroidx/picker/widget/D;->k()V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->B()V

    :goto_1
    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/D;->u(Z)V

    return-void
.end method

.method public setEditTextModeEnabled(Z)V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-boolean v0, p0, Landroidx/picker/widget/D;->g0:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    iget-boolean v0, p0, Landroidx/picker/widget/D;->h0:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/D;->u(Z)V

    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iput-boolean p1, p0, Landroidx/picker/widget/D;->g0:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object v0, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/picker/widget/D;->T:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/picker/widget/D;->A()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/D;->p(I)V

    :cond_0
    return-void
.end method

.method public setErrorToastMessage(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/picker/widget/D;->W0:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setFormatter(Landroidx/picker/widget/s;)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object v0, p0, Landroidx/picker/widget/D;->u:Landroidx/picker/widget/s;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/picker/widget/D;->u:Landroidx/picker/widget/s;

    invoke-virtual {p0}, Landroidx/picker/widget/D;->k()V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->C()Z

    :goto_0
    return-void
.end method

.method public setMaxInputLength(I)V
    .locals 3

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object p0, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    aget-object v1, v1, v0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/text/InputFilter;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    aput-object v2, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 3

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget v0, p0, Landroidx/picker/widget/D;->n:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_3

    iget-boolean v0, p0, Landroidx/picker/widget/D;->Q:Z

    iget v1, p0, Landroidx/picker/widget/D;->p:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    add-int/2addr v0, p1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Landroidx/picker/widget/D;->n:I

    iget v0, p0, Landroidx/picker/widget/D;->o:I

    if-ge p1, v0, :cond_2

    iput p1, p0, Landroidx/picker/widget/D;->o:I

    :cond_2
    invoke-virtual {p0}, Landroidx/picker/widget/D;->D()V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->k()V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->C()Z

    invoke-virtual {p0}, Landroidx/picker/widget/D;->B()V

    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinValue(I)V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget v0, p0, Landroidx/picker/widget/D;->m:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_3

    iget v0, p0, Landroidx/picker/widget/D;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    rem-int v0, p1, v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Landroidx/picker/widget/D;->m:I

    iget v0, p0, Landroidx/picker/widget/D;->o:I

    if-le p1, v0, :cond_2

    iput p1, p0, Landroidx/picker/widget/D;->o:I

    :cond_2
    invoke-virtual {p0}, Landroidx/picker/widget/D;->D()V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->k()V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->C()Z

    invoke-virtual {p0}, Landroidx/picker/widget/D;->B()V

    iget-object p0, p0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnEditTextModeChangedListener(Landroidx/picker/widget/t;)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iput-object p1, p0, Landroidx/picker/widget/D;->t:Landroidx/picker/widget/t;

    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    return-void
.end method

.method public setOnScrollListener(Landroidx/picker/widget/u;)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setOnValueChangedListener(Landroidx/picker/widget/v;)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iput-object p1, p0, Landroidx/picker/widget/D;->s:Landroidx/picker/widget/v;

    return-void
.end method

.method public setPaintFlags(I)V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object v0, p0, Landroidx/picker/widget/D;->y:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v0, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setPaintFlags(I)V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->B()V

    :cond_0
    return-void
.end method

.method public setPickerContentDescription(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iput-object p1, p0, Landroidx/picker/widget/D;->d:Ljava/lang/String;

    iget-object p0, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker$CustomEditText;

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$CustomEditText;->c:Ljava/lang/String;

    return-void
.end method

.method public setSkipValuesOnLongPressEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setSubTextSize(F)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setSubTextTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/picker/widget/D;->w0:Z

    iput-object p1, p0, Landroidx/picker/widget/D;->B0:Landroid/graphics/Typeface;

    iget-object p1, p0, Landroidx/picker/widget/D;->y:Landroid/graphics/Paint;

    iget-object v1, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->C0:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroidx/picker/widget/D;->v()V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->B()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object v0, p0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/picker/widget/D;->k:I

    iget-object v0, p0, Landroidx/picker/widget/D;->y:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget p1, p0, Landroidx/picker/widget/D;->k:I

    int-to-float p1, p1

    iget-object v0, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->B()V

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/picker/widget/D;->w0:Z

    iput-object p1, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->B0:Landroid/graphics/Typeface;

    iget-object p1, p0, Landroidx/picker/widget/D;->y:Landroid/graphics/Paint;

    iget-object v1, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Landroidx/picker/widget/D;->A0:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/D;->C0:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroidx/picker/widget/D;->v()V

    invoke-virtual {p0}, Landroidx/picker/widget/D;->B()V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object v0, p0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/D;->S0:LV/e;

    iget-boolean v0, v0, LV/e;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/picker/widget/D;->A()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/picker/widget/D;->w(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iput-boolean p1, p0, Landroidx/picker/widget/D;->R:Z

    invoke-virtual {p0}, Landroidx/picker/widget/D;->D()V

    return-void
.end method
