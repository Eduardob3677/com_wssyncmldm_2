.class public final LA3/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT3/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LT3/f;
    .locals 0

    sget-object p0, LT3/f;->c:LT3/f;

    return-object p0
.end method

.method public b(Lr3/b;Lr3/b;Lr3/e;)LT3/g;
    .locals 7

    const-string p0, "superDescriptor"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "subDescriptor"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lr3/c;

    sget-object v0, LT3/g;->d:LT3/g;

    if-eqz p0, :cond_8

    instance-of p0, p2, Lr3/s;

    if-eqz p0, :cond_8

    invoke-static {p2}, Lo3/i;->z(Lr3/j;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget p0, LA3/g;->m:I

    move-object p0, p2

    check-cast p0, Lr3/s;

    move-object v1, p0

    check-cast v1, Lu3/o;

    invoke-virtual {v1}, Lu3/o;->getName()LQ3/f;

    move-result-object v2

    const-string v3, "subDescriptor.name"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, LA3/g;->b(LQ3/f;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, LA3/I;->a:LA3/n;

    invoke-virtual {v1}, Lu3/o;->getName()LQ3/f;

    move-result-object v1

    invoke-static {v3, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, LA3/I;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    move-object v1, p1

    check-cast v1, Lr3/c;

    invoke-static {v1}, Li3/x;->S(Lr3/c;)Lr3/c;

    move-result-object v1

    instance-of v2, p1, Lr3/s;

    if-eqz v2, :cond_2

    move-object v3, p1

    check-cast v3, Lr3/s;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-interface {p0}, Lr3/s;->I()Z

    move-result v6

    invoke-interface {v3}, Lr3/s;->I()Z

    move-result v3

    if-ne v6, v3, :cond_3

    move v4, v5

    :cond_3
    xor-int/lit8 v3, v4, 0x1

    if-eqz v3, :cond_4

    if-eqz v1, :cond_7

    invoke-interface {p0}, Lr3/s;->I()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    instance-of v3, p3, LC3/c;

    if-eqz v3, :cond_8

    invoke-interface {p0}, Lr3/s;->B()Lr3/s;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_8

    invoke-static {p3, v1}, Li3/x;->g0(Lr3/e;Lr3/c;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    instance-of p3, v1, Lr3/s;

    if-eqz p3, :cond_7

    if-eqz v2, :cond_7

    check-cast v1, Lr3/s;

    invoke-static {v1}, LA3/g;->a(Lr3/s;)Lr3/s;

    move-result-object p3

    if-eqz p3, :cond_7

    const/4 p3, 0x2

    invoke-static {p0, p3}, LW1/a;->n(Lr3/s;I)Ljava/lang/String;

    move-result-object p0

    move-object v1, p1

    check-cast v1, Lr3/s;

    invoke-interface {v1}, Lr3/s;->a()Lr3/s;

    move-result-object v1

    const-string v2, "superDescriptor.original"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, p3}, LW1/a;->n(Lr3/s;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    return-object v0

    :cond_8
    :goto_2
    invoke-static {p1, p2}, LZ0/j;->H(Lr3/b;Lr3/b;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-object v0

    :cond_9
    sget-object p0, LT3/g;->e:LT3/g;

    return-object p0
.end method
