.class public Lcom/samsung/android/fotaagent/common/view/FlexibleWidthRatio;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convert(IF)F
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    return p0
.end method

.method public static getFrom(Landroid/content/res/Configuration;)F
    .locals 2

    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget p0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v1, 0x3c0

    if-lt v0, v1, :cond_0

    const/high16 p0, 0x44520000    # 840.0f

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0

    :cond_0
    const/16 v1, 0x24d

    if-lt v0, v1, :cond_1

    const/16 v1, 0x19b

    if-lt p0, v1, :cond_1

    const p0, 0x3f5c28f6    # 0.86f

    return p0

    :cond_1
    const/high16 p0, 0x41a00000    # 20.0f

    invoke-static {v0, p0}, Lcom/samsung/android/fotaagent/common/view/FlexibleWidthRatio;->convert(IF)F

    move-result p0

    return p0
.end method
