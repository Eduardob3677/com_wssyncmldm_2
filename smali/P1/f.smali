.class public LP1/f;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public a:LP1/k;

.field public b:LI1/a;

.field public c:Landroid/content/res/ColorStateList;

.field public d:Landroid/content/res/ColorStateList;

.field public final e:Landroid/content/res/ColorStateList;

.field public f:Landroid/content/res/ColorStateList;

.field public g:Landroid/graphics/PorterDuff$Mode;

.field public h:Landroid/graphics/Rect;

.field public final i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:F

.field public n:F

.field public final o:F

.field public final p:I

.field public q:I

.field public r:I

.field public final s:I

.field public final t:Z

.field public final u:Landroid/graphics/Paint$Style;


# direct methods
.method public constructor <init>(LP1/f;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LP1/f;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, LP1/f;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, LP1/f;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, LP1/f;->f:Landroid/content/res/ColorStateList;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, LP1/f;->g:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, LP1/f;->h:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LP1/f;->i:F

    iput v0, p0, LP1/f;->j:F

    const/16 v0, 0xff

    iput v0, p0, LP1/f;->l:I

    const/4 v0, 0x0

    iput v0, p0, LP1/f;->m:F

    iput v0, p0, LP1/f;->n:F

    iput v0, p0, LP1/f;->o:F

    const/4 v0, 0x0

    iput v0, p0, LP1/f;->p:I

    iput v0, p0, LP1/f;->q:I

    iput v0, p0, LP1/f;->r:I

    iput v0, p0, LP1/f;->s:I

    iput-boolean v0, p0, LP1/f;->t:Z

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, LP1/f;->u:Landroid/graphics/Paint$Style;

    iget-object v0, p1, LP1/f;->a:LP1/k;

    iput-object v0, p0, LP1/f;->a:LP1/k;

    iget-object v0, p1, LP1/f;->b:LI1/a;

    iput-object v0, p0, LP1/f;->b:LI1/a;

    iget v0, p1, LP1/f;->k:F

    iput v0, p0, LP1/f;->k:F

    iget-object v0, p1, LP1/f;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, LP1/f;->c:Landroid/content/res/ColorStateList;

    iget-object v0, p1, LP1/f;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, LP1/f;->d:Landroid/content/res/ColorStateList;

    iget-object v0, p1, LP1/f;->g:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, LP1/f;->g:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p1, LP1/f;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, LP1/f;->f:Landroid/content/res/ColorStateList;

    iget v0, p1, LP1/f;->l:I

    iput v0, p0, LP1/f;->l:I

    iget v0, p1, LP1/f;->i:F

    iput v0, p0, LP1/f;->i:F

    iget v0, p1, LP1/f;->r:I

    iput v0, p0, LP1/f;->r:I

    iget v0, p1, LP1/f;->p:I

    iput v0, p0, LP1/f;->p:I

    iget-boolean v0, p1, LP1/f;->t:Z

    iput-boolean v0, p0, LP1/f;->t:Z

    iget v0, p1, LP1/f;->j:F

    iput v0, p0, LP1/f;->j:F

    iget v0, p1, LP1/f;->m:F

    iput v0, p0, LP1/f;->m:F

    iget v0, p1, LP1/f;->n:F

    iput v0, p0, LP1/f;->n:F

    iget v0, p1, LP1/f;->o:F

    iput v0, p0, LP1/f;->o:F

    iget v0, p1, LP1/f;->q:I

    iput v0, p0, LP1/f;->q:I

    iget v0, p1, LP1/f;->s:I

    iput v0, p0, LP1/f;->s:I

    iget-object v0, p1, LP1/f;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, LP1/f;->e:Landroid/content/res/ColorStateList;

    iget-object v0, p1, LP1/f;->u:Landroid/graphics/Paint$Style;

    iput-object v0, p0, LP1/f;->u:Landroid/graphics/Paint$Style;

    iget-object v0, p1, LP1/f;->h:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object p1, p1, LP1/f;->h:Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, LP1/f;->h:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public constructor <init>(LP1/k;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LP1/f;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, LP1/f;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, LP1/f;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, LP1/f;->f:Landroid/content/res/ColorStateList;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, LP1/f;->g:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, LP1/f;->h:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, LP1/f;->i:F

    iput v1, p0, LP1/f;->j:F

    const/16 v1, 0xff

    iput v1, p0, LP1/f;->l:I

    const/4 v1, 0x0

    iput v1, p0, LP1/f;->m:F

    iput v1, p0, LP1/f;->n:F

    iput v1, p0, LP1/f;->o:F

    const/4 v1, 0x0

    iput v1, p0, LP1/f;->p:I

    iput v1, p0, LP1/f;->q:I

    iput v1, p0, LP1/f;->r:I

    iput v1, p0, LP1/f;->s:I

    iput-boolean v1, p0, LP1/f;->t:Z

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v1, p0, LP1/f;->u:Landroid/graphics/Paint$Style;

    iput-object p1, p0, LP1/f;->a:LP1/k;

    iput-object v0, p0, LP1/f;->b:LI1/a;

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, LP1/g;

    invoke-direct {v0, p0}, LP1/g;-><init>(LP1/f;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, LP1/g;->g:Z

    return-object v0
.end method
