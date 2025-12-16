.class public Ll3/Z;
.super Ll3/j0;
.source "SourceFile"

# interfaces
.implements Li3/n;


# instance fields
.field public final k:LQ2/c;


# direct methods
.method public constructor <init>(Ll3/C;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "container"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "name"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "signature"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "container"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "name"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "signature"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ll3/j0;-><init>(Ll3/C;Ljava/lang/String;Ljava/lang/String;Lr3/K;Ljava/lang/Object;)V

    new-instance p1, Ll3/Y;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ll3/Y;-><init>(Ll3/Z;I)V

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lf1/a;->U(ILc3/a;)LQ2/c;

    move-result-object p1

    iput-object p1, p0, Ll3/Z;->k:LQ2/c;

    new-instance p1, Ll3/Y;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Ll3/Y;-><init>(Ll3/Z;I)V

    invoke-static {p2, p1}, Lf1/a;->U(ILc3/a;)LQ2/c;

    return-void
.end method

.method public constructor <init>(Ll3/C;Lr3/K;)V
    .locals 1

    const-string v0, "container"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "descriptor"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Ll3/j0;-><init>(Ll3/C;Lr3/K;)V

    new-instance p1, Ll3/Y;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ll3/Y;-><init>(Ll3/Z;I)V

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lf1/a;->U(ILc3/a;)LQ2/c;

    move-result-object p1

    iput-object p1, p0, Ll3/Z;->k:LQ2/c;

    new-instance p1, Ll3/Y;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Ll3/Y;-><init>(Ll3/Z;I)V

    invoke-static {p2, p1}, Lf1/a;->U(ILc3/a;)LQ2/c;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ll3/Z;->k:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/X;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll3/r;->i([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final q()Ll3/f0;
    .locals 0

    iget-object p0, p0, Ll3/Z;->k:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/X;

    return-object p0
.end method

.method public final r()Li3/m;
    .locals 0

    iget-object p0, p0, Ll3/Z;->k:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/X;

    return-object p0
.end method
