.class public final LS1/f;
.super LP1/f;
.source "SourceFile"


# instance fields
.field public final v:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(LP1/k;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1}, LP1/f;-><init>(LP1/k;)V

    iput-object p2, p0, LS1/f;->v:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(LS1/f;)V
    .locals 0

    invoke-direct {p0, p1}, LP1/f;-><init>(LP1/f;)V

    iget-object p1, p1, LS1/f;->v:Landroid/graphics/RectF;

    iput-object p1, p0, LS1/f;->v:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, LS1/g;

    invoke-direct {v0, p0}, LS1/g;-><init>(LS1/f;)V

    invoke-virtual {v0}, LP1/g;->invalidateSelf()V

    return-object v0
.end method
