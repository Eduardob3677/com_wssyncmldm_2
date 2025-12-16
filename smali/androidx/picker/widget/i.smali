.class public final Landroidx/picker/widget/i;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/Calendar;

.field public final d:Landroid/graphics/Paint;

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:[I

.field public final i:Ljava/lang/String;

.field public final synthetic j:Landroidx/picker/widget/SeslDatePicker;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslDatePicker;Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 4

    iput-object p1, p0, Landroidx/picker/widget/i;->j:Landroidx/picker/widget/SeslDatePicker;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/picker/widget/i;->h:[I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/i;->c:Ljava/util/Calendar;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070389

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f060348

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {p3, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/i;->e:I

    const v2, 0x7f06034f

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {p3, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Landroidx/picker/widget/i;->f:I

    sget-object p3, LA/r;->a:Ljava/lang/ThreadLocal;

    const p3, 0x7f06034a

    const/4 v2, 0x0

    invoke-static {p2, p3, v2}, LA/l;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Landroidx/picker/widget/i;->g:I

    iget-object p1, p1, Landroidx/picker/widget/SeslDatePicker;->O:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/picker/widget/i;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Li3/x;->Z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/i;->i:Ljava/lang/String;

    :goto_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/i;->d:Landroid/graphics/Paint;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p0, v0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string p0, "sec"

    const/4 p2, 0x0

    invoke-static {p0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    const/16 p3, 0x190

    invoke-static {p0, p3, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object p0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/picker/widget/i;->j:Landroidx/picker/widget/SeslDatePicker;

    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->x:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v2, v0, Landroidx/picker/widget/SeslDatePicker;->H:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    iget v3, v0, Landroidx/picker/widget/SeslDatePicker;->I:I

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v3, v1

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    iget v5, v0, Landroidx/picker/widget/SeslDatePicker;->x:I

    iget-object v6, p0, Landroidx/picker/widget/i;->h:[I

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Landroidx/picker/widget/i;->i:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v7, v4, 0x2

    iget v8, v0, Landroidx/picker/widget/SeslDatePicker;->x:I

    rem-int/2addr v7, v8

    const/16 v8, 0x42

    if-eq v5, v8, :cond_2

    const/16 v8, 0x52

    if-eq v5, v8, :cond_1

    iget v5, p0, Landroidx/picker/widget/i;->e:I

    aput v5, v6, v7

    goto :goto_1

    :cond_1
    iget v5, p0, Landroidx/picker/widget/i;->f:I

    aput v5, v6, v7

    goto :goto_1

    :cond_2
    iget v5, p0, Landroidx/picker/widget/i;->g:I

    aput v5, v6, v7

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget v4, v0, Landroidx/picker/widget/SeslDatePicker;->x:I

    if-ge v1, v4, :cond_5

    iget v5, v0, Landroidx/picker/widget/SeslDatePicker;->y:I

    add-int/2addr v5, v1

    rem-int/2addr v5, v4

    const/4 v4, 0x7

    iget-object v7, p0, Landroidx/picker/widget/i;->c:Ljava/util/Calendar;

    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->set(II)V

    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker;->f0:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget-boolean v7, v0, Landroidx/picker/widget/SeslDatePicker;->j:Z

    if-eqz v7, :cond_4

    iget v7, v0, Landroidx/picker/widget/SeslDatePicker;->x:I

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v7, v3

    iget v8, v0, Landroidx/picker/widget/SeslDatePicker;->B:I

    :goto_3
    add-int/2addr v7, v8

    goto :goto_4

    :cond_4
    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v7, v3

    iget v8, v0, Landroidx/picker/widget/SeslDatePicker;->B:I

    goto :goto_3

    :goto_4
    iget-object v8, p0, Landroidx/picker/widget/i;->d:Landroid/graphics/Paint;

    aget v5, v6, v5

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v7

    int-to-float v7, v2

    invoke-virtual {p1, v4, v5, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
