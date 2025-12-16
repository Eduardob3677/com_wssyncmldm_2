.class public Lf4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/h;


# static fields
.field public static final synthetic d:[Li3/o;


# instance fields
.field public final c:Lg4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Lf4/a;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v3, "annotations"

    const-string v4, "getAnnotations()Ljava/util/List;"

    invoke-direct {v0, v2, v3, v4}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Li3/o;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lf4/a;->d:[Li3/o;

    return-void
.end method

.method public constructor <init>(Lg4/o;Lc3/a;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lg4/l;

    new-instance v0, Lg4/i;

    invoke-direct {v0, p1, p2}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v0, p0, Lf4/a;->c:Lg4/i;

    return-void
.end method


# virtual methods
.method public final b(LQ3/c;)Z
    .locals 0

    invoke-static {p0, p1}, Lo4/a;->n(Ls3/h;LQ3/c;)Z

    move-result p0

    return p0
.end method

.method public final f(LQ3/c;)Ls3/b;
    .locals 0

    invoke-static {p0, p1}, Lo4/a;->c(Ls3/h;LQ3/c;)Ls3/b;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object p0, p0, Lf4/a;->c:Lg4/i;

    sget-object v0, Lf4/a;->d:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object p0, p0, Lf4/a;->c:Lg4/i;

    sget-object v0, Lf4/a;->d:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
