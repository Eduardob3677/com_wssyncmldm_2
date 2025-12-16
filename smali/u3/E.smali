.class public abstract Lu3/E;
.super Lu3/p;
.source "SourceFile"

# interfaces
.implements Lr3/C;


# instance fields
.field public final g:LQ3/c;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr3/x;LQ3/c;)V
    .locals 3

    const-string v0, "module"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "fqName"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ls3/g;->a:Ls3/f;

    invoke-virtual {p2}, LQ3/c;->g()LQ3/f;

    move-result-object v1

    sget-object v2, Lr3/N;->a:Lr3/M;

    invoke-direct {p0, p1, v0, v1, v2}, Lu3/p;-><init>(Lr3/j;Ls3/h;LQ3/f;Lr3/N;)V

    iput-object p2, p0, Lu3/E;->g:LQ3/c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " of "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu3/E;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final F0(Lr3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lr3/l;->s(Lr3/C;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final Q0()Lr3/x;
    .locals 1

    invoke-super {p0}, Lu3/p;->l()Lr3/j;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ModuleDescriptor"

    invoke-static {v0, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lr3/x;

    return-object p0
.end method

.method public final bridge synthetic l()Lr3/j;
    .locals 0

    invoke-virtual {p0}, Lu3/E;->Q0()Lr3/x;

    move-result-object p0

    return-object p0
.end method

.method public m()Lr3/N;
    .locals 0

    sget-object p0, Lr3/N;->a:Lr3/M;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu3/E;->h:Ljava/lang/String;

    return-object p0
.end method
