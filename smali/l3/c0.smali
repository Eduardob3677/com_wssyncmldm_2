.class public Ll3/c0;
.super Ll3/j0;
.source "SourceFile"

# interfaces
.implements Lc3/c;


# instance fields
.field public final k:LQ2/c;


# direct methods
.method public constructor <init>(Ll3/C;Lr3/K;)V
    .locals 1

    const-string v0, "container"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "descriptor"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Ll3/j0;-><init>(Ll3/C;Lr3/K;)V

    new-instance p1, Ll3/b0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ll3/b0;-><init>(Ll3/c0;I)V

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lf1/a;->U(ILc3/a;)LQ2/c;

    move-result-object p1

    iput-object p1, p0, Ll3/c0;->k:LQ2/c;

    new-instance p1, Ll3/b0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Ll3/b0;-><init>(Ll3/c0;I)V

    invoke-static {p2, p1}, Lf1/a;->U(ILc3/a;)LQ2/c;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ll3/c0;->k:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/a0;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll3/r;->i([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final q()Ll3/f0;
    .locals 0

    iget-object p0, p0, Ll3/c0;->k:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/a0;

    return-object p0
.end method
