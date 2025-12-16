.class public Lj4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La4/o;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;I)V
    .locals 1

    const-string v0, "kind"

    invoke-static {p2, v0}, LB/f;->x(ILjava/lang/String;)V

    const-string v0, "formatParams"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lh0/c;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj4/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 0

    sget-object p0, LR2/w;->c:LR2/w;

    return-object p0
.end method

.method public b()Ljava/util/Set;
    .locals 0

    sget-object p0, LR2/w;->c:LR2/w;

    return-object p0
.end method

.method public c(LQ3/f;Lz3/b;)Lr3/g;
    .locals 0

    const-string p0, "name"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lj4/a;

    const/4 p2, 0x1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "<Error class: %s>"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LQ3/f;->g(Ljava/lang/String;)LQ3/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lj4/a;-><init>(LQ3/f;)V

    return-object p0
.end method

.method public bridge synthetic d(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj4/e;->h(LQ3/f;Lz3/b;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/util/Set;
    .locals 0

    sget-object p0, LR2/w;->c:LR2/w;

    return-object p0
.end method

.method public f(La4/f;Lc3/b;)Ljava/util/Collection;
    .locals 0

    const-string p0, "kindFilter"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "nameFilter"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public bridge synthetic g(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj4/e;->i(LQ3/f;Lz3/b;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public h(LQ3/f;Lz3/b;)Ljava/util/Set;
    .locals 9

    const-string p0, "name"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lj4/b;

    sget-object v1, Lj4/i;->c:Lj4/a;

    const-string p1, "containingDeclaration"

    invoke-static {p1, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Ls3/g;->a:Ls3/f;

    const-string p1, "<Error function>"

    invoke-static {p1}, LQ3/f;->g(Ljava/lang/String;)LQ3/f;

    move-result-object v4

    sget-object v6, Lr3/N;->a:Lr3/M;

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lu3/N;-><init>(Lr3/j;Lu3/N;Ls3/h;LQ3/f;ILr3/N;)V

    sget-object v5, LR2/u;->c:LR2/u;

    sget-object p1, Lj4/h;->g:Lj4/h;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-static {p1, p2}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object v6

    sget-object v8, Lr3/n;->e:LA3/p;

    const/4 v1, 0x0

    const/4 v7, 0x3

    move-object v3, v5

    move-object v4, v5

    invoke-virtual/range {v0 .. v8}, Lu3/N;->d1(Lu3/w;Lu3/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lh4/v;ILA3/p;)Lu3/N;

    invoke-static {p0}, LL2/b;->I(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public i(LQ3/f;Lz3/b;)Ljava/util/Set;
    .locals 0

    const-string p0, "name"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lj4/i;->f:Ljava/util/Set;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ErrorScope{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lj4/e;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
