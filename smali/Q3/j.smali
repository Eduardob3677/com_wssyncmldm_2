.class public abstract LQ3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LQ3/c;

    const-string v1, "java.lang"

    invoke-direct {v0, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    const-string v1, "annotation"

    invoke-static {v1}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v1

    invoke-virtual {v0, v1}, LQ3/c;->c(LQ3/f;)LQ3/c;

    return-void
.end method

.method public static final a(Ljava/lang/String;)LQ3/b;
    .locals 2

    new-instance v0, LQ3/b;

    sget-object v1, LQ3/i;->a:LQ3/c;

    sget-object v1, LQ3/i;->a:LQ3/c;

    invoke-static {p0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LQ3/b;-><init>(LQ3/c;LQ3/f;)V

    return-object v0
.end method

.method public static final b(Ljava/lang/String;)LQ3/b;
    .locals 2

    new-instance v0, LQ3/b;

    sget-object v1, LQ3/i;->a:LQ3/c;

    sget-object v1, LQ3/i;->c:LQ3/c;

    invoke-static {p0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LQ3/b;-><init>(LQ3/c;LQ3/f;)V

    return-object v0
.end method

.method public static final c(Ljava/util/LinkedHashMap;)V
    .locals 3

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, LR2/z;->y1(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final d(LQ3/f;)LQ3/b;
    .locals 3

    new-instance v0, LQ3/b;

    sget-object v1, LQ3/i;->a:LQ3/c;

    sget-object v1, LQ3/i;->h:LQ3/b;

    invoke-virtual {v1}, LQ3/b;->h()LQ3/c;

    move-result-object v2

    invoke-virtual {p0}, LQ3/f;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, LQ3/b;->j()LQ3/f;

    move-result-object v1

    invoke-virtual {v1}, LQ3/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p0

    invoke-direct {v0, v2, p0}, LQ3/b;-><init>(LQ3/c;LQ3/f;)V

    return-object v0
.end method

.method public static final e(Ljava/lang/String;)LQ3/b;
    .locals 2

    new-instance v0, LQ3/b;

    sget-object v1, LQ3/i;->a:LQ3/c;

    sget-object v1, LQ3/i;->b:LQ3/c;

    invoke-static {p0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LQ3/b;-><init>(LQ3/c;LQ3/f;)V

    return-object v0
.end method

.method public static final f(LQ3/b;)LQ3/b;
    .locals 3

    new-instance v0, LQ3/b;

    sget-object v1, LQ3/i;->a:LQ3/c;

    sget-object v1, LQ3/i;->a:LQ3/c;

    invoke-virtual {p0}, LQ3/b;->j()LQ3/f;

    move-result-object p0

    invoke-virtual {p0}, LQ3/f;->c()Ljava/lang/String;

    move-result-object p0

    const-string v2, "U"

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LQ3/b;-><init>(LQ3/c;LQ3/f;)V

    return-object v0
.end method
