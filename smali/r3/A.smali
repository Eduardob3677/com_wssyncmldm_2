.class public final Lr3/A;
.super Lu3/l;
.source "SourceFile"


# instance fields
.field public final j:Z

.field public final k:Ljava/util/ArrayList;

.field public final l:Lh4/j;


# direct methods
.method public constructor <init>(Lg4/o;Lr3/f;LQ3/f;ZI)V
    .locals 2

    const-string v0, "storageManager"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "container"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lr3/N;->a:Lr3/M;

    invoke-direct {p0, p1, p2, p3, v0}, Lu3/l;-><init>(Lg4/o;Lr3/j;LQ3/f;Lr3/N;)V

    iput-boolean p4, p0, Lr3/A;->j:Z

    const/high16 p2, -0x80000000

    const/4 p3, 0x1

    if-gt p5, p2, :cond_0

    sget-object p2, Lh3/c;->f:Lh3/c;

    goto :goto_0

    :cond_0
    new-instance p2, Lh3/c;

    sub-int/2addr p5, p3

    const/4 p4, 0x0

    invoke-direct {p2, p4, p5, p3}, Lh3/a;-><init>(III)V

    :goto_0
    new-instance p4, Ljava/util/ArrayList;

    invoke-static {p2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p5

    invoke-direct {p4, p5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Lh3/a;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    move-object p5, p2

    check-cast p5, Lh3/b;

    iget-boolean p5, p5, Lh3/b;->e:Z

    if-eqz p5, :cond_1

    move-object p5, p2

    check-cast p5, Lh3/b;

    invoke-virtual {p5}, Lh3/b;->a()I

    move-result p5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "T"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v0

    invoke-static {p0, p3, v0, p5, p1}, Lu3/T;->T0(Lr3/j;ILQ3/f;ILg4/o;)Lu3/T;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iput-object p4, p0, Lr3/A;->k:Ljava/util/ArrayList;

    new-instance p2, Lh4/j;

    invoke-static {p0}, Lp0/a;->f(Lr3/h;)Ljava/util/List;

    move-result-object p3

    invoke-static {p0}, LX3/f;->j(Lr3/j;)Lr3/x;

    move-result-object p4

    invoke-interface {p4}, Lr3/x;->g()Lo3/i;

    move-result-object p4

    invoke-virtual {p4}, Lo3/i;->e()Lh4/z;

    move-result-object p4

    invoke-static {p4}, LL2/b;->I(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p4

    invoke-direct {p2, p0, p3, p4, p1}, Lh4/j;-><init>(Lr3/e;Ljava/util/List;Ljava/util/Collection;Lg4/o;)V

    iput-object p2, p0, Lr3/A;->l:Lh4/j;

    return-void
.end method


# virtual methods
.method public final A0()Ljava/util/Collection;
    .locals 0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public final D()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final D0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final H()Lh4/J;
    .locals 0

    iget-object p0, p0, Lr3/A;->l:Lh4/j;

    return-object p0
.end method

.method public final J(Li4/f;)La4/o;
    .locals 0

    sget-object p0, La4/n;->b:La4/n;

    return-object p0
.end method

.method public final L()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final N()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final S()Lr3/S;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final W()Lu3/k;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic X()La4/o;
    .locals 0

    sget-object p0, La4/n;->b:La4/n;

    return-object p0
.end method

.method public final c()LA3/p;
    .locals 1

    sget-object p0, Lr3/n;->e:LA3/p;

    const-string v0, "PUBLIC"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final j()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final k()Ljava/util/Collection;
    .locals 0

    sget-object p0, LR2/w;->c:LR2/w;

    return-object p0
.end method

.method public final s()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lr3/A;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final t()Ls3/h;
    .locals 0

    sget-object p0, Ls3/g;->a:Ls3/f;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu3/b;->getName()LQ3/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (not found)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final y()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final z()Z
    .locals 0

    iget-boolean p0, p0, Lr3/A;->j:Z

    return p0
.end method
