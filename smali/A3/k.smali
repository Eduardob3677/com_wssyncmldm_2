.class public final LA3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT3/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LT3/f;
    .locals 0

    sget-object p0, LT3/f;->d:LT3/f;

    return-object p0
.end method

.method public b(Lr3/b;Lr3/b;Lr3/e;)LT3/g;
    .locals 6

    const/4 p0, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x1

    const-string v1, "superDescriptor"

    invoke-static {v1, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "subDescriptor"

    invoke-static {v1, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v1, p2, LC3/f;

    sget-object v2, LT3/g;->e:LT3/g;

    if-eqz v1, :cond_8

    move-object v1, p2

    check-cast v1, LC3/f;

    invoke-virtual {v1}, Lu3/v;->u()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v0

    if-eqz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p1, p2}, LT3/n;->i(Lr3/b;Lr3/b;)LT3/m;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, LT3/m;->c()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {v1}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v3

    const-string v4, "subDescriptor.valueParameters"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, LR2/m;->G0(Ljava/lang/Iterable;)LR2/l;

    move-result-object v3

    sget-object v4, LA3/f;->h:LA3/f;

    invoke-static {v3, v4}, Lr4/m;->l(Lr4/k;Lc3/b;)Lr4/r;

    move-result-object v3

    iget-object v4, v1, Lu3/v;->i:Lh4/v;

    invoke-static {v4}, Ld3/i;->b(Ljava/lang/Object;)V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, LR2/i;->h0([Ljava/lang/Object;)Lr4/k;

    move-result-object v4

    new-array v5, p0, [Lr4/k;

    aput-object v3, v5, p3

    aput-object v4, v5, v0

    invoke-static {v5}, LR2/i;->h0([Ljava/lang/Object;)Lr4/k;

    move-result-object v3

    invoke-static {v3}, Lr4/m;->j(Lr4/k;)Lr4/h;

    move-result-object v3

    iget-object v1, v1, Lu3/v;->k:Lu3/w;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lu3/w;->e()Lh4/v;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, LR2/n;->z0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, LR2/m;->G0(Ljava/lang/Iterable;)LR2/l;

    move-result-object v1

    new-array p0, p0, [Lr4/k;

    aput-object v3, p0, p3

    aput-object v1, p0, v0

    invoke-static {p0}, LR2/i;->h0([Ljava/lang/Object;)Lr4/k;

    move-result-object p0

    invoke-static {p0}, Lr4/m;->j(Lr4/k;)Lr4/h;

    move-result-object p0

    new-instance v1, Lr4/g;

    invoke-direct {v1, p0}, Lr4/g;-><init>(Lr4/h;)V

    :cond_4
    invoke-virtual {v1}, Lr4/g;->a()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Lr4/g;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/v;

    invoke-virtual {p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v0

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lh4/v;->M0()Lh4/Z;

    move-result-object p0

    instance-of p0, p0, LF3/f;

    if-nez p0, :cond_4

    return-object v2

    :cond_5
    new-instance p0, LF3/d;

    invoke-direct {p0}, LF3/d;-><init>()V

    invoke-static {p0}, Lh4/V;->e(Lh4/S;)Lh4/V;

    move-result-object p0

    invoke-interface {p1, p0}, Lr3/P;->b(Lh4/V;)Lr3/k;

    move-result-object p0

    check-cast p0, Lr3/b;

    if-nez p0, :cond_6

    return-object v2

    :cond_6
    instance-of p1, p0, Lu3/N;

    if-eqz p1, :cond_7

    move-object p1, p0

    check-cast p1, Lu3/N;

    invoke-virtual {p1}, Lu3/v;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_7

    invoke-interface {p1}, Lr3/s;->e0()Lr3/r;

    move-result-object p0

    invoke-interface {p0}, Lr3/r;->F()Lr3/r;

    move-result-object p0

    invoke-interface {p0}, Lr3/r;->j()Lr3/s;

    move-result-object p0

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    :cond_7
    sget-object p1, LT3/n;->d:LT3/n;

    invoke-virtual {p1, p0, p2, p3}, LT3/n;->n(Lr3/b;Lr3/b;Z)LT3/m;

    move-result-object p0

    invoke-virtual {p0}, LT3/m;->c()I

    move-result p0

    const-string p1, "DEFAULT.isOverridableByW\u2026Descriptor, false).result"

    invoke-static {p0, p1}, LB/f;->E(ILjava/lang/String;)V

    sget-object p1, LA3/j;->a:[I

    invoke-static {p0}, Lk/Q0;->f(I)I

    move-result p0

    aget p0, p1, p0

    if-ne p0, v0, :cond_8

    sget-object v2, LT3/g;->c:LT3/g;

    :cond_8
    :goto_2
    return-object v2
.end method
