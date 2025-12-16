.class public abstract La4/h;
.super La4/p;
.source "SourceFile"


# static fields
.field public static final synthetic d:[Li3/o;


# instance fields
.field public final b:Lr3/e;

.field public final c:Lg4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, La4/h;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v3, "allDescriptors"

    const-string v4, "getAllDescriptors()Ljava/util/List;"

    invoke-direct {v0, v2, v3, v4}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Li3/o;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, La4/h;->d:[Li3/o;

    return-void
.end method

.method public constructor <init>(Lg4/o;Lr3/e;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "containingClass"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La4/h;->b:Lr3/e;

    new-instance p2, LB3/k;

    const/16 v0, 0x8

    invoke-direct {p2, v0, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    check-cast p1, Lg4/l;

    new-instance v0, Lg4/i;

    invoke-direct {v0, p1, p2}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v0, p0, La4/h;->c:Lg4/i;

    return-void
.end method


# virtual methods
.method public final d(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 2

    const-string p2, "name"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, La4/h;->c:Lg4/i;

    sget-object p2, La4/h;->d:[Li3/o;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-static {p0, p2}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p2, Lq4/f;

    invoke-direct {p2}, Lq4/f;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lu3/N;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lu3/N;

    invoke-virtual {v1}, Lu3/o;->getName()LQ3/f;

    move-result-object v1

    invoke-static {v1, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lq4/f;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public final f(La4/f;Lc3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameFilter"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p2, La4/f;->n:La4/f;

    iget p2, p2, La4/f;->b:I

    invoke-virtual {p1, p2}, La4/f;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0

    :cond_0
    iget-object p0, p0, La4/h;->c:Lg4/i;

    sget-object p1, La4/h;->d:[Li3/o;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-static {p0, p1}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final g(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 2

    const-string p2, "name"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, La4/h;->c:Lg4/i;

    sget-object p2, La4/h;->d:[Li3/o;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-static {p0, p2}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p2, Lq4/f;

    invoke-direct {p2}, Lq4/f;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lr3/K;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lr3/K;

    invoke-interface {v1}, Lr3/j;->getName()LQ3/f;

    move-result-object v1

    invoke-static {v1, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lq4/f;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public abstract h()Ljava/util/List;
.end method
