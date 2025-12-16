.class public abstract Ll3/f0;
.super Ll3/d0;
.source "SourceFile"

# interfaces
.implements Li3/l;


# static fields
.field public static final synthetic f:[Li3/o;


# instance fields
.field public final d:Ll3/p0;

.field public final e:LQ2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Ll3/f0;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v3, "descriptor"

    const-string v4, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertyGetterDescriptor;"

    invoke-direct {v0, v2, v3, v4}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Li3/o;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Ll3/f0;->f:[Li3/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ll3/r;-><init>()V

    new-instance v0, Ll3/e0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ll3/e0;-><init>(Ll3/f0;I)V

    invoke-static {v0}, Ll3/r0;->j(Lc3/a;)Ll3/p0;

    move-result-object v0

    iput-object v0, p0, Ll3/f0;->d:Ll3/p0;

    new-instance v0, Ll3/e0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ll3/e0;-><init>(Ll3/f0;I)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lf1/a;->U(ILc3/a;)LQ2/c;

    move-result-object v0

    iput-object v0, p0, Ll3/f0;->e:LQ2/c;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ll3/f0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object p0

    check-cast p1, Ll3/f0;

    invoke-virtual {p1}, Ll3/d0;->p()Ll3/j0;

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

.method public final g()Lm3/e;
    .locals 0

    iget-object p0, p0, Ll3/f0;->e:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm3/e;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<get-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object p0

    iget-object p0, p0, Ll3/j0;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object p0

    invoke-virtual {p0}, Ll3/j0;->hashCode()I

    move-result p0

    return p0
.end method

.method public final k()Lr3/c;
    .locals 2

    sget-object v0, Ll3/f0;->f:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Ll3/f0;->d:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-descriptor>(...)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lu3/L;

    return-object p0
.end method

.method public final o()Lr3/J;
    .locals 2

    sget-object v0, Ll3/f0;->f:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Ll3/f0;->d:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-descriptor>(...)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lu3/L;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getter of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
