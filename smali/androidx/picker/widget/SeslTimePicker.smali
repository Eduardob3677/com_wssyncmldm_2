.class public Landroidx/picker/widget/SeslTimePicker;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final c:Landroidx/picker/widget/W;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x101049d

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroidx/picker/widget/W;

    invoke-direct {v0, p0, p1, p2}, Landroidx/picker/widget/W;-><init>(Landroidx/picker/widget/SeslTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/W;->d(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getBaseline()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    iget-object p0, p0, Landroidx/picker/widget/W;->i:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->getBaseline()I

    move-result p0

    return p0
.end method

.method public getHour()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    invoke-virtual {p0}, Landroidx/picker/widget/W;->b()I

    move-result p0

    return p0
.end method

.method public getMinute()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    iget-object p0, p0, Landroidx/picker/widget/W;->j:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result p0

    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    iget-boolean p0, p0, Landroidx/picker/widget/W;->u:Z

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v0, p0, Landroidx/picker/widget/W;->c:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/picker/widget/W;->c:Ljava/util/Locale;

    :goto_0
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/W;->v:Ljava/util/Calendar;

    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Landroid/widget/TimePicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Landroid/widget/TimePicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iget-object v2, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_0

    iget p1, v2, Landroidx/picker/widget/W;->B:I

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    if-ne v1, v4, :cond_1

    iget p2, v2, Landroidx/picker/widget/W;->C:I

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/W;->d(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Landroid/view/View$BaseSavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/picker/widget/U;

    const/4 v0, 0x1

    iget v1, p1, Landroidx/picker/widget/U;->c:I

    invoke-virtual {p0, v1, v0}, Landroidx/picker/widget/W;->f(IZ)V

    iget p1, p1, Landroidx/picker/widget/U;->d:I

    invoke-virtual {p0, p1}, Landroidx/picker/widget/W;->h(I)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/picker/widget/U;

    invoke-virtual {p0}, Landroidx/picker/widget/W;->b()I

    move-result v2

    iget-object p0, p0, Landroidx/picker/widget/W;->j:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result p0

    invoke-direct {v1, v0, v2, p0}, Landroidx/picker/widget/U;-><init>(Landroid/os/Parcelable;II)V

    return-object v1
.end method

.method public final requestLayout()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    if-eqz p0, :cond_2

    iget-object v0, p0, Landroidx/picker/widget/W;->k:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/W;->i:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/W;->j:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public set5MinuteInterval(Z)V
    .locals 5

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    iget-object v0, p0, Landroidx/picker/widget/W;->j:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v1, 0x5

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result p1

    const/16 v2, 0x3a

    const/4 v3, 0x1

    if-lt p1, v2, :cond_1

    invoke-virtual {p0}, Landroidx/picker/widget/W;->b()I

    move-result p1

    const/16 v2, 0x17

    const/4 v4, 0x0

    if-ne p1, v2, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    add-int/2addr p1, v3

    :goto_0
    invoke-virtual {p0, p1, v4}, Landroidx/picker/widget/W;->f(IZ)V

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setCustomIntervalValue(I)V

    iget-object p1, v0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    invoke-virtual {p1, v3}, Landroidx/picker/widget/D;->b(Z)V

    iput v1, p0, Landroidx/picker/widget/W;->D:I

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setCustomIntervalValue(I)V

    :goto_1
    return-void
.end method

.method public setCustomTimePickerIdleColor(I)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    iget-object v0, p0, Landroidx/picker/widget/W;->i:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setCustomNumberPickerIdleColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/W;->j:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setCustomNumberPickerIdleColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/W;->k:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setCustomNumberPickerIdleColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/W;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Landroidx/picker/widget/W;->a:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCustomTimePickerScrollColor(I)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    iget-object v0, p0, Landroidx/picker/widget/W;->i:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setCustomNumberPickerScrollColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/W;->j:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setCustomNumberPickerScrollColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/W;->k:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setCustomNumberPickerScrollColor(I)V

    iget-object p1, p0, Landroidx/picker/widget/W;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0603d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iget-object v0, p0, Landroidx/picker/widget/W;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Landroidx/picker/widget/W;->a:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/W;->g(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    iget-object v0, p0, Landroidx/picker/widget/W;->j:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroidx/picker/widget/W;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/W;->i:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroidx/picker/widget/W;->k:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    iput-boolean p1, p0, Landroidx/picker/widget/W;->u:Z

    return-void
.end method

.method public setHour(I)V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    const/4 v0, 0x0

    const/16 v1, 0x17

    invoke-static {p1, v0, v1}, LZ0/j;->n(III)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/picker/widget/W;->f(IZ)V

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-boolean v0, p0, Landroidx/picker/widget/W;->e:Z

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/picker/widget/W;->b()I

    move-result v0

    iput-boolean p1, p0, Landroidx/picker/widget/W;->e:Z

    invoke-virtual {p0}, Landroidx/picker/widget/W;->c()V

    invoke-virtual {p0}, Landroidx/picker/widget/W;->k()V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/picker/widget/W;->f(IZ)V

    invoke-virtual {p0}, Landroidx/picker/widget/W;->j()V

    :goto_0
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    iget-object v0, p0, Landroidx/picker/widget/W;->c:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/picker/widget/W;->c:Ljava/util/Locale;

    :goto_0
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/W;->v:Ljava/util/Calendar;

    return-void
.end method

.method public setMinute(I)V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    const/4 v0, 0x0

    const/16 v1, 0x3b

    invoke-static {p1, v0, v1}, LZ0/j;->n(III)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/picker/widget/W;->h(I)V

    return-void
.end method

.method public setOnEditTextModeChangedListener(Landroidx/picker/widget/Q;)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setOnTimeChangedListener(Landroidx/picker/widget/S;)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    iput-object p1, p0, Landroidx/picker/widget/W;->d:Landroidx/picker/widget/S;

    return-void
.end method
