.class public final LD3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/G;


# instance fields
.field public final a:LD3/e;

.field public final b:Lg4/e;


# direct methods
.method public constructor <init>(LD3/a;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LD3/e;

    sget-object v1, LD3/b;->b:LD3/b;

    new-instance v2, LQ2/a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LQ2/a;-><init>(I)V

    invoke-direct {v0, p1, v1, v2}, LD3/e;-><init>(LD3/a;LD3/g;LQ2/c;)V

    iput-object v0, p0, LD3/d;->a:LD3/e;

    iget-object p1, p1, LD3/a;->a:Lg4/o;

    check-cast p1, Lg4/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg4/e;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-direct {v1, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-direct {v0, p1, v1}, Lg4/e;-><init>(Lg4/l;Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, LD3/d;->b:Lg4/e;

    return-void
.end method


# virtual methods
.method public final a(LQ3/c;)Z
    .locals 1

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, LD3/d;->a:LD3/e;

    iget-object p0, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, LD3/a;

    iget-object p0, p0, LD3/a;->b:Lc1/w;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final b(LQ3/c;)Ljava/util/List;
    .locals 1

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, LD3/d;->d(LQ3/c;)LE3/s;

    move-result-object p0

    invoke-static {p0}, LR2/n;->z0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c(LQ3/c;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, LD3/d;->d(LQ3/c;)LE3/s;

    move-result-object p0

    invoke-static {p2, p0}, Lq4/k;->b(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    return-void
.end method

.method public final d(LQ3/c;)LE3/s;
    .locals 3

    iget-object v0, p0, LD3/d;->a:LD3/e;

    iget-object v0, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->b:Lc1/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lx3/y;

    invoke-direct {v0, p1}, Lx3/y;-><init>(LQ3/c;)V

    new-instance v1, LB3/c;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2, v0}, LB3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p0, p0, LD3/d;->b:Lg4/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg4/g;

    invoke-direct {v0, p1, v1}, Lg4/g;-><init>(Ljava/lang/Object;Lc3/a;)V

    invoke-virtual {p0, v0}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, LE3/s;

    return-object p0

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0}, Lg4/e;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final o(LQ3/c;Lc3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameFilter"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, LD3/d;->d(LQ3/c;)LE3/s;

    move-result-object p0

    iget-object p0, p0, LE3/s;->m:Lg4/c;

    invoke-virtual {p0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, LR2/u;->c:LR2/u;

    :cond_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LazyJavaPackageFragmentProvider of module "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LD3/d;->a:LD3/e;

    iget-object p0, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, LD3/a;

    iget-object p0, p0, LD3/a;->o:Lr3/x;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
