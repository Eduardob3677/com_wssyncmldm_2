.class public final LR3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li4/c;


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LR3/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LR3/n;->c:LR3/j;

    iget-boolean v0, p1, LR3/j;->c:Z

    iget-object p1, p1, LR3/j;->a:LR3/F;

    if-eqz v0, :cond_0

    new-instance v0, LR3/v;

    invoke-virtual {p1}, LR3/F;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, LR3/L;

    invoke-virtual {p1}, LR3/L;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {v0}, LR3/v;-><init>()V

    iput-object p1, v0, LR3/v;->d:Ljava/util/Iterator;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LR3/F;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, LR3/L;

    invoke-virtual {p1}, LR3/L;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    iput-object v0, p0, LR3/m;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, LR3/m;->c:Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, LR3/m;->a:Z

    return-void
.end method

.method public static c()LR3/m;
    .locals 2

    new-instance v0, LR3/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, LR3/m;->a:Z

    return-object v0
.end method


# virtual methods
.method public a(Lh4/J;Lh4/J;)Z
    .locals 4

    iget-object v0, p0, LR3/m;->b:Ljava/lang/Object;

    check-cast v0, Lr3/b;

    const-string v1, "$a"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, LR3/m;->c:Ljava/lang/Object;

    check-cast v1, Lr3/b;

    const-string v2, "$b"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "c1"

    invoke-static {v2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "c2"

    invoke-static {v2, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, p2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lh4/J;->i()Lr3/g;

    move-result-object p1

    invoke-interface {p2}, Lh4/J;->i()Lr3/g;

    move-result-object p2

    instance-of v2, p1, Lr3/Q;

    if-eqz v2, :cond_2

    instance-of v2, p2, Lr3/Q;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, LT3/c;->a:LT3/c;

    check-cast p1, Lr3/Q;

    check-cast p2, Lr3/Q;

    new-instance v3, LT3/a;

    invoke-direct {v3, v0, v1}, LT3/a;-><init>(Lr3/b;Lr3/b;)V

    iget-boolean p0, p0, LR3/m;->a:Z

    invoke-virtual {v2, p1, p2, p0, v3}, LT3/c;->d(Lr3/Q;Lr3/Q;ZLc3/c;)Z

    move-result p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public b()LR3/m;
    .locals 3

    iget-object v0, p0, LR3/m;->b:Ljava/lang/Object;

    check-cast v0, Lb1/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "execute parameter required"

    invoke-static {v1, v0}, Lc1/D;->a(Ljava/lang/String;Z)V

    new-instance v0, LR3/m;

    iget-object v1, p0, LR3/m;->c:Ljava/lang/Object;

    check-cast v1, [LZ0/c;

    iget-boolean v2, p0, LR3/m;->a:Z

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, LR3/m;->c:Ljava/lang/Object;

    iput-object v1, v0, LR3/m;->b:Ljava/lang/Object;

    iput-boolean v2, v0, LR3/m;->a:Z

    return-object v0
.end method

.method public d(ILB1/j;)V
    .locals 7

    :goto_0
    iget-object v0, p0, LR3/m;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR3/o;

    iget v0, v0, LR3/o;->c:I

    if-ge v0, p1, :cond_6

    iget-object v0, p0, LR3/m;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR3/o;

    iget-boolean v1, p0, LR3/m;->a:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, LR3/o;->d:LR3/T;

    iget-object v1, v1, LR3/T;->c:LR3/U;

    sget-object v4, LR3/U;->l:LR3/U;

    if-ne v1, v4, :cond_0

    iget-boolean v1, v0, LR3/o;->e:Z

    if-nez v1, :cond_0

    iget-object v1, p0, LR3/m;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR3/b;

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {p2, v4, v5}, LB1/j;->y(II)V

    invoke-virtual {p2, v2, v3}, LB1/j;->y(II)V

    iget v0, v0, LR3/o;->c:I

    invoke-virtual {p2, v0}, LB1/j;->w(I)V

    invoke-virtual {p2, v5, v1}, LB1/j;->p(ILR3/b;)V

    const/4 v0, 0x4

    invoke-virtual {p2, v4, v0}, LB1/j;->y(II)V

    goto :goto_4

    :cond_0
    iget-object v1, p0, LR3/m;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, LR3/j;->d:LR3/j;

    iget-object v4, v0, LR3/o;->d:LR3/T;

    iget-boolean v5, v0, LR3/o;->e:Z

    iget v6, v0, LR3/o;->c:I

    if-eqz v5, :cond_3

    check-cast v1, Ljava/util/List;

    iget-boolean v0, v0, LR3/o;->f:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2, v6, v2}, LB1/j;->y(II)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, LR3/j;->c(LR3/T;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v3}, LB1/j;->w(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v1}, LR3/j;->l(LB1/j;LR3/T;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v6, v1}, LR3/j;->k(LB1/j;LR3/T;ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p2, v4, v6, v1}, LR3/j;->k(LB1/j;LR3/T;ILjava/lang/Object;)V

    :cond_4
    :goto_4
    iget-object v0, p0, LR3/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, LR3/m;->c:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, LR3/m;->c:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public e(Lu1/h;)V
    .locals 2

    iget-object v0, p0, LR3/m;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LR3/m;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, LR3/m;->a:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LR3/m;->a:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    iget-object v1, p0, LR3/m;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, LR3/m;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu1/m;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, LR3/m;->a:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0, p1}, Lu1/m;->onComplete(Lu1/h;)V

    goto :goto_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public f(Lu1/m;)V
    .locals 2

    iget-object v0, p0, LR3/m;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LR3/m;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, LR3/m;->c:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, LR3/m;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
