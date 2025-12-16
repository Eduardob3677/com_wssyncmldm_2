.class public final Ll3/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li3/p;


# static fields
.field public static final synthetic f:[Li3/o;


# instance fields
.field public final c:Lr3/Q;

.field public final d:Ll3/p0;

.field public final e:Ll3/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Ll3/m0;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v3, "upperBounds"

    const-string v4, "getUpperBounds()Ljava/util/List;"

    invoke-direct {v0, v2, v3, v4}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Li3/o;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Ll3/m0;->f:[Li3/o;

    return-void
.end method

.method public constructor <init>(Ll3/n0;Lr3/Q;)V
    .locals 3

    const-string v0, "descriptor"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ll3/m0;->c:Lr3/Q;

    new-instance v0, LB3/k;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Ll3/r0;->j(Lc3/a;)Ll3/p0;

    move-result-object v0

    iput-object v0, p0, Ll3/m0;->d:Ll3/p0;

    if-nez p1, :cond_9

    invoke-interface {p2}, Lr3/j;->l()Lr3/j;

    move-result-object p1

    const-string p2, "descriptor.containingDeclaration"

    invoke-static {p2, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p2, p1, Lr3/e;

    if-eqz p2, :cond_0

    check-cast p1, Lr3/e;

    invoke-static {p1}, Ll3/m0;->b(Lr3/e;)Ll3/z;

    move-result-object p1

    goto :goto_4

    :cond_0
    instance-of p2, p1, Lr3/c;

    if-eqz p2, :cond_8

    move-object p2, p1

    check-cast p2, Lr3/c;

    invoke-interface {p2}, Lr3/j;->l()Lr3/j;

    move-result-object p2

    const-string v0, "declaration.containingDeclaration"

    invoke-static {v0, p2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p2, Lr3/e;

    if-eqz v0, :cond_1

    check-cast p2, Lr3/e;

    invoke-static {p2}, Ll3/m0;->b(Lr3/e;)Ll3/z;

    move-result-object p2

    goto :goto_3

    :cond_1
    instance-of p2, p1, Lf4/k;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lf4/k;

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_7

    invoke-interface {p2}, Lf4/k;->x()Lf4/j;

    move-result-object v1

    instance-of v2, v1, LJ3/h;

    if-eqz v2, :cond_3

    check-cast v1, LJ3/h;

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, v1, LJ3/h;->d:Lw3/b;

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    instance-of v2, v1, Lw3/b;

    if-eqz v2, :cond_5

    move-object v0, v1

    :cond_5
    if-eqz v0, :cond_6

    iget-object v0, v0, Lw3/b;->a:Ljava/lang/Class;

    if-eqz v0, :cond_6

    invoke-static {v0}, LL2/b;->t(Ljava/lang/Class;)Li3/c;

    move-result-object p2

    check-cast p2, Ll3/z;

    :goto_3
    new-instance v0, Lc1/w;

    invoke-direct {v0, p2}, Lc1/w;-><init>(Ll3/C;)V

    sget-object p2, LQ2/k;->a:LQ2/k;

    invoke-interface {p1, v0, p2}, Lr3/j;->F0(Lr3/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    const-string p2, "when (val declaration = \u2026 $declaration\")\n        }"

    invoke-static {p2, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Ll3/n0;

    goto :goto_5

    :cond_6
    new-instance p0, LQ2/d;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Container of deserialized member is not resolved: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_7
    new-instance p0, LQ2/d;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Non-class callable descriptor must be deserialized: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_8
    new-instance p0, LQ2/d;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown type parameter container: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_9
    :goto_5
    iput-object p1, p0, Ll3/m0;->e:Ll3/n0;

    return-void
.end method

.method public static b(Lr3/e;)Ll3/z;
    .locals 3

    invoke-static {p0}, Ll3/w0;->j(Lr3/e;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, LL2/b;->t(Ljava/lang/Class;)Li3/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ll3/z;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, LQ2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type parameter container is not resolved: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Ll3/m0;->c:Lr3/Q;

    invoke-interface {p0}, Lr3/j;->getName()LQ3/f;

    move-result-object p0

    invoke-virtual {p0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "descriptor.name.asString()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ll3/m0;

    if-eqz v0, :cond_0

    check-cast p1, Ll3/m0;

    iget-object v0, p1, Ll3/m0;->e:Ll3/n0;

    iget-object v1, p0, Ll3/m0;->e:Ll3/n0;

    invoke-static {v1, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ll3/m0;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ll3/m0;->a()Ljava/lang/String;

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
    .locals 1

    iget-object v0, p0, Ll3/m0;->e:Ll3/n0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Ll3/m0;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ll3/m0;->c:Lr3/Q;

    invoke-interface {v1}, Lr3/Q;->A()I

    move-result v1

    invoke-static {v1}, Lk/Q0;->f(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-static {v1}, Lk/Q0;->f(I)I

    move-result v1

    if-eq v1, v2, :cond_4

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "out "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v1, "in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Ll3/m0;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
