.class public final LV3/r;
.super LV3/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(LQ3/b;I)V
    .locals 1

    new-instance v0, LV3/f;

    invoke-direct {v0, p1, p2}, LV3/f;-><init>(LQ3/b;I)V

    new-instance p1, LV3/p;

    invoke-direct {p1, v0}, LV3/p;-><init>(LV3/f;)V

    invoke-direct {p0, p1}, LV3/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lr3/x;)Lh4/v;
    .locals 6

    const-string v0, "module"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lh4/G;->d:Le/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lh4/G;->e:Lh4/G;

    invoke-interface {p1}, Lr3/x;->g()Lo3/i;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lo3/m;->P:LQ3/e;

    invoke-virtual {v2}, LQ3/e;->g()LQ3/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo3/i;->i(LQ3/c;)Lr3/e;

    move-result-object v1

    new-instance v2, Lh4/O;

    iget-object p0, p0, LV3/g;->a:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, LV3/q;

    instance-of v4, v3, LV3/o;

    if-eqz v4, :cond_0

    check-cast p0, LV3/o;

    iget-object p0, p0, LV3/o;->a:Lh4/v;

    goto :goto_1

    :cond_0
    instance-of v3, v3, LV3/p;

    if-eqz v3, :cond_3

    check-cast p0, LV3/p;

    iget-object p0, p0, LV3/p;->a:LV3/f;

    iget-object v3, p0, LV3/f;->a:LQ3/b;

    invoke-static {p1, v3}, Lo4/a;->e(Lr3/x;LQ3/b;)Lr3/e;

    move-result-object v4

    iget p0, p0, LV3/f;->b:I

    if-nez v4, :cond_1

    sget-object p1, Lj4/h;->f:Lj4/h;

    invoke-virtual {v3}, LQ3/b;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "classId.toString()"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v3, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Lr3/e;->q()Lh4/z;

    move-result-object v3

    const-string v4, "descriptor.defaultType"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Lf1/a;->h0(Lh4/v;)Lh4/Z;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p0, :cond_2

    invoke-interface {p1}, Lr3/x;->g()Lo3/i;

    move-result-object v5

    invoke-virtual {v5, v3}, Lo3/i;->h(Lh4/Z;)Lh4/z;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object p0, v3

    :goto_1
    invoke-direct {v2, p0}, Lh4/O;-><init>(Lh4/v;)V

    invoke-static {v2}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lh4/d;->q(Lh4/G;Lr3/e;Ljava/util/List;)Lh4/z;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
