.class public LB3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/b;
.implements LC3/h;


# static fields
.field public static final synthetic e:[Li3/o;


# instance fields
.field public final a:LQ3/c;

.field public final b:Lr3/N;

.field public final c:Lg4/i;

.field public final d:LH3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, LB3/d;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v3, "type"

    const-string v4, "getType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v0, v2, v3, v4}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Li3/o;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, LB3/d;->e:[Li3/o;

    return-void
.end method

.method public constructor <init>(LD3/e;Lx3/e;LQ3/c;)V
    .locals 2

    const-string v0, "c"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "fqName"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, LB3/d;->a:LQ3/c;

    iget-object p3, p1, LD3/e;->d:Ljava/lang/Object;

    check-cast p3, LD3/a;

    if-eqz p2, :cond_0

    iget-object v0, p3, LD3/a;->j:Lw3/d;

    invoke-virtual {v0, p2}, Lw3/d;->c(LH3/c;)Lw3/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lr3/N;->a:Lr3/M;

    :goto_0
    iput-object v0, p0, LB3/d;->b:Lr3/N;

    iget-object p3, p3, LD3/a;->a:Lg4/o;

    new-instance v0, LB3/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, LB3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    check-cast p3, Lg4/l;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lg4/i;

    invoke-direct {p1, p3, v0}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object p1, p0, LB3/d;->c:Lg4/i;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lx3/e;->a()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, LR2/m;->N0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LH3/a;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, LB3/d;->d:LH3/a;

    return-void
.end method


# virtual methods
.method public final a()LQ3/c;
    .locals 0

    iget-object p0, p0, LB3/d;->a:LQ3/c;

    return-object p0
.end method

.method public b()Ljava/util/Map;
    .locals 0

    sget-object p0, LR2/v;->c:LR2/v;

    return-object p0
.end method

.method public final e()Lh4/v;
    .locals 2

    iget-object p0, p0, LB3/d;->c:Lg4/i;

    sget-object v0, LB3/d;->e:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/z;

    return-object p0
.end method

.method public final m()Lr3/N;
    .locals 0

    iget-object p0, p0, LB3/d;->b:Lr3/N;

    return-object p0
.end method
