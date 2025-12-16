.class public final Lj4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/x;


# static fields
.field public static final c:Lj4/c;

.field public static final d:LQ3/f;

.field public static final e:LR2/u;

.field public static final f:Lo3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj4/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj4/c;->c:Lj4/c;

    const-string v0, "<Error module>"

    invoke-static {v0}, LQ3/f;->g(Ljava/lang/String;)LQ3/f;

    move-result-object v0

    sput-object v0, Lj4/c;->d:LQ3/f;

    sget-object v0, LR2/u;->c:LR2/u;

    sput-object v0, Lj4/c;->e:LR2/u;

    sget-object v0, Lo3/e;->f:Lo3/e;

    sput-object v0, Lj4/c;->f:Lo3/e;

    return-void
.end method


# virtual methods
.method public final E0()Ljava/util/List;
    .locals 0

    sget-object p0, Lj4/c;->e:LR2/u;

    return-object p0
.end method

.method public final F0(Lr3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final U(LI2/a;)Ljava/lang/Object;
    .locals 0

    const-string p0, "capability"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()Lr3/j;
    .locals 0

    return-object p0
.end method

.method public final a0(LQ3/c;)Lr3/H;
    .locals 0

    const-string p0, "fqName"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Should not be called!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()Lo3/i;
    .locals 0

    sget-object p0, Lj4/c;->f:Lo3/e;

    return-object p0
.end method

.method public final getName()LQ3/f;
    .locals 0

    sget-object p0, Lj4/c;->d:LQ3/f;

    return-object p0
.end method

.method public final l()Lr3/j;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final o(LQ3/c;Lc3/b;)Ljava/util/Collection;
    .locals 0

    const-string p0, "fqName"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "nameFilter"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public final t()Ls3/h;
    .locals 0

    sget-object p0, Ls3/g;->a:Ls3/f;

    return-object p0
.end method

.method public final t0(Lr3/x;)Z
    .locals 0

    const-string p0, "targetModule"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method
