.class public abstract Ll3/j0;
.super Ll3/r;
.source "SourceFile"

# interfaces
.implements Li3/o;


# static fields
.field public static final j:Ljava/lang/Object;


# instance fields
.field public final d:Ll3/C;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/Object;

.field public final h:LQ2/c;

.field public final i:Ll3/p0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ll3/j0;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll3/C;Ljava/lang/String;Ljava/lang/String;Lr3/K;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ll3/r;-><init>()V

    iput-object p1, p0, Ll3/j0;->d:Ll3/C;

    iput-object p2, p0, Ll3/j0;->e:Ljava/lang/String;

    iput-object p3, p0, Ll3/j0;->f:Ljava/lang/String;

    iput-object p5, p0, Ll3/j0;->g:Ljava/lang/Object;

    new-instance p1, Ll3/i0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Ll3/i0;-><init>(Ll3/j0;I)V

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lf1/a;->U(ILc3/a;)LQ2/c;

    move-result-object p1

    iput-object p1, p0, Ll3/j0;->h:LQ2/c;

    new-instance p1, Ll3/i0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ll3/i0;-><init>(Ll3/j0;I)V

    new-instance p2, Ll3/p0;

    invoke-direct {p2, p4, p1}, Ll3/p0;-><init>(Ljava/lang/Object;Lc3/a;)V

    iput-object p2, p0, Ll3/j0;->i:Ll3/p0;

    return-void
.end method

.method public constructor <init>(Ll3/C;Lr3/K;)V
    .locals 7

    const-string v0, "container"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "descriptor"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2}, Lr3/j;->getName()LQ3/f;

    move-result-object v0

    invoke-virtual {v0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v3

    const-string v0, "descriptor.name.asString()"

    invoke-static {v0, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Ll3/u0;->b(Lr3/K;)Ll3/r0;

    move-result-object v0

    invoke-virtual {v0}, Ll3/r0;->e()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ld3/a;->c:Ld3/a;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Ll3/j0;-><init>(Ll3/C;Ljava/lang/String;Ljava/lang/String;Lr3/K;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {p1}, Ll3/w0;->c(Ljava/lang/Object;)Ll3/j0;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Ll3/j0;->d:Ll3/C;

    iget-object v2, p1, Ll3/j0;->d:Ll3/C;

    invoke-static {v1, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ll3/j0;->e:Ljava/lang/String;

    iget-object v2, p1, Ll3/j0;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ll3/j0;->f:Ljava/lang/String;

    iget-object v2, p1, Ll3/j0;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Ll3/j0;->g:Ljava/lang/Object;

    iget-object p1, p1, Ll3/j0;->g:Ljava/lang/Object;

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final g()Lm3/e;
    .locals 0

    invoke-virtual {p0}, Ll3/j0;->q()Ll3/f0;

    move-result-object p0

    invoke-virtual {p0}, Ll3/f0;->g()Lm3/e;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll3/j0;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Ll3/j0;->d:Ll3/C;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ll3/j0;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Ll3/j0;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final j()Ll3/C;
    .locals 0

    iget-object p0, p0, Ll3/j0;->d:Ll3/C;

    return-object p0
.end method

.method public final bridge synthetic k()Lr3/c;
    .locals 0

    invoke-virtual {p0}, Ll3/j0;->p()Lr3/K;

    move-result-object p0

    return-object p0
.end method

.method public final n()Z
    .locals 1

    sget-object v0, Ld3/a;->c:Ld3/a;

    iget-object p0, p0, Ll3/j0;->g:Ljava/lang/Object;

    invoke-static {p0, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final o()Ljava/lang/reflect/Member;
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Ll3/j0;->p()Lr3/K;

    move-result-object v1

    invoke-interface {v1}, Lr3/K;->G()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    sget-object v1, Ll3/u0;->a:LQ3/b;

    invoke-virtual {p0}, Ll3/j0;->p()Lr3/K;

    move-result-object v1

    invoke-static {v1}, Ll3/u0;->b(Lr3/K;)Ll3/r0;

    move-result-object v1

    instance-of v3, v1, Ll3/m;

    if-eqz v3, :cond_2

    check-cast v1, Ll3/m;

    iget-object v3, v1, Ll3/m;->f:LO3/e;

    iget v4, v3, LO3/e;->d:I

    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    iget-object v3, v3, LO3/e;->i:LO3/c;

    iget v4, v3, LO3/c;->d:I

    and-int/lit8 v5, v4, 0x1

    if-ne v5, v0, :cond_1

    const/4 v0, 0x2

    and-int/2addr v4, v0

    if-ne v4, v0, :cond_1

    iget v0, v3, LO3/c;->e:I

    iget-object v1, v1, Ll3/m;->g:LN3/f;

    invoke-interface {v1, v0}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v3, LO3/c;->f:I

    invoke-interface {v1, v2}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Ll3/j0;->d:Ll3/C;

    invoke-virtual {p0, v0, v1}, Ll3/C;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2

    :cond_2
    iget-object p0, p0, Ll3/j0;->h:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public final p()Lr3/K;
    .locals 1

    iget-object p0, p0, Ll3/j0;->i:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_descriptor()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lr3/K;

    return-object p0
.end method

.method public abstract q()Ll3/f0;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Ll3/t0;->a:LS3/g;

    invoke-virtual {p0}, Ll3/j0;->p()Lr3/K;

    move-result-object p0

    invoke-static {p0}, Ll3/t0;->c(Lr3/K;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
