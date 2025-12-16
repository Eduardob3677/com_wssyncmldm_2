.class public final LE3/s;
.super Lu3/E;
.source "SourceFile"


# static fields
.field public static final synthetic o:[Li3/o;


# instance fields
.field public final i:Lx3/y;

.field public final j:LD3/e;

.field public final k:Lg4/i;

.field public final l:LE3/d;

.field public final m:Lg4/c;

.field public final n:Ls3/h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, LE3/s;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v3

    const-string v4, "binaryClasses"

    const-string v5, "getBinaryClasses$descriptors_jvm()Ljava/util/Map;"

    invoke-direct {v0, v3, v4, v5}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    new-instance v3, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v4, "partToFacade"

    const-string v5, "getPartToFacade()Ljava/util/HashMap;"

    invoke-direct {v3, v2, v4, v5}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Li3/o;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, LE3/s;->o:[Li3/o;

    return-void
.end method

.method public constructor <init>(LD3/e;Lx3/y;)V
    .locals 5

    const-string v0, "outerContext"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "jPackage"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v1, v0, LD3/a;->o:Lr3/x;

    iget-object v2, p2, Lx3/y;->a:LQ3/c;

    invoke-direct {p0, v1, v2}, Lu3/E;-><init>(Lr3/x;LQ3/c;)V

    iput-object p2, p0, LE3/s;->i:Lx3/y;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, p0, v2, v1}, LL2/b;->d(LD3/e;Lr3/f;LH3/e;I)LD3/e;

    move-result-object p1

    iput-object p1, p0, LE3/s;->j:LD3/e;

    iget-object v0, v0, LD3/a;->d:LJ3/f;

    invoke-virtual {v0}, LJ3/f;->c()Ld4/i;

    move-result-object v0

    const-string v1, "<this>"

    iget-object v0, v0, Ld4/i;->c:Ld4/j;

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LP3/f;->g:LP3/f;

    iget-object v0, p1, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v1, v0, LD3/a;->a:Lg4/o;

    new-instance v2, LE3/r;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, LE3/r;-><init>(LE3/s;I)V

    check-cast v1, Lg4/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lg4/i;

    invoke-direct {v3, v1, v2}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v3, p0, LE3/s;->k:Lg4/i;

    new-instance v1, LE3/d;

    invoke-direct {v1, p1, p2, p0}, LE3/d;-><init>(LD3/e;Lx3/y;LE3/s;)V

    iput-object v1, p0, LE3/s;->l:LE3/d;

    new-instance v1, LE3/r;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LE3/r;-><init>(LE3/s;I)V

    iget-object v2, v0, LD3/a;->a:Lg4/o;

    move-object v3, v2

    check-cast v3, Lg4/l;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lg4/c;

    invoke-direct {v4, v3, v1}, Lg4/c;-><init>(Lg4/l;Lc3/a;)V

    iput-object v4, p0, LE3/s;->m:Lg4/c;

    iget-object v0, v0, LD3/a;->v:LA3/v;

    iget-boolean v0, v0, LA3/v;->b:Z

    if-eqz v0, :cond_0

    sget-object p1, Ls3/g;->a:Ls3/f;

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, LW1/a;->g0(LD3/e;LH3/b;)LD3/c;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LE3/s;->n:Ls3/h;

    new-instance p1, LE3/r;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, LE3/r;-><init>(LE3/s;I)V

    check-cast v2, Lg4/l;

    invoke-virtual {v2, p1}, Lg4/l;->a(Lc3/a;)Lg4/i;

    return-void
.end method


# virtual methods
.method public final m()Lr3/N;
    .locals 1

    new-instance v0, LJ3/p;

    invoke-direct {v0, p0}, LJ3/p;-><init>(LE3/s;)V

    return-object v0
.end method

.method public final q0()La4/o;
    .locals 0

    iget-object p0, p0, LE3/s;->l:LE3/d;

    return-object p0
.end method

.method public final t()Ls3/h;
    .locals 0

    iget-object p0, p0, LE3/s;->n:Ls3/h;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lazy Java package fragment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lu3/E;->g:LQ3/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LE3/s;->j:LD3/e;

    iget-object p0, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, LD3/a;

    iget-object p0, p0, LD3/a;->o:Lr3/x;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
