.class public final Ll3/K;
.super Ll3/c0;
.source "SourceFile"

# interfaces
.implements Li3/j;


# instance fields
.field public final l:LQ2/c;


# direct methods
.method public constructor <init>(Ll3/C;Lr3/K;)V
    .locals 1

    const-string v0, "container"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "descriptor"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Ll3/c0;-><init>(Ll3/C;Lr3/K;)V

    new-instance p1, LB3/k;

    const/16 p2, 0x16

    invoke-direct {p1, p2, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lf1/a;->U(ILc3/a;)LQ2/c;

    move-result-object p1

    iput-object p1, p0, Ll3/K;->l:LQ2/c;

    return-void
.end method


# virtual methods
.method public final f()Li3/g;
    .locals 0

    iget-object p0, p0, Ll3/K;->l:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/J;

    return-object p0
.end method
