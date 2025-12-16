.class public final Lu3/y;
.super Lu3/o;
.source "SourceFile"

# interfaces
.implements Lr3/H;


# static fields
.field public static final synthetic j:[Li3/o;


# instance fields
.field public final e:Lu3/C;

.field public final f:LQ3/c;

.field public final g:Lg4/i;

.field public final h:Lg4/i;

.field public final i:La4/k;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Lu3/y;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v3

    const-string v4, "fragments"

    const-string v5, "getFragments()Ljava/util/List;"

    invoke-direct {v0, v3, v4, v5}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    new-instance v3, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v4, "empty"

    const-string v5, "getEmpty()Z"

    invoke-direct {v3, v2, v4, v5}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Li3/o;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lu3/y;->j:[Li3/o;

    return-void
.end method

.method public constructor <init>(Lu3/C;LQ3/c;Lg4/o;)V
    .locals 2

    const-string v0, "fqName"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ls3/g;->a:Ls3/f;

    invoke-virtual {p2}, LQ3/c;->g()LQ3/f;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lu3/o;-><init>(Ls3/h;LQ3/f;)V

    iput-object p1, p0, Lu3/y;->e:Lu3/C;

    iput-object p2, p0, Lu3/y;->f:LQ3/c;

    new-instance p1, Lu3/x;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lu3/x;-><init>(Lu3/y;I)V

    move-object p2, p3

    check-cast p2, Lg4/l;

    new-instance v0, Lg4/i;

    invoke-direct {v0, p2, p1}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v0, p0, Lu3/y;->g:Lg4/i;

    new-instance p1, Lu3/x;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lu3/x;-><init>(Lu3/y;I)V

    new-instance v0, Lg4/i;

    invoke-direct {v0, p2, p1}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v0, p0, Lu3/y;->h:Lg4/i;

    new-instance p1, La4/k;

    new-instance p2, Lu3/x;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lu3/x;-><init>(Lu3/y;I)V

    invoke-direct {p1, p3, p2}, La4/k;-><init>(Lg4/o;Lc3/a;)V

    iput-object p1, p0, Lu3/y;->i:La4/k;

    return-void
.end method


# virtual methods
.method public final F0(Lr3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lr3/l;->K(Lr3/H;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lr3/H;

    if-eqz v0, :cond_0

    check-cast p1, Lr3/H;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lu3/y;

    iget-object v1, p0, Lu3/y;->f:LQ3/c;

    iget-object v2, p1, Lu3/y;->f:LQ3/c;

    invoke-static {v1, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lu3/y;->e:Lu3/C;

    iget-object p1, p1, Lu3/y;->e:Lu3/C;

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lu3/y;->e:Lu3/C;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lu3/y;->f:LQ3/c;

    invoke-virtual {p0}, LQ3/c;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final l()Lr3/j;
    .locals 2

    iget-object v0, p0, Lu3/y;->f:LQ3/c;

    invoke-virtual {v0}, LQ3/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LQ3/c;->e()LQ3/c;

    move-result-object v0

    const-string v1, "fqName.parent()"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lu3/y;->e:Lu3/C;

    invoke-virtual {p0, v0}, Lu3/C;->a0(LQ3/c;)Lr3/H;

    move-result-object p0

    :goto_0
    return-object p0
.end method
