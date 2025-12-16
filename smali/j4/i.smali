.class public final Lj4/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj4/i;

.field public static final b:Lj4/c;

.field public static final c:Lj4/a;

.field public static final d:Lj4/f;

.field public static final e:Lj4/f;

.field public static final f:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lj4/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj4/i;->a:Lj4/i;

    sget-object v0, Lj4/c;->c:Lj4/c;

    sput-object v0, Lj4/i;->b:Lj4/c;

    new-instance v0, Lj4/a;

    const-string v1, "unknown class"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<Error class: %s>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LQ3/f;->g(Ljava/lang/String;)LQ3/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lj4/a;-><init>(LQ3/f;)V

    sput-object v0, Lj4/i;->c:Lj4/a;

    sget-object v0, Lj4/h;->j:Lj4/h;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object v0

    sput-object v0, Lj4/i;->d:Lj4/f;

    sget-object v0, Lj4/h;->w:Lj4/h;

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object v0

    sput-object v0, Lj4/i;->e:Lj4/f;

    new-instance v0, Lj4/d;

    invoke-direct {v0}, Lj4/d;-><init>()V

    invoke-static {v0}, LL2/b;->I(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj4/i;->f:Ljava/util/Set;

    return-void
.end method

.method public static final varargs a(IZ[Ljava/lang/String;)Lj4/e;
    .locals 2

    const-string v0, "kind"

    invoke-static {p0, v0}, LB/f;->x(ILjava/lang/String;)V

    const-string v0, "formatParams"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance p1, Lj4/j;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lj4/e;-><init>([Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lj4/e;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lj4/e;-><init>([Ljava/lang/String;I)V

    :goto_0
    return-object p1
.end method

.method public static final varargs b([Ljava/lang/String;I)Lj4/e;
    .locals 1

    const-string v0, "kind"

    invoke-static {p1, v0}, LB/f;->x(ILjava/lang/String;)V

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lj4/i;->a(IZ[Ljava/lang/String;)Lj4/e;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs c(Lj4/h;[Ljava/lang/String;)Lj4/f;
    .locals 3

    sget-object v0, LR2/u;->c:LR2/u;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v1, "formatParams"

    invoke-static {v1, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, v1}, Lj4/i;->d(Lj4/h;[Ljava/lang/String;)Lj4/g;

    move-result-object v1

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lj4/i;->e(Lj4/h;Ljava/util/List;Lh4/J;[Ljava/lang/String;)Lj4/f;

    move-result-object p0

    return-object p0
.end method

.method public static varargs d(Lj4/h;[Ljava/lang/String;)Lj4/g;
    .locals 2

    const-string v0, "formatParams"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lj4/g;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lj4/g;-><init>(Lj4/h;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs e(Lj4/h;Ljava/util/List;Lh4/J;[Ljava/lang/String;)Lj4/f;
    .locals 8

    const-string v0, "formatParams"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lj4/f;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lj4/i;->b([Ljava/lang/String;I)Lj4/e;

    move-result-object v3

    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    check-cast v7, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lj4/f;-><init>(Lh4/J;La4/o;Lj4/h;Ljava/util/List;Z[Ljava/lang/String;)V

    return-object v0
.end method

.method public static final f(Lr3/j;)Z
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Lj4/a;

    if-nez v0, :cond_0

    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object v0

    instance-of v0, v0, Lj4/a;

    if-nez v0, :cond_0

    sget-object v0, Lj4/i;->b:Lj4/c;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
