.class public final LB3/i;
.super LB3/d;
.source "SourceFile"


# static fields
.field public static final synthetic g:[Li3/o;


# instance fields
.field public final f:Lg4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, LB3/i;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v3, "allValueArguments"

    const-string v4, "getAllValueArguments()Ljava/util/Map;"

    invoke-direct {v0, v2, v3, v4}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Li3/o;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, LB3/i;->g:[Li3/o;

    return-void
.end method

.method public constructor <init>(Lx3/e;LD3/e;)V
    .locals 1

    const-string v0, "c"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lo3/m;->m:LQ3/c;

    invoke-direct {p0, p2, p1, v0}, LB3/d;-><init>(LD3/e;Lx3/e;LQ3/c;)V

    iget-object p1, p2, LD3/e;->d:Ljava/lang/Object;

    check-cast p1, LD3/a;

    iget-object p1, p1, LD3/a;->a:Lg4/o;

    sget-object p2, LB3/h;->d:LB3/h;

    check-cast p1, Lg4/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg4/i;

    invoke-direct {v0, p1, p2}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v0, p0, LB3/i;->f:Lg4/i;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 2

    iget-object p0, p0, LB3/i;->f:Lg4/i;

    sget-object v0, LB3/i;->g:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method
