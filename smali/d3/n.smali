.class public final Ld3/n;
.super Ld3/o;
.source "SourceFile"

# interfaces
.implements Li3/n;


# direct methods
.method public constructor <init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Ld3/a;->c:Ld3/a;

    move-object v0, p1

    check-cast v0, Ld3/c;

    invoke-interface {v0}, Ld3/c;->a()Ljava/lang/Class;

    move-result-object v2

    instance-of p1, p1, Li3/c;

    xor-int/lit8 v5, p1, 0x1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ld3/o;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ld3/n;->r()Li3/m;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    check-cast p0, Ll3/r;

    invoke-virtual {p0, p1}, Ll3/r;->i([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final g()Li3/b;
    .locals 1

    sget-object v0, Ld3/q;->a:Ld3/r;

    invoke-virtual {v0, p0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object p0

    return-object p0
.end method

.method public final r()Li3/m;
    .locals 0

    invoke-virtual {p0}, Ld3/o;->m()Li3/o;

    move-result-object p0

    check-cast p0, Li3/n;

    invoke-interface {p0}, Li3/n;->r()Li3/m;

    move-result-object p0

    return-object p0
.end method
