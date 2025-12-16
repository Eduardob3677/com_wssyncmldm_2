.class Landroidx/picker/widget/SeslDatePickerSpinnerLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final synthetic A:I


# instance fields
.field public c:Z

.field public final d:Landroid/content/Context;

.field public e:Ljava/util/Calendar;

.field public f:Ljava/util/Calendar;

.field public g:Ljava/util/Calendar;

.field public h:Ljava/util/Calendar;

.field public i:I

.field public final j:Ljava/util/Locale;

.field public k:Landroidx/picker/widget/SeslDatePicker;

.field public final l:Landroidx/picker/widget/SeslNumberPicker;

.field public final m:Landroidx/picker/widget/SeslNumberPicker;

.field public final n:Landroidx/picker/widget/SeslNumberPicker;

.field public final o:Landroid/widget/EditText;

.field public final p:Landroid/widget/EditText;

.field public final q:Landroid/widget/EditText;

.field public final r:Landroid/view/View;

.field public final s:Landroid/view/View;

.field public t:[Ljava/lang/String;

.field public u:[Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public w:Landroid/widget/Toast;

.field public x:Landroidx/picker/widget/f;

.field public final y:[Landroid/widget/EditText;

.field public final z:Landroidx/picker/widget/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const v0, 0x101035c

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroidx/picker/widget/n;

    invoke-direct {p2, p0}, Landroidx/picker/widget/n;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V

    const/4 v0, 0x3

    new-array v2, v0, [Landroid/widget/EditText;

    iput-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->y:[Landroid/widget/EditText;

    new-instance v2, Landroidx/picker/widget/o;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Landroidx/picker/widget/o;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->z:Landroidx/picker/widget/o;

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->d:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0088

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->j:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->b(Ljava/util/Locale;)V

    new-instance v2, Landroidx/picker/widget/n;

    invoke-direct {v2, p0}, Landroidx/picker/widget/n;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V

    const v3, 0x7f0a01fd

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v5, 0x7f0a01ff

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->r:Landroid/view/View;

    const v5, 0x7f0a0203

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->s:Landroid/view/View;

    const v5, 0x7f0a01fe

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/picker/widget/SeslNumberPicker;

    iput-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->l:Landroidx/picker/widget/SeslNumberPicker;

    const v6, 0x7f0a0184

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->o:Landroid/widget/EditText;

    invoke-static {}, Landroidx/picker/widget/SeslNumberPicker;->getTwoDigitFormatter()Landroidx/picker/widget/s;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/picker/widget/SeslNumberPicker;->setFormatter(Landroidx/picker/widget/s;)V

    invoke-virtual {v5, v2}, Landroidx/picker/widget/SeslNumberPicker;->setOnValueChangedListener(Landroidx/picker/widget/v;)V

    invoke-virtual {v5, p2}, Landroidx/picker/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroidx/picker/widget/t;)V

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroidx/picker/widget/SeslNumberPicker;->setMaxInputLength(I)V

    invoke-virtual {v5}, Landroidx/picker/widget/SeslNumberPicker;->a()V

    const v8, 0x7f0a0200

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroidx/picker/widget/SeslNumberPicker;

    iput-object v8, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->m:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->p:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v8, v4}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    invoke-virtual {v8}, Landroidx/picker/widget/SeslNumberPicker;->a()V

    invoke-virtual {v8, v7}, Landroidx/picker/widget/SeslNumberPicker;->setMaxInputLength(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v8, v1}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    iget v10, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->i:I

    sub-int/2addr v10, v4

    invoke-virtual {v8, v10}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroidx/picker/widget/SeslNumberPicker;->setFormatter(Landroidx/picker/widget/s;)V

    iget-object v10, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->t:[Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroidx/picker/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v9, v8, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-object v9, v9, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    const/high16 v10, 0x2000000

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setImeOptions(I)V

    const-string v10, "inputType=month_edittext"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, Landroidx/picker/widget/n;

    invoke-direct {v9, p0}, Landroidx/picker/widget/n;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {v8, v9}, Landroidx/picker/widget/SeslNumberPicker;->setCustomTalkbackFormatter(Landroidx/picker/widget/r;)V

    :goto_0
    invoke-virtual {v8, v2}, Landroidx/picker/widget/SeslNumberPicker;->setOnValueChangedListener(Landroidx/picker/widget/v;)V

    invoke-virtual {v8, p2}, Landroidx/picker/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroidx/picker/widget/t;)V

    const v9, 0x7f0a0202

    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroidx/picker/widget/SeslNumberPicker;

    iput-object v9, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->n:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->q:Landroid/widget/EditText;

    invoke-virtual {v9, v2}, Landroidx/picker/widget/SeslNumberPicker;->setOnValueChangedListener(Landroidx/picker/widget/v;)V

    invoke-virtual {v9, p2}, Landroidx/picker/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroidx/picker/widget/t;)V

    const/4 p2, 0x4

    invoke-virtual {v9, p2}, Landroidx/picker/widget/SeslNumberPicker;->setMaxInputLength(I)V

    invoke-virtual {v9}, Landroidx/picker/widget/SeslNumberPicker;->a()V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt p2, v2, :cond_1

    const-string p2, "sec"

    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    const/16 v2, 0x258

    invoke-static {p2, v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p2

    goto :goto_1

    :cond_1
    const-string p2, "sec-roboto-light"

    invoke-static {p2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    :goto_1
    invoke-virtual {v5, p2}, Landroidx/picker/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v8, p2}, Landroidx/picker/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v9, p2}, Landroidx/picker/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f1301ca

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->v:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f1301b5

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Landroidx/picker/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f1301b8

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Landroidx/picker/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f1301bd

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v9, p2}, Landroidx/picker/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0, p2, v2, v5}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->c(III)V

    invoke-virtual {p0, v4, v4, v4, v4}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->j(ZZZZ)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object p1

    array-length p2, p1

    move v2, v1

    :goto_2
    const/16 v5, 0x4d

    const/16 v6, 0x79

    const/16 v8, 0x64

    if-ge v2, p2, :cond_5

    aget-char v9, p1, v2

    if-eq v9, v5, :cond_4

    if-eq v9, v8, :cond_3

    if-ne v9, v6, :cond_2

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->n:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {v5, p2, v2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->e(Landroidx/picker/widget/SeslNumberPicker;II)V

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->l:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {v5, p2, v2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->e(Landroidx/picker/widget/SeslNumberPicker;II)V

    goto :goto_3

    :cond_4
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->m:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {v5, p2, v2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->e(Landroidx/picker/widget/SeslNumberPicker;II)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    aget-char p2, p1, v1

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->r:Landroid/view/View;

    iget-object v9, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->s:Landroid/view/View;

    if-ne p2, v6, :cond_6

    invoke-virtual {v3, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_4
    aget-char p2, p1, v1

    aget-char p1, p1, v4

    if-eq p2, v5, :cond_a

    if-eq p2, v8, :cond_9

    if-eq p2, v6, :cond_7

    goto :goto_5

    :cond_7
    if-ne p1, v8, :cond_8

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g(I)V

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v7}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g(I)V

    goto :goto_5

    :cond_9
    invoke-virtual {p0, v4}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g(I)V

    goto :goto_5

    :cond_a
    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g(I)V

    :goto_5
    return-void
.end method

.method public static a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p0
.end method

.method public static e(Landroidx/picker/widget/SeslNumberPicker;II)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-ge p2, p1, :cond_0

    const p1, 0x2000005

    goto :goto_0

    :cond_0
    const p1, 0x2000006

    :goto_0
    const p2, 0x7f0a0184

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/Locale;)V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->e:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->e:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->e:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->i:I

    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->t:[Ljava/lang/String;

    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->u:[Ljava/lang/String;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->t:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->i:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->t:[Ljava/lang/String;

    :goto_1
    iget v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->i:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->t:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p1

    move p1, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final c(III)V
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Z)V
    .locals 3

    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->c:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->c:Z

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->d:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->l:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->m:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v2, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->n:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v2, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->c:Z

    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final f()V
    .locals 9

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0b004c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v3, v1

    iget-object v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->l:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v4, v3}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->n:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v5, v3}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    iget-object v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->j:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "my"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const v8, 0x7f0b004a

    if-nez v7, :cond_2

    const-string v7, "ml"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "ar"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "fa"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v7, "ga"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    :cond_1
    const-string v0, "hu"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v1, v1, -0x4

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k()Z

    move-result v0

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->m:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v3}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    goto :goto_2

    :cond_4
    int-to-float v0, v1

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    :goto_2
    const-string v0, "ko"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "zh"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ja"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    int-to-float v0, v2

    invoke-virtual {v4, v0}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    invoke-virtual {v5, v0}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    const/16 v0, 0x3e5

    invoke-virtual {v4, v0}, Landroidx/picker/widget/SeslNumberPicker;->setDateUnit(I)V

    const/16 v0, 0x3e6

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPicker;->setDateUnit(I)V

    const/16 p0, 0x3e7

    invoke-virtual {v5, p0}, Landroidx/picker/widget/SeslNumberPicker;->setDateUnit(I)V

    :cond_6
    return-void
.end method

.method public final g(I)V
    .locals 11

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k()Z

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v4, -0x1

    move v5, v4

    move v6, v5

    goto :goto_1

    :cond_0
    move v6, v1

    move v5, v2

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_1
    move v5, v1

    move v6, v2

    goto :goto_0

    :cond_2
    move v5, v1

    move v4, v2

    move v6, v3

    goto :goto_1

    :cond_3
    move v6, v1

    move v4, v2

    move v5, v3

    :goto_1
    iget-object v7, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->n:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v7}, Landroidx/picker/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    iget-object v8, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->y:[Landroid/widget/EditText;

    aput-object v7, v8, v4

    iget-object v7, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->m:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v7}, Landroidx/picker/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    aput-object v7, v8, v5

    iget-object v7, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->l:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v7}, Landroidx/picker/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    aput-object v7, v8, v6

    aget-object v7, v8, v4

    new-instance v9, Landroidx/picker/widget/q;

    const/4 v10, 0x4

    invoke-direct {v9, p0, v10, v4, v3}, Landroidx/picker/widget/q;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k()Z

    move-result v7

    if-eqz v7, :cond_4

    aget-object v7, v8, v5

    new-instance v9, Landroidx/picker/widget/q;

    invoke-direct {v9, p0, v2, v5, v1}, Landroidx/picker/widget/q;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    :cond_4
    aget-object v7, v8, v5

    new-instance v9, Landroidx/picker/widget/q;

    invoke-direct {v9, p0, v0, v5, v1}, Landroidx/picker/widget/q;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_2
    aget-object v7, v8, v6

    new-instance v9, Landroidx/picker/widget/q;

    invoke-direct {v9, p0, v2, v6, v3}, Landroidx/picker/widget/q;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    array-length p1, v8

    sub-int/2addr p1, v1

    aget-object p1, v8, p1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->z:Landroidx/picker/widget/o;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_6
    aget-object p1, v8, v4

    new-instance v0, Landroidx/picker/widget/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroidx/picker/widget/p;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    aget-object p1, v8, v5

    new-instance v0, Landroidx/picker/widget/p;

    invoke-direct {v0, v1, p0}, Landroidx/picker/widget/p;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    aget-object p1, v8, v6

    new-instance v0, Landroidx/picker/widget/p;

    invoke-direct {v0, v1, p0}, Landroidx/picker/widget/p;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public final h(III)V
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->c(III)V

    invoke-virtual {p0, v1, v1, v1, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->j(ZZZZ)V

    return-void
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->d:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->p:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final j(ZZZZ)V
    .locals 7

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->n:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setWrapSelectorWheel(Z)V

    :cond_0
    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->m:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v3, 0x2

    if-eqz p3, :cond_5

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v4, p3

    if-nez v4, :cond_1

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p3, v3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    goto :goto_1

    :cond_1
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xb

    if-ne p3, v4, :cond_2

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p3, v3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    :goto_0
    move v4, v5

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne p3, v4, :cond_3

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {p3, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move p3, v1

    goto :goto_1

    :cond_3
    move p3, v1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k()Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v4, v4, 0x1

    :cond_4
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroidx/picker/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    invoke-virtual {p2, v4}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k()Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->t:[Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/picker/widget/SeslNumberPicker;->getMinValue()I

    move-result v4

    invoke-virtual {p2}, Landroidx/picker/widget/SeslNumberPicker;->getMaxValue()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {p3, v4, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroidx/picker/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    :cond_5
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->l:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v4, 0x5

    if-eqz p4, :cond_9

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p4, v2}, Ljava/util/Calendar;->get(I)I

    move-result p4

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int/2addr v5, p4

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    move-result p4

    iget-object v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int/2addr v6, p4

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p4, v4}, Ljava/util/Calendar;->get(I)I

    move-result p4

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    goto :goto_3

    :cond_6
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {p4, v2}, Ljava/util/Calendar;->get(I)I

    move-result p4

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne p4, v6, :cond_7

    iget-object v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_7

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p4, v4}, Ljava/util/Calendar;->get(I)I

    move-result p4

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    goto :goto_3

    :cond_7
    iget-object v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne p4, v6, :cond_8

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    move-result p4

    if-ne v5, p4, :cond_8

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {p4, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    :goto_2
    move p4, v2

    goto :goto_3

    :cond_8
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {p4, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    goto :goto_2

    :goto_3
    invoke-virtual {p3, p4}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    invoke-virtual {p3, v5}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    :cond_9
    if-nez p1, :cond_a

    return-void

    :cond_a
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k()Z

    move-result p4

    if-eqz p4, :cond_b

    add-int/2addr p1, v2

    invoke-virtual {p2, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    goto :goto_4

    :cond_b
    invoke-virtual {p2, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    :goto_4
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->p:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setRawInputType(I)V

    :cond_c
    iget-boolean p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->c:Z

    if-eqz p1, :cond_e

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->y:[Landroid/widget/EditText;

    if-eqz p0, :cond_e

    array-length p1, p0

    move p2, v1

    :goto_5
    if-ge p2, p1, :cond_e

    aget-object p3, p0, p2

    invoke-virtual {p3}, Landroid/view/View;->hasFocus()Z

    move-result p4

    if-eqz p4, :cond_d

    invoke-virtual {p3, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    invoke-virtual {p3}, Landroid/widget/EditText;->selectAll()V

    goto :goto_6

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    return-void
.end method

.method public final k()Z
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->t:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->b(Ljava/util/Locale;)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f()V

    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/16 v2, 0x14

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->d:Landroid/content/Context;

    invoke-static {p0, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->l:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->n:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->m:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->l:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->m:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->n:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    return-void
.end method
