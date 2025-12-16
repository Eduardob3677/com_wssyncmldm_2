.class public final Lu/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lu/j;

.field public final c:Lu/i;

.field public final d:Lu/h;

.field public final e:Lu/k;

.field public f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lu/j;->a:I

    iput v1, v0, Lu/j;->b:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lu/j;->c:F

    const/high16 v3, 0x7fc00000    # Float.NaN

    iput v3, v0, Lu/j;->d:F

    iput-object v0, p0, Lu/g;->b:Lu/j;

    new-instance v0, Lu/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v4, -0x1

    iput v4, v0, Lu/i;->a:I

    iput v4, v0, Lu/i;->b:I

    iput v3, v0, Lu/i;->c:F

    iput v3, v0, Lu/i;->d:F

    iput-object v0, p0, Lu/g;->c:Lu/i;

    new-instance v0, Lu/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v0, Lu/h;->a:Z

    iput v4, v0, Lu/h;->d:I

    iput v4, v0, Lu/h;->e:I

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v0, Lu/h;->f:F

    iput v4, v0, Lu/h;->g:I

    iput v4, v0, Lu/h;->h:I

    iput v4, v0, Lu/h;->i:I

    iput v4, v0, Lu/h;->j:I

    iput v4, v0, Lu/h;->k:I

    iput v4, v0, Lu/h;->l:I

    iput v4, v0, Lu/h;->m:I

    iput v4, v0, Lu/h;->n:I

    iput v4, v0, Lu/h;->o:I

    iput v4, v0, Lu/h;->p:I

    iput v4, v0, Lu/h;->q:I

    iput v4, v0, Lu/h;->r:I

    iput v4, v0, Lu/h;->s:I

    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, v0, Lu/h;->t:F

    iput v6, v0, Lu/h;->u:F

    const/4 v6, 0x0

    iput-object v6, v0, Lu/h;->v:Ljava/lang/String;

    iput v4, v0, Lu/h;->w:I

    iput v1, v0, Lu/h;->x:I

    const/4 v6, 0x0

    iput v6, v0, Lu/h;->y:F

    iput v4, v0, Lu/h;->z:I

    iput v4, v0, Lu/h;->A:I

    iput v4, v0, Lu/h;->B:I

    iput v4, v0, Lu/h;->C:I

    iput v4, v0, Lu/h;->D:I

    iput v4, v0, Lu/h;->E:I

    iput v4, v0, Lu/h;->F:I

    iput v4, v0, Lu/h;->G:I

    iput v4, v0, Lu/h;->H:I

    iput v4, v0, Lu/h;->I:I

    iput v4, v0, Lu/h;->J:I

    iput v4, v0, Lu/h;->K:I

    iput v4, v0, Lu/h;->L:I

    iput v4, v0, Lu/h;->M:I

    iput v4, v0, Lu/h;->N:I

    iput v5, v0, Lu/h;->O:F

    iput v5, v0, Lu/h;->P:F

    iput v1, v0, Lu/h;->Q:I

    iput v1, v0, Lu/h;->R:I

    iput v1, v0, Lu/h;->S:I

    iput v1, v0, Lu/h;->T:I

    iput v4, v0, Lu/h;->U:I

    iput v4, v0, Lu/h;->V:I

    iput v4, v0, Lu/h;->W:I

    iput v4, v0, Lu/h;->X:I

    iput v2, v0, Lu/h;->Y:F

    iput v2, v0, Lu/h;->Z:F

    iput v4, v0, Lu/h;->a0:I

    iput v1, v0, Lu/h;->b0:I

    iput v4, v0, Lu/h;->c0:I

    iput-boolean v1, v0, Lu/h;->g0:Z

    iput-boolean v1, v0, Lu/h;->h0:Z

    const/4 v4, 0x1

    iput-boolean v4, v0, Lu/h;->i0:Z

    iput-object v0, p0, Lu/g;->d:Lu/h;

    new-instance v0, Lu/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v6, v0, Lu/k;->a:F

    iput v6, v0, Lu/k;->b:F

    iput v6, v0, Lu/k;->c:F

    iput v2, v0, Lu/k;->d:F

    iput v2, v0, Lu/k;->e:F

    iput v3, v0, Lu/k;->f:F

    iput v3, v0, Lu/k;->g:F

    iput v6, v0, Lu/k;->h:F

    iput v6, v0, Lu/k;->i:F

    iput v6, v0, Lu/k;->j:F

    iput-boolean v1, v0, Lu/k;->k:Z

    iput v6, v0, Lu/k;->l:F

    iput-object v0, p0, Lu/g;->e:Lu/k;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/g;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lu/e;)V
    .locals 1

    iget-object p0, p0, Lu/g;->d:Lu/h;

    iget v0, p0, Lu/h;->g:I

    iput v0, p1, Lu/e;->d:I

    iget v0, p0, Lu/h;->h:I

    iput v0, p1, Lu/e;->e:I

    iget v0, p0, Lu/h;->i:I

    iput v0, p1, Lu/e;->f:I

    iget v0, p0, Lu/h;->j:I

    iput v0, p1, Lu/e;->g:I

    iget v0, p0, Lu/h;->k:I

    iput v0, p1, Lu/e;->h:I

    iget v0, p0, Lu/h;->l:I

    iput v0, p1, Lu/e;->i:I

    iget v0, p0, Lu/h;->m:I

    iput v0, p1, Lu/e;->j:I

    iget v0, p0, Lu/h;->n:I

    iput v0, p1, Lu/e;->k:I

    iget v0, p0, Lu/h;->o:I

    iput v0, p1, Lu/e;->l:I

    iget v0, p0, Lu/h;->p:I

    iput v0, p1, Lu/e;->p:I

    iget v0, p0, Lu/h;->q:I

    iput v0, p1, Lu/e;->q:I

    iget v0, p0, Lu/h;->r:I

    iput v0, p1, Lu/e;->r:I

    iget v0, p0, Lu/h;->s:I

    iput v0, p1, Lu/e;->s:I

    iget v0, p0, Lu/h;->C:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p0, Lu/h;->D:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, p0, Lu/h;->E:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p0, Lu/h;->F:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v0, p0, Lu/h;->N:I

    iput v0, p1, Lu/e;->x:I

    iget v0, p0, Lu/h;->M:I

    iput v0, p1, Lu/e;->y:I

    iget v0, p0, Lu/h;->J:I

    iput v0, p1, Lu/e;->u:I

    iget v0, p0, Lu/h;->L:I

    iput v0, p1, Lu/e;->w:I

    iget v0, p0, Lu/h;->t:F

    iput v0, p1, Lu/e;->z:F

    iget v0, p0, Lu/h;->u:F

    iput v0, p1, Lu/e;->A:F

    iget v0, p0, Lu/h;->w:I

    iput v0, p1, Lu/e;->m:I

    iget v0, p0, Lu/h;->x:I

    iput v0, p1, Lu/e;->n:I

    iget v0, p0, Lu/h;->y:F

    iput v0, p1, Lu/e;->o:F

    iget-object v0, p0, Lu/h;->v:Ljava/lang/String;

    iput-object v0, p1, Lu/e;->B:Ljava/lang/String;

    iget v0, p0, Lu/h;->z:I

    iput v0, p1, Lu/e;->P:I

    iget v0, p0, Lu/h;->A:I

    iput v0, p1, Lu/e;->Q:I

    iget v0, p0, Lu/h;->O:F

    iput v0, p1, Lu/e;->E:F

    iget v0, p0, Lu/h;->P:F

    iput v0, p1, Lu/e;->D:F

    iget v0, p0, Lu/h;->R:I

    iput v0, p1, Lu/e;->G:I

    iget v0, p0, Lu/h;->Q:I

    iput v0, p1, Lu/e;->F:I

    iget-boolean v0, p0, Lu/h;->g0:Z

    iput-boolean v0, p1, Lu/e;->S:Z

    iget-boolean v0, p0, Lu/h;->h0:Z

    iput-boolean v0, p1, Lu/e;->T:Z

    iget v0, p0, Lu/h;->S:I

    iput v0, p1, Lu/e;->H:I

    iget v0, p0, Lu/h;->T:I

    iput v0, p1, Lu/e;->I:I

    iget v0, p0, Lu/h;->U:I

    iput v0, p1, Lu/e;->L:I

    iget v0, p0, Lu/h;->V:I

    iput v0, p1, Lu/e;->M:I

    iget v0, p0, Lu/h;->W:I

    iput v0, p1, Lu/e;->J:I

    iget v0, p0, Lu/h;->X:I

    iput v0, p1, Lu/e;->K:I

    iget v0, p0, Lu/h;->Y:F

    iput v0, p1, Lu/e;->N:F

    iget v0, p0, Lu/h;->Z:F

    iput v0, p1, Lu/e;->O:F

    iget v0, p0, Lu/h;->B:I

    iput v0, p1, Lu/e;->R:I

    iget v0, p0, Lu/h;->f:F

    iput v0, p1, Lu/e;->c:F

    iget v0, p0, Lu/h;->d:I

    iput v0, p1, Lu/e;->a:I

    iget v0, p0, Lu/h;->e:I

    iput v0, p1, Lu/e;->b:I

    iget v0, p0, Lu/h;->b:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v0, p0, Lu/h;->c:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v0, p0, Lu/h;->f0:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object v0, p1, Lu/e;->U:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lu/h;->H:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget p0, p0, Lu/h;->G:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1}, Lu/e;->a()V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lu/g;

    invoke-direct {v0}, Lu/g;-><init>()V

    iget-object v1, v0, Lu/g;->d:Lu/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lu/g;->d:Lu/h;

    iget-boolean v3, v2, Lu/h;->a:Z

    iput-boolean v3, v1, Lu/h;->a:Z

    iget v3, v2, Lu/h;->b:I

    iput v3, v1, Lu/h;->b:I

    iget v3, v2, Lu/h;->c:I

    iput v3, v1, Lu/h;->c:I

    iget v3, v2, Lu/h;->d:I

    iput v3, v1, Lu/h;->d:I

    iget v3, v2, Lu/h;->e:I

    iput v3, v1, Lu/h;->e:I

    iget v3, v2, Lu/h;->f:F

    iput v3, v1, Lu/h;->f:F

    iget v3, v2, Lu/h;->g:I

    iput v3, v1, Lu/h;->g:I

    iget v3, v2, Lu/h;->h:I

    iput v3, v1, Lu/h;->h:I

    iget v3, v2, Lu/h;->i:I

    iput v3, v1, Lu/h;->i:I

    iget v3, v2, Lu/h;->j:I

    iput v3, v1, Lu/h;->j:I

    iget v3, v2, Lu/h;->k:I

    iput v3, v1, Lu/h;->k:I

    iget v3, v2, Lu/h;->l:I

    iput v3, v1, Lu/h;->l:I

    iget v3, v2, Lu/h;->m:I

    iput v3, v1, Lu/h;->m:I

    iget v3, v2, Lu/h;->n:I

    iput v3, v1, Lu/h;->n:I

    iget v3, v2, Lu/h;->o:I

    iput v3, v1, Lu/h;->o:I

    iget v3, v2, Lu/h;->p:I

    iput v3, v1, Lu/h;->p:I

    iget v3, v2, Lu/h;->q:I

    iput v3, v1, Lu/h;->q:I

    iget v3, v2, Lu/h;->r:I

    iput v3, v1, Lu/h;->r:I

    iget v3, v2, Lu/h;->s:I

    iput v3, v1, Lu/h;->s:I

    iget v3, v2, Lu/h;->t:F

    iput v3, v1, Lu/h;->t:F

    iget v3, v2, Lu/h;->u:F

    iput v3, v1, Lu/h;->u:F

    iget-object v3, v2, Lu/h;->v:Ljava/lang/String;

    iput-object v3, v1, Lu/h;->v:Ljava/lang/String;

    iget v3, v2, Lu/h;->w:I

    iput v3, v1, Lu/h;->w:I

    iget v3, v2, Lu/h;->x:I

    iput v3, v1, Lu/h;->x:I

    iget v3, v2, Lu/h;->y:F

    iput v3, v1, Lu/h;->y:F

    iget v3, v2, Lu/h;->z:I

    iput v3, v1, Lu/h;->z:I

    iget v3, v2, Lu/h;->A:I

    iput v3, v1, Lu/h;->A:I

    iget v3, v2, Lu/h;->B:I

    iput v3, v1, Lu/h;->B:I

    iget v3, v2, Lu/h;->C:I

    iput v3, v1, Lu/h;->C:I

    iget v3, v2, Lu/h;->D:I

    iput v3, v1, Lu/h;->D:I

    iget v3, v2, Lu/h;->E:I

    iput v3, v1, Lu/h;->E:I

    iget v3, v2, Lu/h;->F:I

    iput v3, v1, Lu/h;->F:I

    iget v3, v2, Lu/h;->G:I

    iput v3, v1, Lu/h;->G:I

    iget v3, v2, Lu/h;->H:I

    iput v3, v1, Lu/h;->H:I

    iget v3, v2, Lu/h;->I:I

    iput v3, v1, Lu/h;->I:I

    iget v3, v2, Lu/h;->J:I

    iput v3, v1, Lu/h;->J:I

    iget v3, v2, Lu/h;->K:I

    iput v3, v1, Lu/h;->K:I

    iget v3, v2, Lu/h;->L:I

    iput v3, v1, Lu/h;->L:I

    iget v3, v2, Lu/h;->M:I

    iput v3, v1, Lu/h;->M:I

    iget v3, v2, Lu/h;->N:I

    iput v3, v1, Lu/h;->N:I

    iget v3, v2, Lu/h;->O:F

    iput v3, v1, Lu/h;->O:F

    iget v3, v2, Lu/h;->P:F

    iput v3, v1, Lu/h;->P:F

    iget v3, v2, Lu/h;->Q:I

    iput v3, v1, Lu/h;->Q:I

    iget v3, v2, Lu/h;->R:I

    iput v3, v1, Lu/h;->R:I

    iget v3, v2, Lu/h;->S:I

    iput v3, v1, Lu/h;->S:I

    iget v3, v2, Lu/h;->T:I

    iput v3, v1, Lu/h;->T:I

    iget v3, v2, Lu/h;->U:I

    iput v3, v1, Lu/h;->U:I

    iget v3, v2, Lu/h;->V:I

    iput v3, v1, Lu/h;->V:I

    iget v3, v2, Lu/h;->W:I

    iput v3, v1, Lu/h;->W:I

    iget v3, v2, Lu/h;->X:I

    iput v3, v1, Lu/h;->X:I

    iget v3, v2, Lu/h;->Y:F

    iput v3, v1, Lu/h;->Y:F

    iget v3, v2, Lu/h;->Z:F

    iput v3, v1, Lu/h;->Z:F

    iget v3, v2, Lu/h;->a0:I

    iput v3, v1, Lu/h;->a0:I

    iget v3, v2, Lu/h;->b0:I

    iput v3, v1, Lu/h;->b0:I

    iget v3, v2, Lu/h;->c0:I

    iput v3, v1, Lu/h;->c0:I

    iget-object v3, v2, Lu/h;->f0:Ljava/lang/String;

    iput-object v3, v1, Lu/h;->f0:Ljava/lang/String;

    iget-object v3, v2, Lu/h;->d0:[I

    if-eqz v3, :cond_0

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v1, Lu/h;->d0:[I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-object v3, v1, Lu/h;->d0:[I

    :goto_0
    iget-object v3, v2, Lu/h;->e0:Ljava/lang/String;

    iput-object v3, v1, Lu/h;->e0:Ljava/lang/String;

    iget-boolean v3, v2, Lu/h;->g0:Z

    iput-boolean v3, v1, Lu/h;->g0:Z

    iget-boolean v3, v2, Lu/h;->h0:Z

    iput-boolean v3, v1, Lu/h;->h0:Z

    iget-boolean v2, v2, Lu/h;->i0:Z

    iput-boolean v2, v1, Lu/h;->i0:Z

    iget-object v1, v0, Lu/g;->c:Lu/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lu/g;->c:Lu/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lu/i;->a:I

    iput v3, v1, Lu/i;->a:I

    iget v3, v2, Lu/i;->b:I

    iput v3, v1, Lu/i;->b:I

    iget v3, v2, Lu/i;->d:F

    iput v3, v1, Lu/i;->d:F

    iget v2, v2, Lu/i;->c:F

    iput v2, v1, Lu/i;->c:F

    iget-object v1, v0, Lu/g;->b:Lu/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lu/g;->b:Lu/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lu/j;->a:I

    iput v3, v1, Lu/j;->a:I

    iget v3, v2, Lu/j;->c:F

    iput v3, v1, Lu/j;->c:F

    iget v3, v2, Lu/j;->d:F

    iput v3, v1, Lu/j;->d:F

    iget v2, v2, Lu/j;->b:I

    iput v2, v1, Lu/j;->b:I

    iget-object v1, v0, Lu/g;->e:Lu/k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lu/g;->e:Lu/k;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lu/k;->a:F

    iput v3, v1, Lu/k;->a:F

    iget v3, v2, Lu/k;->b:F

    iput v3, v1, Lu/k;->b:F

    iget v3, v2, Lu/k;->c:F

    iput v3, v1, Lu/k;->c:F

    iget v3, v2, Lu/k;->d:F

    iput v3, v1, Lu/k;->d:F

    iget v3, v2, Lu/k;->e:F

    iput v3, v1, Lu/k;->e:F

    iget v3, v2, Lu/k;->f:F

    iput v3, v1, Lu/k;->f:F

    iget v3, v2, Lu/k;->g:F

    iput v3, v1, Lu/k;->g:F

    iget v3, v2, Lu/k;->h:F

    iput v3, v1, Lu/k;->h:F

    iget v3, v2, Lu/k;->i:F

    iput v3, v1, Lu/k;->i:F

    iget v3, v2, Lu/k;->j:F

    iput v3, v1, Lu/k;->j:F

    iget-boolean v3, v2, Lu/k;->k:Z

    iput-boolean v3, v1, Lu/k;->k:Z

    iget v2, v2, Lu/k;->l:F

    iput v2, v1, Lu/k;->l:F

    iget p0, p0, Lu/g;->a:I

    iput p0, v0, Lu/g;->a:I

    return-object v0
.end method
