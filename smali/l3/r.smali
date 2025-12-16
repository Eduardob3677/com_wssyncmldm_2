.class public abstract Ll3/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li3/b;
.implements Ll3/n0;


# instance fields
.field public final c:Ll3/p0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll3/o;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ll3/o;-><init>(Ll3/r;I)V

    invoke-static {v0}, Ll3/r0;->j(Lc3/a;)Ll3/p0;

    new-instance v0, Ll3/o;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ll3/o;-><init>(Ll3/r;I)V

    invoke-static {v0}, Ll3/r0;->j(Lc3/a;)Ll3/p0;

    move-result-object v0

    iput-object v0, p0, Ll3/r;->c:Ll3/p0;

    new-instance v0, Ll3/o;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Ll3/o;-><init>(Ll3/r;I)V

    invoke-static {v0}, Ll3/r0;->j(Lc3/a;)Ll3/p0;

    new-instance v0, Ll3/o;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Ll3/o;-><init>(Ll3/r;I)V

    invoke-static {v0}, Ll3/r0;->j(Lc3/a;)Ll3/p0;

    new-instance v0, Ll3/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ll3/o;-><init>(Ll3/r;I)V

    invoke-static {v0}, Ll3/r0;->j(Lc3/a;)Ll3/p0;

    return-void
.end method


# virtual methods
.method public abstract g()Lm3/e;
.end method

.method public final varargs i([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ll3/r;->g()Lm3/e;

    move-result-object p0

    invoke-interface {p0, p1}, Lm3/e;->i([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, LW1/h;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract j()Ll3/C;
.end method

.method public abstract k()Lr3/c;
.end method

.method public final l()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Ll3/r;->c:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_parameters()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final m()Z
    .locals 2

    invoke-interface {p0}, Li3/b;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-static {v0, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ll3/r;->j()Ll3/C;

    move-result-object p0

    invoke-interface {p0}, Ld3/c;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract n()Z
.end method
