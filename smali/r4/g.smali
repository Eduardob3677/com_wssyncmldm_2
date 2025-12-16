.class public final Lr4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Le3/a;


# instance fields
.field public final c:Ljava/util/Iterator;

.field public d:Ljava/util/Iterator;

.field public final synthetic e:Lr4/h;


# direct methods
.method public constructor <init>(Lr4/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/g;->e:Lr4/h;

    iget-object p1, p1, Lr4/h;->a:Lr4/k;

    invoke-interface {p1}, Lr4/k;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lr4/g;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-object v0, p0, Lr4/g;->d:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/g;->d:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lr4/g;->d:Ljava/util/Iterator;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lr4/g;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lr4/g;->e:Lr4/h;

    iget-object v3, v2, Lr4/h;->c:Lc3/b;

    iget-object v2, v2, Lr4/h;->b:Lc3/b;

    invoke-interface {v2, v0}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lr4/g;->d:Ljava/util/Iterator;

    :cond_2
    return v1
.end method

.method public final hasNext()Z
    .locals 0

    invoke-virtual {p0}, Lr4/g;->a()Z

    move-result p0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lr4/g;->d:Ljava/util/Iterator;

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
