.class public LJ/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LJ/q0;


# instance fields
.field public final a:LJ/q0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJ/h0;

    invoke-direct {v0}, LJ/h0;-><init>()V

    invoke-virtual {v0}, LJ/i0;->b()LJ/q0;

    move-result-object v0

    iget-object v0, v0, LJ/q0;->a:LJ/o0;

    invoke-virtual {v0}, LJ/o0;->a()LJ/q0;

    move-result-object v0

    iget-object v0, v0, LJ/q0;->a:LJ/o0;

    invoke-virtual {v0}, LJ/o0;->b()LJ/q0;

    move-result-object v0

    iget-object v0, v0, LJ/q0;->a:LJ/o0;

    invoke-virtual {v0}, LJ/o0;->c()LJ/q0;

    move-result-object v0

    sput-object v0, LJ/o0;->b:LJ/q0;

    return-void
.end method

.method public constructor <init>(LJ/q0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/o0;->a:LJ/q0;

    return-void
.end method


# virtual methods
.method public a()LJ/q0;
    .locals 0

    iget-object p0, p0, LJ/o0;->a:LJ/q0;

    return-object p0
.end method

.method public b()LJ/q0;
    .locals 0

    iget-object p0, p0, LJ/o0;->a:LJ/q0;

    return-object p0
.end method

.method public c()LJ/q0;
    .locals 0

    iget-object p0, p0, LJ/o0;->a:LJ/q0;

    return-object p0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public e()LJ/d;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LJ/o0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LJ/o0;

    invoke-virtual {p0}, LJ/o0;->k()Z

    move-result v1

    invoke-virtual {p1}, LJ/o0;->k()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, LJ/o0;->j()Z

    move-result v1

    invoke-virtual {p1}, LJ/o0;->j()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, LJ/o0;->h()LB/c;

    move-result-object v1

    invoke-virtual {p1}, LJ/o0;->h()LB/c;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LJ/o0;->g()LB/c;

    move-result-object v1

    invoke-virtual {p1}, LJ/o0;->g()LB/c;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LJ/o0;->e()LJ/d;

    move-result-object p0

    invoke-virtual {p1}, LJ/o0;->e()LJ/d;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f(I)LB/c;
    .locals 0

    sget-object p0, LB/c;->e:LB/c;

    return-object p0
.end method

.method public g()LB/c;
    .locals 0

    sget-object p0, LB/c;->e:LB/c;

    return-object p0
.end method

.method public h()LB/c;
    .locals 0

    sget-object p0, LB/c;->e:LB/c;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, LJ/o0;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, LJ/o0;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, LJ/o0;->h()LB/c;

    move-result-object v2

    invoke-virtual {p0}, LJ/o0;->g()LB/c;

    move-result-object v3

    invoke-virtual {p0}, LJ/o0;->e()LJ/d;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public i(IIII)LJ/q0;
    .locals 0

    sget-object p0, LJ/o0;->b:LJ/q0;

    return-object p0
.end method

.method public j()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public l([LB/c;)V
    .locals 0

    return-void
.end method

.method public m(LJ/q0;)V
    .locals 0

    return-void
.end method
