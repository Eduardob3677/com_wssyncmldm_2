.class public Le/k;
.super Landroidx/activity/l;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Le/o;


# instance fields
.field public f:Le/C;

.field public final g:Le/D;

.field public final h:Le/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-static {p1, p2}, Le/k;->g(Landroid/content/Context;I)I

    move-result p2

    const/4 v0, 0x1

    const v1, 0x7f04019b

    if-nez p2, :cond_0

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    invoke-direct {p0, p1, v2}, Landroidx/activity/l;-><init>(Landroid/content/Context;I)V

    new-instance v2, Le/D;

    invoke-direct {v2, p0}, Le/D;-><init>(Le/k;)V

    iput-object v2, p0, Le/k;->g:Le/D;

    invoke-virtual {p0}, Le/k;->e()Le/r;

    move-result-object v2

    if-nez p2, :cond_1

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    :cond_1
    move-object p1, v2

    check-cast p1, Le/C;

    iput p2, p1, Le/C;->V:I

    invoke-virtual {v2}, Le/r;->f()V

    new-instance p1, Le/i;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Le/i;-><init>(Landroid/content/Context;Le/k;Landroid/view/Window;)V

    iput-object p1, p0, Le/k;->h:Le/i;

    return-void
.end method

.method public static g(Landroid/content/Context;I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x7f04002f

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Le/k;->e()Le/r;

    move-result-object p0

    check-cast p0, Le/C;

    invoke-virtual {p0}, Le/C;->x()V

    iget-object v0, p0, Le/C;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Le/C;->m:Le/y;

    iget-object p0, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Le/y;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final d(I)Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    iget-object p0, p0, Le/k;->h:Le/i;

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Le/i;->k:Landroid/widget/Button;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Le/i;->o:Landroid/widget/Button;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Le/i;->s:Landroid/widget/Button;

    :goto_0
    return-object p0
.end method

.method public final dismiss()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0}, Le/k;->e()Le/r;

    move-result-object p0

    invoke-virtual {p0}, Le/r;->g()V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object p0, p0, Le/k;->g:Le/D;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Le/D;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final e()Le/r;
    .locals 3

    iget-object v0, p0, Le/k;->f:Le/C;

    if-nez v0, :cond_0

    sget-object v0, Le/r;->c:Le/I;

    new-instance v0, Le/C;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0, p0}, Le/C;-><init>(Landroid/content/Context;Landroid/view/Window;Le/o;Ljava/lang/Object;)V

    iput-object v0, p0, Le/k;->f:Le/C;

    :cond_0
    iget-object p0, p0, Le/k;->f:Le/C;

    return-object p0
.end method

