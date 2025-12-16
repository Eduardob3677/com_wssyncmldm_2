.class public final LS2/h;
.super LR2/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final c:LS2/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, LS2/e;

    invoke-direct {v0}, LS2/e;-><init>()V

    invoke-direct {p0}, LR2/f;-><init>()V

    iput-object v0, p0, LS2/h;->c:LS2/e;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, LS2/h;->c:LS2/e;

    invoke-virtual {p0, p1}, LS2/e;->a(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LS2/h;->c:LS2/e;

    invoke-virtual {v0}, LS2/e;->c()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, LS2/h;->c:LS2/e;

    invoke-virtual {p0}, LS2/e;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, LS2/h;->c:LS2/e;

    invoke-virtual {p0, p1}, LS2/e;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, LS2/h;->c:LS2/e;

    invoke-virtual {p0}, LS2/e;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object p0, p0, LS2/h;->c:LS2/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LS2/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LS2/c;-><init>(LS2/e;I)V

    return-object v0
.end method

.method public final l()I
    .locals 0

    iget-object p0, p0, LS2/h;->c:LS2/e;

    iget p0, p0, LS2/e;->j:I

    return p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, LS2/h;->c:LS2/e;

    invoke-virtual {p0}, LS2/e;->c()V

    invoke-virtual {p0, p1}, LS2/e;->h(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LS2/e;->l(I)V

    :goto_0
    if-ltz p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LS2/h;->c:LS2/e;

    invoke-virtual {v0}, LS2/e;->c()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LS2/h;->c:LS2/e;

    invoke-virtual {v0}, LS2/e;->c()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method
