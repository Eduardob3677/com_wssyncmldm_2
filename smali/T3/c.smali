.class public final LT3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li4/c;


# static fields
.field public static final a:LT3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LT3/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LT3/c;->a:LT3/c;

    return-void
.end method

.method public static synthetic b(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "a"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "b"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$1"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "equals"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static f(Lr3/b;)Lr3/N;
    .locals 3

    :goto_0
    instance-of v0, p0, Lr3/c;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lr3/c;

    invoke-interface {v0}, Lr3/c;->k0()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lr3/c;->p()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "overriddenDescriptors"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LR2/m;->c1(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr3/c;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Lr3/k;->m()Lr3/N;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lh4/J;Lh4/J;)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, LT3/c;->b(I)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, LT3/c;->b(I)V

    throw p0
.end method

.method public c(Lr3/j;Lr3/j;ZZ)Z
    .locals 4

    instance-of v0, p1, Lr3/e;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lr3/e;

    if-eqz v0, :cond_0

    check-cast p1, Lr3/e;

    check-cast p2, Lr3/e;

    invoke-interface {p1}, Lr3/g;->H()Lh4/J;

    move-result-object p0

    invoke-interface {p2}, Lr3/g;->H()Lh4/J;

    move-result-object p1

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto/16 :goto_4

    :cond_0
    instance-of v0, p1, Lr3/Q;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lr3/Q;

    if-eqz v0, :cond_1

    check-cast p1, Lr3/Q;

    check-cast p2, Lr3/Q;

    sget-object p4, LT3/b;->d:LT3/b;

    invoke-virtual {p0, p1, p2, p3, p4}, LT3/c;->d(Lr3/Q;Lr3/Q;ZLc3/c;)Z

    move-result p0

    goto/16 :goto_4

    :cond_1
    instance-of v0, p1, Lr3/b;

    if-eqz v0, :cond_d

    instance-of v0, p2, Lr3/b;

    if-eqz v0, :cond_d

    check-cast p1, Lr3/b;

    check-cast p2, Lr3/b;

    const-string v0, "a"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "b"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, p2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    :goto_0
    move p0, v1

    goto/16 :goto_4

    :cond_2
    invoke-interface {p1}, Lr3/j;->getName()LQ3/f;

    move-result-object v0

    invoke-interface {p2}, Lr3/j;->getName()LQ3/f;

    move-result-object v2

    invoke-static {v0, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    move p0, v2

    goto/16 :goto_4

    :cond_4
    if-eqz p4, :cond_5

    instance-of p4, p1, Lr3/w;

    if-eqz p4, :cond_5

    instance-of p4, p2, Lr3/w;

    if-eqz p4, :cond_5

    move-object p4, p1

    check-cast p4, Lr3/w;

    invoke-interface {p4}, Lr3/w;->y()Z

    move-result p4

    move-object v0, p2

    check-cast v0, Lr3/w;

    invoke-interface {v0}, Lr3/w;->y()Z

    move-result v0

    if-eq p4, v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Lr3/j;->l()Lr3/j;

    move-result-object p4

    invoke-interface {p2}, Lr3/j;->l()Lr3/j;

    move-result-object v0

    invoke-static {p4, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    if-nez p3, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p1}, LT3/c;->f(Lr3/b;)Lr3/N;

    move-result-object p4

    invoke-static {p2}, LT3/c;->f(Lr3/b;)Lr3/N;

    move-result-object v0

    invoke-static {p4, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {p1}, LT3/e;->p(Lr3/j;)Z

    move-result p4

    if-nez p4, :cond_3

    invoke-static {p2}, LT3/e;->p(Lr3/j;)Z

    move-result p4

    if-eqz p4, :cond_8

    goto :goto_1

    :cond_8
    invoke-interface {p1}, Lr3/j;->l()Lr3/j;

    move-result-object p4

    invoke-interface {p2}, Lr3/j;->l()Lr3/j;

    move-result-object v0

    instance-of v3, p4, Lr3/c;

    if-nez v3, :cond_a

    instance-of v3, v0, Lr3/c;

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {p0, p4, v0, p3, v1}, LT3/c;->c(Lr3/j;Lr3/j;ZZ)Z

    move-result p0

    goto :goto_3

    :cond_a
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_3
    if-nez p0, :cond_b

    goto :goto_1

    :cond_b
    new-instance p0, LR3/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, LR3/m;->a:Z

    iput-object p1, p0, LR3/m;->b:Ljava/lang/Object;

    iput-object p2, p0, LR3/m;->c:Ljava/lang/Object;

    new-instance p3, LT3/n;

    invoke-direct {p3, p0}, LT3/n;-><init>(Li4/c;)V

    const/4 p0, 0x0

    invoke-virtual {p3, p1, p2, p0, v1}, LT3/n;->m(Lr3/b;Lr3/b;Lr3/e;Z)LT3/m;

    move-result-object p4

    invoke-virtual {p4}, LT3/m;->c()I

    move-result p4

    if-ne p4, v1, :cond_c

    invoke-virtual {p3, p2, p1, p0, v1}, LT3/n;->m(Lr3/b;Lr3/b;Lr3/e;Z)LT3/m;

    move-result-object p0

    invoke-virtual {p0}, LT3/m;->c()I

    move-result p0

    if-ne p0, v1, :cond_c

    goto/16 :goto_0

    :cond_c
    move v1, v2

    goto/16 :goto_0

    :cond_d
    instance-of p0, p1, Lr3/C;

    if-eqz p0, :cond_e

    instance-of p0, p2, Lr3/C;

    if-eqz p0, :cond_e

    check-cast p1, Lr3/C;

    check-cast p1, Lu3/E;

    iget-object p0, p1, Lu3/E;->g:LQ3/c;

    check-cast p2, Lr3/C;

    check-cast p2, Lu3/E;

    iget-object p1, p2, Lu3/E;->g:LQ3/c;

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_4

    :cond_e
    invoke-static {p1, p2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_4
    return p0
.end method

.method public d(Lr3/Q;Lr3/Q;ZLc3/c;)Z
    .locals 3

    const-string v0, "a"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "b"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "equivalentCallables"

    invoke-static {v0, p4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, p2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lr3/j;->l()Lr3/j;

    move-result-object v0

    invoke-interface {p2}, Lr3/j;->l()Lr3/j;

    move-result-object v2

    invoke-static {v0, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1, p2, p4, p3}, LT3/c;->e(Lr3/j;Lr3/j;Lc3/c;Z)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    invoke-interface {p1}, Lr3/Q;->z0()I

    move-result p0

    invoke-interface {p2}, Lr3/Q;->z0()I

    move-result p1

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method public e(Lr3/j;Lr3/j;Lc3/c;Z)Z
    .locals 1

    invoke-interface {p1}, Lr3/j;->l()Lr3/j;

    move-result-object p1

    invoke-interface {p2}, Lr3/j;->l()Lr3/j;

    move-result-object p2

    instance-of v0, p1, Lr3/c;

    if-nez v0, :cond_1

    instance-of v0, p2, Lr3/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p4, p3}, LT3/c;->c(Lr3/j;Lr3/j;ZZ)Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p3, p1, p2}, Lc3/c;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_1
    return p0
.end method
