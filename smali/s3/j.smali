.class public final Ls3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/b;


# instance fields
.field public final a:Lo3/i;

.field public final b:LQ3/c;

.field public final c:Ljava/util/Map;

.field public final d:LQ2/c;


# direct methods
.method public constructor <init>(Lo3/i;LQ3/c;Ljava/util/Map;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/j;->a:Lo3/i;

    iput-object p2, p0, Ls3/j;->b:LQ3/c;

    iput-object p3, p0, Ls3/j;->c:Ljava/util/Map;

    new-instance p1, LB3/k;

    const/16 p2, 0x1d

    invoke-direct {p1, p2, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lf1/a;->U(ILc3/a;)LQ2/c;

    move-result-object p1

    iput-object p1, p0, Ls3/j;->d:LQ2/c;

    return-void
.end method


# virtual methods
.method public final a()LQ3/c;
    .locals 0

    iget-object p0, p0, Ls3/j;->b:LQ3/c;

    return-object p0
.end method

.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Ls3/j;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final e()Lh4/v;
    .locals 1

    iget-object p0, p0, Ls3/j;->d:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-type>(...)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lh4/v;

    return-object p0
.end method

.method public final m()Lr3/N;
    .locals 0

    sget-object p0, Lr3/N;->a:Lr3/M;

    return-object p0
.end method
