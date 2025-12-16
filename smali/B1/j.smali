.class public final LB1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LS1/n;LJ/r0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LB1/j;->c:Ljava/lang/Object;

    iput-object p1, p0, LB1/j;->d:Ljava/lang/Object;

    iget-object p1, p2, LJ/r0;->d:Ljava/lang/Object;

    check-cast p1, Landroid/content/res/TypedArray;

    const/16 p2, 0x1c

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, LB1/j;->a:I

    const/16 p2, 0x34

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, LB1/j;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, LB1/j;->d:Ljava/lang/Object;

    iput-object p1, p0, LB1/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB1/j;->d:Ljava/lang/Object;

    iput-object p2, p0, LB1/j;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, LB1/j;->b:I

    array-length p1, p2

    iput p1, p0, LB1/j;->a:I

    return-void
.end method

.method public static a(II)I
    .locals 0

    invoke-static {p0}, LB1/j;->h(I)I

    move-result p0

    invoke-static {p1}, LB1/j;->c(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static b(II)I
    .locals 0

    invoke-static {p0}, LB1/j;->h(I)I

    move-result p0

    invoke-static {p1}, LB1/j;->c(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static c(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, LB1/j;->f(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static d(ILR3/b;)I
    .locals 0

    invoke-static {p0}, LB1/j;->h(I)I

    move-result p0

    invoke-static {p1}, LB1/j;->e(LR3/b;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static e(LR3/b;)I
    .locals 1

    invoke-virtual {p0}, LR3/b;->c()I

    move-result p0

    invoke-static {p0}, LB1/j;->f(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static f(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static g(J)I
    .locals 4

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method public static h(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, LB1/j;->f(I)I

    move-result p0

    return p0
.end method

.method public static j(Ljava/io/OutputStream;I)LB1/j;
    .locals 1

    new-instance v0, LB1/j;

    new-array p1, p1, [B

    invoke-direct {v0, p0, p1}, LB1/j;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method


# virtual methods
.method public i()V
    .locals 1

    iget-object v0, p0, LB1/j;->d:Ljava/lang/Object;

    check-cast v0, Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LB1/j;->l()V

    :cond_0
    return-void
.end method

.method public k(LJ/q0;Ljava/util/List;)V
    .locals 1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LJ/e0;

    iget-object v0, p2, LJ/e0;->a:Ls2/c;

    iget-object v0, v0, Ls2/c;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget p1, p0, LB1/j;->b:I

    iget-object p2, p2, LJ/e0;->a:Ls2/c;

    iget-object p2, p2, Ls2/c;->c:Ljava/lang/Object;

    check-cast p2, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p2}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lw1/a;->c(IFI)I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, LB1/j;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public l()V
    .locals 4

    iget-object v0, p0, LB1/j;->d:Ljava/lang/Object;

    check-cast v0, Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v1, p0, LB1/j;->c:Ljava/lang/Object;

    check-cast v1, [B

    iget v2, p0, LB1/j;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, LB1/j;->b:I

    return-void

    :cond_0
    new-instance p0, LR3/g;

    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public m(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LB1/j;->y(II)V

    invoke-virtual {p0, p2}, LB1/j;->o(I)V

    return-void
.end method

.method public n(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LB1/j;->y(II)V

    invoke-virtual {p0, p2}, LB1/j;->o(I)V

    return-void
.end method

.method public o(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, LB1/j;->w(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, LB1/j;->x(J)V

    :goto_0
    return-void
.end method

.method public p(ILR3/b;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LB1/j;->y(II)V

    invoke-virtual {p0, p2}, LB1/j;->q(LR3/b;)V

    return-void
.end method

.method public q(LR3/b;)V
    .locals 1

    invoke-virtual {p1}, LR3/b;->c()I

    move-result v0

    invoke-virtual {p0, v0}, LB1/j;->w(I)V

    invoke-virtual {p1, p0}, LR3/b;->f(LB1/j;)V

    return-void
.end method

.method public r(I)V
    .locals 2

    int-to-byte p1, p1

    iget v0, p0, LB1/j;->b:I

    iget v1, p0, LB1/j;->a:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, LB1/j;->l()V

    :cond_0
    iget v0, p0, LB1/j;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LB1/j;->b:I

    iget-object p0, p0, LB1/j;->c:Ljava/lang/Object;

    check-cast p0, [B

    aput-byte p1, p0, v0

    return-void
.end method

.method public s(LR3/e;)V
    .locals 6

    invoke-virtual {p1}, LR3/e;->size()I

    move-result v0

    iget v1, p0, LB1/j;->b:I

    iget v2, p0, LB1/j;->a:I

    sub-int v3, v2, v1

    const/4 v4, 0x0

    iget-object v5, p0, LB1/j;->c:Ljava/lang/Object;

    check-cast v5, [B

    if-lt v3, v0, :cond_0

    invoke-virtual {p1, v4, v1, v0, v5}, LR3/e;->n(III[B)V

    iget p1, p0, LB1/j;->b:I

    add-int/2addr p1, v0

    iput p1, p0, LB1/j;->b:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v4, v1, v3, v5}, LR3/e;->n(III[B)V

    sub-int/2addr v0, v3

    iput v2, p0, LB1/j;->b:I

    invoke-virtual {p0}, LB1/j;->l()V

    if-gt v0, v2, :cond_1

    invoke-virtual {p1, v3, v4, v0, v5}, LR3/e;->n(III[B)V

    iput v0, p0, LB1/j;->b:I

    goto :goto_0

    :cond_1
    if-ltz v3, :cond_5

    if-ltz v0, :cond_4

    add-int v1, v3, v0

    invoke-virtual {p1}, LR3/e;->size()I

    move-result v2

    if-gt v1, v2, :cond_3

    if-lez v0, :cond_2

    iget-object p0, p0, LB1/j;->d:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p1, p0, v3, v0}, LR3/e;->y(Ljava/io/OutputStream;II)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Source end offset exceeded: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x17

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Length < 0: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x1e

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Source offset < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public t([B)V
    .locals 6

    array-length v0, p1

    iget v1, p0, LB1/j;->b:I

    iget v2, p0, LB1/j;->a:I

    sub-int v3, v2, v1

    const/4 v4, 0x0

    iget-object v5, p0, LB1/j;->c:Ljava/lang/Object;

    check-cast v5, [B

    if-lt v3, v0, :cond_0

    invoke-static {p1, v4, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LB1/j;->b:I

    add-int/2addr p1, v0

    iput p1, p0, LB1/j;->b:I

    goto :goto_0

    :cond_0
    invoke-static {p1, v4, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v3

    iput v2, p0, LB1/j;->b:I

    invoke-virtual {p0}, LB1/j;->l()V

    if-gt v0, v2, :cond_1

    invoke-static {p1, v3, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, LB1/j;->b:I

    goto :goto_0

    :cond_1
    iget-object p0, p0, LB1/j;->d:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public u(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, LB1/j;->r(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, LB1/j;->r(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, LB1/j;->r(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, LB1/j;->r(I)V

    return-void
.end method

.method public v(J)V
    .locals 2

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, LB1/j;->r(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, LB1/j;->r(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, LB1/j;->r(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, LB1/j;->r(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, LB1/j;->r(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, LB1/j;->r(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, LB1/j;->r(I)V

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, LB1/j;->r(I)V

    return-void
.end method

.method public w(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, LB1/j;->r(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LB1/j;->r(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public x(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, LB1/j;->r(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LB1/j;->r(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public y(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, LB1/j;->w(I)V

    return-void
.end method
