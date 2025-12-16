.class public final Lh4/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh4/J;
.implements Lk4/f;


# instance fields
.field public a:Lh4/v;

.field public final b:Ljava/util/LinkedHashSet;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/util/AbstractCollection;)V
    .locals 1

    const-string v0, "typesToIntersect"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lh4/u;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lh4/u;->c:I

    return-void
.end method


# virtual methods
.method public final b()Lh4/z;
    .locals 7

    sget-object v0, Lh4/G;->d:Le/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lh4/G;->e:Lh4/G;

    sget-object v3, LR2/u;->c:LR2/u;

    iget-object v0, p0, Lh4/u;->b:Ljava/util/LinkedHashSet;

    const-string v2, "member scope for intersection type"

    invoke-static {v2, v0}, LL2/b;->g(Ljava/lang/String;Ljava/util/Collection;)La4/o;

    move-result-object v5

    new-instance v6, LA3/d;

    const/16 v0, 0x12

    invoke-direct {v6, v0, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lh4/d;->t(Lh4/G;Lh4/J;Ljava/util/List;ZLa4/o;Lc3/b;)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lc3/b;)Ljava/lang/String;
    .locals 8

    const-string v0, "getProperTypeRelatedToStringify"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lh4/u;->b:Ljava/util/LinkedHashSet;

    new-instance v0, LC1/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, LC1/d;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v0}, LR2/m;->e1(Ljava/util/AbstractCollection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    new-instance v6, LA3/d;

    const/16 p0, 0x13

    invoke-direct {v6, p0, p1}, LA3/d;-><init>(ILjava/lang/Object;)V

    const-string v4, "{"

    const-string v5, "}"

    const-string v3, " & "

    const/16 v7, 0x18

    invoke-static/range {v2 .. v7}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d(Li4/f;)Lh4/u;
    .locals 4

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lh4/u;->b:Ljava/util/LinkedHashSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/v;

    invoke-virtual {v2, p1}, Lh4/v;->L0(Li4/f;)Lh4/v;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lh4/u;->a:Lh4/v;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lh4/v;->L0(Li4/f;)Lh4/v;

    move-result-object v0

    :cond_2
    new-instance p1, Lh4/u;

    invoke-direct {p1, v1}, Lh4/u;-><init>(Ljava/util/AbstractCollection;)V

    new-instance v1, Lh4/u;

    iget-object p1, p1, Lh4/u;->b:Ljava/util/LinkedHashSet;

    invoke-direct {v1, p1}, Lh4/u;-><init>(Ljava/util/AbstractCollection;)V

    iput-object v0, v1, Lh4/u;->a:Lh4/v;

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lh4/u;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lh4/u;->b:Ljava/util/LinkedHashSet;

    check-cast p1, Lh4/u;

    iget-object p1, p1, Lh4/u;->b:Ljava/util/LinkedHashSet;

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final g()Lo3/i;
    .locals 1

    iget-object p0, p0, Lh4/u;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/v;

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->g()Lo3/i;

    move-result-object p0

    const-string v0, "intersectedTypes.iterato\u2026xt().constructor.builtIns"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lh4/u;->c:I

    return p0
.end method

.method public final i()Lr3/g;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final j()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lh4/u;->b:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public final k()Ljava/util/List;
    .locals 0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lh4/f;->f:Lh4/f;

    invoke-virtual {p0, v0}, Lh4/u;->c(Lc3/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
