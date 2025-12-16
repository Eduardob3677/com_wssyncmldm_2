.class public final Lh4/p;
.super Lh4/S;
.source "SourceFile"


# instance fields
.field public final b:Lh4/S;

.field public final c:Lh4/S;


# direct methods
.method public constructor <init>(Lh4/S;Lh4/S;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/p;->b:Lh4/S;

    iput-object p2, p0, Lh4/p;->c:Lh4/S;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lh4/p;->b:Lh4/S;

    invoke-virtual {v0}, Lh4/S;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lh4/p;->c:Lh4/S;

    invoke-virtual {p0}, Lh4/S;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lh4/p;->b:Lh4/S;

    invoke-virtual {v0}, Lh4/S;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lh4/p;->c:Lh4/S;

    invoke-virtual {p0}, Lh4/S;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final c(Ls3/h;)Ls3/h;
    .locals 1

    const-string v0, "annotations"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lh4/p;->b:Lh4/S;

    invoke-virtual {v0, p1}, Lh4/S;->c(Ls3/h;)Ls3/h;

    move-result-object p1

    iget-object p0, p0, Lh4/p;->c:Lh4/S;

    invoke-virtual {p0, p1}, Lh4/S;->c(Ls3/h;)Ls3/h;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lh4/v;)Lh4/N;
    .locals 1

    iget-object v0, p0, Lh4/p;->b:Lh4/S;

    invoke-virtual {v0, p1}, Lh4/S;->d(Lh4/v;)Lh4/N;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lh4/p;->c:Lh4/S;

    invoke-virtual {p0, p1}, Lh4/S;->d(Lh4/v;)Lh4/N;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final f(ILh4/v;)Lh4/v;
    .locals 1

    const-string v0, "topLevelType"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "position"

    invoke-static {p1, v0}, LB/f;->x(ILjava/lang/String;)V

    iget-object v0, p0, Lh4/p;->b:Lh4/S;

    invoke-virtual {v0, p1, p2}, Lh4/S;->f(ILh4/v;)Lh4/v;

    move-result-object p2

    iget-object p0, p0, Lh4/p;->c:Lh4/S;

    invoke-virtual {p0, p1, p2}, Lh4/S;->f(ILh4/v;)Lh4/v;

    move-result-object p0

    return-object p0
.end method
