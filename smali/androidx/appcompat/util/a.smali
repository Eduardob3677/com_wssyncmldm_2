.class public final Landroidx/appcompat/util/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:I

.field public final c:F

.field public d:Landroid/graphics/ColorFilter;

.field public e:I

.field public f:I

.field public g:[LB/g;

.field public final h:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(ILandroid/graphics/Paint;F)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/util/a;->e:I

    iput v0, p0, Landroidx/appcompat/util/a;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/util/a;->g:[LB/g;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/util/a;->h:Landroid/graphics/Path;

    iput p1, p0, Landroidx/appcompat/util/a;->b:I

    iput-object p2, p0, Landroidx/appcompat/util/a;->a:Landroid/graphics/Paint;

    iput p3, p0, Landroidx/appcompat/util/a;->c:F

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/appcompat/util/a;->e:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, v0, Landroidx/appcompat/util/a;->f:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/util/a;->e:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/util/a;->f:I

    const/4 v1, 0x1

    :goto_1
    iget-object v2, v0, Landroidx/appcompat/util/a;->d:Landroid/graphics/ColorFilter;

    iget-object v3, v0, Landroidx/appcompat/util/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget v2, v0, Landroidx/appcompat/util/a;->b:I

    int-to-float v2, v2

    iget v4, v0, Landroidx/appcompat/util/a;->e:I

    iget v5, v0, Landroidx/appcompat/util/a;->f:I

    if-lez v4, :cond_7

    if-gtz v5, :cond_2

    goto/16 :goto_4

    :cond_2
    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v8, 0x0

    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v7, v2, v7

    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v10, v7, v9

    const/high16 v11, 0x3f800000    # 1.0f

    if-lez v10, :cond_3

    sub-float v9, v7, v9

    const v10, 0x3ecccccd    # 0.4f

    div-float/2addr v9, v10

    invoke-static {v11, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const v10, 0x3e0e1bf0

    mul-float/2addr v9, v10

    sub-float v9, v11, v9

    goto :goto_2

    :cond_3
    move v9, v11

    :goto_2
    float-to-double v12, v7

    const-wide v14, 0x3fe3333333333333L    # 0.6

    cmpl-double v10, v12, v14

    if-lez v10, :cond_4

    const v10, 0x3f19999a    # 0.6f

    sub-float/2addr v7, v10

    const v10, 0x3e99999a    # 0.3f

    div-float/2addr v7, v10

    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const v10, 0x3d2de440

    mul-float/2addr v7, v10

    add-float/2addr v11, v7

    :cond_4
    const/high16 v7, 0x42c80000    # 100.0f

    if-nez v1, :cond_5

    iget-object v1, v0, Landroidx/appcompat/util/a;->g:[LB/g;

    if-nez v1, :cond_6

    :cond_5
    div-float/2addr v5, v2

    mul-float/2addr v5, v7

    div-float/2addr v4, v2

    mul-float/2addr v4, v7

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const v12, 0x430030a4    # 128.19f

    mul-float/2addr v9, v12

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v10, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v10, "L %f %f "

    invoke-static {v1, v10, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const v13, 0x42a73d71    # 83.62f

    mul-float/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const v18, 0x40947ae1    # 4.64f

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v19, 0x4286e666    # 67.45f

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const v20, 0x4155c28f    # 13.36f

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const v21, 0x424ca3d7    # 51.16f

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "C %f %f %f %f %f %f "

    invoke-static {v1, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const v14, 0x41b08f5c    # 22.07f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    const v15, 0x420b70a4    # 34.86f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    filled-new-array/range {v22 .. v27}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v1, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    filled-new-array/range {v20 .. v25}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v1, v13, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v4, v8}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v10, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "M 0 0 "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Z"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LW1/a;->r(Ljava/lang/String;)[LB/g;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/util/a;->g:[LB/g;

    :cond_6
    iget-object v1, v0, Landroidx/appcompat/util/a;->h:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v4, v0, Landroidx/appcompat/util/a;->g:[LB/g;

    invoke-static {v4, v1}, LB/g;->b([LB/g;Landroid/graphics/Path;)V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    div-float/2addr v2, v7

    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v1, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    iget v0, v0, Landroidx/appcompat/util/a;->c:F

    invoke-virtual {v4, v0, v5, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v1, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :goto_3
    move-object/from16 v0, p1

    goto :goto_5

    :cond_7
    :goto_4
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    goto :goto_3

    :goto_5
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/util/a;->d:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/util/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/util/a;->d:Landroid/graphics/ColorFilter;

    return-void
.end method
