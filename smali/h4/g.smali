.class public abstract Lh4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh4/J;


# instance fields
.field public a:I

.field public final b:Lg4/d;


# direct methods
.method public constructor <init>(Lg4/o;)V
    .locals 3

    const-string v0, "storageManager"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LB3/k;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    new-instance v1, LA3/d;

    const/16 v2, 0x11

    invoke-direct {v1, v2, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    check-cast p1, Lg4/l;

    new-instance v2, Lg4/d;

    invoke-direct {v2, p1, v0, v1}, Lg4/d;-><init>(Lg4/l;LB3/k;LA3/d;)V

    iput-object v2, p0, Lh4/g;->b:Lg4/d;

    return-void
.end method


# virtual methods
.method public abstract b()Ljava/util/Collection;
.end method

.method public abstract c()Lh4/v;
.end method

.method public abstract d()Lr3/O;
.end method

.method public final e()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lh4/g;->b:Lg4/d;

    invoke-virtual {p0}, Lg4/d;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/e;

    iget-object p0, p0, Lh4/e;->b:Ljava/util/List;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lh4/J;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lh4/g;->hashCode()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lh4/J;

    invoke-interface {p1}, Lh4/J;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Lh4/J;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object v0

    invoke-interface {p1}, Lh4/J;->i()Lr3/g;

    move-result-object p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    invoke-static {v0}, Lj4/i;->f(Lr3/j;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, LT3/e;->p(Lr3/j;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lj4/i;->f(Lr3/j;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, LT3/e;->p(Lr3/j;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Lh4/g;->f(Lr3/g;)Z

    move-result p0

    return p0

    :cond_5
    return v1
.end method

.method public abstract f(Lr3/g;)Z
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lh4/g;->a:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object v0

    invoke-static {v0}, Lj4/i;->f(Lr3/j;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, LT3/e;->p(Lr3/j;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, LT3/e;->g(Lr3/j;)LQ3/e;

    move-result-object v0

    iget-object v0, v0, LQ3/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    iput v0, p0, Lh4/g;->a:I

    return v0
.end method

.method public final bridge synthetic j()Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0}, Lh4/g;->e()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public l(Ljava/util/List;)Ljava/util/List;
    .locals 0

    return-object p1
.end method
