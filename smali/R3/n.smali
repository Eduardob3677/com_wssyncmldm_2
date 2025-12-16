.class public abstract LR3/n;
.super LR3/q;
.source "SourceFile"


# instance fields
.field public final c:LR3/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    new-instance v0, LR3/j;

    invoke-direct {v0}, LR3/j;-><init>()V

    iput-object v0, p0, LR3/n;->c:LR3/j;

    return-void
.end method

.method public constructor <init>(LR3/l;)V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    iget-object v0, p1, LR3/l;->d:LR3/j;

    invoke-virtual {v0}, LR3/j;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p1, LR3/l;->e:Z

    iget-object p1, p1, LR3/l;->d:LR3/j;

    iput-object p1, p0, LR3/n;->c:LR3/j;

    return-void
.end method


# virtual methods
.method public final i()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LR3/n;->c:LR3/j;

    iget-object v2, v2, LR3/j;->a:LR3/F;

    iget-object v3, v2, LR3/F;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v2, v2, LR3/F;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, LR3/j;->e(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, LR3/F;->c()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, LR3/j;->e(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final j()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LR3/n;->c:LR3/j;

    iget-object v2, v2, LR3/j;->a:LR3/F;

    iget-object v3, v2, LR3/F;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v2, v2, LR3/F;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LR3/o;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, LR3/j;->d(LR3/o;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, LR3/F;->c()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LR3/o;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, LR3/j;->d(LR3/o;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final k(LR3/p;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, LR3/n;->p(LR3/p;)V

    iget-object p0, p0, LR3/n;->c:LR3/j;

    iget-object p0, p0, LR3/j;->a:LR3/F;

    iget-object v0, p1, LR3/p;->d:LR3/o;

    invoke-virtual {p0, v0}, LR3/F;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    iget-object p0, p1, LR3/p;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-boolean v1, v0, LR3/o;->e:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, LR3/o;->d:LR3/T;

    iget-object v0, v0, LR3/T;->c:LR3/U;

    sget-object v1, LR3/U;->k:LR3/U;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, LR3/p;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p0, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p0}, LR3/p;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public final l(LR3/p;)Z
    .locals 1

    invoke-virtual {p0, p1}, LR3/n;->p(LR3/p;)V

    iget-object p0, p0, LR3/n;->c:LR3/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LR3/p;->d:LR3/o;

    iget-boolean v0, p1, LR3/o;->e:Z

    if-nez v0, :cond_1

    iget-object p0, p0, LR3/j;->a:LR3/F;

    invoke-virtual {p0, p1}, LR3/F;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hasField() can only be called on non-repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m()V
    .locals 0

    iget-object p0, p0, LR3/n;->c:LR3/j;

    invoke-virtual {p0}, LR3/j;->f()V

    return-void
.end method

.method public final n()LR3/m;
    .locals 1

    new-instance v0, LR3/m;

    invoke-direct {v0, p0}, LR3/m;-><init>(LR3/n;)V

    return-object v0
.end method

.method public final o(LR3/f;LB1/j;LR3/i;I)Z
    .locals 9

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-interface {p0}, LR3/A;->a()LR3/b;

    move-result-object v2

    and-int/lit8 v3, p4, 0x7

    ushr-int/lit8 v4, p4, 0x3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, LR3/h;

    invoke-direct {v5, v4, v2}, LR3/h;-><init>(ILR3/b;)V

    iget-object v2, p3, LR3/i;->a:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LR3/p;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    :cond_0
    move v6, v4

    move v3, v5

    goto :goto_0

    :cond_1
    iget-object v6, v2, LR3/p;->d:LR3/o;

    iget-object v7, v6, LR3/o;->d:LR3/T;

    sget-object v8, LR3/j;->d:LR3/j;

    iget v8, v7, LR3/T;->d:I

    if-ne v3, v8, :cond_2

    move v3, v4

    move v6, v3

    goto :goto_0

    :cond_2
    iget-boolean v6, v6, LR3/o;->e:Z

    if-eqz v6, :cond_0

    invoke-virtual {v7}, LR3/T;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    move v3, v4

    move v6, v5

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {p1, p4, p2}, LR3/f;->q(ILB1/j;)Z

    move-result v5

    goto/16 :goto_5

    :cond_3
    iget-object p0, p0, LR3/n;->c:LR3/j;

    if-eqz v6, :cond_7

    invoke-virtual {p1}, LR3/f;->k()I

    move-result p2

    invoke-virtual {p1, p2}, LR3/f;->d(I)I

    move-result p2

    iget-object p3, v2, LR3/p;->d:LR3/o;

    iget-object p4, p3, LR3/o;->d:LR3/T;

    sget-object v0, LR3/T;->i:LR3/T;

    if-ne p4, v0, :cond_5

    invoke-virtual {p1}, LR3/f;->b()I

    move-result p0

    if-gtz p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, LR3/f;->k()I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1

    :cond_5
    :goto_1
    invoke-virtual {p1}, LR3/f;->b()I

    move-result p4

    if-lez p4, :cond_6

    iget-object p4, p3, LR3/o;->d:LR3/T;

    invoke-static {p1, p4}, LR3/j;->h(LR3/f;LR3/T;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, LR3/j;->a(LR3/o;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    :goto_2
    invoke-virtual {p1, p2}, LR3/f;->c(I)V

    goto/16 :goto_5

    :cond_7
    iget-object p2, v2, LR3/p;->d:LR3/o;

    iget-object p2, p2, LR3/o;->d:LR3/T;

    iget-object p2, p2, LR3/T;->c:LR3/U;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    iget-object p4, v2, LR3/p;->d:LR3/o;

    if-eq p2, v0, :cond_f

    const/16 v0, 0x8

    if-eq p2, v0, :cond_8

    iget-object p2, p4, LR3/o;->d:LR3/T;

    invoke-static {p1, p2}, LR3/j;->h(LR3/f;LR3/T;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_8
    iget-boolean p2, p4, LR3/o;->e:Z

    if-nez p2, :cond_9

    iget-object p2, p0, LR3/j;->a:LR3/F;

    invoke-virtual {p2, p4}, LR3/F;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LR3/b;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, LR3/b;->e()LR3/k;

    move-result-object v1

    :cond_9
    if-nez v1, :cond_a

    iget-object p2, v2, LR3/p;->c:LR3/b;

    invoke-virtual {p2}, LR3/b;->d()LR3/k;

    move-result-object v1

    :cond_a
    sget-object p2, LR3/T;->g:LR3/P;

    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    iget-object v3, p4, LR3/o;->d:LR3/T;

    const/16 v6, 0x40

    if-ne v3, p2, :cond_c

    iget p2, p1, LR3/f;->i:I

    if-ge p2, v6, :cond_b

    add-int/2addr p2, v5

    iput p2, p1, LR3/f;->i:I

    invoke-virtual {v1, p1, p3}, LR3/k;->d(LR3/f;LR3/i;)LR3/k;

    iget p2, p4, LR3/o;->c:I

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, LR3/f;->a(I)V

    iget p2, p1, LR3/f;->i:I

    sub-int/2addr p2, v5

    iput p2, p1, LR3/f;->i:I

    goto :goto_3

    :cond_b
    new-instance p0, LR3/u;

    invoke-direct {p0, v0}, LR3/u;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-virtual {p1}, LR3/f;->k()I

    move-result p2

    iget v3, p1, LR3/f;->i:I

    if-ge v3, v6, :cond_e

    invoke-virtual {p1, p2}, LR3/f;->d(I)I

    move-result p2

    iget v0, p1, LR3/f;->i:I

    add-int/2addr v0, v5

    iput v0, p1, LR3/f;->i:I

    invoke-virtual {v1, p1, p3}, LR3/k;->d(LR3/f;LR3/i;)LR3/k;

    invoke-virtual {p1, v4}, LR3/f;->a(I)V

    iget p3, p1, LR3/f;->i:I

    sub-int/2addr p3, v5

    iput p3, p1, LR3/f;->i:I

    invoke-virtual {p1, p2}, LR3/f;->c(I)V

    :goto_3
    invoke-virtual {v1}, LR3/k;->c()LR3/b;

    move-result-object p1

    :goto_4
    iget-boolean p2, p4, LR3/o;->e:Z

    if-eqz p2, :cond_d

    invoke-virtual {v2, p1}, LR3/p;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, LR3/j;->a(LR3/o;Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v2, p1}, LR3/p;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, LR3/j;->i(LR3/o;Ljava/lang/Object;)V

    :goto_5
    return v5

    :cond_e
    new-instance p0, LR3/u;

    invoke-direct {p0, v0}, LR3/u;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    invoke-virtual {p1}, LR3/f;->k()I

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1
.end method

.method public final p(LR3/p;)V
    .locals 0

    iget-object p1, p1, LR3/p;->a:LR3/b;

    invoke-interface {p0}, LR3/A;->a()LR3/b;

    move-result-object p0

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
