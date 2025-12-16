.class public final Lk/P;
.super LA/b;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/ref/WeakReference;

.field public final synthetic h:Lk/V;


# direct methods
.method public constructor <init>(Lk/V;IILjava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/P;->h:Lk/V;

    iput p2, p0, Lk/P;->e:I

    iput p3, p0, Lk/P;->f:I

    iput-object p4, p0, Lk/P;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final h(I)V
    .locals 0

    return-void
.end method

.method public final i(Landroid/graphics/Typeface;)V
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lk/P;->e:I

    if-eq v1, v0, :cond_1

    iget v0, p0, Lk/P;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v1, v0}, Lk/U;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lk/P;->h:Lk/V;

    iget-boolean v1, v0, Lk/V;->m:Z

    if-eqz v1, :cond_3

    iput-object p1, v0, Lk/V;->l:Landroid/graphics/Typeface;

    iget-object p0, p0, Lk/P;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_3

    sget-object v1, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, v0, Lk/V;->j:I

    new-instance v1, LB1/a;

    invoke-direct {v1, p0, p1, v0}, LB1/a;-><init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget v0, v0, Lk/V;->j:I

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    :goto_1
    return-void
.end method
