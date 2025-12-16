.class public final Lh4/E;
.super Lh4/N;
.source "SourceFile"


# instance fields
.field public final a:Lr3/Q;

.field public final b:LQ2/c;


# direct methods
.method public constructor <init>(Lr3/Q;)V
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/E;->a:Lr3/Q;

    new-instance p1, LB3/k;

    const/16 v0, 0x10

    invoke-direct {p1, v0, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x2

    invoke-static {v0, p1}, Lf1/a;->U(ILc3/a;)LQ2/c;

    move-result-object p1

    iput-object p1, p0, Lh4/E;->b:LQ2/c;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final b()Lh4/v;
    .locals 0

    iget-object p0, p0, Lh4/E;->b:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/v;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final d(Li4/f;)Lh4/N;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
