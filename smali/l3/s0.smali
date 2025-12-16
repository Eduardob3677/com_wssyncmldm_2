.class public Ll3/s0;
.super Ld3/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h(Ld3/b;)Ll3/C;
    .locals 1

    invoke-virtual {p0}, Ld3/b;->j()Li3/e;

    move-result-object p0

    instance-of v0, p0, Ll3/C;

    if-eqz v0, :cond_0

    check-cast p0, Ll3/C;

    goto :goto_0

    :cond_0
    sget-object p0, Ll3/d;->d:Ll3/d;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Ld3/g;)Li3/f;
    .locals 6

    new-instance p0, Ll3/E;

    invoke-static {p1}, Ll3/s0;->h(Ld3/b;)Ll3/C;

    move-result-object v1

    invoke-virtual {p1}, Ld3/b;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ld3/b;->l()Ljava/lang/String;

    move-result-object v3

    const-string v0, "container"

    invoke-static {v0, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "name"

    invoke-static {v0, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "signature"

    invoke-static {v0, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    iget-object v5, p1, Ld3/b;->d:Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ll3/E;-><init>(Ll3/C;Ljava/lang/String;Ljava/lang/String;Lr3/s;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Ljava/lang/Class;)Li3/c;
    .locals 0

    invoke-static {p1}, Ll3/c;->a(Ljava/lang/Class;)Ll3/z;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Class;Ljava/lang/String;)Li3/e;
    .locals 1

    sget-object p0, Ll3/c;->a:Le/v;

    const-string p0, "jClass"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Ll3/c;->b:Le/v;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Le/v;->d:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Le/v;->c:Ljava/lang/Object;

    check-cast p0, Lc3/b;

    invoke-interface {p0, p1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :cond_1
    :goto_0
    check-cast v0, Li3/e;

    return-object v0
.end method

.method public final d(Ld3/l;)Li3/i;
    .locals 3

    new-instance p0, Ll3/I;

    invoke-static {p1}, Ll3/s0;->h(Ld3/b;)Ll3/C;

    move-result-object v0

    iget-object v1, p1, Ld3/b;->f:Ljava/lang/String;

    iget-object v2, p1, Ld3/b;->g:Ljava/lang/String;

    iget-object p1, p1, Ld3/b;->d:Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2, p1}, Ll3/I;-><init>(Ll3/C;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final e(Ld3/n;)Li3/n;
    .locals 3

    new-instance p0, Ll3/Z;

    invoke-static {p1}, Ll3/s0;->h(Ld3/b;)Ll3/C;

    move-result-object v0

    iget-object v1, p1, Ld3/b;->f:Ljava/lang/String;

    iget-object v2, p1, Ld3/b;->g:Ljava/lang/String;

    iget-object p1, p1, Ld3/b;->d:Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2, p1}, Ll3/Z;-><init>(Ll3/C;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final f(Ld3/f;)Ljava/lang/String;
    .locals 10

    const-string v0, "<this>"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lkotlin/Metadata;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lkotlin/Metadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlin/Metadata;->d1()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_1

    move-object v2, v1

    :cond_1
    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lkotlin/Metadata;->d2()[Ljava/lang/String;

    move-result-object v1

    sget-object v3, LP3/h;->a:LR3/i;

    const-string v3, "strings"

    invoke-static {v3, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {v2}, LP3/a;->b([Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v2, LP3/h;->a:LR3/i;

    invoke-static {v3, v1}, LP3/h;->g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)LP3/g;

    move-result-object v6

    sget-object v1, LL3/y;->x:LL3/a;

    sget-object v2, LP3/h;->a:LR3/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, LR3/f;

    invoke-direct {v4, v3}, LR3/f;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v4, v2}, LR3/B;->a(LR3/f;LR3/i;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR3/b;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v4, v2}, LR3/f;->a(I)V
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, LR3/A;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v5, v1

    check-cast v5, LL3/y;

    new-instance v8, LP3/f;

    invoke-interface {v0}, Lkotlin/Metadata;->mv()[I

    move-result-object v1

    invoke-interface {v0}, Lkotlin/Metadata;->xi()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-direct {v8, v1, v2}, LP3/f;-><init>([IZ)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v7, Ls2/c;

    iget-object v0, v5, LL3/y;->r:LL3/X;

    const-string v1, "proto.typeTable"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v7, v0}, Ls2/c;-><init>(LL3/X;)V

    sget-object v9, Lk3/a;->l:Lk3/a;

    invoke-static/range {v4 .. v9}, Ll3/w0;->f(Ljava/lang/Class;LR3/n;LN3/f;Ls2/c;LN3/a;Lc3/c;)Lr3/b;

    move-result-object v0

    check-cast v0, Lu3/N;

    new-instance v1, Ll3/E;

    sget-object v2, Ll3/d;->d:Ll3/d;

    invoke-direct {v1, v2, v0}, Ll3/E;-><init>(Ll3/C;Lr3/s;)V

    :goto_0
    if-eqz v1, :cond_4

    invoke-static {v1}, Ll3/w0;->b(Ljava/lang/Object;)Ll3/E;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object p0, Ll3/t0;->a:LS3/g;

    invoke-virtual {v0}, Ll3/E;->p()Lr3/s;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p0}, Ll3/t0;->a(Ljava/lang/StringBuilder;Lr3/b;)V

    invoke-interface {p0}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v0

    const-string v1, "invoke.valueParameters"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v4, Ll3/b;->l:Ll3/b;

    const-string v3, ")"

    const/16 v5, 0x30

    const-string v2, "("

    move-object v1, p1

    invoke-static/range {v0 .. v5}, LR2/m;->R0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)V

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lr3/b;->n()Lh4/v;

    move-result-object p0

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-static {p0}, Ll3/t0;->d(Lh4/v;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_4
    invoke-super {p0, p1}, Ld3/r;->f(Ld3/f;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, LA0/c;

    invoke-direct {p0}, LA0/c;-><init>()V

    new-instance p1, LR3/u;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, LR3/u;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, LR3/u;->c:LR3/b;

    throw p1

    :catch_0
    move-exception p0

    iput-object v1, p0, LR3/u;->c:LR3/b;

    throw p0
.end method

.method public final g(Ld3/k;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ll3/s0;->f(Ld3/f;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