.method public final f(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Le/k;->e()Le/r;

    move-result-object v0

    invoke-virtual {v0}, Le/r;->a()V

    invoke-super {p0, p1}, Landroidx/activity/l;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Le/k;->e()Le/r;

    move-result-object p0

    invoke-virtual {p0}, Le/r;->f()V

    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Le/k;->e()Le/r;

    move-result-object p0

    check-cast p0, Le/C;

    invoke-virtual {p0}, Le/C;->x()V

    iget-object p0, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Le/k;->e()Le/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Le/r;->n(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final i(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final invalidateOptionsMenu()V
    .locals 0

    invoke-virtual {p0}, Le/k;->e()Le/r;

    move-result-object p0

    invoke-virtual {p0}, Le/r;->b()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20

    invoke-virtual/range {p0 .. p1}, Le/k;->f(Landroid/os/Bundle;)V

    move-object/from16 v3, p0

    iget-object v3, v3, Le/k;->h:Le/i;

    iget-object v4, v3, Le/i;->b:Le/k;

    iget v5, v3, Le/i;->F:I

    invoke-virtual {v4, v5}, Le/k;->setContentView(I)V

    iget-object v4, v3, Le/i;->c:Landroid/view/Window;

    const v5, 0x7f0a019d

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Le/c;

    invoke-direct {v6, v3, v5}, Le/c;-><init>(Le/i;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const v6, 0x7f0a0296

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a00a0

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0a0077

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0a00ad

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    iget-object v13, v3, Le/i;->h:Landroid/view/View;

    const/4 v14, 0x0

    iget-object v0, v3, Le/i;->a:Landroid/content/Context;

    if-eqz v13, :cond_0

    goto :goto_0

    :cond_0
    iget v13, v3, Le/i;->i:I

    if-eqz v13, :cond_1

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    iget v1, v3, Le/i;->i:I

    invoke-virtual {v13, v1, v12, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_0
    if-eqz v13, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v14

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {v13}, Le/i;->a(Landroid/view/View;)Z

    move-result v16

    if-nez v16, :cond_4

    :cond_3
    const/high16 v15, 0x20000

    invoke-virtual {v4, v15, v15}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    const/4 v15, -0x1

    const/16 v2, 0x8

    if-eqz v1, :cond_7

    const v1, 0x7f0a00ac

    invoke-virtual {v4, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v15, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v13, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v10, v3, Le/i;->j:Z

    if-eqz v10, :cond_5

    invoke-virtual {v1, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    :cond_5
    iget-object v1, v3, Le/i;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v1, :cond_8

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_6
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lk/p0;

    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_7
    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_2
    invoke-virtual {v12, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f0a0077

    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v1, v7}, Le/i;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v6, v9}, Le/i;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-static {v8, v11}, Le/i;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v8

    if-ne v8, v11, :cond_9

    new-instance v10, LJ/t;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v3}, LJ/t;-><init>(ILjava/lang/Object;)V

    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    :goto_3
    iput-object v10, v3, Le/i;->L:LJ/t;

    const v10, 0x7f0a01d2

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroidx/core/widget/NestedScrollView;

    iput-object v10, v3, Le/i;->w:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v10, v14}, Landroid/view/View;->setFocusable(Z)V

    iget-object v10, v3, Le/i;->w:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v10, v14}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v10, 0x102000b

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v3, Le/i;->B:Landroid/widget/TextView;

    if-nez v10, :cond_a

    goto :goto_4

    :cond_a
    iget-object v11, v3, Le/i;->f:Ljava/lang/CharSequence;

    if-eqz v11, :cond_b

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v3, Le/i;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f0703ac

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Le/i;->b(Landroid/widget/TextView;I)V

    goto :goto_4

    :cond_b
    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v3, Le/i;->w:Landroidx/core/widget/NestedScrollView;

    iget-object v11, v3, Le/i;->B:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v10, v3, Le/i;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v10, :cond_c

    iget-object v10, v3, Le/i;->w:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iget-object v11, v3, Le/i;->w:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v13, v3, Le/i;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v14, v15, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v13, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    if-eqz v10, :cond_d

    const-string v11, "show_button_background"

    const/4 v13, 0x0

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    move v10, v11

    goto :goto_5

    :cond_d
    const/4 v11, 0x1

    :cond_e
    const/4 v10, 0x0

    :goto_5
    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    const v15, 0x1010031

    invoke-virtual {v14, v15, v13, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v11, v13, Landroid/util/TypedValue;->resourceId:I

    if-lez v11, :cond_f

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v14, v13, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    goto :goto_6

    :cond_f
    const/4 v11, -0x1

    :goto_6
    const v14, 0x1020019

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    iput-object v14, v3, Le/i;->k:Landroid/widget/Button;

    iget-object v15, v3, Le/i;->O:Lcom/google/android/material/datepicker/k;

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v14, v13, Landroid/util/TypedValue;->resourceId:I

    if-lez v14, :cond_10

    iget-object v14, v3, Le/i;->k:Landroid/widget/Button;

    invoke-static {v14, v10, v11}, Lp/a;->p(Landroid/widget/Button;ZI)V

    goto :goto_7

    :cond_10
    iget-object v14, v3, Le/i;->k:Landroid/widget/Button;

    invoke-static {v14, v10}, Lp/a;->q(Landroid/widget/TextView;Z)V

    :goto_7
    iget-object v14, v3, Le/i;->l:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    iget v2, v3, Le/i;->d:I

    if-eqz v14, :cond_11

    iget-object v14, v3, Le/i;->n:Landroid/graphics/drawable/Drawable;

    if-nez v14, :cond_11

    iget-object v14, v3, Le/i;->k:Landroid/widget/Button;

    move-object/from16 v17, v6

    const/16 v6, 0x8

    invoke-virtual {v14, v6}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v18, v5

    const/4 v5, 0x0

    goto :goto_9

    :cond_11
    move-object/from16 v17, v6

    iget-object v6, v3, Le/i;->k:Landroid/widget/Button;

    iget-object v14, v3, Le/i;->l:Ljava/lang/CharSequence;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v3, Le/i;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_12

    const/4 v14, 0x0

    invoke-virtual {v6, v14, v14, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, v3, Le/i;->k:Landroid/widget/Button;

    iget-object v14, v3, Le/i;->n:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v5

    const/4 v5, 0x0

    invoke-virtual {v6, v14, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_12
    move-object/from16 v18, v5

    :goto_8
    iget-object v5, v3, Le/i;->k:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x1

    :goto_9
    const v6, 0x102001a

    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v3, Le/i;->o:Landroid/widget/Button;

    invoke-virtual {v6, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v6, v13, Landroid/util/TypedValue;->resourceId:I

    if-lez v6, :cond_13

    iget-object v6, v3, Le/i;->o:Landroid/widget/Button;

    invoke-static {v6, v10, v11}, Lp/a;->p(Landroid/widget/Button;ZI)V

    goto :goto_a

    :cond_13
    iget-object v6, v3, Le/i;->o:Landroid/widget/Button;

    invoke-static {v6, v10}, Lp/a;->q(Landroid/widget/TextView;Z)V

    :goto_a
    iget-object v6, v3, Le/i;->p:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, v3, Le/i;->r:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_14

    iget-object v6, v3, Le/i;->o:Landroid/widget/Button;

    const/16 v14, 0x8

    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v19, v9

    goto :goto_c

    :cond_14
    iget-object v6, v3, Le/i;->o:Landroid/widget/Button;

    iget-object v14, v3, Le/i;->p:Ljava/lang/CharSequence;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v3, Le/i;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_15

    const/4 v14, 0x0

    invoke-virtual {v6, v14, v14, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, v3, Le/i;->o:Landroid/widget/Button;

    iget-object v14, v3, Le/i;->r:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v14, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    :cond_15
    move-object/from16 v19, v9

    :goto_b
    iget-object v6, v3, Le/i;->o:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x2

    or-int/2addr v5, v6

    :goto_c
    const v6, 0x102001b

    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v3, Le/i;->s:Landroid/widget/Button;

    invoke-virtual {v6, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v6, v13, Landroid/util/TypedValue;->resourceId:I

    if-lez v6, :cond_16

    iget-object v6, v3, Le/i;->s:Landroid/widget/Button;

    invoke-static {v6, v10, v11}, Lp/a;->p(Landroid/widget/Button;ZI)V

    goto :goto_d

    :cond_16
    iget-object v6, v3, Le/i;->s:Landroid/widget/Button;

    invoke-static {v6, v10}, Lp/a;->q(Landroid/widget/TextView;Z)V

    :goto_d
    iget-object v6, v3, Le/i;->t:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, v3, Le/i;->v:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_17

    iget-object v2, v3, Le/i;->s:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    :cond_17
    iget-object v6, v3, Le/i;->s:Landroid/widget/Button;

    iget-object v9, v3, Le/i;->t:Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v3, Le/i;->v:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    if-eqz v6, :cond_18

    invoke-virtual {v6, v9, v9, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v3, Le/i;->s:Landroid/widget/Button;

    iget-object v6, v3, Le/i;->v:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    invoke-virtual {v2, v6, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_18
    iget-object v2, v3, Le/i;->s:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x4

    or-int/2addr v5, v2

    :goto_e
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v9, 0x7f04002d

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v2, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_19

    const/high16 v2, 0x3f000000    # 0.5f

    if-ne v5, v10, :cond_1a

    iget-object v6, v3, Le/i;->k:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v6, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    const/4 v6, 0x2

    goto :goto_f

    :cond_1a
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1b

    iget-object v9, v3, Le/i;->o:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    :cond_1b
    const/4 v9, 0x4

    if-ne v5, v9, :cond_1c

    iget-object v9, v3, Le/i;->s:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1c
    :goto_f
    if-eqz v5, :cond_1d

    goto :goto_10

    :cond_1d
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_10
    iget-object v2, v3, Le/i;->s:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_11

    :cond_1e
    const/4 v2, 0x0

    :goto_11
    iget-object v5, v3, Le/i;->k:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1f

    const/4 v5, 0x1

    goto :goto_12

    :cond_1f
    const/4 v5, 0x0

    :goto_12
    iget-object v9, v3, Le/i;->o:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_20

    const/4 v9, 0x1

    goto :goto_13

    :cond_20
    const/4 v9, 0x0

    :goto_13
    const v10, 0x7f0a01e6

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_23

    if-eqz v2, :cond_22

    if-nez v5, :cond_21

    goto :goto_15

    :cond_21
    :goto_14
    const/4 v2, 0x0

    goto :goto_16

    :cond_22
    :goto_15
    if-eqz v2, :cond_23

    if-eqz v9, :cond_23

    goto :goto_14

    :goto_16
    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17

    :cond_23
    const/4 v2, 0x0

    :goto_17
    const v10, 0x7f0a01e5

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_24

    if-eqz v5, :cond_24

    if-eqz v9, :cond_24

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    iget-object v2, v3, Le/i;->L:LJ/t;

    if-eqz v2, :cond_25

    const v2, 0x7f0a0076

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_25

    iget-object v5, v3, Le/i;->L:LJ/t;

    invoke-virtual {v5, v2}, LJ/t;->accept(Ljava/lang/Object;)V

    :cond_25
    iget-object v2, v3, Le/i;->C:Landroid/view/View;

    const v5, 0x7f0a0292

    if-eqz v2, :cond_26

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-direct {v2, v10, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v9, v3, Le/i;->C:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_19

    :cond_26
    const v2, 0x1020006

    invoke-virtual {v4, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Le/i;->z:Landroid/widget/ImageView;

    iget-object v2, v3, Le/i;->e:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v9, 0x1

    xor-int/2addr v2, v9

    if-eqz v2, :cond_29

    iget-boolean v2, v3, Le/i;->M:Z

    if-eqz v2, :cond_29

    const v2, 0x7f0a004d

    invoke-virtual {v4, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Le/i;->A:Landroid/widget/TextView;

    iget-object v9, v3, Le/i;->e:Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v3, Le/i;->A:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0703cb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v3, v2, v9}, Le/i;->b(Landroid/widget/TextView;I)V

    iget v2, v3, Le/i;->x:I

    if-eqz v2, :cond_27

    iget-object v9, v3, Le/i;->z:Landroid/widget/ImageView;

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_18
    const/16 v9, 0x8

    goto :goto_19

    :cond_27
    iget-object v2, v3, Le/i;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_28

    iget-object v9, v3, Le/i;->z:Landroid/widget/ImageView;

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_18

    :cond_28
    iget-object v2, v3, Le/i;->A:Landroid/widget/TextView;

    iget-object v9, v3, Le/i;->z:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    iget-object v10, v3, Le/i;->z:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    iget-object v11, v3, Le/i;->z:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    iget-object v13, v3, Le/i;->z:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v2, v9, v10, v11, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, v3, Le/i;->z:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_19

    :cond_29
    const/16 v9, 0x8

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v3, Le/i;->z:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_19
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v9, :cond_2a

    const/4 v11, 0x1

    goto :goto_1a

    :cond_2a
    const/4 v11, 0x0

    :goto_1a
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v9, :cond_2b

    const/4 v1, 0x1

    goto :goto_1b

    :cond_2b
    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v9, :cond_2c

    const/4 v2, 0x1

    goto :goto_1c

    :cond_2c
    const/4 v2, 0x0

    :goto_1c
    if-eqz v7, :cond_2d

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v9, :cond_2d

    const/4 v7, 0x1

    goto :goto_1d

    :cond_2d
    const/4 v7, 0x0

    :goto_1d
    if-eqz v19, :cond_2e

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v9, :cond_2e

    const/4 v8, 0x1

    goto :goto_1e

    :cond_2e
    const/4 v8, 0x0

    :goto_1e
    iget-object v10, v3, Le/i;->C:Landroid/view/View;

    if-eqz v10, :cond_2f

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v9, :cond_2f

    const/4 v9, 0x1

    goto :goto_1f

    :cond_2f
    const/4 v9, 0x0

    :goto_1f
    if-eqz v11, :cond_31

    if-nez v7, :cond_31

    if-eqz v8, :cond_30

    goto :goto_21

    :cond_30
    :goto_20
    move-object/from16 v9, v18

    const/4 v10, 0x0

    goto :goto_22

    :cond_31
    :goto_21
    if-eqz v9, :cond_32

    goto :goto_20

    :goto_22
    invoke-virtual {v9, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_23

    :cond_32
    move-object/from16 v9, v18

    const/4 v10, 0x0

    :goto_23
    if-eqz v11, :cond_33

    if-eqz v7, :cond_33

    if-nez v8, :cond_33

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0703c6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v5, v7, v10, v7, v10}, Landroid/view/View;->setPadding(IIII)V

    :cond_33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0703bb

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v7, v3, Le/i;->k:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_34

    iget-object v7, v3, Le/i;->k:Landroid/widget/Button;

    int-to-float v10, v5

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, v3, Le/i;->k:Landroid/widget/Button;

    invoke-virtual {v3, v7, v5}, Le/i;->b(Landroid/widget/TextView;I)V

    goto :goto_24

    :cond_34
    const/4 v13, 0x0

    :goto_24
    iget-object v7, v3, Le/i;->o:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v8, :cond_35

    iget-object v7, v3, Le/i;->o:Landroid/widget/Button;

    int-to-float v10, v5

    invoke-virtual {v7, v13, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, v3, Le/i;->o:Landroid/widget/Button;

    invoke-virtual {v3, v7, v5}, Le/i;->b(Landroid/widget/TextView;I)V

    :cond_35
    iget-object v7, v3, Le/i;->s:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v8, :cond_36

    iget-object v7, v3, Le/i;->s:Landroid/widget/Button;

    int-to-float v8, v5

    invoke-virtual {v7, v13, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, v3, Le/i;->s:Landroid/widget/Button;

    invoke-virtual {v3, v7, v5}, Le/i;->b(Landroid/widget/TextView;I)V

    :cond_36
    invoke-virtual {v9}, Landroid/view/View;->isInTouchMode()Z

    move-result v5

    if-nez v5, :cond_3c

    if-eqz v11, :cond_37

    goto :goto_25

    :cond_37
    move-object/from16 v12, v17

    :goto_25
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    move-result v5

    if-eqz v5, :cond_38

    goto :goto_26

    :cond_38
    iget-object v5, v3, Le/i;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v5, :cond_39

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_26

    :cond_39
    iget-object v5, v3, Le/i;->k:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3a

    iget-object v5, v3, Le/i;->k:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_26

    :cond_3a
    iget-object v5, v3, Le/i;->o:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3b

    iget-object v5, v3, Le/i;->o:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_26

    :cond_3b
    iget-object v5, v3, Le/i;->s:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3c

    iget-object v5, v3, Le/i;->s:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    :cond_3c
    :goto_26
    if-eqz v1, :cond_3d

    iget-object v5, v3, Le/i;->w:Landroidx/core/widget/NestedScrollView;

    if-eqz v5, :cond_3d

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_3d
    iget-object v5, v3, Le/i;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    instance-of v7, v5, Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v7, :cond_41

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_3e

    if-nez v1, :cond_41

    :cond_3e
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    if-eqz v1, :cond_3f

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    goto :goto_27

    :cond_3f
    iget v8, v5, Landroidx/appcompat/app/AlertController$RecycleListView;->c:I

    :goto_27
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    if-eqz v2, :cond_40

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    goto :goto_28

    :cond_40
    iget v10, v5, Landroidx/appcompat/app/AlertController$RecycleListView;->d:I

    :goto_28
    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    :cond_41
    if-nez v11, :cond_45

    iget-object v5, v3, Le/i;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v5, :cond_42

    goto :goto_29

    :cond_42
    iget-object v5, v3, Le/i;->w:Landroidx/core/widget/NestedScrollView;

    :goto_29
    if-eqz v5, :cond_45

    if-eqz v2, :cond_43

    goto :goto_2a

    :cond_43
    const/4 v6, 0x0

    :goto_2a
    or-int/2addr v1, v6

    const v2, 0x7f0a01d1

    invoke-virtual {v4, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f0a01d0

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget-object v6, LJ/Q;->a:Ljava/util/WeakHashMap;

    const/4 v6, 0x3

    invoke-static {v5, v1, v6}, LJ/J;->d(Landroid/view/View;II)V

    move-object/from16 v1, v17

    if-eqz v2, :cond_44

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_44
    if-eqz v4, :cond_45

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_45
    iget-object v1, v3, Le/i;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v1, :cond_47

    iget-object v2, v3, Le/i;->D:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_47

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-class v4, Landroid/widget/AdapterView;

    const-string v5, "hidden_semSetBottomColor"

    invoke-static {v4, v5, v2}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_46

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v4}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    iget v2, v3, Le/i;->E:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_47

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07049c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    :cond_47
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Le/k;->h:Le/i;

    iget-object v0, v0, Le/i;->w:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->l(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Le/k;->h:Le/i;

    iget-object v0, v0, Le/i;->w:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->l(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/l;->onStop()V

    invoke-virtual {p0}, Le/k;->e()Le/r;

    move-result-object p0

    invoke-virtual {p0}, Le/r;->h()V

    return-void
.end method

.method public final onSupportActionModeFinished(Li/b;)V
    .locals 0

    return-void
.end method

.method public final onSupportActionModeStarted(Li/b;)V
    .locals 0

    return-void
.end method

.method public final onWindowStartingSupportActionMode(Li/a;)Li/b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-virtual {p0}, Le/k;->e()Le/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Le/r;->k(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Le/k;->e()Le/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Le/r;->l(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Le/k;->e()Le/r;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Le/r;->m(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {p0}, Le/k;->e()Le/r;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Le/r;->n(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Le/k;->h(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Le/k;->h:Le/i;

    iput-object p1, p0, Le/i;->e:Ljava/lang/CharSequence;

    iget-object p0, p0, Le/i;->A:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
