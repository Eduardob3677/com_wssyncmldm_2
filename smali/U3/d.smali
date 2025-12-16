.class public final LU3/d;
.super Lh4/S;
.source "SourceFile"


# instance fields
.field public final b:Lh4/S;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lh4/S;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, LU3/d;->c:Z

    iput-object p1, p0, LU3/d;->b:Lh4/S;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, LU3/d;->b:Lh4/S;

    invoke-virtual {p0}, Lh4/S;->a()Z

    move-result p0

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, LU3/d;->c:Z

    return p0
.end method

.method public final c(Ls3/h;)Ls3/h;
    .locals 1

    const-string v0, "annotations"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, LU3/d;->b:Lh4/S;

    invoke-virtual {p0, p1}, Lh4/S;->c(Ls3/h;)Ls3/h;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lh4/v;)Lh4/N;
    .locals 2

    iget-object p0, p0, LU3/d;->b:Lh4/S;

    invoke-virtual {p0, p1}, Lh4/S;->d(Lh4/v;)Lh4/N;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lh4/v;->J0()Lh4/J;

    move-result-object p1

    invoke-interface {p1}, Lh4/J;->i()Lr3/g;

    move-result-object p1

    instance-of v1, p1, Lr3/Q;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lr3/Q;

    :cond_0
    invoke-static {p0, v0}, LL2/b;->i(Lh4/N;Lr3/Q;)Lh4/N;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, LU3/d;->b:Lh4/S;

    invoke-virtual {p0}, Lh4/S;->e()Z

    move-result p0

    return p0
.end method

.method public final f(ILh4/v;)Lh4/v;
    .locals 1

    const-string v0, "topLevelType"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "position"

    invoke-static {p1, v0}, LB/f;->x(ILjava/lang/String;)V

    iget-object p0, p0, LU3/d;->b:Lh4/S;

    invoke-virtual {p0, p1, p2}, Lh4/S;->f(ILh4/v;)Lh4/v;

    move-result-object p0

    return-object p0
.end method
