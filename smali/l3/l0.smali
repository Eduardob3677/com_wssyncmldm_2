.class public final Ll3/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/j;


# static fields
.field public static final synthetic e:[Li3/o;


# instance fields
.field public final a:Lh4/v;

.field public final b:Ll3/p0;

.field public final c:Ll3/p0;

.field public final d:Ll3/p0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Ll3/l0;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v3

    const-string v4, "classifier"

    const-string v5, "getClassifier()Lkotlin/reflect/KClassifier;"

    invoke-direct {v0, v3, v4, v5}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    new-instance v3, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v4, "arguments"

    const-string v5, "getArguments()Ljava/util/List;"

    invoke-direct {v3, v2, v4, v5}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Li3/o;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Ll3/l0;->e:[Li3/o;

    return-void
.end method

.method public constructor <init>(Lh4/v;Lc3/a;)V
    .locals 1

    const-string v0, "type"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/l0;->a:Lh4/v;

    instance-of p1, p2, Ll3/p0;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Ll3/p0;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    invoke-static {p2}, Ll3/r0;->j(Lc3/a;)Ll3/p0;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p1

    :cond_2
    :goto_1
    iput-object v0, p0, Ll3/l0;->b:Ll3/p0;

    new-instance p1, Ll3/k0;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Ll3/k0;-><init>(ILl3/l0;)V

    invoke-static {p1}, Ll3/r0;->j(Lc3/a;)Ll3/p0;

    move-result-object p1

    iput-object p1, p0, Ll3/l0;->c:Ll3/p0;

    new-instance p1, LB3/c;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v0, p2}, LB3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {p1}, Ll3/r0;->j(Lc3/a;)Ll3/p0;

    move-result-object p1

    iput-object p1, p0, Ll3/l0;->d:Ll3/p0;

    return-void
.end method


# virtual methods
.method public final a(Lh4/v;)Li3/d;
    .locals 3

    invoke-virtual {p1}, Lh4/v;->J0()Lh4/J;

    move-result-object v0

    invoke-interface {v0}, Lh4/J;->i()Lr3/g;

    move-result-object v0

    instance-of v1, v0, Lr3/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast v0, Lr3/e;

    invoke-static {v0}, Ll3/w0;->j(Lr3/e;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lh4/v;->u0()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, LR2/m;->d1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh4/N;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lh4/N;->b()Lh4/v;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ll3/l0;->a(Lh4/v;)Li3/d;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p0, Ll3/z;

    invoke-static {p1}, LZ0/j;->L(Li3/d;)Li3/c;

    move-result-object p1

    invoke-static {p1}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Ll3/z;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_2
    new-instance p1, LQ2/d;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot determine classifier for array element type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    :goto_0
    new-instance p0, Ll3/z;

    invoke-direct {p0, v0}, Ll3/z;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_4
    invoke-static {p1}, Lh4/X;->f(Lh4/v;)Z

    move-result p0

    if-nez p0, :cond_6

    new-instance p0, Ll3/z;

    sget-object p1, Lx3/d;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, p1

    :goto_1
    invoke-direct {p0, v0}, Ll3/z;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_6
    new-instance p0, Ll3/z;

    invoke-direct {p0, v0}, Ll3/z;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_7
    instance-of p0, v0, Lr3/Q;

    if-eqz p0, :cond_8

    new-instance p0, Ll3/m0;

    check-cast v0, Lr3/Q;

    invoke-direct {p0, v2, v0}, Ll3/m0;-><init>(Ll3/n0;Lr3/Q;)V

    return-object p0

    :cond_8
    instance-of p0, v0, Lf4/t;

    if-nez p0, :cond_9

    return-object v2

    :cond_9
    new-instance p0, LQ2/d;

    const-string p1, "An operation is not implemented: Type alias classifiers are not yet supported"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Ljava/util/List;
    .locals 2

    sget-object v0, Ll3/l0;->e:[Li3/o;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, Ll3/l0;->d:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-arguments>(...)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final c()Li3/d;
    .locals 2

    sget-object v0, Ll3/l0;->e:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Ll3/l0;->c:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li3/d;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ll3/l0;

    if-eqz v0, :cond_0

    check-cast p1, Ll3/l0;

    iget-object v0, p1, Ll3/l0;->a:Lh4/v;

    iget-object v1, p0, Ll3/l0;->a:Lh4/v;

    invoke-static {v1, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ll3/l0;->c()Li3/d;

    move-result-object v0

    invoke-virtual {p1}, Ll3/l0;->c()Li3/d;

    move-result-object v1

    invoke-static {v0, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ll3/l0;->b()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Ll3/l0;->b()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Ll3/l0;->a:Lh4/v;

    invoke-virtual {v0}, Lh4/v;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Ll3/l0;->c()Li3/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Ll3/l0;->b()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Ll3/t0;->a:LS3/g;

    iget-object p0, p0, Ll3/l0;->a:Lh4/v;

    invoke-static {p0}, Ll3/t0;->d(Lh4/v;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
