.class public final La4/i;
.super La4/p;
.source "SourceFile"


# instance fields
.field public final b:La4/o;


# direct methods
.method public constructor <init>(La4/o;)V
    .locals 1

    const-string v0, "workerScope"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/i;->b:La4/o;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, La4/i;->b:La4/o;

    invoke-interface {p0}, La4/o;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, La4/i;->b:La4/o;

    invoke-interface {p0}, La4/o;->b()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final c(LQ3/f;Lz3/b;)Lr3/g;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, La4/i;->b:La4/o;

    invoke-interface {p0, p1, p2}, La4/q;->c(LQ3/f;Lz3/b;)Lr3/g;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    instance-of p2, p0, Lr3/e;

    if-eqz p2, :cond_0

    move-object p2, p0

    check-cast p2, Lr3/e;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    if-eqz p2, :cond_1

    move-object p1, p2

    goto :goto_1

    :cond_1
    instance-of p2, p0, Lf4/t;

    if-eqz p2, :cond_2

    move-object p1, p0

    check-cast p1, Lf4/t;

    :cond_2
    :goto_1
    return-object p1
.end method

.method public final e()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, La4/i;->b:La4/o;

    invoke-interface {p0}, La4/o;->e()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final f(La4/f;Lc3/b;)Ljava/util/Collection;
    .locals 2

    const-string v0, "kindFilter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameFilter"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, La4/f;->l:I

    iget v1, p1, La4/f;->b:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, La4/f;

    iget-object p1, p1, La4/f;->a:Ljava/util/List;

    invoke-direct {v1, v0, p1}, La4/f;-><init>(ILjava/util/List;)V

    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    sget-object p0, LR2/u;->c:LR2/u;

    goto :goto_2

    :cond_1
    iget-object p0, p0, La4/i;->b:La4/o;

    invoke-interface {p0, p1, p2}, La4/q;->f(La4/f;Lc3/b;)Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lr3/h;

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object p0, p1

    :goto_2
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Classes from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, La4/i;->b:La4/o;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
