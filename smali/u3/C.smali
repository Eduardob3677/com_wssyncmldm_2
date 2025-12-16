.class public final Lu3/C;
.super Lu3/o;
.source "SourceFile"

# interfaces
.implements Lr3/x;


# instance fields
.field public final e:Lg4/o;

.field public final f:Lo3/i;

.field public final g:Ljava/util/Map;

.field public final h:Lu3/H;

.field public i:Le/v;

.field public j:Lr3/D;

.field public final k:Z

.field public final l:Lg4/e;

.field public final m:LQ2/h;


# direct methods
.method public constructor <init>(LQ3/f;Lg4/o;Lo3/i;I)V
    .locals 1

    sget-object p4, LR2/v;->c:LR2/v;

    sget-object v0, Ls3/g;->a:Ls3/f;

    invoke-direct {p0, v0, p1}, Lu3/o;-><init>(Ls3/h;LQ3/f;)V

    iput-object p2, p0, Lu3/C;->e:Lg4/o;

    iput-object p3, p0, Lu3/C;->f:Lo3/i;

    iget-boolean p3, p1, LQ3/f;->d:Z

    if-eqz p3, :cond_1

    iput-object p4, p0, Lu3/C;->g:Ljava/util/Map;

    sget-object p1, Lu3/H;->a:Lu3/F;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lu3/F;->b:LI2/a;

    invoke-virtual {p0, p1}, Lu3/C;->U(LI2/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu3/H;

    if-nez p1, :cond_0

    sget-object p1, Lu3/G;->b:Lu3/G;

    :cond_0
    iput-object p1, p0, Lu3/C;->h:Lu3/H;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lu3/C;->k:Z

    new-instance p1, LA3/d;

    const/16 p3, 0x18

    invoke-direct {p1, p3, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    check-cast p2, Lg4/l;

    invoke-virtual {p2, p1}, Lg4/l;->b(Lc3/b;)Lg4/e;

    move-result-object p1

    iput-object p1, p0, Lu3/C;->l:Lg4/e;

    new-instance p1, Lu3/B;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lu3/B;-><init>(Lu3/o;I)V

    new-instance p2, LQ2/h;

    invoke-direct {p2, p1}, LQ2/h;-><init>(Lc3/a;)V

    iput-object p2, p0, Lu3/C;->m:LQ2/h;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Module name must be special: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final E0()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lu3/C;->i:Le/v;

    if-eqz v0, :cond_0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dependencies of module "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu3/o;->getName()LQ3/f;

    move-result-object p0

    iget-object p0, p0, LQ3/f;->c:Ljava/lang/String;

    const-string v1, "name.toString()"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " were not set"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final F0(Lr3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p2, p0}, Lr3/l;->m(Ljava/lang/Object;Lr3/x;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final P0()V
    .locals 3

    iget-boolean v0, p0, Lu3/C;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lr3/v;->a:LI2/a;

    invoke-virtual {p0, v0}, Lu3/C;->U(LI2/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LB/f;->F(Ljava/lang/Object;)V

    new-instance v0, Lr3/u;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accessing invalid module descriptor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "message"

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final U(LI2/a;)Ljava/lang/Object;
    .locals 1

    const-string v0, "capability"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lu3/C;->g:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final a0(LQ3/c;)Lr3/H;
    .locals 1

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lu3/C;->P0()V

    iget-object p0, p0, Lu3/C;->l:Lg4/e;

    invoke-virtual {p0, p1}, Lg4/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr3/H;

    return-object p0
.end method

.method public final g()Lo3/i;
    .locals 0

    iget-object p0, p0, Lu3/C;->f:Lo3/i;

    return-object p0
.end method

.method public final l()Lr3/j;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final o(LQ3/c;Lc3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameFilter"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lu3/C;->P0()V

    invoke-virtual {p0}, Lu3/C;->P0()V

    iget-object p0, p0, Lu3/C;->m:LQ2/h;

    invoke-virtual {p0}, LQ2/h;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu3/n;

    invoke-virtual {p0, p1, p2}, Lu3/n;->o(LQ3/c;Lc3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final t0(Lr3/x;)Z
    .locals 2

    const-string v0, "targetModule"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lu3/C;->i:Le/v;

    invoke-static {v0}, Ld3/i;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Le/v;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-static {v0, p1}, LR2/m;->H0(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lu3/C;->E0()Ljava/util/List;

    instance-of v0, p1, Ljava/lang/Void;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/lang/Void;

    :goto_0
    invoke-interface {p1}, Lr3/x;->E0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lu3/o;->O0(Lr3/j;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "super.toString()"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lu3/C;->k:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, " !isValid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
