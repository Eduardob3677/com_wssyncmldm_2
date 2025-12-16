.class public final Ll3/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li3/k;


# static fields
.field public static final synthetic e:[Li3/o;


# instance fields
.field public final a:Ll3/r;

.field public final b:I

.field public final c:I

.field public final d:Ll3/p0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Ll3/T;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v3

    const-string v4, "descriptor"

    const-string v5, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;"

    invoke-direct {v0, v3, v4, v5}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    new-instance v3, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v4, "annotations"

    const-string v5, "getAnnotations()Ljava/util/List;"

    invoke-direct {v3, v2, v4, v5}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Li3/o;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Ll3/T;->e:[Li3/o;

    return-void
.end method

.method public constructor <init>(Ll3/r;IILc3/a;)V
    .locals 1

    const-string v0, "callable"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, LB/f;->x(ILjava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/T;->a:Ll3/r;

    iput p2, p0, Ll3/T;->b:I

    iput p3, p0, Ll3/T;->c:I

    invoke-static {p4}, Ll3/r0;->j(Lc3/a;)Ll3/p0;

    move-result-object p1

    iput-object p1, p0, Ll3/T;->d:Ll3/p0;

    new-instance p1, Ll3/S;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ll3/S;-><init>(Ll3/T;I)V

    invoke-static {p1}, Ll3/r0;->j(Lc3/a;)Ll3/p0;

    return-void
.end method


# virtual methods
.method public final a()Lr3/I;
    .locals 2

    sget-object v0, Ll3/T;->e:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Ll3/T;->d:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-descriptor>(...)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lr3/I;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ll3/T;->a()Lr3/I;

    move-result-object p0

    instance-of v0, p0, Lu3/V;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lu3/V;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lu3/V;->S0()Lr3/b;

    move-result-object v0

    invoke-interface {v0}, Lr3/b;->o0()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    check-cast p0, Lu3/o;

    invoke-virtual {p0}, Lu3/o;->getName()LQ3/f;

    move-result-object p0

    const-string v0, "valueParameter.name"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, LQ3/f;->d:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public final c()Ll3/l0;
    .locals 4

    new-instance v0, Ll3/l0;

    invoke-virtual {p0}, Ll3/T;->a()Lr3/I;

    move-result-object v1

    invoke-interface {v1}, Lr3/T;->e()Lh4/v;

    move-result-object v1

    const-string v2, "descriptor.type"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ll3/S;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Ll3/S;-><init>(Ll3/T;I)V

    invoke-direct {v0, v1, v2}, Ll3/l0;-><init>(Lh4/v;Lc3/a;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ll3/T;

    if-eqz v0, :cond_0

    check-cast p1, Ll3/T;

    iget-object v0, p1, Ll3/T;->a:Ll3/r;

    iget-object v1, p0, Ll3/T;->a:Ll3/r;

    invoke-static {v1, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Ll3/T;->b:I

    iget p0, p0, Ll3/T;->b:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ll3/T;->a:Ll3/r;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Ll3/T;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Ll3/t0;->a:LS3/g;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ll3/T;->c:I

    invoke-static {v1}, Lk/Q0;->f(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parameter #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Ll3/T;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll3/T;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "extension receiver parameter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "instance parameter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ll3/T;->a:Ll3/r;

    invoke-virtual {p0}, Ll3/r;->k()Lr3/c;

    move-result-object p0

    instance-of v1, p0, Lr3/K;

    if-eqz v1, :cond_3

    check-cast p0, Lr3/K;

    invoke-static {p0}, Ll3/t0;->c(Lr3/K;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    instance-of v1, p0, Lr3/s;

    if-eqz v1, :cond_4

    check-cast p0, Lr3/s;

    invoke-static {p0}, Ll3/t0;->b(Lr3/s;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal callable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
