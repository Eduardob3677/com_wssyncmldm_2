.class Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# static fields
.field static final DEFAULT_BULLET:C = '\u2022'

.field static final LEADING_MARGIN_BULLET_AND_ONE_SPACE:I = -0x1


# instance fields
.field private final bullet:C

.field leadingMargin:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(CI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;->bullet:C

    iput p2, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;->leadingMargin:I

    return-void
.end method

.method public static applyTo(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/16 v0, 0x2022

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;->applyTo(Ljava/lang/CharSequence;CI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static applyTo(Ljava/lang/CharSequence;CI)Ljava/lang/CharSequence;
    .locals 6

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x21

    if-nez v3, :cond_0

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;

    invoke-direct {v1, p1, p2}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;-><init>(CI)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0

    :cond_0
    new-instance v5, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;

    invoke-direct {v5, p1, p2}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;-><init>(CI)V

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v2, v3

    goto :goto_0
.end method

.method public static setPaintIfNeeded(Ljava/lang/CharSequence;Landroid/graphics/Paint;)V
    .locals 3

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v1, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;

    array-length v0, p0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v1, p0, v2

    invoke-virtual {v1, p1}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;->setPaint(Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    if-nez p11, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object p5

    if-gez p4, :cond_1

    sget-object p4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_1
    sget-object p4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-char p0, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;->bullet:C

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    int-to-float p3, p3

    int-to-float p4, p6

    invoke-virtual {p1, p0, p3, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 2

    iget p1, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;->leadingMargin:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;->paint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    const-string p1, "paint should not be null"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v1, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;->bullet:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;->leadingMargin:I

    :cond_1
    :goto_0
    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;->leadingMargin:I

    return p0
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;->paint:Landroid/graphics/Paint;

    return-void
.end method
