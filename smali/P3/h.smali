.class public final LP3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LR3/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LR3/i;

    invoke-direct {v0}, LR3/i;-><init>()V

    sget-object v1, LO3/k;->a:LR3/p;

    invoke-virtual {v0, v1}, LR3/i;->a(LR3/p;)V

    sget-object v1, LO3/k;->b:LR3/p;

    invoke-virtual {v0, v1}, LR3/i;->a(LR3/p;)V

    sget-object v1, LO3/k;->c:LR3/p;

    invoke-virtual {v0, v1}, LR3/i;->a(LR3/p;)V

    sget-object v1, LO3/k;->d:LR3/p;

    invoke-virtual {v0, v1}, LR3/i;->a(LR3/p;)V

    sget-object v1, LO3/k;->e:LR3/p;

    invoke-virtual {v0, v1}, LR3/i;->a(LR3/p;)V

    sget-object v1, LO3/k;->f:LR3/p;

    invoke-virtual {v0, v1}, LR3/i;->a(LR3/p;)V

    sget-object v1, LO3/k;->g:LR3/p;

    invoke-virtual {v0, v1}, LR3/i;->a(LR3/p;)V

    sget-object v1, LO3/k;->h:LR3/p;

    invoke-virtual {v0, v1}, LR3/i;->a(LR3/p;)V

    sget-object v1, LO3/k;->i:LR3/p;

    invoke-virtual {v0, v1}, LR3/i;->a(LR3/p;)V

    sget-object v1, LO3/k;->j:LR3/p;

    invoke-virtual {v0, v1}, LR3/i;->a(LR3/p;)V

    sget-object v1, LO3/k;->k:LR3/p;

    invoke-virtual {v0, v1}, LR3/i;->a(LR3/p;)V

    sget-object v1, LO3/k;->l:LR3/p;

    invoke-virtual {v0, v1}, LR3/i;->a(LR3/p;)V

    sget-object v1, LO3/k;->m:LR3/p;

    invoke-virtual {v0, v1}, LR3/i;->a(LR3/p;)V

    sget-object v1, LO3/k;->n:LR3/p;

    invoke-virtual {v0, v1}, LR3/i;->a(LR3/p;)V

    sput-object v0, LP3/h;->a:LR3/i;

    return-void
.end method

