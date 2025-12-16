.class public final Landroidx/picker/widget/H;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final A:I

.field public final B:[I

.field public C:I

.field public D:I

.field public final E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:Z

.field public L:Landroid/graphics/Paint;

.field public M:Landroid/graphics/Paint;

.field public N:Landroid/graphics/Paint;

.field public O:Landroid/graphics/Paint;

.field public Q:Landroid/graphics/Paint;

.field public final R:Ljava/util/Calendar;

.field public T:Ljava/util/Calendar;

.field public U:Ljava/util/Calendar;

.field public final V:Ljava/util/Calendar;

.field public final W:Ljava/util/Calendar;

.field public final a0:Landroidx/picker/widget/E;

.field public b0:Landroidx/picker/widget/F;

.field public final c:I

.field public final c0:Z

.field public final d:I

.field public final d0:Z

.field public final e:I

.field public final e0:Z

.field public f:Z

.field public final f0:Ldalvik/system/PathClassLoader;

.field public final g:Landroid/content/Context;

.field public g0:Landroidx/picker/widget/G;

.field public h:I

.field public h0:Z

.field public i:I

.field public i0:Z

.field public j:I

.field public final j0:Z

.field public k:I

.field public final k0:Z

.field public l:I

.field public l0:I

.field public m:I

.field public m0:Z

.field public final n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x7

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/picker/widget/H;->B:[I

    const/4 v2, 0x0

    iput v2, p0, Landroidx/picker/widget/H;->C:I

    iput v2, p0, Landroidx/picker/widget/H;->D:I

    iput v2, p0, Landroidx/picker/widget/H;->E:I

    const/4 v3, -0x1

    iput v3, p0, Landroidx/picker/widget/H;->F:I

    const/4 v4, 0x1

    iput v4, p0, Landroidx/picker/widget/H;->G:I

    iput v1, p0, Landroidx/picker/widget/H;->H:I

    iput v4, p0, Landroidx/picker/widget/H;->I:I

    const/16 v1, 0x1f

    iput v1, p0, Landroidx/picker/widget/H;->J:I

    iput-boolean v2, p0, Landroidx/picker/widget/H;->K:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroidx/picker/widget/H;->R:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroidx/picker/widget/H;->T:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroidx/picker/widget/H;->U:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroidx/picker/widget/H;->V:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroidx/picker/widget/H;->W:Ljava/util/Calendar;

    iput-boolean v2, p0, Landroidx/picker/widget/H;->d0:Z

    iput-boolean v2, p0, Landroidx/picker/widget/H;->e0:Z

    iput-object v0, p0, Landroidx/picker/widget/H;->f0:Ldalvik/system/PathClassLoader;

    iput-boolean v2, p0, Landroidx/picker/widget/H;->h0:Z

    iput-boolean v2, p0, Landroidx/picker/widget/H;->i0:Z

    iput-boolean v2, p0, Landroidx/picker/widget/H;->j0:Z

    iput-boolean v2, p0, Landroidx/picker/widget/H;->k0:Z

    iput v3, p0, Landroidx/picker/widget/H;->l0:I

    iput-boolean v2, p0, Landroidx/picker/widget/H;->m0:Z

    iput-object p1, p0, Landroidx/picker/widget/H;->g:Landroid/content/Context;

    invoke-static {}, Landroidx/picker/widget/H;->i()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/picker/widget/H;->f:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x7f04010f

    invoke-virtual {v5, v6, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroidx/picker/widget/H;->z:I

    goto :goto_0

    :cond_0
    iget v3, v3, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroidx/picker/widget/H;->z:I

    :goto_0
    const v3, 0x7f06034d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroidx/picker/widget/H;->x:I

    const v3, 0x7f060349

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroidx/picker/widget/H;->y:I

    sget-object v3, Le0/a;->a:[I

    const v5, 0x101035c

    invoke-virtual {p1, v0, v3, v5, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const v2, 0x7f060346

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroidx/picker/widget/H;->w:I

    const v2, 0x7f06034c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroidx/picker/widget/H;->A:I

    const v2, 0x7f0b004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroidx/picker/widget/H;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const v0, 0x7f070380

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/H;->j:I

    const v0, 0x7f07038a

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/H;->m:I

    const v0, 0x7f07038b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/H;->n:I

    const v0, 0x7f070381

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/H;->l:I

    const v0, 0x7f07037f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/H;->k:I

    const v0, 0x7f07037e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/H;->E:I

    new-instance v0, Landroidx/picker/widget/E;

    invoke-direct {v0, p0, p0}, Landroidx/picker/widget/E;-><init>(Landroidx/picker/widget/H;Landroid/view/View;)V

    iput-object v0, p0, Landroidx/picker/widget/H;->a0:Landroidx/picker/widget/E;

    invoke-static {p0, v0}, LJ/Q;->h(Landroid/view/View;LJ/b;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    iput-boolean v4, p0, Landroidx/picker/widget/H;->c0:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "current_sec_active_themepackage"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0b004f

    if-eqz p1, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/H;->c:I

    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/H;->d:I

    const p1, 0x7f0b0049

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/H;->e:I

    invoke-virtual {p0}, Landroidx/picker/widget/H;->f()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public static d(II)I
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x1e

    return p0

    :pswitch_1
    rem-int/lit8 p0, p1, 0x4

    const/16 v0, 0x1c

    if-nez p0, :cond_2

    rem-int/lit8 p0, p1, 0x64

    const/16 v1, 0x1d

    if-nez p0, :cond_1

    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :pswitch_2
    const/16 p0, 0x1f

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static i()Z
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ur"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object p0, p0, Landroidx/picker/widget/H;->a0:Landroidx/picker/widget/E;

    iget v0, p0, LS/b;->k:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroidx/picker/widget/E;->s:Landroidx/picker/widget/H;

    invoke-virtual {p0, v1}, LS/b;->b(Landroid/view/View;)LK/j;

    move-result-object p0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, LK/j;->c(IILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Landroidx/picker/widget/H;->D:I

    iget p0, p0, Landroidx/picker/widget/H;->G:I

    if-ge v0, p0, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    sub-int/2addr v0, p0

    return v0
.end method

.method public final c(FF)I
    .locals 3

    iget-boolean v0, p0, Landroidx/picker/widget/H;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/picker/widget/H;->k:I

    int-to-float v0, v0

    sub-float p1, v0, p1

    :cond_0
    iget v0, p0, Landroidx/picker/widget/H;->E:I

    int-to-float v1, v0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_2

    iget v2, p0, Landroidx/picker/widget/H;->k:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    float-to-int p2, p2

    iget v0, p0, Landroidx/picker/widget/H;->j:I

    div-int/2addr p2, v0

    sub-float/2addr p1, v1

    const/high16 v0, 0x40e00000    # 7.0f

    mul-float/2addr p1, v0

    int-to-float v0, v2

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroidx/picker/widget/H;->b()I

    move-result p0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p2, p2, 0x7

    add-int/2addr p2, p1

    return p2

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/H;->a0:Landroidx/picker/widget/E;

    invoke-virtual {v0, p1}, LS/b;->m(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final e(IZI)I
    .locals 0

    invoke-static {p1, p3}, Landroidx/picker/widget/H;->d(II)I

    move-result p0

    const-string p1, "SeslSimpleMonthView"

    const-string p2, "getDaysInMonthLunar, mSolarLunarConverter is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final f()V
    .locals 13

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/picker/widget/H;->z:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    iget v3, p0, Landroidx/picker/widget/H;->n:I

    int-to-float v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    iget-object v5, p0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroidx/picker/widget/H;->O:Landroid/graphics/Paint;

    iget v5, p0, Landroidx/picker/widget/H;->w:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/H;->O:Landroid/graphics/Paint;

    iget v6, p0, Landroidx/picker/widget/H;->e:I

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    iget v6, p0, Landroidx/picker/widget/H;->l:I

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v6, "sec-roboto-light"

    const-string v7, "sec"

    const/4 v8, 0x0

    const/16 v9, 0x22

    if-lt v0, v9, :cond_0

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v10

    iget-object v11, p0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    const/16 v12, 0x190

    invoke-static {v10, v12, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object v10, p0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    invoke-static {v6, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    iget-object v10, p0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance v2, Landroid/graphics/Paint;

    iget-object v4, p0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Landroidx/picker/widget/H;->M:Landroid/graphics/Paint;

    if-lt v0, v9, :cond_1

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v2, p0, Landroidx/picker/widget/H;->M:Landroid/graphics/Paint;

    const/16 v4, 0x258

    invoke-static {v0, v4, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1

    :cond_1
    invoke-static {v6, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_1
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroidx/picker/widget/H;->Q:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/H;->Q:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroidx/picker/widget/H;->Q:Landroid/graphics/Paint;

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p0, Landroidx/picker/widget/H;->Q:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public final g()Z
    .locals 7

    iget-boolean v0, p0, Landroidx/picker/widget/H;->d0:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Landroidx/picker/widget/H;->h:I

    int-to-float v0, v0

    iget v3, p0, Landroidx/picker/widget/H;->t:I

    int-to-float v3, v3

    iget-boolean v4, p0, Landroidx/picker/widget/H;->e0:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_0

    add-float/2addr v0, v5

    :cond_0
    iget v4, p0, Landroidx/picker/widget/H;->v:I

    if-ne v4, v2, :cond_1

    add-float/2addr v3, v5

    :cond_1
    sub-float/2addr v3, v0

    iget v0, p0, Landroidx/picker/widget/H;->i:I

    iget v4, p0, Landroidx/picker/widget/H;->s:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v0, v4, :cond_2

    cmpg-float v6, v3, v5

    if-ltz v6, :cond_3

    cmpl-float v6, v3, v5

    if-nez v6, :cond_2

    iget-boolean v6, p0, Landroidx/picker/widget/H;->k0:Z

    if-eqz v6, :cond_3

    :cond_2
    sub-int/2addr v4, v2

    if-ne v0, v4, :cond_4

    const/high16 v0, 0x41400000    # 12.0f

    add-float/2addr v3, v0

    cmpg-float v0, v3, v5

    if-ltz v0, :cond_3

    cmpl-float v0, v3, v5

    if-nez v0, :cond_4

    iget-boolean p0, p0, Landroidx/picker/widget/H;->k0:Z

    if-nez p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1

    :cond_5
    iget v0, p0, Landroidx/picker/widget/H;->i:I

    iget v3, p0, Landroidx/picker/widget/H;->s:I

    if-ne v0, v3, :cond_6

    iget v4, p0, Landroidx/picker/widget/H;->h:I

    iget v5, p0, Landroidx/picker/widget/H;->t:I

    sub-int/2addr v5, v2

    if-eq v4, v5, :cond_7

    :cond_6
    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_8

    iget v0, p0, Landroidx/picker/widget/H;->h:I

    const/16 v3, 0xb

    if-ne v0, v3, :cond_8

    iget p0, p0, Landroidx/picker/widget/H;->t:I

    if-nez p0, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    return v1
.end method

.method public final h()Z
    .locals 7

    iget-boolean v0, p0, Landroidx/picker/widget/H;->d0:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Landroidx/picker/widget/H;->h:I

    int-to-float v0, v0

    iget v3, p0, Landroidx/picker/widget/H;->p:I

    int-to-float v3, v3

    iget-boolean v4, p0, Landroidx/picker/widget/H;->e0:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_0

    add-float/2addr v0, v5

    :cond_0
    iget v4, p0, Landroidx/picker/widget/H;->r:I

    if-ne v4, v2, :cond_1

    add-float/2addr v3, v5

    :cond_1
    sub-float/2addr v0, v3

    iget v3, p0, Landroidx/picker/widget/H;->i:I

    iget v4, p0, Landroidx/picker/widget/H;->o:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v3, v4, :cond_2

    cmpg-float v6, v0, v5

    if-ltz v6, :cond_3

    cmpl-float v6, v0, v5

    if-nez v6, :cond_2

    iget-boolean v6, p0, Landroidx/picker/widget/H;->j0:Z

    if-eqz v6, :cond_3

    :cond_2
    add-int/2addr v4, v2

    if-ne v3, v4, :cond_4

    const/high16 v3, 0x41400000    # 12.0f

    add-float/2addr v0, v3

    cmpg-float v3, v0, v5

    if-ltz v3, :cond_3

    cmpl-float v0, v0, v5

    if-nez v0, :cond_4

    iget-boolean p0, p0, Landroidx/picker/widget/H;->j0:Z

    if-nez p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1

    :cond_5
    iget v0, p0, Landroidx/picker/widget/H;->i:I

    iget v3, p0, Landroidx/picker/widget/H;->o:I

    if-ne v0, v3, :cond_6

    iget v4, p0, Landroidx/picker/widget/H;->h:I

    iget v5, p0, Landroidx/picker/widget/H;->p:I

    add-int/2addr v5, v2

    if-eq v4, v5, :cond_7

    :cond_6
    add-int/2addr v3, v2

    if-ne v0, v3, :cond_8

    iget v0, p0, Landroidx/picker/widget/H;->h:I

    if-nez v0, :cond_8

    iget p0, p0, Landroidx/picker/widget/H;->p:I

    const/16 v0, 0xb

    if-ne p0, v0, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    return v1
.end method

.method public final j(III)Z
    .locals 5

    iget-object v0, p0, Landroidx/picker/widget/H;->W:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-boolean p0, p0, Landroidx/picker/widget/H;->d0:Z

    if-ne v2, p1, :cond_0

    if-ne v3, p2, :cond_0

    if-ne v0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final k(IIIZ)V
    .locals 6

    iget-boolean v0, p0, Landroidx/picker/widget/H;->d0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/H;->V:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    if-eqz p4, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Calendar;->clear()V

    iget-object v2, p0, Landroidx/picker/widget/H;->T:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/H;->T:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Landroidx/picker/widget/H;->T:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p4, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v0, p4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    return-void

    :cond_0
    iget-object p4, p0, Landroidx/picker/widget/H;->U:Ljava/util/Calendar;

    invoke-virtual {v0, p4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    return-void

    :cond_1
    iget-object p4, p0, Landroidx/picker/widget/H;->g0:Landroidx/picker/widget/G;

    if-eqz p4, :cond_3

    const/4 p4, 0x0

    invoke-virtual {p0, p4}, Landroid/view/View;->playSoundEffect(I)V

    iget-object p4, p0, Landroidx/picker/widget/H;->g0:Landroidx/picker/widget/G;

    check-cast p4, Landroidx/picker/widget/SeslDatePicker;

    iput-boolean v1, p4, Landroidx/picker/widget/SeslDatePicker;->f:Z

    invoke-virtual {p4}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v0

    sub-int v0, p1, v0

    mul-int/lit8 v0, v0, 0xc

    invoke-virtual {p4}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v2

    sub-int v2, p2, v2

    add-int/2addr v2, v0

    iget-object v0, p4, Landroidx/picker/widget/SeslDatePicker;->Q:Landroidx/picker/widget/g;

    iget-object v0, v0, Landroidx/picker/widget/g;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/H;

    if-nez v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget v2, v0, Landroidx/picker/widget/H;->D:I

    iget v0, v0, Landroidx/picker/widget/H;->G:I

    sub-int/2addr v0, v1

    sub-int/2addr v2, v0

    :goto_0
    iput v2, p4, Landroidx/picker/widget/SeslDatePicker;->z:I

    invoke-virtual {p4, p0, p1, p2, p3}, Landroidx/picker/widget/SeslDatePicker;->k(Landroidx/picker/widget/H;III)V

    invoke-virtual {p4, v1}, Landroidx/picker/widget/SeslDatePicker;->n(Z)V

    :cond_3
    iget-object p0, p0, Landroidx/picker/widget/H;->a0:Landroidx/picker/widget/E;

    invoke-virtual {p0, p3, v1}, LS/b;->y(II)V

    return-void
.end method

.method public final l(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V
    .locals 11

    move-object v0, p0

    move v1, p2

    move v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p17

    iput v5, v0, Landroidx/picker/widget/H;->C:I

    iget v5, v0, Landroidx/picker/widget/H;->j:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_0

    iput v6, v0, Landroidx/picker/widget/H;->j:I

    :cond_0
    move v5, p1

    iput v5, v0, Landroidx/picker/widget/H;->F:I

    if-ltz v1, :cond_1

    const/16 v5, 0xb

    if-gt v1, v5, :cond_1

    iput v1, v0, Landroidx/picker/widget/H;->h:I

    :cond_1
    move v1, p3

    iput v1, v0, Landroidx/picker/widget/H;->i:I

    iget-object v1, v0, Landroidx/picker/widget/H;->R:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget v5, v0, Landroidx/picker/widget/H;->h:I

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->set(II)V

    iget v5, v0, Landroidx/picker/widget/H;->i:I

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x5

    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->set(II)V

    iput-object v3, v0, Landroidx/picker/widget/H;->T:Ljava/util/Calendar;

    iput-object v4, v0, Landroidx/picker/widget/H;->U:Ljava/util/Calendar;

    const/4 v8, 0x7

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, v0, Landroidx/picker/widget/H;->D:I

    iget v9, v0, Landroidx/picker/widget/H;->h:I

    iget v10, v0, Landroidx/picker/widget/H;->i:I

    invoke-static {v9, v10}, Landroidx/picker/widget/H;->d(II)I

    move-result v9

    iput v9, v0, Landroidx/picker/widget/H;->H:I

    if-lt v2, v7, :cond_2

    if-gt v2, v8, :cond_2

    iput v2, v0, Landroidx/picker/widget/H;->G:I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    iput v1, v0, Landroidx/picker/widget/H;->G:I

    :goto_0
    iget v1, v0, Landroidx/picker/widget/H;->h:I

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget v1, v0, Landroidx/picker/widget/H;->i:I

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_1

    :cond_3
    move/from16 v1, p5

    :goto_1
    iget v2, v0, Landroidx/picker/widget/H;->h:I

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_4

    iget v2, v0, Landroidx/picker/widget/H;->i:I

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_2

    :cond_4
    move/from16 v2, p6

    :goto_2
    const/16 v3, 0x20

    if-lez v1, :cond_5

    if-ge v2, v3, :cond_5

    iput v1, v0, Landroidx/picker/widget/H;->I:I

    :cond_5
    if-lez v2, :cond_6

    if-ge v2, v3, :cond_6

    if-lt v2, v1, :cond_6

    iput v2, v0, Landroidx/picker/widget/H;->J:I

    :cond_6
    iget-object v1, v0, Landroidx/picker/widget/H;->a0:Landroidx/picker/widget/E;

    invoke-virtual {v1}, LS/b;->p()V

    move/from16 v1, p9

    iput v1, v0, Landroidx/picker/widget/H;->o:I

    move/from16 v1, p10

    iput v1, v0, Landroidx/picker/widget/H;->p:I

    move/from16 v1, p11

    iput v1, v0, Landroidx/picker/widget/H;->q:I

    move/from16 v1, p12

    iput v1, v0, Landroidx/picker/widget/H;->r:I

    move/from16 v1, p13

    iput v1, v0, Landroidx/picker/widget/H;->s:I

    move/from16 v1, p14

    iput v1, v0, Landroidx/picker/widget/H;->t:I

    move/from16 v1, p15

    iput v1, v0, Landroidx/picker/widget/H;->u:I

    move/from16 v1, p16

    iput v1, v0, Landroidx/picker/widget/H;->v:I

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Landroidx/picker/widget/H;->i()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/picker/widget/H;->f:Z

    iget-object p1, p0, Landroidx/picker/widget/H;->a0:Landroidx/picker/widget/E;

    invoke-virtual {p1}, LS/b;->p()V

    iget-object p1, p0, Landroidx/picker/widget/H;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070380

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/H;->j:I

    const v0, 0x7f07038a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/H;->m:I

    const v0, 0x7f070381

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/H;->l:I

    invoke-virtual {p0}, Landroidx/picker/widget/H;->f()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget v1, v0, Landroidx/picker/widget/H;->j:I

    const/4 v8, 0x2

    mul-int/2addr v1, v8

    const/4 v9, 0x3

    div-int/2addr v1, v9

    iget v2, v0, Landroidx/picker/widget/H;->k:I

    div-int/lit8 v10, v2, 0xe

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/H;->b()I

    move-result v11

    iget v2, v0, Landroidx/picker/widget/H;->l:I

    int-to-float v2, v2

    const v3, 0x402ccccd    # 2.7f

    div-float v12, v2, v3

    iget v13, v0, Landroidx/picker/widget/H;->o:I

    iget v2, v0, Landroidx/picker/widget/H;->p:I

    int-to-float v2, v2

    iget v14, v0, Landroidx/picker/widget/H;->q:I

    iget v15, v0, Landroidx/picker/widget/H;->s:I

    iget v3, v0, Landroidx/picker/widget/H;->t:I

    int-to-float v3, v3

    iget v6, v0, Landroidx/picker/widget/H;->u:I

    iget-boolean v4, v0, Landroidx/picker/widget/H;->d0:Z

    const/4 v5, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    if-eqz v4, :cond_0

    iget v9, v0, Landroidx/picker/widget/H;->r:I

    if-ne v9, v5, :cond_0

    add-float v2, v2, v16

    :cond_0
    move v9, v2

    if-eqz v4, :cond_1

    iget v2, v0, Landroidx/picker/widget/H;->v:I

    if-ne v2, v5, :cond_1

    add-float v3, v3, v16

    :cond_1
    move/from16 v17, v3

    iget v3, v0, Landroidx/picker/widget/H;->i:I

    iget v2, v0, Landroidx/picker/widget/H;->h:I

    int-to-float v2, v2

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Landroidx/picker/widget/H;->e0:Z

    if-eqz v4, :cond_2

    add-float v2, v2, v16

    :cond_2
    move/from16 v16, v2

    mul-int/lit16 v2, v13, 0x2710

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v8, v9, v4

    float-to-int v8, v8

    add-int/2addr v2, v8

    mul-int/lit16 v8, v15, 0x2710

    mul-float v5, v17, v4

    float-to-int v5, v5

    add-int/2addr v8, v5

    mul-int/lit16 v5, v3, 0x2710

    mul-float v4, v4, v16

    float-to-int v4, v4

    add-int/2addr v5, v4

    iget v4, v0, Landroidx/picker/widget/H;->C:I

    const/16 v20, 0x0

    if-eqz v4, :cond_4

    add-int v4, v2, v14

    move/from16 v21, v1

    add-int v1, v8, v6

    if-le v4, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move/from16 v1, v20

    :goto_0
    move/from16 v22, v1

    goto :goto_1

    :cond_4
    move/from16 v21, v1

    move/from16 v22, v20

    :goto_1
    if-nez v22, :cond_9

    if-ne v13, v15, :cond_5

    cmpl-float v1, v9, v17

    if-nez v1, :cond_5

    if-ne v3, v13, :cond_5

    cmpl-float v1, v16, v9

    if-nez v1, :cond_5

    move v8, v6

    :goto_2
    move v5, v14

    goto :goto_6

    :cond_5
    if-ge v2, v5, :cond_6

    if-ge v5, v8, :cond_6

    if-ne v3, v15, :cond_7

    cmpl-float v1, v16, v17

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    :goto_3
    iget v1, v0, Landroidx/picker/widget/H;->H:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    move v8, v1

    :goto_4
    move/from16 v5, v20

    goto :goto_6

    :goto_5
    if-ne v3, v13, :cond_8

    cmpl-float v1, v16, v9

    if-nez v1, :cond_8

    iget v1, v0, Landroidx/picker/widget/H;->H:I

    add-int/2addr v1, v2

    move v8, v1

    goto :goto_2

    :cond_8
    if-ne v3, v15, :cond_9

    cmpl-float v1, v16, v17

    if-nez v1, :cond_9

    move v8, v6

    goto :goto_4

    :cond_9
    const/4 v5, -0x1

    const/4 v8, -0x1

    :goto_6
    invoke-static/range {p0 .. p0}, Lp0/a;->l(Landroid/view/View;)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/picker/widget/H;->K:Z

    move/from16 v23, v20

    move/from16 v2, v21

    const/4 v1, 0x1

    move/from16 v21, v11

    :goto_7
    iget v4, v0, Landroidx/picker/widget/H;->H:I

    move/from16 v25, v11

    const-string v11, "%d"

    move-object/from16 v26, v11

    iget v11, v0, Landroidx/picker/widget/H;->n:I

    move/from16 v27, v8

    iget-object v8, v0, Landroidx/picker/widget/H;->B:[I

    move/from16 v28, v5

    iget v5, v0, Landroidx/picker/widget/H;->c:I

    move/from16 v30, v6

    iget v6, v0, Landroidx/picker/widget/H;->E:I

    move/from16 v31, v15

    iget v15, v0, Landroidx/picker/widget/H;->A:I

    if-gt v1, v4, :cond_22

    iget-boolean v4, v0, Landroidx/picker/widget/H;->f:Z

    if-eqz v4, :cond_a

    rsub-int/lit8 v4, v21, 0x6

    const/16 v18, 0x2

    mul-int/lit8 v4, v4, 0x2

    const/16 v19, 0x1

    :goto_8
    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v10

    add-int/2addr v4, v6

    move v6, v4

    goto :goto_9

    :cond_a
    const/16 v19, 0x1

    mul-int/lit8 v4, v21, 0x2

    goto :goto_8

    :goto_9
    iget v4, v0, Landroidx/picker/widget/H;->G:I

    add-int v4, v21, v4

    const/16 v29, 0x7

    rem-int/lit8 v4, v4, 0x7

    move/from16 v32, v10

    iget-object v10, v0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    aget v4, v8, v4

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, v0, Landroidx/picker/widget/H;->I:I

    if-lt v1, v4, :cond_b

    iget v4, v0, Landroidx/picker/widget/H;->J:I

    if-le v1, v4, :cond_c

    :cond_b
    iget-object v4, v0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_c
    iget v4, v0, Landroidx/picker/widget/H;->i:I

    iget v8, v0, Landroidx/picker/widget/H;->h:I

    invoke-virtual {v0, v4, v8, v1}, Landroidx/picker/widget/H;->j(III)Z

    move-result v4

    if-eqz v4, :cond_d

    int-to-float v4, v6

    int-to-float v8, v2

    sub-float/2addr v8, v12

    iget v10, v0, Landroidx/picker/widget/H;->m:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, v0, Landroidx/picker/widget/H;->Q:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v8, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_d
    iget-object v4, v0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    iget-boolean v8, v0, Landroidx/picker/widget/H;->K:Z

    if-eqz v8, :cond_e

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    if-eq v8, v5, :cond_e

    iget-object v4, v0, Landroidx/picker/widget/H;->M:Landroid/graphics/Paint;

    iget-object v5, v0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Landroidx/picker/widget/H;->M:Landroid/graphics/Paint;

    :cond_e
    move-object v8, v4

    if-eqz v22, :cond_18

    if-ne v13, v3, :cond_f

    cmpl-float v4, v9, v16

    if-nez v4, :cond_f

    if-ne v14, v1, :cond_f

    iget v4, v0, Landroidx/picker/widget/H;->C:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_10

    const/4 v5, 0x3

    if-eq v4, v5, :cond_10

    :cond_f
    move/from16 v10, v31

    goto :goto_a

    :cond_10
    move/from16 v11, v30

    move/from16 v10, v31

    goto :goto_c

    :goto_a
    if-ne v10, v3, :cond_13

    cmpl-float v4, v17, v16

    if-nez v4, :cond_13

    move/from16 v11, v30

    if-ne v11, v1, :cond_11

    iget v4, v0, Landroidx/picker/widget/H;->C:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_12

    const/4 v5, 0x3

    if-ne v4, v5, :cond_11

    goto :goto_c

    :cond_11
    move/from16 v31, v2

    :goto_b
    move/from16 v30, v12

    goto :goto_d

    :cond_12
    :goto_c
    int-to-float v4, v6

    int-to-float v5, v2

    sub-float/2addr v5, v12

    move/from16 v30, v12

    iget v12, v0, Landroidx/picker/widget/H;->m:I

    int-to-float v12, v12

    move/from16 v31, v2

    iget-object v2, v0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_d

    :cond_13
    move/from16 v31, v2

    move/from16 v11, v30

    goto :goto_b

    :goto_d
    if-ne v10, v3, :cond_15

    cmpl-float v2, v17, v16

    if-nez v2, :cond_15

    if-ne v11, v1, :cond_15

    iget v2, v0, Landroidx/picker/widget/H;->C:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_14

    const/4 v4, 0x3

    if-eq v2, v4, :cond_14

    goto :goto_e

    :cond_14
    const/4 v5, 0x1

    goto :goto_11

    :cond_15
    :goto_e
    if-ne v13, v3, :cond_16

    cmpl-float v2, v9, v16

    if-nez v2, :cond_16

    if-ne v14, v1, :cond_16

    iget v2, v0, Landroidx/picker/widget/H;->C:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_17

    const/4 v4, 0x3

    if-ne v2, v4, :cond_16

    goto :goto_11

    :cond_16
    move/from16 v34, v9

    move/from16 v35, v10

    move/from16 v24, v11

    move/from16 v19, v14

    move/from16 v14, v28

    move/from16 v10, v31

    move v9, v1

    move/from16 v28, v3

    :goto_f
    move v11, v6

    move/from16 v31, v13

    :goto_10
    move/from16 v13, v32

    goto/16 :goto_18

    :cond_17
    :goto_11
    int-to-float v2, v6

    move/from16 v4, v31

    int-to-float v12, v4

    sub-float v12, v12, v30

    iget v5, v0, Landroidx/picker/widget/H;->m:I

    int-to-float v5, v5

    move/from16 v31, v3

    iget-object v3, v0, Landroidx/picker/widget/H;->O:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v12, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move/from16 v34, v9

    move/from16 v35, v10

    move/from16 v24, v11

    move/from16 v19, v14

    move/from16 v14, v28

    move/from16 v28, v31

    move v9, v1

    move v10, v4

    goto :goto_f

    :cond_18
    move v4, v2

    move/from16 v5, v28

    move/from16 v11, v30

    move/from16 v10, v31

    move/from16 v31, v3

    move/from16 v30, v12

    if-ge v5, v1, :cond_1a

    move/from16 v12, v27

    if-ge v1, v12, :cond_19

    sub-int v2, v6, v32

    int-to-float v2, v2

    int-to-float v3, v4

    sub-float v3, v3, v30

    move/from16 v27, v1

    iget v1, v0, Landroidx/picker/widget/H;->m:I

    move/from16 v28, v4

    int-to-float v4, v1

    sub-float/2addr v3, v4

    mul-int/lit8 v4, v32, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v2

    const/16 v18, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v33, v3, v1

    iget-object v1, v0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    move/from16 v34, v9

    move/from16 v9, v27

    move-object/from16 v27, v1

    move-object/from16 v1, p1

    move/from16 v35, v10

    move/from16 v10, v28

    move/from16 v28, v31

    move/from16 v31, v13

    const/4 v13, -0x1

    move/from16 v19, v14

    move v14, v5

    move/from16 v5, v33

    move/from16 v24, v11

    move v11, v6

    move-object/from16 v6, v27

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_13

    :cond_19
    move/from16 v34, v9

    move/from16 v35, v10

    move/from16 v24, v11

    move/from16 v19, v14

    :goto_12
    move/from16 v28, v31

    move v9, v1

    move v10, v4

    move v14, v5

    move v11, v6

    move/from16 v31, v13

    const/4 v13, -0x1

    goto :goto_13

    :cond_1a
    move/from16 v34, v9

    move/from16 v35, v10

    move/from16 v24, v11

    move/from16 v19, v14

    move/from16 v12, v27

    goto :goto_12

    :goto_13
    if-eq v14, v13, :cond_1b

    if-ne v14, v12, :cond_1b

    if-ne v9, v14, :cond_1b

    int-to-float v1, v11

    int-to-float v2, v10

    sub-float v2, v2, v30

    iget v3, v0, Landroidx/picker/widget/H;->m:I

    int-to-float v3, v3

    iget-object v4, v0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v27, v12

    goto/16 :goto_10

    :cond_1b
    if-ne v12, v9, :cond_1d

    int-to-float v1, v10

    sub-float v6, v1, v30

    iget-boolean v1, v0, Landroidx/picker/widget/H;->f:Z

    if-eqz v1, :cond_1c

    int-to-float v1, v11

    :goto_14
    move v2, v1

    goto :goto_15

    :cond_1c
    sub-int v1, v11, v32

    int-to-float v1, v1

    goto :goto_14

    :goto_15
    iget v1, v0, Landroidx/picker/widget/H;->m:I

    int-to-float v3, v1

    sub-float v3, v6, v3

    move/from16 v5, v32

    int-to-float v4, v5

    add-float/2addr v4, v2

    const/16 v18, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v27, v3, v1

    iget-object v1, v0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    move-object/from16 v29, v1

    move-object/from16 v1, p1

    move v13, v5

    move/from16 v5, v27

    move/from16 v27, v12

    move v12, v6

    move-object/from16 v6, v29

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v11

    iget v2, v0, Landroidx/picker/widget/H;->m:I

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v12, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_18

    :cond_1d
    move/from16 v27, v12

    move/from16 v13, v32

    if-ne v14, v9, :cond_1f

    int-to-float v1, v10

    sub-float v12, v1, v30

    iget-boolean v1, v0, Landroidx/picker/widget/H;->f:Z

    if-eqz v1, :cond_1e

    sub-int v6, v11, v13

    int-to-float v1, v6

    :goto_16
    move v2, v1

    goto :goto_17

    :cond_1e
    int-to-float v1, v11

    goto :goto_16

    :goto_17
    iget v1, v0, Landroidx/picker/widget/H;->m:I

    int-to-float v3, v1

    sub-float v3, v12, v3

    int-to-float v4, v13

    add-float/2addr v4, v2

    const/4 v5, 0x2

    mul-int/2addr v1, v5

    int-to-float v1, v1

    add-float v5, v3, v1

    iget-object v6, v0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v11

    iget v2, v0, Landroidx/picker/widget/H;->m:I

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v12, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1f
    :goto_18
    iget v1, v0, Landroidx/picker/widget/H;->C:I

    move/from16 v12, v27

    if-nez v1, :cond_20

    if-ne v9, v12, :cond_20

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setColor(I)V

    :cond_20
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v4, v26

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v11

    int-to-float v3, v10

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v21, 0x1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_21

    iget v1, v0, Landroidx/picker/widget/H;->j:I

    add-int v2, v10, v1

    add-int/lit8 v23, v23, 0x1

    move/from16 v21, v20

    goto :goto_19

    :cond_21
    move/from16 v21, v1

    move v2, v10

    :goto_19
    add-int/lit8 v1, v9, 0x1

    move v8, v12

    move v10, v13

    move v5, v14

    move/from16 v14, v19

    move/from16 v6, v24

    move/from16 v11, v25

    move/from16 v3, v28

    move/from16 v12, v30

    move/from16 v13, v31

    move/from16 v9, v34

    move/from16 v15, v35

    goto/16 :goto_7

    :cond_22
    move v13, v10

    move/from16 v30, v12

    move-object/from16 v4, v26

    move/from16 v12, v27

    move/from16 v14, v28

    const/4 v3, 0x7

    move v10, v2

    iget-boolean v1, v0, Landroidx/picker/widget/H;->i0:Z

    iget v9, v0, Landroidx/picker/widget/H;->d:I

    const/16 v2, 0xb

    iget-object v3, v0, Landroidx/picker/widget/H;->V:Ljava/util/Calendar;

    if-nez v1, :cond_35

    iget v1, v0, Landroidx/picker/widget/H;->h:I

    move-object/from16 v16, v3

    add-int/lit8 v3, v1, 0x1

    move-object/from16 v26, v4

    iget v4, v0, Landroidx/picker/widget/H;->i:I

    if-le v3, v2, :cond_23

    add-int/lit8 v3, v4, 0x1

    move/from16 v17, v3

    move/from16 v3, v20

    goto :goto_1a

    :cond_23
    move/from16 v17, v4

    :goto_1a
    iget-boolean v2, v0, Landroidx/picker/widget/H;->d0:Z

    if-eqz v2, :cond_25

    iget-boolean v2, v0, Landroidx/picker/widget/H;->k0:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    const/16 v2, 0xb

    if-le v1, v2, :cond_24

    add-int/lit8 v4, v4, 0x1

    move v1, v4

    move v4, v3

    move/from16 v3, v20

    goto :goto_1b

    :cond_24
    move/from16 v40, v3

    move v3, v1

    move v1, v4

    move/from16 v4, v40

    goto :goto_1b

    :cond_25
    const/16 v2, 0xb

    const/4 v4, 0x1

    move/from16 v1, v17

    :goto_1b
    move/from16 v36, v4

    move/from16 v4, v23

    :goto_1c
    const/4 v2, 0x6

    if-eq v4, v2, :cond_34

    iget-boolean v2, v0, Landroidx/picker/widget/H;->f:Z

    if-eqz v2, :cond_26

    rsub-int/lit8 v2, v21, 0x6

    const/16 v17, 0x2

    mul-int/lit8 v2, v2, 0x2

    const/16 v17, 0x1

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v13

    add-int/2addr v2, v6

    move/from16 v17, v1

    goto :goto_1e

    :cond_26
    const/16 v17, 0x1

    mul-int/lit8 v2, v21, 0x2

    goto :goto_1d

    :goto_1e
    iget v1, v0, Landroidx/picker/widget/H;->G:I

    add-int v1, v21, v1

    const/16 v22, 0x7

    rem-int/lit8 v1, v1, 0x7

    move/from16 v23, v3

    iget-object v3, v0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    aget v1, v8, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v0, Landroidx/picker/widget/H;->C:I

    if-eqz v1, :cond_2b

    iget v1, v0, Landroidx/picker/widget/H;->H:I

    const/16 v24, 0x1

    add-int/lit8 v1, v1, 0x1

    if-ne v12, v1, :cond_2b

    iget v1, v0, Landroidx/picker/widget/H;->u:I

    move/from16 v3, v36

    if-lt v3, v1, :cond_27

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/H;->g()Z

    move-result v1

    if-nez v1, :cond_28

    :cond_27
    move/from16 v24, v9

    move/from16 v22, v11

    move/from16 v27, v12

    move/from16 v34, v14

    move/from16 v28, v15

    move/from16 v14, v17

    move/from16 v12, v23

    move-object/from16 v37, v26

    const/16 v19, 0xb

    move v15, v2

    move v11, v3

    move/from16 v23, v4

    move v9, v5

    move/from16 v26, v6

    move-object/from16 v17, v8

    goto/16 :goto_22

    :cond_28
    iget v1, v0, Landroidx/picker/widget/H;->u:I

    if-ne v3, v1, :cond_2a

    int-to-float v1, v10

    sub-float v1, v1, v30

    move/from16 v27, v3

    iget-boolean v3, v0, Landroidx/picker/widget/H;->f:Z

    if-eqz v3, :cond_29

    int-to-float v3, v2

    :goto_1f
    move/from16 v28, v2

    goto :goto_20

    :cond_29
    sub-int v3, v2, v13

    int-to-float v3, v3

    goto :goto_1f

    :goto_20
    iget v2, v0, Landroidx/picker/widget/H;->m:I

    move/from16 v29, v4

    int-to-float v4, v2

    sub-float v4, v1, v4

    move/from16 v31, v1

    int-to-float v1, v13

    add-float v32, v3, v1

    const/4 v1, 0x2

    mul-int/2addr v2, v1

    int-to-float v1, v2

    add-float v33, v4, v1

    iget-object v2, v0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    move/from16 v34, v14

    move/from16 v14, v17

    move-object/from16 v17, v8

    move/from16 v8, v31

    move-object/from16 v1, p1

    move-object/from16 v31, v2

    const/16 v19, 0xb

    move/from16 v40, v28

    move/from16 v28, v15

    move/from16 v15, v40

    move v2, v3

    move/from16 v22, v11

    move/from16 v11, v27

    move/from16 v27, v12

    move/from16 v12, v23

    move v3, v4

    move-object/from16 v37, v26

    move/from16 v23, v29

    move/from16 v4, v32

    move/from16 v24, v9

    move v9, v5

    move/from16 v5, v33

    move/from16 v26, v6

    move-object/from16 v6, v31

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v15

    iget v2, v0, Landroidx/picker/widget/H;->m:I

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_23

    :cond_2a
    move/from16 v24, v9

    move/from16 v22, v11

    move/from16 v27, v12

    move/from16 v34, v14

    move/from16 v28, v15

    move/from16 v14, v17

    move/from16 v12, v23

    move-object/from16 v37, v26

    const/16 v19, 0xb

    move v15, v2

    move v11, v3

    :goto_21
    move/from16 v23, v4

    move v9, v5

    move/from16 v26, v6

    move-object/from16 v17, v8

    goto :goto_23

    :goto_22
    sub-int v2, v15, v13

    int-to-float v2, v2

    int-to-float v1, v10

    sub-float v1, v1, v30

    iget v3, v0, Landroidx/picker/widget/H;->m:I

    int-to-float v4, v3

    sub-float v4, v1, v4

    mul-int/lit8 v1, v13, 0x2

    int-to-float v1, v1

    add-float v5, v2, v1

    const/4 v1, 0x2

    mul-int/2addr v3, v1

    int-to-float v1, v3

    add-float v6, v4, v1

    iget-object v8, v0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_23

    :cond_2b
    move/from16 v24, v9

    move/from16 v22, v11

    move/from16 v27, v12

    move/from16 v34, v14

    move/from16 v28, v15

    move/from16 v14, v17

    move/from16 v12, v23

    move-object/from16 v37, v26

    move/from16 v11, v36

    const/16 v19, 0xb

    move v15, v2

    goto :goto_21

    :goto_23
    iget-boolean v1, v0, Landroidx/picker/widget/H;->d0:Z

    if-nez v1, :cond_2c

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->clear()V

    move-object/from16 v8, v16

    invoke-virtual {v8, v14, v12, v11}, Ljava/util/Calendar;->set(III)V

    iget-object v1, v0, Landroidx/picker/widget/H;->U:Ljava/util/Calendar;

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, v0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_24

    :cond_2c
    move-object/from16 v8, v16

    :cond_2d
    :goto_24
    invoke-virtual {v0, v14, v12, v11}, Landroidx/picker/widget/H;->j(III)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, v0, Landroidx/picker/widget/H;->Q:Landroid/graphics/Paint;

    move/from16 v6, v24

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v1, v15

    int-to-float v2, v10

    sub-float v2, v2, v30

    iget v3, v0, Landroidx/picker/widget/H;->m:I

    sub-int v3, v3, v22

    int-to-float v3, v3

    iget-object v4, v0, Landroidx/picker/widget/H;->Q:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_25

    :cond_2e
    move/from16 v6, v24

    :goto_25
    iget-object v1, v0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    iget-boolean v2, v0, Landroidx/picker/widget/H;->K:Z

    if-eqz v2, :cond_2f

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    if-eq v2, v9, :cond_2f

    iget-object v1, v0, Landroidx/picker/widget/H;->M:Landroid/graphics/Paint;

    iget-object v2, v0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Landroidx/picker/widget/H;->M:Landroid/graphics/Paint;

    :cond_2f
    iget v2, v0, Landroidx/picker/widget/H;->C:I

    if-eqz v2, :cond_32

    iget v2, v0, Landroidx/picker/widget/H;->H:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    move/from16 v4, v27

    if-ne v4, v2, :cond_31

    iget v2, v0, Landroidx/picker/widget/H;->u:I

    if-le v11, v2, :cond_30

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/H;->g()Z

    move-result v2

    if-nez v2, :cond_31

    :cond_30
    move/from16 v3, v28

    goto :goto_26

    :cond_31
    move/from16 v3, v28

    goto :goto_27

    :goto_26
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_27

    :cond_32
    move/from16 v4, v27

    move/from16 v3, v28

    const/4 v5, 0x1

    :goto_27
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v5, v37

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v15, v15

    move/from16 v28, v3

    int-to-float v3, v10

    invoke-virtual {v7, v2, v15, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v21, 0x1

    const/4 v15, 0x7

    if-ne v1, v15, :cond_33

    iget v1, v0, Landroidx/picker/widget/H;->j:I

    add-int/2addr v10, v1

    add-int/lit8 v1, v23, 0x1

    move/from16 v21, v20

    goto :goto_28

    :cond_33
    move/from16 v21, v1

    move/from16 v1, v23

    :goto_28
    add-int/lit8 v36, v11, 0x1

    move-object/from16 v16, v8

    move v3, v12

    move-object/from16 v8, v17

    move/from16 v11, v22

    move/from16 v15, v28

    move v12, v4

    move v4, v1

    move v1, v14

    move/from16 v14, v34

    move/from16 v40, v26

    move-object/from16 v26, v5

    move v5, v9

    move v9, v6

    move/from16 v6, v40

    goto/16 :goto_1c

    :cond_34
    move-object/from16 v17, v8

    move/from16 v22, v11

    move/from16 v34, v14

    move/from16 v28, v15

    move-object/from16 v8, v16

    const/4 v15, 0x7

    const/16 v19, 0xb

    move/from16 v40, v9

    move v9, v5

    move-object/from16 v5, v26

    move/from16 v26, v6

    move/from16 v6, v40

    goto :goto_29

    :cond_35
    move/from16 v19, v2

    move/from16 v26, v6

    move-object/from16 v17, v8

    move v6, v9

    move/from16 v22, v11

    move/from16 v34, v14

    move/from16 v28, v15

    const/4 v15, 0x7

    move-object v8, v3

    move v9, v5

    move-object v5, v4

    :goto_29
    if-lez v25, :cond_44

    iget-boolean v1, v0, Landroidx/picker/widget/H;->h0:Z

    if-nez v1, :cond_44

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget v2, v0, Landroidx/picker/widget/H;->i:I

    iget v3, v0, Landroidx/picker/widget/H;->h:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    move/from16 v10, v25

    neg-int v2, v10

    const/4 v11, 0x5

    invoke-virtual {v1, v11, v2}, Ljava/util/Calendar;->add(II)V

    iget v2, v0, Landroidx/picker/widget/H;->h:I

    sub-int/2addr v2, v4

    iget v3, v0, Landroidx/picker/widget/H;->i:I

    if-gez v2, :cond_36

    add-int/lit8 v3, v3, -0x1

    move/from16 v2, v19

    :cond_36
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-boolean v4, v0, Landroidx/picker/widget/H;->d0:Z

    if-eqz v4, :cond_38

    iget v1, v0, Landroidx/picker/widget/H;->i:I

    iget v2, v0, Landroidx/picker/widget/H;->h:I

    iget-boolean v3, v0, Landroidx/picker/widget/H;->e0:Z

    const/4 v12, 0x1

    xor-int/2addr v3, v12

    sub-int/2addr v2, v3

    if-gez v2, :cond_37

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    move/from16 v2, v19

    goto :goto_2a

    :cond_37
    move v3, v1

    :goto_2a
    iget-boolean v1, v0, Landroidx/picker/widget/H;->j0:Z

    invoke-virtual {v0, v2, v1, v3}, Landroidx/picker/widget/H;->e(IZI)I

    move-result v1

    sub-int/2addr v1, v10

    add-int/2addr v1, v12

    :goto_2b
    move v14, v2

    move v4, v3

    goto :goto_2c

    :cond_38
    const/4 v12, 0x1

    goto :goto_2b

    :goto_2c
    move v3, v1

    move/from16 v2, v20

    :goto_2d
    if-ge v2, v10, :cond_44

    iget-boolean v1, v0, Landroidx/picker/widget/H;->f:Z

    if-eqz v1, :cond_39

    rsub-int/lit8 v1, v2, 0x6

    const/16 v16, 0x2

    mul-int/lit8 v1, v1, 0x2

    :goto_2e
    add-int/2addr v1, v12

    mul-int/2addr v1, v13

    add-int v1, v1, v26

    goto :goto_2f

    :cond_39
    mul-int/lit8 v1, v2, 0x2

    goto :goto_2e

    :goto_2f
    iget v12, v0, Landroidx/picker/widget/H;->j:I

    const/16 v16, 0x2

    mul-int/lit8 v12, v12, 0x2

    const/16 v16, 0x3

    div-int/lit8 v12, v12, 0x3

    iget v11, v0, Landroidx/picker/widget/H;->G:I

    add-int/2addr v11, v2

    rem-int/2addr v11, v15

    iget-object v15, v0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    aget v11, v17, v11

    invoke-virtual {v15, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v11, v0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v11, v0, Landroidx/picker/widget/H;->C:I

    if-eqz v11, :cond_3d

    if-nez v34, :cond_3d

    iget v11, v0, Landroidx/picker/widget/H;->q:I

    if-gt v3, v11, :cond_3a

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/H;->h()Z

    move-result v11

    if-nez v11, :cond_3b

    :cond_3a
    move/from16 v20, v2

    move v15, v3

    move-object/from16 v38, v5

    move/from16 v39, v6

    move/from16 v21, v9

    move/from16 v25, v10

    move v10, v1

    move v9, v4

    goto/16 :goto_32

    :cond_3b
    iget v11, v0, Landroidx/picker/widget/H;->q:I

    if-ne v3, v11, :cond_3d

    int-to-float v11, v12

    sub-float v11, v11, v30

    iget-boolean v15, v0, Landroidx/picker/widget/H;->f:Z

    if-eqz v15, :cond_3c

    sub-int v15, v1, v13

    int-to-float v15, v15

    :goto_30
    move/from16 v19, v1

    goto :goto_31

    :cond_3c
    int-to-float v15, v1

    goto :goto_30

    :goto_31
    iget v1, v0, Landroidx/picker/widget/H;->m:I

    move/from16 v20, v2

    int-to-float v2, v1

    sub-float v21, v11, v2

    int-to-float v2, v13

    add-float v23, v15, v2

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float v24, v21, v1

    iget-object v2, v0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    move/from16 v25, v10

    move/from16 v10, v19

    move-object/from16 v1, p1

    move-object/from16 v19, v2

    move v2, v15

    move v15, v3

    move/from16 v3, v21

    move/from16 v21, v9

    move v9, v4

    move/from16 v4, v23

    move-object/from16 v38, v5

    move/from16 v5, v24

    move/from16 v39, v6

    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v10

    iget v2, v0, Landroidx/picker/widget/H;->m:I

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_33

    :cond_3d
    move/from16 v20, v2

    move v15, v3

    move-object/from16 v38, v5

    move/from16 v39, v6

    move/from16 v21, v9

    move/from16 v25, v10

    move v10, v1

    move v9, v4

    goto :goto_33

    :goto_32
    sub-int v1, v10, v13

    int-to-float v2, v1

    int-to-float v1, v12

    sub-float v1, v1, v30

    iget v3, v0, Landroidx/picker/widget/H;->m:I

    int-to-float v4, v3

    sub-float v4, v1, v4

    mul-int/lit8 v1, v13, 0x2

    int-to-float v1, v1

    add-float v5, v2, v1

    const/4 v1, 0x2

    mul-int/2addr v3, v1

    int-to-float v1, v3

    add-float v6, v4, v1

    iget-object v11, v0, Landroidx/picker/widget/H;->N:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_33
    iget-boolean v1, v0, Landroidx/picker/widget/H;->d0:Z

    if-nez v1, :cond_3f

    invoke-virtual {v8}, Ljava/util/Calendar;->clear()V

    invoke-virtual {v8, v9, v14, v15}, Ljava/util/Calendar;->set(III)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget-object v2, v0, Landroidx/picker/widget/H;->T:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v4, v0, Landroidx/picker/widget/H;->T:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v6, v0, Landroidx/picker/widget/H;->T:Ljava/util/Calendar;

    const/4 v11, 0x5

    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v2, v4, v6}, Ljava/util/Calendar;->set(III)V

    iget-object v1, v0, Landroidx/picker/widget/H;->T:Ljava/util/Calendar;

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, v0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    move/from16 v2, v21

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_34

    :cond_3e
    move/from16 v2, v21

    goto :goto_34

    :cond_3f
    move/from16 v2, v21

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v11, 0x5

    :goto_34
    invoke-virtual {v0, v9, v14, v15}, Landroidx/picker/widget/H;->j(III)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, v0, Landroidx/picker/widget/H;->Q:Landroid/graphics/Paint;

    move/from16 v4, v39

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v1, v10

    int-to-float v6, v12

    sub-float v6, v6, v30

    iget v3, v0, Landroidx/picker/widget/H;->m:I

    sub-int v3, v3, v22

    int-to-float v3, v3

    iget-object v5, v0, Landroidx/picker/widget/H;->Q:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v6, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_35

    :cond_40
    move/from16 v4, v39

    :goto_35
    iget-object v1, v0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    iget-boolean v3, v0, Landroidx/picker/widget/H;->K:Z

    if-eqz v3, :cond_41

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    if-eq v3, v2, :cond_41

    iget-object v1, v0, Landroidx/picker/widget/H;->M:Landroid/graphics/Paint;

    iget-object v3, v0, Landroidx/picker/widget/H;->L:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Landroidx/picker/widget/H;->M:Landroid/graphics/Paint;

    :cond_41
    iget v3, v0, Landroidx/picker/widget/H;->C:I

    if-eqz v3, :cond_43

    if-nez v34, :cond_43

    iget v3, v0, Landroidx/picker/widget/H;->q:I

    if-ge v15, v3, :cond_42

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/H;->h()Z

    move-result v3

    if-nez v3, :cond_43

    :cond_42
    move/from16 v3, v28

    goto :goto_36

    :cond_43
    move/from16 v3, v28

    goto :goto_37

    :goto_36
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_37
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v6, v38

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    int-to-float v10, v10

    int-to-float v12, v12

    invoke-virtual {v7, v5, v10, v12, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v15, 0x1

    add-int/lit8 v5, v20, 0x1

    move/from16 v28, v3

    move/from16 v10, v25

    const/4 v12, 0x1

    const/4 v15, 0x7

    move v3, v1

    move/from16 v40, v9

    move v9, v2

    move v2, v5

    move-object v5, v6

    move v6, v4

    move/from16 v4, v40

    goto/16 :goto_2d

    :cond_44
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    iget-boolean v0, p0, Landroidx/picker/widget/H;->m0:Z

    const v1, 0x8000

    iget-object v2, p0, Landroidx/picker/widget/H;->a0:Landroidx/picker/widget/E;

    const/4 v3, -0x1

    if-nez v0, :cond_0

    iget v4, p0, Landroidx/picker/widget/H;->l0:I

    if-ne v4, v3, :cond_0

    iget v4, p0, Landroidx/picker/widget/H;->F:I

    if-eq v4, v3, :cond_0

    invoke-virtual {p0}, Landroidx/picker/widget/H;->b()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v2, v0, v1}, LS/b;->y(II)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget v0, p0, Landroidx/picker/widget/H;->l0:I

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Landroidx/picker/widget/H;->b()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3, v1}, LS/b;->y(II)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {v2}, LS/b;->p()V

    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    iget v0, p0, Landroidx/picker/widget/H;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iput v1, p0, Landroidx/picker/widget/H;->k:I

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown measure mode: "

    invoke-static {v2, p1}, LB/f;->t(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/H;->k:I

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/H;->a0:Landroidx/picker/widget/E;

    invoke-virtual {p0}, LS/b;->p()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/picker/widget/H;->c(FF)I

    move-result p1

    iget-boolean v0, p0, Landroidx/picker/widget/H;->h0:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/picker/widget/H;->I:I

    if-lt p1, v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Landroidx/picker/widget/H;->i0:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/picker/widget/H;->J:I

    if-le p1, v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x2

    const/16 v2, 0xb

    const/4 v3, 0x5

    if-gtz p1, :cond_6

    iget-boolean v4, p0, Landroidx/picker/widget/H;->d0:Z

    if-eqz v4, :cond_5

    iget v0, p0, Landroidx/picker/widget/H;->i:I

    iget v3, p0, Landroidx/picker/widget/H;->h:I

    iget-boolean v4, p0, Landroidx/picker/widget/H;->e0:Z

    xor-int/2addr v4, v1

    sub-int/2addr v3, v4

    if-gez v3, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    iget-boolean v3, p0, Landroidx/picker/widget/H;->j0:Z

    invoke-virtual {p0, v2, v3, v0}, Landroidx/picker/widget/H;->e(IZI)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0, v0, v2, v3, v1}, Landroidx/picker/widget/H;->k(IIIZ)V

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    iget v4, p0, Landroidx/picker/widget/H;->i:I

    iget v5, p0, Landroidx/picker/widget/H;->h:I

    invoke-virtual {v2, v4, v5, v1}, Ljava/util/Calendar;->set(III)V

    sub-int/2addr p1, v1

    invoke-virtual {v2, v3, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, p1, v0, v2, v1}, Landroidx/picker/widget/H;->k(IIIZ)V

    goto :goto_1

    :cond_6
    iget v4, p0, Landroidx/picker/widget/H;->H:I

    const/4 v5, 0x0

    if-le p1, v4, :cond_9

    iget-boolean v6, p0, Landroidx/picker/widget/H;->d0:Z

    if-eqz v6, :cond_8

    iget v0, p0, Landroidx/picker/widget/H;->i:I

    iget v3, p0, Landroidx/picker/widget/H;->h:I

    iget-boolean v6, p0, Landroidx/picker/widget/H;->k0:Z

    xor-int/2addr v6, v1

    add-int/2addr v3, v6

    if-le v3, v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    move v3, v5

    :cond_7
    sub-int/2addr p1, v4

    invoke-virtual {p0, v0, v3, p1, v5}, Landroidx/picker/widget/H;->k(IIIZ)V

    goto :goto_1

    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    iget v4, p0, Landroidx/picker/widget/H;->i:I

    iget v6, p0, Landroidx/picker/widget/H;->h:I

    iget v7, p0, Landroidx/picker/widget/H;->H:I

    invoke-virtual {v2, v4, v6, v7}, Ljava/util/Calendar;->set(III)V

    iget v4, p0, Landroidx/picker/widget/H;->H:I

    sub-int/2addr p1, v4

    invoke-virtual {v2, v3, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, p1, v0, v2, v5}, Landroidx/picker/widget/H;->k(IIIZ)V

    goto :goto_1

    :cond_9
    iget v0, p0, Landroidx/picker/widget/H;->i:I

    iget v2, p0, Landroidx/picker/widget/H;->h:I

    iget-object v3, p0, Landroidx/picker/widget/H;->b0:Landroidx/picker/widget/F;

    if-eqz v3, :cond_a

    invoke-virtual {p0, v5}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v3, p0, Landroidx/picker/widget/H;->b0:Landroidx/picker/widget/F;

    check-cast v3, Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v3, p0, v0, v2, p1}, Landroidx/picker/widget/SeslDatePicker;->k(Landroidx/picker/widget/H;III)V

    :cond_a
    invoke-virtual {p0}, Landroidx/picker/widget/H;->b()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p0, p0, Landroidx/picker/widget/H;->a0:Landroidx/picker/widget/E;

    invoke-virtual {p0, v0, v1}, LS/b;->y(II)V

    :goto_1
    return v1
.end method

.method public final setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/picker/widget/H;->c0:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method
