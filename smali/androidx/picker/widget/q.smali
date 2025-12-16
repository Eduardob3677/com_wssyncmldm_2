.class public final Landroidx/picker/widget/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public g:Ljava/lang/String;

.field public h:I

.field public final i:Z

.field public final synthetic j:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/q;->j:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/picker/widget/q;->h:I

    iput p2, p0, Landroidx/picker/widget/q;->c:I

    iput p3, p0, Landroidx/picker/widget/q;->d:I

    iput-boolean p4, p0, Landroidx/picker/widget/q;->i:Z

    add-int/lit8 p1, p3, -0x1

    iput p1, p0, Landroidx/picker/widget/q;->f:I

    const/4 p2, 0x2

    if-gez p1, :cond_0

    iput p2, p0, Landroidx/picker/widget/q;->f:I

    :cond_0
    add-int/lit8 p3, p3, 0x1

    if-le p3, p2, :cond_1

    const/4 p3, -0x1

    :cond_1
    iput p3, p0, Landroidx/picker/widget/q;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/q;->j:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->d:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Landroidx/picker/widget/q;->e:I

    if-ltz v1, :cond_2

    iget-object v2, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->y:[Landroid/widget/EditText;

    iget v3, p0, Landroidx/picker/widget/q;->f:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->y:[Landroid/widget/EditText;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->y:[Landroid/widget/EditText;

    iget p0, p0, Landroidx/picker/widget/q;->d:I

    aget-object v1, v1, p0

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->y:[Landroid/widget/EditText;

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    :cond_2
    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    sget p1, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->A:I

    iget-object p0, p0, Landroidx/picker/widget/q;->j:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/q;->j:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->y:[Landroid/widget/EditText;

    iget p0, p0, Landroidx/picker/widget/q;->d:I

    aget-object v1, v1, p0

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    iget-object p2, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->y:[Landroid/widget/EditText;

    aget-object p0, p2, p0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object p0, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->w:Landroid/widget/Toast;

    if-nez p0, :cond_1

    iget-object p0, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->d:Landroid/content/Context;

    iget-object p1, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->v:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    iput-object p0, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->w:Landroid/widget/Toast;

    iget-object p0, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->d:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0085

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0a014c

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->w:Landroid/widget/Toast;

    invoke-virtual {p1, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    :cond_1
    iget-object p0, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->w:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget p2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->A:I

    iget-object p2, p0, Landroidx/picker/widget/q;->j:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/q;->g:Ljava/lang/String;

    iput p4, p0, Landroidx/picker/widget/q;->h:I

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->A:I

    iget-object v2, v0, Landroidx/picker/widget/q;->j:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->y:[Landroid/widget/EditText;

    iget v6, v0, Landroidx/picker/widget/q;->d:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    const-string v7, "onClick"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "onLongClick"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->y:[Landroid/widget/EditText;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    iget-boolean v5, v0, Landroidx/picker/widget/q;->i:Z

    iget v6, v0, Landroidx/picker/widget/q;->c:I

    const/4 v7, 0x0

    iget-object v8, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->m:Landroidx/picker/widget/SeslNumberPicker;

    const/16 v9, 0xa

    const/4 v10, 0x2

    const-string v11, ""

    if-eqz v5, :cond_11

    invoke-virtual {v2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k()Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v0, Landroidx/picker/widget/q;->h:I

    if-ne v5, v1, :cond_8

    invoke-virtual {v8}, Landroidx/picker/widget/SeslNumberPicker;->getMinValue()I

    move-result v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v6, :cond_5

    if-ge v5, v2, :cond_4

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    if-ge v2, v10, :cond_3

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/picker/widget/q;->b(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v7, v11}, Landroidx/picker/widget/q;->b(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/q;->a()V

    goto/16 :goto_9

    :cond_5
    if-lez v3, :cond_26

    const-string v1, "0"

    if-lt v2, v9, :cond_6

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v7, v11}, Landroidx/picker/widget/q;->b(ILjava/lang/String;)V

    return-void

    :cond_6
    const-string v3, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    if-ge v5, v2, :cond_7

    invoke-virtual {v0, v7, v11}, Landroidx/picker/widget/q;->b(ILjava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/q;->a()V

    goto/16 :goto_9

    :cond_8
    iget-object v5, v0, Landroidx/picker/widget/q;->g:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_9

    goto/16 :goto_9

    :cond_9
    const-string v5, "fa"

    if-lt v3, v6, :cond_d

    iget-object v3, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->j:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ar"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "ur"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/q;->a()V

    goto/16 :goto_9

    :cond_b
    :goto_1
    iget-object v3, v0, Landroidx/picker/widget/q;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    :goto_2
    iget v3, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->i:I

    if-ge v7, v3, :cond_26

    iget-object v3, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->t:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/q;->a()V

    goto/16 :goto_9

    :cond_c
    add-int/2addr v7, v1

    goto :goto_2

    :cond_d
    iget-object v1, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->j:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v6, "hi"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "ta"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "ml"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "te"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "or"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "ne"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "as"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "bn"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "gu"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "si"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "pa"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "kn"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "mr"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3

    :cond_e
    iget-object v1, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->j:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_f
    :goto_3
    if-lez v3, :cond_26

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/q;->a()V

    goto/16 :goto_9

    :cond_11
    iget v5, v0, Landroidx/picker/widget/q;->h:I

    if-ne v5, v1, :cond_26

    iget-object v5, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->l:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v12, 0x3

    if-ge v6, v12, :cond_1d

    invoke-virtual {v5}, Landroidx/picker/widget/SeslNumberPicker;->getMinValue()I

    move-result v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iget-object v14, v0, Landroidx/picker/widget/q;->g:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v14, v3, :cond_14

    if-ne v3, v6, :cond_14

    if-ge v13, v5, :cond_13

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_12

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/picker/widget/q;->b(ILjava/lang/String;)V

    goto :goto_4

    :cond_12
    invoke-virtual {v0, v7, v11}, Landroidx/picker/widget/q;->b(ILjava/lang/String;)V

    :goto_4
    return-void

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/q;->a()V

    goto/16 :goto_9

    :cond_14
    if-lt v5, v9, :cond_15

    if-eqz v13, :cond_17

    :cond_15
    const/16 v3, 0x14

    if-lt v5, v3, :cond_16

    if-eqz v13, :cond_17

    if-eq v13, v1, :cond_17

    :cond_16
    const/16 v3, 0x1e

    if-lt v5, v3, :cond_18

    if-eqz v13, :cond_17

    if-eq v13, v1, :cond_17

    if-ne v13, v10, :cond_18

    :cond_17
    invoke-virtual {v0, v7, v11}, Landroidx/picker/widget/q;->b(ILjava/lang/String;)V

    return-void

    :cond_18
    if-le v13, v12, :cond_1a

    if-ge v13, v5, :cond_19

    invoke-virtual {v0, v7, v11}, Landroidx/picker/widget/q;->b(ILjava/lang/String;)V

    return-void

    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/q;->a()V

    :cond_1a
    invoke-virtual {v2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v8}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_5

    :cond_1b
    invoke-virtual {v8}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result v2

    :goto_5
    if-ne v2, v1, :cond_26

    if-ne v13, v12, :cond_26

    if-ge v13, v5, :cond_1c

    invoke-virtual {v0, v7, v11}, Landroidx/picker/widget/q;->b(ILjava/lang/String;)V

    return-void

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/q;->a()V

    goto/16 :goto_9

    :cond_1d
    iget-object v9, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->n:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v9}, Landroidx/picker/widget/SeslNumberPicker;->getMinValue()I

    move-result v13

    invoke-virtual {v9}, Landroidx/picker/widget/SeslNumberPicker;->getMaxValue()I

    move-result v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iget-object v15, v0, Landroidx/picker/widget/q;->g:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v15, v3, :cond_23

    if-ne v3, v6, :cond_23

    if-lt v14, v13, :cond_22

    if-le v14, v9, :cond_1e

    goto :goto_8

    :cond_1e
    invoke-virtual {v2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v8}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result v3

    sub-int/2addr v3, v1

    goto :goto_6

    :cond_1f
    invoke-virtual {v8}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result v3

    :goto_6
    iget-object v6, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->e:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    iget-object v6, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->e:Ljava/util/Calendar;

    invoke-virtual {v5}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result v5

    invoke-virtual {v6, v14, v3, v5}, Ljava/util/Calendar;->set(III)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    iget-object v5, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v5, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v3, v1, v5, v6}, Ljava/util/Calendar;->set(III)V

    iget-object v1, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->e:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->e:Ljava/util/Calendar;

    iget-object v2, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_7

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/q;->a()V

    goto :goto_9

    :cond_21
    :goto_7
    invoke-virtual {v4, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Landroidx/picker/widget/q;->b(ILjava/lang/String;)V

    return-void

    :cond_22
    :goto_8
    invoke-virtual {v4, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Landroidx/picker/widget/q;->b(ILjava/lang/String;)V

    return-void

    :cond_23
    add-int/lit8 v2, v3, -0x1

    int-to-double v5, v2

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v5

    double-to-int v5, v7

    if-eq v3, v1, :cond_24

    const/4 v1, 0x0

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    :cond_24
    div-int/2addr v13, v5

    if-lt v14, v13, :cond_25

    div-int/2addr v9, v5

    if-le v14, v9, :cond_26

    :cond_25
    invoke-virtual {v0, v2, v11}, Landroidx/picker/widget/q;->b(ILjava/lang/String;)V

    :cond_26
    :goto_9
    return-void
.end method
