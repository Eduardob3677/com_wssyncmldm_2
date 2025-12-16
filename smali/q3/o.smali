.class public final Lq3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/G;


# instance fields
.field public final a:Lg4/o;

.field public final b:Le/v;

.field public final c:Lr3/x;

.field public d:Ld4/i;

.field public final e:Lg4/j;


# direct methods
.method public constructor <init>(Lg4/l;Le/v;Lu3/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/o;->a:Lg4/o;

    iput-object p2, p0, Lq3/o;->b:Le/v;

    iput-object p3, p0, Lq3/o;->c:Lr3/x;

    new-instance p2, LA3/d;

    const/16 p3, 0xe

    invoke-direct {p2, p3, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lg4/l;->c(Lc3/b;)Lg4/j;

    move-result-object p1

    iput-object p1, p0, Lq3/o;->e:Lg4/j;

    return-void
.end method


# virtual methods
.method public final a(LQ3/c;)Z
    .locals 3

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lq3/o;->e:Lg4/j;

    iget-object v1, v0, Lg4/j;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lg4/k;->d:Lg4/k;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, p1}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr3/C;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lq3/o;->d(LQ3/c;)Le4/c;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final b(LQ3/c;)Ljava/util/List;
    .locals 1

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lq3/o;->e:Lg4/j;

    invoke-virtual {p0, p1}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LR2/n;->z0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c(LQ3/c;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lq3/o;->e:Lg4/j;

    invoke-virtual {p0, p1}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lq4/k;->b(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    return-void
.end method

.method public final d(LQ3/c;)Le4/c;
    .locals 3

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lq3/o;->b:Le/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lo3/n;->i:LQ3/f;

    invoke-virtual {p1, v1}, LQ3/c;->h(LQ3/f;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    sget-object v1, Le4/a;->q:Le4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Le4/a;->a(LQ3/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Le/v;->d:Ljava/lang/Object;

    check-cast v0, Le4/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Le4/d;->i(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lq3/o;->a:Lg4/o;

    iget-object p0, p0, Lq3/o;->c:Lr3/x;

    invoke-static {p1, v1, p0, v0}, LZ0/j;->w(LQ3/c;Lg4/o;Lr3/x;Ljava/io/InputStream;)Le4/c;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public final o(LQ3/c;Lc3/b;)Ljava/util/Collection;
    .locals 0

    const-string p0, "fqName"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "nameFilter"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, LR2/w;->c:LR2/w;

    return-object p0
.end method
