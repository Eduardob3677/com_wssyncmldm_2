.class public final LV/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public final d:Ls2/c;

.field public e:Z

.field public f:J

.field public g:F

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public j:LV/f;

.field public k:F


# direct methods
.method public constructor <init>(LV/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LV/e;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, LV/e;->b:F

    const/4 v1, 0x0

    iput-boolean v1, p0, LV/e;->c:Z

    iput-boolean v1, p0, LV/e;->e:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LV/e;->f:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LV/e;->h:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LV/e;->i:Ljava/util/ArrayList;

    new-instance v1, Ls2/c;

    invoke-direct {v1, p1}, Ls2/c;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, LV/e;->d:Ls2/c;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, LV/e;->g:F

    const/4 p1, 0x0

    iput-object p1, p0, LV/e;->j:LV/f;

    iput v0, p0, LV/e;->k:F

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 6

    iget-boolean v0, p0, LV/e;->e:Z

    if-eqz v0, :cond_0

    iput p1, p0, LV/e;->k:F

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, LV/e;->j:LV/f;

    if-nez v0, :cond_1

    new-instance v0, LV/f;

    invoke-direct {v0, p1}, LV/f;-><init>(F)V

    iput-object v0, p0, LV/e;->j:LV/f;

    :cond_1
    iget-object v0, p0, LV/e;->j:LV/f;

    float-to-double v1, p1

    iput-wide v1, v0, LV/f;->i:D

    double-to-float p1, v1

    float-to-double v1, p1

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    float-to-double v3, p1

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_a

    const v3, -0x800001

    float-to-double v4, v3

    cmpg-double v1, v1, v4

    if-ltz v1, :cond_9

    iget v1, p0, LV/e;->g:F

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iput-wide v1, v0, LV/f;->d:D

    const-wide v4, 0x404f400000000000L    # 62.5

    mul-double/2addr v1, v4

    iput-wide v1, v0, LV/f;->e:D

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_8

    iget-boolean v0, p0, LV/e;->e:Z

    if-nez v0, :cond_7

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, LV/e;->e:Z

    iget-boolean v0, p0, LV/e;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, LV/e;->d:Ls2/c;

    iget-object v0, v0, Ls2/c;->c:Ljava/lang/Object;

    check-cast v0, LV/d;

    iget v0, v0, LV/d;->a:F

    iput v0, p0, LV/e;->b:F

    :cond_2
    iget v0, p0, LV/e;->b:F

    cmpl-float p1, v0, p1

    if-gtz p1, :cond_6

    cmpg-float p1, v0, v3

    if-ltz p1, :cond_6

    sget-object p1, LV/b;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, LV/b;

    invoke-direct {v0}, LV/b;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LV/b;

    iget-object v0, p1, LV/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, LV/b;->d:LJ/r0;

    if-nez v1, :cond_4

    new-instance v1, LJ/r0;

    iget-object v2, p1, LV/b;->c:Ls2/c;

    invoke-direct {v1, v2}, LJ/r0;-><init>(Ls2/c;)V

    iput-object v1, p1, LV/b;->d:LJ/r0;

    :cond_4
    iget-object p1, p1, LV/b;->d:LJ/r0;

    iget-object v1, p1, LJ/r0;->e:Ljava/lang/Object;

    check-cast v1, LV/a;

    iget-object p1, p1, LJ/r0;->d:Ljava/lang/Object;

    check-cast p1, Landroid/view/Choreographer;

    invoke-virtual {p1, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Starting value need to be in between min value and max value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_0
    return-void

    :cond_8
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Animations may only be started on the main thread"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, LV/e;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LV/e;->c(Z)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be canceled on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Z)V
    .locals 5

    const/4 p1, 0x0

    iput-boolean p1, p0, LV/e;->e:Z

    sget-object v0, LV/b;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, LV/b;

    invoke-direct {v1}, LV/b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV/b;

    iget-object v1, v0, LV/b;->a:Lo/k;

    invoke-virtual {v1, p0}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, LV/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-boolean v3, v0, LV/b;->e:Z

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LV/e;->f:J

    iput-boolean p1, p0, LV/e;->c:Z

    :goto_0
    iget-object v0, p0, LV/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/z;

    invoke-virtual {v0}, Landroidx/picker/widget/z;->a()V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v3

    :goto_1
    if-ltz p0, :cond_5

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final d(F)V
    .locals 3

    iget-object v0, p0, LV/e;->d:Ls2/c;

    iget-object v0, v0, Ls2/c;->c:Ljava/lang/Object;

    check-cast v0, LV/d;

    iput p1, v0, LV/d;->a:F

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, LV/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/M;

    iget v1, p0, LV/e;->b:F

    iget v2, p0, LV/e;->a:F

    invoke-virtual {v0, p0, v1, v2}, Landroidx/picker/widget/M;->a(LV/e;FF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_1
    if-ltz p0, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method
