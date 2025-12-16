.class public final Ll3/N;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ll3/O;


# direct methods
.method public synthetic constructor <init>(Ll3/O;I)V
    .locals 0

    iput p2, p0, Ll3/N;->d:I

    iput-object p1, p0, Ll3/N;->e:Ll3/O;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Ll3/N;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ll3/N;->e:Ll3/O;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ll3/O;->g:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, p0, Ll3/O;->c:Ll3/p0;

    invoke-virtual {v0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/b;

    if-eqz v0, :cond_a

    sget-object v2, Ll3/A;->b:[Li3/o;

    aget-object v1, v2, v1

    iget-object p0, p0, Ll3/A;->a:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "<get-moduleData>(...)"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lw3/e;

    iget-object p0, p0, Lw3/e;->b:LJ/r0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LJ/r0;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lw3/b;->a:Ljava/lang/Class;

    invoke-static {v2}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-static {v2}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v2

    invoke-virtual {v2}, LQ3/b;->h()LQ3/c;

    move-result-object v2

    const-string v4, "fileClass.classId.packageFqName"

    invoke-static {v4, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v0, Lw3/b;->b:LK3/b;

    iget-object v5, v4, LK3/b;->d:Ljava/lang/Object;

    check-cast v5, LK3/a;

    sget-object v6, LK3/a;->i:LK3/a;

    iget-object v7, p0, LJ/r0;->c:Ljava/lang/Object;

    check-cast v7, LJ3/f;

    if-ne v5, v6, :cond_4

    const/4 v8, 0x0

    if-ne v5, v6, :cond_0

    iget-object v4, v4, LK3/b;->f:Ljava/io/Serializable;

    check-cast v4, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v8

    :goto_0
    if-eqz v4, :cond_1

    invoke-static {v4}, LR2/i;->g0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    :cond_1
    if-nez v8, :cond_2

    sget-object v8, LR2/u;->c:LR2/u;

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, LY3/b;->d(Ljava/lang/String;)LY3/b;

    move-result-object v6

    new-instance v8, LQ3/c;

    const/16 v9, 0x2e

    iget-object v6, v6, LY3/b;->a:Ljava/lang/String;

    const/16 v10, 0x2f

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, LQ3/c;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v6

    invoke-virtual {v7}, LJ3/f;->c()Ld4/i;

    move-result-object v8

    const-string v9, "<this>"

    iget-object v8, v8, Ld4/i;->c:Ld4/j;

    invoke-static {v9, v8}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v8, LP3/f;->g:LP3/f;

    iget-object v9, p0, LJ/r0;->d:Ljava/lang/Object;

    check-cast v9, Le/v;

    invoke-static {v9, v6, v8}, Lf1/a;->w(Le/v;LQ3/b;LP3/f;)Lw3/b;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :cond_5
    new-instance p0, Lq3/l;

    invoke-virtual {v7}, LJ3/f;->c()Ld4/i;

    move-result-object v5

    iget-object v5, v5, Ld4/i;->b:Lr3/x;

    const/4 v6, 0x1

    invoke-direct {p0, v5, v2, v6}, Lq3/l;-><init>(Lr3/x;LQ3/c;I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw3/b;

    invoke-virtual {v7, p0, v6}, LJ3/f;->a(Lu3/E;Lw3/b;)Lf4/q;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-static {v5}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "package "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, LZ0/j;->u(Ljava/lang/String;Ljava/util/List;)La4/o;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v4, p0

    goto :goto_3

    :cond_8
    move-object v4, v0

    :cond_9
    :goto_3
    const-string p0, "cache.getOrPut(fileClass\u2026ileClass)\", scopes)\n    }"

    invoke-static {p0, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v4, La4/o;

    goto :goto_4

    :cond_a
    sget-object v4, La4/n;->b:La4/n;

    :goto_4
    return-object v4

    :pswitch_0
    iget-object p0, p0, Ll3/N;->e:Ll3/O;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ll3/O;->g:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Ll3/O;->c:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw3/b;

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    iget-object p0, p0, Lw3/b;->b:LK3/b;

    if-eqz p0, :cond_b

    iget-object v1, p0, LK3/b;->f:Ljava/io/Serializable;

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v2, p0, LK3/b;->h:Ljava/io/Serializable;

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-static {v1, v2}, LP3/h;->h([Ljava/lang/String;[Ljava/lang/String;)LQ2/e;

    move-result-object v0

    iget-object v1, v0, LQ2/e;->c:Ljava/lang/Object;

    check-cast v1, LP3/g;

    iget-object v0, v0, LQ2/e;->d:Ljava/lang/Object;

    check-cast v0, LL3/C;

    new-instance v2, LQ2/i;

    iget-object p0, p0, LK3/b;->e:Ljava/lang/Object;

    check-cast p0, LP3/f;

    invoke-direct {v2, v1, v0, p0}, LQ2/i;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;)V

    move-object v0, v2

    :cond_b
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
