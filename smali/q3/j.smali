.class public final Lq3/j;
.super Lo3/i;
.source "SourceFile"


# static fields
.field public static final synthetic h:[Li3/o;


# instance fields
.field public f:Lc3/a;

.field public final g:Lg4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Lq3/j;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v3, "customizer"

    const-string v4, "getCustomizer()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer;"

    invoke-direct {v0, v2, v3, v4}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Li3/o;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lq3/j;->h:[Li3/o;

    return-void
.end method

.method public constructor <init>(Lg4/l;)V
    .locals 3

    const-string v0, "kind"

    const/4 v1, 0x1

    invoke-static {v1, v0}, LB/f;->x(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lo3/i;-><init>(Lg4/l;)V

    new-instance v0, LB3/c;

    const/16 v2, 0xd

    invoke-direct {v0, p0, v2, p1}, LB3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v2, Lg4/i;

    invoke-direct {v2, p1, v0}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v2, p0, Lq3/j;->g:Lg4/i;

    invoke-static {v1}, Lk/Q0;->f(I)I

    move-result p1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lo3/i;->c(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lo3/i;->c(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final I()Lq3/n;
    .locals 2

    sget-object v0, Lq3/j;->h:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lq3/j;->g:Lg4/i;

    invoke-static {p0, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq3/n;

    return-object p0
.end method

.method public final d()Lt3/b;
    .locals 0

    invoke-virtual {p0}, Lq3/j;->I()Lq3/n;

    move-result-object p0

    return-object p0
.end method

.method public final l()Ljava/lang/Iterable;
    .locals 4

    invoke-super {p0}, Lo3/i;->l()Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, Lq3/g;

    iget-object v2, p0, Lo3/i;->d:Lg4/o;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lo3/i;->k()Lu3/C;

    move-result-object p0

    const-string v3, "builtInsModule"

    invoke-static {v3, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v1, v2, p0}, Lq3/g;-><init>(Lg4/o;Lu3/C;)V

    invoke-static {v0, v1}, LR2/m;->X0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, Lo3/i;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final p()Lt3/d;
    .locals 0

    invoke-virtual {p0}, Lq3/j;->I()Lq3/n;

    move-result-object p0

    return-object p0
.end method