.method public static a(LL3/l;LN3/f;Ls2/c;)LP3/e;
    .locals 8

    const-string v0, "proto"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeTable"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LO3/k;->a:LR3/p;

    const-string v1, "constructorSignature"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lf1/a;->C(LR3/n;LR3/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO3/c;

    if-eqz v0, :cond_0

    iget v1, v0, LO3/c;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, v0, LO3/c;->e:I

    invoke-interface {p1, v1}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "<init>"

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, LO3/c;->d:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    iget p0, v0, LO3/c;->f:I

    invoke-interface {p1, p0}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    iget-object p0, p0, LL3/l;->g:Ljava/util/List;

    const-string v0, "proto.valueParameterList"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL3/Z;

    const-string v3, "it"

    invoke-static {v3, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, p2}, Li3/x;->h1(LL3/Z;Ls2/c;)LL3/Q;

    move-result-object v0

    invoke-static {v0, p1}, LP3/h;->e(LL3/Q;LN3/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v5, ")V"

    const/4 v6, 0x0

    const-string v3, ""

    const-string v4, "("

    const/16 v7, 0x38

    invoke-static/range {v2 .. v7}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    new-instance p1, LP3/e;

    invoke-direct {p1, v1, p0}, LP3/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static b(LL3/G;LN3/f;Ls2/c;Z)LP3/d;
    .locals 4

    const-string v0, "proto"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeTable"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LO3/k;->d:LR3/p;

    const-string v1, "propertySignature"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lf1/a;->C(LR3/n;LR3/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO3/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, v0, LO3/e;->d:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    iget-object v0, v0, LO3/e;->e:LO3/b;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    return-object v1

    :cond_2
    if-eqz v0, :cond_3

    iget p3, v0, LO3/b;->d:I

    and-int/2addr p3, v3

    if-ne p3, v3, :cond_3

    iget p3, v0, LO3/b;->e:I

    goto :goto_1

    :cond_3
    iget p3, p0, LL3/G;->h:I

    :goto_1
    if-eqz v0, :cond_4

    iget v2, v0, LO3/b;->d:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    iget p0, v0, LO3/b;->f:I

    invoke-interface {p1, p0}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-static {p0, p2}, Li3/x;->X0(LL3/G;Ls2/c;)LL3/Q;

    move-result-object p0

    invoke-static {p0, p1}, LP3/h;->e(LL3/Q;LN3/f;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v1

    :cond_5
    :goto_2
    new-instance p2, LP3/d;

    invoke-interface {p1, p3}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, LP3/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static c(LL3/y;LN3/f;Ls2/c;)LP3/e;
    .locals 8

    const-string v0, "proto"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeTable"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LO3/k;->b:LR3/p;

    const-string v1, "methodSignature"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lf1/a;->C(LR3/n;LR3/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO3/c;

    if-eqz v0, :cond_0

    iget v1, v0, LO3/c;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, v0, LO3/c;->e:I

    goto :goto_0

    :cond_0
    iget v1, p0, LL3/y;->h:I

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, LO3/c;->d:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    iget p0, v0, LO3/c;->f:I

    invoke-interface {p1, p0}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :cond_1
    invoke-static {p0, p2}, Li3/x;->O0(LL3/y;Ls2/c;)LL3/Q;

    move-result-object v0

    invoke-static {v0}, LR2/n;->z0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, LL3/y;->q:Ljava/util/List;

    const-string v3, "proto.valueParameterList"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LL3/Z;

    const-string v5, "it"

    invoke-static {v5, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4, p2}, Li3/x;->h1(LL3/Z;Ls2/c;)LL3/Q;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0, v3}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/Q;

    invoke-static {v3, p1}, LP3/h;->e(LL3/Q;LN3/f;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v4

    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {p0, p2}, Li3/x;->W0(LL3/y;Ls2/c;)LL3/Q;

    move-result-object p0

    invoke-static {p0, p1}, LP3/h;->e(LL3/Q;LN3/f;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v4

    :cond_5
    const-string v5, ")"

    const/4 v6, 0x0

    const-string v3, ""

    const-string v4, "("

    const/16 v7, 0x38

    invoke-static/range {v2 .. v7}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    new-instance p2, LP3/e;

    invoke-interface {p1, v1}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, LP3/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static final d(LL3/G;)Z
    .locals 2

    const-string v0, "proto"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LP3/c;->a:LN3/b;

    sget-object v0, LP3/c;->a:LN3/b;

    sget-object v1, LO3/k;->e:LR3/p;

    invoke-virtual {p0, v1}, LR3/n;->k(LR3/p;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "proto.getExtension(JvmProtoBuf.flags)"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static e(LL3/Q;LN3/f;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LL3/Q;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, LL3/Q;->k:I

    invoke-interface {p1, p0}, LN3/f;->x0(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LP3/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final f([Ljava/lang/String;[Ljava/lang/String;)LQ2/e;
    .locals 3

    invoke-static {p0}, LP3/a;->b([Ljava/lang/String;)[B

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, LQ2/e;

    invoke-static {v0, p1}, LP3/h;->g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)LP3/g;

    move-result-object p1

    sget-object v1, LL3/j;->M:LL3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LR3/f;

    invoke-direct {v2, v0}, LR3/f;-><init>(Ljava/io/InputStream;)V

    sget-object v0, LP3/h;->a:LR3/i;

    invoke-interface {v1, v2, v0}, LR3/B;->a(LR3/f;LR3/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR3/b;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, LR3/f;->a(I)V
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, LR3/A;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, LL3/j;

    invoke-direct {p0, p1, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, LA0/c;

    invoke-direct {p0}, LA0/c;-><init>()V

    new-instance p1, LR3/u;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, LR3/u;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, LR3/u;->c:LR3/b;

    throw p1

    :catch_0
    move-exception p0

    iput-object v0, p0, LR3/u;->c:LR3/b;

    throw p0
.end method

.method public static g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)LP3/g;
    .locals 3

    new-instance v0, LP3/g;

    sget-object v1, LO3/j;->j:LL3/a;

    sget-object v2, LP3/h;->a:LR3/i;

    invoke-virtual {v1, p0, v2}, LR3/c;->b(Ljava/io/ByteArrayInputStream;LR3/i;)LR3/b;

    move-result-object p0

    check-cast p0, LO3/j;

    const-string v1, "parseDelimitedFrom(this, EXTENSION_REGISTRY)"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, p0, p1}, LP3/g;-><init>(LO3/j;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static final h([Ljava/lang/String;[Ljava/lang/String;)LQ2/e;
    .locals 3

    invoke-static {p0}, LP3/a;->b([Ljava/lang/String;)[B

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, LQ2/e;

    invoke-static {v0, p1}, LP3/h;->g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)LP3/g;

    move-result-object p1

    sget-object v1, LL3/C;->n:LL3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LR3/f;

    invoke-direct {v2, v0}, LR3/f;-><init>(Ljava/io/InputStream;)V

    sget-object v0, LP3/h;->a:LR3/i;

    invoke-interface {v1, v2, v0}, LR3/B;->a(LR3/f;LR3/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR3/b;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, LR3/f;->a(I)V
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, LR3/A;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, LL3/C;

    invoke-direct {p0, p1, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, LA0/c;

    invoke-direct {p0}, LA0/c;-><init>()V

    new-instance p1, LR3/u;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, LR3/u;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, LR3/u;->c:LR3/b;

    throw p1

    :catch_0
    move-exception p0

    iput-object v0, p0, LR3/u;->c:LR3/b;

    throw p0
.end method
