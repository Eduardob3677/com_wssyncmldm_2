.class public abstract LR3/l;
.super LR3/k;
.source "SourceFile"

# interfaces
.implements LR3/A;


# instance fields
.field public d:LR3/j;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/k;-><init>()V

    sget-object v0, LR3/j;->d:LR3/j;

    iput-object v0, p0, LR3/l;->d:LR3/j;

    return-void
.end method


# virtual methods
.method public final f(LR3/n;)V
    .locals 3

    iget-boolean v0, p0, LR3/l;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LR3/l;->d:LR3/j;

    invoke-virtual {v0}, LR3/j;->b()LR3/j;

    move-result-object v0

    iput-object v0, p0, LR3/l;->d:LR3/j;

    const/4 v0, 0x1

    iput-boolean v0, p0, LR3/l;->e:Z

    :cond_0
    iget-object p0, p0, LR3/l;->d:LR3/j;

    iget-object p1, p1, LR3/n;->c:LR3/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, LR3/j;->a:LR3/F;

    iget-object v1, v1, LR3/F;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p1, LR3/j;->a:LR3/F;

    if-ge v0, v1, :cond_1

    iget-object v1, v2, LR3/F;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {p0, v1}, LR3/j;->g(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, LR3/F;->c()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, LR3/j;->g(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_2
    return-void
.end method
